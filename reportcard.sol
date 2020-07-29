pragma solidity >=0.4.17 <0.7.0;

contract Report
{
    string name;
    int rollno;
    int batch;
    int marks1;int marks2; int marks3;int marks4;int result;
    string status;
    
   

    function Reportcard(string memory newname,int newroll,int newbatch,int newmarks1,int newmarks2,int newmarks3,int newmarks4) public
    {
        name = newname;
        rollno = newroll;
        batch = newbatch;
        marks1=newmarks1;
        marks2=newmarks2;
        marks3=newmarks3;
        marks4=newmarks4;
        
         result = marks1 + marks2 + marks3 + marks4;
         result = result * 100/400;
         
         if( result < 33)
        {
            status = "FAIL";
        }
        else if(result >= 33)
        {
            status = "PASS";
        }
         
        
    }
    
    function getDetails() public view returns(string memory Student_Name,int Roll_No,int Batch,int marks_of_subject_1,int marks_of_subject_2,int marks_of_subject_3,int marks_of_subject_4,int Percentage,string memory Status)
    {
        
        
        return(name,rollno,batch,marks1,marks2,marks3,marks4,result,status);
        
        
    }
    
