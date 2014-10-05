#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

#define BUFSIZE 32
#define STUNUM  32

#define NAMELEN  32
#define MINAGE   4

#define MAXAGE   100
#define MINSTUDYID 20140001
#define MAXSTUDYID 20149999

typedef struct student{
    char name[NAMELEN];
    int age;
    int studyID;
    int useFlag;
}STU;

enum command {
    kListStudent,
    kAddStudent,
    kSearchStudent,
    kDelStudent,
    kQuitCMD,
};

extern STU *allocStudentRecords(int number);
extern void printStudents(STU *stu);
extern int addStudent(STU *stu,char *name,int age,int studyID);
extern int delStudent(STU *stu,int studyID);
extern int delStudent(STU *stu,int studyID);
extern void deallocStudentRecords(STU *);

static int numberofStudents;

STU *allocStudentRecords(int number)
{
    STU *stu = NULL;
    int size = number * sizeof(STU);
    stu = malloc(size);
    if (stu == NULL){
        perror("malloc");
        return NULL;
    }

    memset(stu,0,size);
    numberofStudents = number;
    return stu;
}

static void printStudent(STU *stu,int index)
{
    printf("Student's Name is [%s]\n",stu[index].name);
    printf("Student's Age is [%d]\n",stu[index].age);
    printf("Student's Study is [%d]\n",stu[index].studyID);
    printf("====================================\n");
}

void printStudents(STU *stu)
{
    for(int i = 0; i < numberofStudents;i++){
        if (stu[i].useFlag){
            printStudent(stu,i);
        }
    }
}

static int checkStudyID(STU *stu,int studyID)
{
    for(int i = 0;i < numberofStudents;i++){
        if (studyID == stu[i].studyID && stu[i].useFlag ==1){
            return -1;
        }
    }
    return 0;
}

static int getFreePosition(STU *stu)
{
    for(int i = 0;i < numberofStudents;i++){
        if(stu[i].useFlag == 0){
            return i;
        }
    }
    return -1;
}

int addStudent(STU *stu,char *name, int age,int studyID)
{
    int index = -1;
    if(checkStudyID(stu,studyID) < 0){
        fprintf(stderr,"student <%d> already exist !\n",studyID);
        return -1;
    }
    index = getFreePosition(stu);
    if (index < 0){
        fprintf(stderr,"no free position \n");
        return -1;
    }
    strncpy(stu[index].name,name,NAMELEN-1);
    stu[index].age = age;
    stu[index].studyID = studyID;
    stu[index].useFlag = 1;

    printf("Add successfully !\n");
    return 0;
}

int delStudent (STU *stu,int studyID)
{
    for(int i=0;i < numberofStudents;i++){
        if(stu[i].studyID == studyID && stu[i].useFlag){
            stu[i].useFlag = 0;
            printf("deleted successfully !\n");
            return 0;
        }
    }
    fprintf(stderr,"student <%d> to delete doesr not exsist !\n",studyID);
    return -1;
}
int searchStudent(STU *stu,int studyID)
{
    for(int i = 0;i< numberofStudents;i++){
        if(stu[i].studyID == studyID && stu[i].useFlag){
            printStudent(stu,i);
            return 0;
        }
    }
    fprintf(stderr,"student <%d> to search does not exsist!\n",studyID);
    return -1;
}
void deallocStudentRecords(STU *stu){
    free(stu);
}

static long getInput(void)
{
    char buf[BUFSIZE] = {0};
    long result = -1;

    fgets(buf,BUFSIZE,stdin);
    result = strtol(buf,NULL,0);
    if((result == 0 && errno == EINVAL) || (errno == ERANGE)){
        result = -1;
        errno = 0;
    }
    return result;
}

static int getStudyID(void)
{
   int studyID = -1;
_InputStudyID:
   fprintf(stdout,"please input student's Study ID:\n");
   studyID = (int)getInput();
   if(studyID < MINSTUDYID || studyID > MAXSTUDYID){
       fprintf(stderr,"invalid input !(study ID must in [20140001-20149999])\n");
       goto _InputStudyID;
   }
   return studyID;
}

int main(void)
{
    long cmd = -1;
    char stuName[NAMELEN] = {0};
    int stuAge = -1;
    int studyID = -1;
    STU *stu = NULL;

    system("touch records");
    FILE *fp = fopen("records","r+");
    if(fp == NULL){
        perror("fopen");
            goto _Fail1;
    }

    
    stu = allocStudentRecords(STUNUM);
    if(NULL == stu){
        goto _Fail2;
    }
    fread(stu,sizeof(STU),STUNUM,fp);
    rewind(fp);

    while (1){
       fprintf(stdout,"please input comand number:\n0 - List\t1 -Add \t2 - Delete\t 3 - Search\t 4- Quit\n");
       cmd = getInput();
      fpurge(stdin);
     if(cmd == -1 || cmd > kQuitCMD || cmd < kListStudent)
     {
        fprintf(stderr,"invalid command !\n");
        continue;
     } 
     switch (cmd){
         case kListStudent:
             printStudents(stu);
             break;
         case kAddStudent:
             fprintf(stdout,"please input student's name :\n");
             fgets(stuName,NAMELEN,stdin);
             stuName[strlen(stuName)-1] = '\0';
_InputAge:
             fprintf(stdout,"please input student's age :\n");
             stuAge = (int)getInput();
             if (stuAge < MINAGE || stuAge > MAXAGE){
                 fprintf(stderr,"invalid input !(age must in [4-100])\n");
                 goto _InputAge;
             }
             studyID = getStudyID();
             addStudent(stu,stuName,stuAge,studyID);
             break;
         case kDelStudent:
             studyID = getStudyID();
             delStudent(stu,studyID);
             break;
         case kSearchStudent:
             studyID = getStudyID();
             searchStudent(stu,studyID);
             break;
         case kQuitCMD:
             goto _Exit;
             break;
         default:
             fprintf(stderr,"can't go here !\n");
             break;
     }
    }
   _Fail2:
    fclose(fp);
   _Fail1:
    exit(1);
_Exit:
    fwrite(stu,sizeof(STU),STUNUM,fp);
    fclose(fp);
    deallocStudentRecords(stu);
    return 0;
}
