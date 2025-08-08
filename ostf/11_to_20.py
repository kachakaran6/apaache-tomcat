
## **Tuple Operations (continued)**

### **Program 11: Access Elements Using Indexing**
# Program to access elements of a tuple using indexing
my_tuple = (5, 10, 15, 20)
print("First element:", my_tuple[0])
print("Last element:", my_tuple[-1])


### **Program 12: Slice a Tuple**
# Program to slice a tuple
my_tuple = (1, 2, 3, 4, 5)
print("Sliced Tuple (index 1 to 3):", my_tuple[1:4])


### **Program 13: Find the Length, Max, and Min in a Tuple**
# Program to find the length, maximum, and minimum in a tuple
my_tuple = (8, 2, 10, 4)
print("Length:", len(my_tuple))
print("Max:", max(my_tuple))
print("Min:", min(my_tuple))


### **Program 14: Convert List to Tuple and Vice Versa**
# Program to convert list to tuple and tuple to list
list1 = [1, 2, 3]
tuple1 = tuple(list1)
print("Tuple:", tuple1)

new_list = list(tuple1)
print("List again:", new_list)


## **Dictionary Operations**

### **Program 15: Create and Display a Dictionary**
# Program to create and display a dictionary
student = {"name": "Alice", "age": 20, "grade": "A"}
print("Student Dictionary:", student)


### **Program 16: Add, Update, and Delete Dictionary Elements**
# Program to add, update, and delete elements in a dictionary
student = {"name": "Bob"}
student["age"] = 21       # Add
student["name"] = "Robert"  # Update
del student["age"]        # Delete
print("Updated dictionary:", student)


### **Program 17: Access Dictionary Values Using Keys**
# Program to access dictionary values using keys
person = {"name": "John", "city": "New York"}
print("Name:", person.get("name"))  # Using get()
print("City:", person["city"])      # Using indexing


### **Program 18: Iterate Through a Dictionary**
# Program to iterate through a dictionary
fruits = {"apple": 2, "banana": 3, "cherry": 5}
for key, value in fruits.items():
    print(key, ":", value)


### **Program 19: Merge Two Dictionaries**
# Program to merge two dictionaries
dict1 = {"a": 1, "b": 2}
dict2 = {"c": 3, "d": 4}
merged = {**dict1, **dict2}
print("Merged Dictionary:", merged)


## **Basic Logic and Number Programs**

### **Program 20: Check if a Number is Palindrome**
# Program to check if a number is a palindrome
num = 121
if str(num) == str(num)[::-1]:
    print("Palindrome")
else:
    print("Not a palindrome")


