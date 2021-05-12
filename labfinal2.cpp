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


double A2(double a1, double b2 , double imin )
{
    double a2;

    a2= ( (b2 - (a1*( 0.23 + (b2/500))*sqrt(1/imin)) ) / ( 1 - ((0.23 + (b2/500))*sqrt(1/imin))));

    return a2;
}


void printTable( double b1, double b2, double inc){

    double a1, a2, sigma, i, y, imin, ymin;

            ymin=0;
            cout << endl;
            cout << setw(10) << "Solidity" << setw(14) << "LHS Value" << endl;
            cout << "----------------------------" << endl;

            for ( i=0.6 ; i < 2.2 ; i+=0.1){
                sigma=i;
                y = 33.5291+((0.469188+0.0020961*b2)*b2)-b1+((0.187148*b2-15.2599)*log(1/sigma))-(0.677212*sqr(log(1/sigma)));
                cout << setiosflags(ios::fixed | ios::showpoint);

                cout << setprecision(1)<< setw(7) << i << setprecision(4) << setw(15) << y << endl;

                if ( ymin==0 || (fabs(y) < fabs(ymin)) ){

                    ymin=y;
                    imin=sigma;
                }//endif
            } // end for loop

            a1=b1-inc;
            a2= A2(a1, b2, imin);

            cout << setprecision(1) << "Leaving function. The chosen value is " << imin << endl;
            cout << endl;
            cout << "Blade entry angle: " << a1 << endl;
            cout << "Solidity: " << imin << endl;
            cout << "blade exit angle: " << a2 << endl;
            cout << endl;

}

int main () {

    double b1, b2, b, inc;
    for ( ; ; ) {

        cout << setiosflags(ios::fixed | ios::showpoint);
        cout << "Enter flow entry angle, flow exit angle, and incidence: ";
        cin >> b1 >> b2 >> inc;

        if ( b1==-1 && b2==-1 && inc==-1 ) {
            break;
        }// endif

        b=(36-(0.45*b2))/(b1-b2);
        if ( !((b>=0.75 && b<=1.25) && ( b2>=(-10) && b2<=(50) ) && ( abs(inc)>=0 && abs(inc)<=3 ) && (b1!= b2) )) {

            cout << "Invalid values ignored " << endl;

        } else {

            printTable(b1,b2,inc);

        } //end if

    }//end for loop

    system("PAUSE");
    return 0;

}



