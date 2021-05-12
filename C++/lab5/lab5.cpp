//Freddy Sourial


#include <iostream>
#include <cmath>
#include <iomanip>
#include <cstdlib>

using namespace std;

bool isInt (double value) {
    double dummy;
    return bool(modf(value, &dummy) == 0);
}

double sqr(double value) { 
	return value * value; 
}
//variable ' s


int main (void) {
int thousands ; int value ; int remainder ; int hundreds ; int tens ; int ones ;

  cout <<"Enter your numeric value:";
 cin >>value;
 
while (value    !=0){
   if (!(value >=1 && value<=3999) ) {
        cout<< " Invalid values ignored " <<endl; 
          
        cin >> value ;
    } else {
            
        
        thousands = value / 1000 ;
        remainder = value % 1000 ;
        hundreds = remainder / 100; 
        remainder = remainder % 100; 
        tens = remainder / 10 ;
        ones = remainder % 10 ;
        
        //cout<< thousands << " " << hundreds << " " << tens << " " << ones << endl ; 
        
        cout<< value << "  in roman numerals is " ; 
        
        // convert thousands into letters 
        while (thousands != 0) {
            cout << " M " ;
            thousands = thousands -1 ; 
            }//endwhile 
      
        if (hundreds = 9) {
            cout << " CM " ;
             
        }else if(hundreds = 4) {
            cout << " CD " ; 
        }else {  
                if (hundreds >= 5 ) {
                    cout << "D" ;
                    hundreds = hundreds- 5 ;
                    
                                     
                   
                    }//endif
             while (hundreds!=0) {
                    cout << " C " ; 
                    hundreds = hundreds - 1 ; 
                    }   
                    
               }  
              }//endif
      
       
        
        cout << endl ; 
         
     
        
  
     cout <<"Enter your numaric value:";
      cin >>value;
}
    system("PAUSE"); return 0;

}
