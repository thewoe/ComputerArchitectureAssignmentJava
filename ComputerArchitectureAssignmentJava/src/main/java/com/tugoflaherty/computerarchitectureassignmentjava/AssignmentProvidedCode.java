/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tugoflaherty.computerarchitectureassignmentjava;

/**
 *
 * @author tugso
 */
public class AssignmentProvidedCode {
    // ----------------------------------------------------------------------------
    // !!!!! ATTENTION - THIS CODE IS NOT EXECUTABLE !!!!!
    // !!!!! THIS CLASS CONTAINS NO RUNNABLE CONTENT !!!!!
    // !!!!! SEE NOTES BELOW FOR RUNNABLE JAVA CLASS !!!!!
    // ----------------------------------------------------------------------------
    // The below code is the provided C code for the Computer Architecture Assignment
    // This code has been translated into Java in the AssignmentJavaCode.java file
    // The Java implementation contains additional features, as per the specification
    // The below code must be translated into MIPS using the MARS Simulator
    /*
    
        // ------------
        // MAIN PROGRAM
        // ------------
        
        int a, b, c, f;         // Declare results counters
        int i;                  // Declare loop counter
        int y;                  // Declare total number of students
        y = 10;                 // Initialize y = 10
        a=0; b=0; c=0; f=0;     // Initialize results counters
        int coursework [];      // Coursework is an array to store
                                // the coursework marks that goes
                                // from 0 to 50.
        int exam [];            // Exam is an array to store the exam
                                // marks that goes from 0 to 50.
        int results [];         // Results is an array to store the
                                // total marks = coursework + exam.
                                // It goes from 0 to 100.
                            
        for (i=0; i<y; i++) {
            results [i] = coursework [i] + exam [i];
            if (results[i] < 50)
                f = f + 1;
        }
        
        // -------------------------------------------------------
        // If the number of failed students is greater than half of
        // the class size (h) then subtract the highest mark in the
        // results array from 100 and (via the CURVE function) add the
        // difference (d) to every mark in the results array
        // -------------------------------------------------------
        
        int h;                           // half of the class size
       
        int d;
        h=5;                             // half of the results items = 5
       
        if (f > h) {
           
            //d = ??;                   // d = 100 - the highest
                                        // mark in your results array
           
            for (i=0; i<y; i++) {
                    CURVE(results, i, d);
            }
        }
        
        //----------------------------------------------------------
        // Finally the program will create counters for the number of
        // students with a result >=70, >=60, >=50 and < 50
        //----------------------------------------------------------
        
        f = 0;
        for (i=0; i<y; i++) {
            if (results[i] >= 70)
                a = a + 1;
            else if(results[i] >= 60)
                b = b + 1;
            else if(results[i] >= 50)
                c = c + 1;
            else
                f = f + 1;
        }
        
        // Main program code ends here
        // ----------------------------
    
    // ------------------
    // CURVE function code
    // ------------------
    
    void CURVE (int p[], int z, int k)
    {
        p[z] = p[z] + k;
    }

*/
}
