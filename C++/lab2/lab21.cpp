//Freddy Sourial

    // Variables
    double number, // number variable
           x0, // variable
           x1;

    cout << "Enter a Value : ";
    cin >> number;
    x0 = 1;
    x1 = 0.5*(1+number );
    while (fabs(x1- x0)>0.00001) {
        x0 = x1;
        x1 = 0.5*(x1+(number/x1));
    } // end while
    cout << "the square root" << " " << "is " << x1 << endl;

}
