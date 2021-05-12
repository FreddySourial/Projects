//Freddy Sourial
    // Variables
    double number, // number
           divider;

    cout << "Enter a number : ";
    cin >> number;
    cout << " The binary equivalent of " << number << " is ";
    divider = 1;

    while (2*divider<=number) {
        divider = divider*2;
    } // end while

    while (divider>=1) {

        if (number>=divider) {
            cout << "1";
            number = number-divider;
        } else {
            cout << "0";

        } // end if
        divider = divider/2;
    } // end while
    cout << endl;

}
