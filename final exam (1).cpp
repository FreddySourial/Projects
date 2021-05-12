// INSERT YOUR PROGRAM COMMENTS HERE
//
// Name:
// Student Number:

#include <iostream>
#include <cmath>
#include <iomanip>
#include <cstdlib>

using namespace std;

bool isInt (double value) {
    double dummy;
    return bool(modf(value, &dummy) == 0);
}

double sqr(double value) { return value * value; }

double ideal(double density, double T, double M){
    double const Ru =8.314;
    double p;
     
     p=(density*Ru*(T+273.15))/M;
    
    return p;
}

double Redlicheq( double density , double T ,double M , double a, double b ){
    double p2;
    double v=M/density;
    double const Ru=8.314;
    
    p2=abs((Ru*(T+273.15))/(v-b)-(a/(v*(v+b)*sqrt(T+273.15))));
    
     return p2;
}

double diff(double T , double density ,double M ,double a , double b ){
    
   


return 100*(abs( ideal(density,T,M)- Redlicheq(density ,T,M,a,b))/ideal(density,T,M));
}

int main (void) {

double gascodes, starttemp, tempstep,density;
double T;
int i;
double a ;
double b,j;
double M;
for(;;){
    cout<<" please enter gas code, start temperature, temperature step and density " ;
    cin >>gascodes >> starttemp >> tempstep >> density;
    
    if(gascodes==0 && starttemp==0 && tempstep==0 && density==0){
        break;    
    }//end if    
    
    if((gascodes!=1 && gascodes!=2 && gascodes !=3)|| starttemp<abs(0) || tempstep<0.5 || tempstep>10 || density <0 ){
        cout<<" Invalid entry " <<endl;
         
    }else{

    if( gascodes==1){
         
    M=28.97;
    a=1598.9;
    b=0.02541;
    }else if(gascodes==2) { 
    M=44.01;
    a=6443;
    b=0.02963l;
    }else if(gascodes==3) {
         
    M=16.04;
    a=3211;
    b=0.02965l;
    }
    
    
 
        cout<<"   T         ideal         Redlich-kwong       %diff  " <<endl;
        cout<< "-----------------------------------------------------"<<endl;
       
       i=0;
       
       for(T=starttemp;i<20;T+=tempstep){
            cout<<setiosflags(ios::fixed | ios::showpoint)<<setprecision(2)<<T<<"          "
            <<setprecision(4)<<ideal(density,T,M)<<"        "<<Redlicheq(density,T,M,a,b)<<"       "<<diff(T , density, M,a ,  b )<<endl;
            i++;
        
        
       }// end for
          



}// end if 


}// end for


    system("PAUSE"); return 0;

}
