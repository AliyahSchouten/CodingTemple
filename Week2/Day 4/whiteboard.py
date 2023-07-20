# The Hamming Distance is a measure of similarity between two strings of equal length. Complete the function so that it returns the number of positions where the input strings do not match.
# Examples:
# a = "I like turtles"
# b = "I like turkeys"
# Result: 3
# a = "Hello World"
# b = "Hello World"
# Result: 0
# a = "espresso"
# b = "Expresso"
# Result: 2
# Notes:
# You can assume that the two inputs are ASCII strings of equal length.

#UPER

#Understand
#take two strings of equale length and check if they match


#Plan
#take in 2 strings, iterate through the sting to check if each character is the same through an if statment. if they are not equale, then add to the var that counts the errors

#Excute
def matching(str_1,str_2):
    errors=0
    for index in range(len(str_1)):
        if str_1[index]!=str_2[index]:
            errors+=1
    return errors

print(matching('Hello world',"Hello World"))

#Refactor

def matching_refactor(s1, s2):
    return sum(map(lambda tup: tup[0] != tup[1], zip(s1, s2)))

print(matching_refactor('Hello World', 'Hello world'))