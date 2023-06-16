# Assignment 2: Narcissistic Numbers
#Defensive programming is bonus
# Make sure program runs properly for correct inputs
# Prompt the user to enter a three digit positive number.
# "readline" is the command to read a user's input from the console, while "prompt" specifies what the user will see to inform them what to input.
user_entry <- readline(prompt = "Please enter a three digit positive number: ")
# Check if the user input is numeric. If not, print an error message and quit.
# If "grepl" is a function I found that will check to see if the user's input is 3 digits and that user entry is a positive number.
# {} will proceed to run the code. as.numeric" will convert the user's input to class numeric.
# If these condiitons are not met, else will run an alternate code denoted by {} using "print" for the error message and "quit" to terminate the program.
# Save = no prevents saving a non-valid script and status = 1 creates a notice to the user that an error occured.
if (grepl("^\\d{3}$", user_entry) & as.numeric(user_entry) > 0) {
  print(user_entry)
  numeric_value <- as.numeric(user_entry)
} else {
  print ("Error: Input is not numeric")
 quit(save = "no", status = 1)
}


# Check if the number is narcissistic. A narcissistic number, or an Armstrong number, is a number that is equal to the sum of the cubes of its own digits. 153, 370, 371, 407 are three digit Armstrong numbers.
# The object "is_narcissistic is created and "function" designates it as a function that executes all operations within {}
# digits converts the user_entry into a character string using as.character, then splits it into individual characters using strsplit. The resulting list is accessed using [[1]] to extract the first element, which is a character vector. Finally, as.numeric is applied to convert the character vector into a numeric vector called digits. This step separates the individual digits of the number.
# sum_cubes cubes each digit and then sums those values
# finally return compares user_entry and sum_cubes, if equal it will return TRUE indicating it is a narcissitic number.
is_narcissistic <- function(user_entry) {
  digits <- as.numeric(strsplit(as.character(user_entry), "")[[1]])
  sum_cubes <- sum(digits^3)
  return(user_entry == sum_cubes)
}



#' Code Review
#' Great use of the grepl() function. This use of this code is very precise in determining if the user input is a valid 3-digit integer, rather than listing each condition separately with "Or" statements. It is a good use of defensive coding.
#' In line 28, when defining the 'digits' operator, the use of as.character(user_entry) is not needed, because the readline() function takes in the user input as a character string anyway.
#' Calculation to determine if the number is narcissistic is very well done! Very simple and logical code to determine the classification.
#'
#'The is_narcissistic() function works very effectively in determining if a number is narcissistic or not. The function returns either a TRUE or FALSE.
#'
#'One recommendation I would implement to make the program more user-friendly would be to include a print statement at the end of the program that tells the user if the number they inputted is a narcissistic number or not.
#'This way, the user does not have to type in the is_narcissistic() function in the console, but can just press source, enter a three digit number when prompted through the readline(), and learn if it is narcissistic or not.
#'This can be achieved using an if statement. ie.
#' if (is_narcissistic(user_entry) == T) {
#'   print("This is a narcissistic number")
#'   } else {
#'   print("This is not a narcissistic number)}
#'
#'The addition of this code would make the program much more user-friendly, and easier to interpret.
#'
#' Overall well done! Code is very robust in that it handles invalid numbers and character strings very elegantly, ending the program without any unwanted error messages.
#' The calculation done to determine if the number is narcissistic is very logical and simple to follow. My one recommendation would be to add in the print() statements at the end, but great job!

