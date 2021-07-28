# using a for loop
for i in range(1, 101): print("Fizz"*(i%3==0)+"Buzz"*(i%5==0) or str(i))

# using lambda function
# print(list(map(lambda i: "Fizz"*(i%3==0)+"Buzz"*(i%5==0) or str(i), range(1,101))))