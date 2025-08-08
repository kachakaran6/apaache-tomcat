
## **Basic Logic and Number Programs (continued)**

### **Program 21: Reverse a Number**
# Program to reverse a number
num = 1234
rev = 0

while num > 0:
    rev = rev * 10 + num % 10
    num //= 10

print("Reversed Number:", rev)


### **Program 22: Check Prime Number**
# Program to check if a number is prime
num = 7

if num > 1:
    for i in range(2, num):
        if num % i == 0:
            print("Not Prime")
            break
    else:
        print("Prime")
else:
    print("Not Prime")


### **Program 23: Generate Fibonacci Series**
# Program to generate Fibonacci series
n = 10
a, b = 0, 1

print("Fibonacci Series:")
for _ in range(n):
    print(a, end=" ")
    a, b = b, a + b


### **Program 24: Factorial Using Loop**
# Program to find factorial using loop
num = 5
fact = 1

for i in range(1, num + 1):
    fact *= i

print("Factorial:", fact)


### **Program 25: Check Armstrong Number**
# Program to check if a number is an Armstrong number
num = 153
sum_val = 0
temp = num

while temp > 0:
    digit = temp % 10
    sum_val += digit ** 3
    temp //= 10

if num == sum_val:
    print("Armstrong Number")
else:
    print("Not Armstrong")


### **Program 26: Count Vowels in a String**
# Program to count vowels in a string
string = "Hello World"
vowels = "aeiouAEIOU"
count = sum(1 for ch in string if ch in vowels)

print("Vowel Count:", count)


### **Program 27: Find the Largest Element in a List Without max()**
# Program to find the largest element in a list without using max()
numbers = [10, 25, 5, 75, 30]
largest = numbers[0]

for num in numbers[1:]:
    if num > largest:
        largest = num

print("Largest element:", largest)


### **Program 28: Find Common Elements Between Two Lists**
# Program to find common elements between two lists
list1 = [1, 2, 3, 4]
list2 = [3, 4, 5, 6]
common = list(set(list1) & set(list2))

print("Common Elements:", common)


### **Program 29: Find Even and Odd Numbers in a List**
# Program to find even and odd numbers in a list
numbers = [1, 2, 3, 4, 5, 6]
even = [num for num in numbers if num % 2 == 0]
odd = [num for num in numbers if num % 2 != 0]

print("Even:", even)
print("Odd:", odd)


### **Program 30: Count Positive, Negative, and Zero in a List**
# Program to count positive, negative, and zero numbers in a list
nums = [0, -1, 2, -3, 4, 0]
pos = neg = zero = 0

for num in nums:
    if num > 0:
        pos += 1
    elif num < 0:
        neg += 1
    else:
        zero += 1

print("Positive:", pos)
print("Negative:", neg)
print("Zero:", zero)


