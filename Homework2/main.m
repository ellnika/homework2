//
//  main.m
//  Homework2
//
//  Created by User on 12/08/2016.
//  Copyright © 2016 User. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
/*
 
 You are given a number N. Display all the odd numbers less than N and print the sum of all the even numbers less than N.
 
 For example if N = 1- then you should print all the odd numbers less than 10: 1 3 5 7 9 and then print the message "The sum is 20"
        
*/
        /** First task - solution
        int givenNumber;
        int evenNumberSum;
        evenNumberSum =0;
        givenNumber =0;
        NSMutableArray *oddNumbers;
        NSLog(@"Enter the number");
        scanf("%d", &givenNumber);
        oddNumbers = [[NSMutableArray alloc] initWithCapacity:givenNumber];
        for (int i=0; i < givenNumber; i++)
        {
            if (i % 2) {
                [oddNumbers addObject:[NSNumber numberWithInt:i]];
            }
            else
            {
                evenNumberSum=evenNumberSum+i;
            }
        }
        NSLog(@"All the odd numbers less than N are %@", oddNumbers);
        NSLog(@"The sum of even numbers less than %d is %d", givenNumber, evenNumberSum);
    }
    return 0;
  End of solution for first task  **/
        
 /* Second task
        
  You are given two numbers N and M. Calculate N to the power of M. Use two methods: 1.Find the API function, 2. Use the for loop
  
  For example if N = 2 and M =3 you should print the message "2 to the power of 3 is 8"
  */
        /* Solution one - loop
        int baseNumber;
        int powerNumber;
        int result;
        result =1;
        
        NSLog(@"Enter base number");
        scanf(" %d", &baseNumber);
        
        NSLog(@"Enter the power number");
        scanf(" %d", &powerNumber);
        
        for (int i = 1; i <= powerNumber; i++)
        {
            result = result * baseNumber;
        }
        
        
        NSLog(@" %d to the power of %d is %d", baseNumber, powerNumber, result);
  */
       //Solution two - using API
    // - (NSDecimalNumber *)decimalNumberByRaisingToPower:(NSUInteger)power
       /*
        int power = 1;
        int base = 1;
        NSLog(@"Enter base");
        scanf("%d", &base);
        NSLog(@"Enter the power number");
        scanf(" %d", &power);
        
        NSDecimalNumber *newBase = [[NSDecimalNumber alloc] initWithInt:base];
        
        NSDecimalNumber *result;
        result  = [[NSDecimalNumber alloc] initWithInt:1];
        
        result  = [newBase decimalNumberByRaisingToPower:power];
        NSLog(@"The result is %@", result);
     */
        
         
        
        
        
/* Third task
         
         You are given a number N. Display the factorial of that number. Use a for loop. For example: 5! = 120 (1*2*3*4*5) so you should print "The factorial of 5 is 120.
         */
        
        /** solution
        int number;
        int numberFactorial;
        number =1;
        numberFactorial=1;
        NSLog(@"Enter a number");
        scanf(" %d", &number);
        
        for (int i=1; i<=number; i++) {
            
            numberFactorial = numberFactorial * i;
            NSLog(@"The factorial of %d is %d", number, numberFactorial);
            
        }
        
    **/
        
/* Homework from last week
         
 Enter some text in the text field and then when you tap the button check if the string contains only digits
 If string contains only digits print a message "Containts only digits" otherwise print out characters that are not digits
 */
        
        char text [1000000] = {0};
        NSLog(@"Enter some text");
        scanf("%s", text);
        NSString *newText = [NSString stringWithUTF8String:text];
        BOOL onlyDigits = 0;
        //NSLog(@"%@", newText);
        unichar k;
        k = 'i';
        for (int i=0; i < [newText length]; i++) {
            //- (unichar)characterAtIndex:(NSUInteger)index;
            k = [newText characterAtIndex:i];
            if ( k <'0' || k >'9') {
                onlyDigits = 1;
                NSLog(@"%c", k);
            }
        }
            if (!onlyDigits) {
            NSLog(@"Contains only digits");
            }
        
}
    return 0;
}
