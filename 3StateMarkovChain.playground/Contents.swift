// Import core functionality from Cocoa Application Programming Interface (API)

import Cocoa

/*: 
# Recall

We discussed the idea of a simple Markov Chain a few classes ago.

Consider the diagram from that class:

![markovchain](SimpleMarkovChain.png "markov")

Say the chain begins with a "P". There is a 60% chance the next letter will be an A, and a 40% chance the next letter will be a P.

This is a 2-state Markov chain (any given character in the string can have 1 of 2 possible values - P or A).

How can we implement this simple Markov chain using the data structures and programming structures you are familiar with?

Let's take a look.

*/

// Seed the string that will store the Markov Chain with a P
var markovChain: String = "P"

//: **arc4random_uniform** provides an integer value between 0 and 1 less than the provided argument
// Generate a random value to help us decide what the next character should be
var randomValue = arc4random_uniform(10)

//: What happens if you choose the **Editor > Execute Playground** menu option a few times? Try doing that.
/*:
Now that you've observed what line 10 above does, let's check the final character of the string and use the *randomValue* variable to decide what the next character should be.

Per [Apple's Documentation](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html) accessing individual characters in a string is not quite as simple as using an integer index value.

For example, something like:

    markovChain[markovChain.length()]

does not return the final character of the string.
*/

// Check the final character of the string, and decide what the next character should be

markovChain
markovChain = "A"
var counter = 0
while (counter < 1) {
    
    randomValue = arc4random_uniform(10)
    
    if (markovChain[markovChain.endIndex.predecessor()] == "P") {
        // Debug statement
        print("it's a P, deciding what next character should be")
        
        // Decide what next character should be
        if (randomValue < 5) {
            markovChain += "A"
        } else if(randomValue > 5 && randomValue < 7) {
            markovChain += "P"
        } else {
            markovChain += "Q"
        }
        
    } else if (markovChain[markovChain.endIndex.predecessor()] == "Q") {
        // Debug statement
        print("it's an Q, deciding what next character should be")
        
        // Decide what next character should be
        if (randomValue < 3) {
            markovChain += "A"
        } else if(randomValue > 3 && randomValue < 7) {
            markovChain += "P"
        } else {
            markovChain += "Q"
        }
        
    } else {
        // Debug statement
        print("it's a A, deciding what next character should be")
        
        // Decide what next character should be
        if (randomValue < 1) {
            markovChain += "A"
        } else if (randomValue > 1 && randomValue < 6) {
            markovChain += "Q"
        } else {
            markovChain += "P"
        }
    }
    counter += 1
    
}

markovChain

/*:
Complete the conditional statement above, so that you have implemented the entire Markov chain.

That is, if the final character is an A, make it so that the code correctly decides the next character (based on the image included above).
*/

/*:
**Extension 1**

Consult the Swift Programming Language reference. Modify the code above. Add a programming structure that iterates 10 times, so as to create a Markov chain composed of P's and A's that is 11 characters long.
*/

/*:
**Extension 2**

In your sketchbook, draw out a Markov Chain that has 3 states. For example, "P", "A", and a third character of your choice. Use the code above as a model, and write new code below that implements this 3-state Markov chain. Please call me over to review the drawing of your new Markov Chain before you begin writing code.
*/

// Start your code for Extension 2 here...


/*:

Now that you have implemented your 3-state Markov Chain, do you have any observations or comments? What worked well? What is cumbersome? How might a program that implements a 5-state Markov chain look? How about a 10-state Markov Chain?

*/






