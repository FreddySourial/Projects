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

int main (void) {

    // Constants
    const double g = 9.81, // gravity
                 PI = 3.14, // Pie constant
                 E = 71e09, // youngs constant
                 D = 0.01; // dia

    // Variables
    double m, // mass
           L, // length
           theta, // angle
           P, // actual
           P_C, // critical
           count = 0, // count
           count1 = 0, // count 1
           Max, // max
           maxm,
           maxL,
           maxtheta;

    cout << "Enter values for m , L , theta<0 0 0 to exit>: ";
    cin >> m >> L >> theta;
    /// sentinel loop
    while (!(m == 0 && L == 0 && theta == 0)) {

            if (m>0 || L>0 || theta >=15 && theta <=75) {
            theta = theta*(PI / 180);
             // formulae

            P = ((m*g) / (3*sin(theta)));
            P_C = (PI * PI * PI * E * D* D* D* D) / (16* L *L);

            //condition statements

            if (m>0 || L>0 || (theta >=15 && theta <=75 ) &&  (P<P_C)) {

                cout << "The legs will not  buckle" << endl << endl << "Actual load : " << P << endl << "Critical load: " << P_C << endl;
                count1 = count1+1;

            } else if (m>0 || L>0 ||(theta >=15 && theta <=75) && P >=P_C) {

                count = count+1;
                cout << "The legs will   buckle" << endl << "Actual load : " << P << endl << "Critical load: " << P_C << endl;
            } else {

                cout << "Invalid values ignored. " << endl;
            } // end if
        } // end if

        // Input values again.
        cout << "Enter values for m , L , theta:<0 0 0 to exit> ";
        cin >> m >> L >> theta;


        //
        if (count == 1 || P_C<Max) {
            Max = P_C;
            maxm = m;
            maxL = L;
            maxtheta = theta;
        } // end if
    } // end while

    cout << "percent of valid cases : " << (count / (count1 +count))*100 << "%" << endl;
    cout << "Max m: " << maxm << "maxL :" << L << "maxtheta : " << maxtheta << endl;


    system("PAUSE"); return 0;

}
