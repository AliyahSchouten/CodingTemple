#Question 1
def hello_name(username) :
    print("hello_"+username)

print(hello_name("Aliyah"))

#Question 2(
def first_odds():
    count=0
    while(count<100):
        if count%2==0:
            print(count)
            return
#Question3
def max_num_in_list(a_list):
    i=1
    j=0
    max=0
    if a_list[i]<a_list[j]:
        max=a_list[j]
        i+=1
    else:
        max=a_list[i]
        j+=1
    return max
#Question 4
def is_leap_year(a_year):
    if a_year%4==0:
        return True
    else: return False
#Question 5
def is_consecutive(a_list):
    for x in a_list:
        i=0
        if a_list[i]!=a_list[i+1]:
            return False
        else: return True


        
    
    
    





    