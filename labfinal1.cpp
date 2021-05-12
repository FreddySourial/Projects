//

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
double si(double x ){
    double si;

const double A0 = 2.5253303767;
const double A1 = 1.0370462484;
const double A2 = 0.5688888889;
const double A3 = 0.3111070642;
const double A4 = 0.1242940878;
const double t0 = 0.0469100770;
const double t1 = 0.2307653450;
const double t2 = 0.5000000000;
const double t3 = 0.7692346550;
const double t4 = 0.9530899230;
 si  = A0*sin(x*t0)+A1*sin(x*t1)+A2*sin(x*t2)+A3*sin(x*t3)+A4*sin(x*t4);
return si ;
}

int main (void) {
   double a,b,x, si_x,max,min ;
    int N,i;
    /*cout << "si(1) = " << si(1) << " (should be .946083)\n";
    cout << "si(2) = " << si(2) << " (should be 1.60541)\n";
    cout << "si(3) = " << si(3) << " (should be 1.84865)\n";
*/
 // get first inputs
    cout << "Enter a, b, and N (0 0 0 to exit): ";
    cin >> a >> b >> N;
while (!(a== 0 && b==0 && N==0)){


    if (a>0 || b>a || N>2){

        for (i=0; i<N; i++){
                 x = a + i*(b-a)/(N-1);
                si_x = si(x); // not si(x) to si_X
            // check for new maximum
                if(i==0 || si_x > max) {
                    max = si_x;
                }

                // check for new minimum
                if(i==0 || si_x < min) {
                    min = si_x;
                }
                                // if N <= 5 output x and si_x
                if (N<=5) {
                    cout << "x = " << x << ", Si(x) = " << si_x << endl;
                }
        }//end for
        cout<< " the largest value is  "<< max<<endl;
        cout<< "the min value is "<< min << endl;
    }//endif
        else{

        cout << "*** Invalid input -- try again ***\n";
    }

 // get first inputs
    cout << "Enter a, b, and N (0 0 0 to exit): ";
    cin >> a >> b >> N;
}//endwhile

    system("PAUSE"); return 0;

}



