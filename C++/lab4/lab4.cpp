//Freddy Sourial
{

    // Variables
    double x, // variable
           C, //  distance b/w the two pulleys
           D, // larger diameter
           d, // small diameter
           y, // variable
           z, // variable
           z1, // variable
           L; // Length of the belt

    cout << "Enter values for d, D, C : " << " " << " ";
    cin >> d >> D >> C;

    // Formula simplified - in smaller steps 
    while (!(d==0 && D==0 && C==0)) {

        x = 2*C+1.57*(D+d);
        y = (D-d);
        //  using pow to use power  symbol
        z = pow(y,2);

        z1 = (z) / (4*C);
        L = x+z1;

        if ((D>=d)) {

            cout << "Length for the belt is " << L << " ." << endl;
            cout << "Enter value for d,D,C again :  ";
            cin >> d >> D >> C;

        } else {

            cout << "Incorrect Diameter. d should be smaller than or equal to D value ." << endl;
            cout << "Enter value for d,D,C again :  ";
            cin >> d >> D >> C;
        } // end if
    } // end while


}
