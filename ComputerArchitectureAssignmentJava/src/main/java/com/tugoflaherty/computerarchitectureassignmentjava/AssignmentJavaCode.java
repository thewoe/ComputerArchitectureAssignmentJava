/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tugoflaherty.computerarchitectureassignmentjava;

import java.util.Arrays;

/**
 *
 * @author tugso
 */
public class AssignmentJavaCode {
    // The below implementation is fully working
    // To change figures:
    // You must change the coursework grades to 10 values between 0 and 50
    // You must change the exam grades to 10 values between 0 and 50
    // You must change the d variable value to 100 - the highest result (coursework grade + exam grade)
    // Then run the 'MyImplementation.java' class and view the output
    public static void main(String[] args) {
        // ------------
        // MAIN PROGRAM
        // ------------
        
        int a, b, c, f;         // Declare results counters
        int i;                  // Declare loop counter
        int y;                  // Declare total number of students
        y = 10;                 // Initialize y = 10
        a=0; b=0; c=0; f=0;     // Initialize results counters
        int coursework [] = {5,5,5,5,5,5,10,15,25,30};      // Coursework is an array to store
                                // the coursework marks that goes
                                // from 0 to 50.
        int exam [] = {5,5,5,5,5,5,10,15,25,30};            // Exam is an array to store the exam
                                // marks that goes from 0 to 50.
        int results [] = {0,0,0,0,0,0,0,0,0,0};         // Results is an array to store the
                                // total marks = coursework + exam.
                                // It goes from 0 to 100.
                            
        for (i=0; i<y; i++) {
            results [i] = coursework [i] + exam [i];
            if (results[i] < 50)
                f = f + 1;
        }
        
        System.out.println("Before CURVE Function:");
        for (int result : results) {
            System.out.println(result);
        }
        
        // -------------------------------------------------------
        // If the number of failed students is greater than half of
        // the class size (h) then subtract the highest mark in the
        // results array from 100 and (via the CURVE function) add the
        // difference (d) to every mark in the results array
        // -------------------------------------------------------
        
        int h;                           // half of the class size
       
        int d;
        h=(results.length/2);            // half of the results items = 5
       
        if (f > h) {
           
            Arrays.sort(results);
            for (int result : results) {
                System.out.println(result);
            }
            d = (100-(results[results.length-1]));    // d = 100 - the highest
                                              // mark in your results array
            System.out.println("The difference between 100 and the highest mark in the results array is: "+d);
           
            for (i=0; i<y; i++) {
                    AssignmentJavaCode.CURVE(results, i, d);
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
        
        System.out.println("After CURVE Function:");
        for (int result : results) {
            System.out.println(result);
        }
        System.out.println("Number of A-grade Students: "+a);
        System.out.println("Number of B-grade Students: "+b);
        System.out.println("Number of C-grade Students: "+c);
        System.out.println("Number of Failing Students: "+f);
        // Main program code ends here
        // ----------------------------
    }  
    
    // ------------------
    // CURVE function code
    // ------------------
    
    public static void CURVE (int p[], int z, int k)
    {
        p[z] = p[z] + k;
    }
}
