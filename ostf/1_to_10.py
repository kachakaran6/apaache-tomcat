## **List Operations**

### **Program 1: Create and Display Elements of a List**

# Program to create and display elements of a list
my_list = [10, 20, 30, 40, 50]
print("The list is:", my_list)


### **Program 2: Add, Update, and Remove Elements from a List**
# Program to add, update, and remove elements from a list
my_list = [1, 2, 3]
my_list.append(4)        # Add element 4
my_list[1] = 20          # Update index 1 (change 2 to 20)
my_list.remove(3)        # Remove element 3
print("Updated list:", my_list)




### **Program 3: Sort a List in Ascending and Descending Order**
# Program to sort a list in ascending and descending order
numbers = [5, 2, 9, 1, 7]
numbers.sort()
print("Ascending:", numbers)

numbers.sort(reverse=True)
print("Descending:", numbers)




### **Program 4: Find the Maximum and Minimum Element in a List**
# Program to find the maximum and minimum element in a list
numbers = [10, 25, 5, 75, 30]
print("Max:", max(numbers))
print("Min:", min(numbers))




### **Program 5: Count Frequency of Each Element in a List**
# Program to count frequency of each element in a list
items = [1, 2, 2, 3, 3, 3, 4]
frequency = {}

for item in items:
    if item in frequency:
        frequency[item] += 1
    else:
        frequency[item] = 1

print("Frequency of elements:", frequency)




### **Program 6: Remove Duplicates from a List**
# Program to remove duplicates from a list
my_list = [1, 2, 2, 3, 4, 4, 5]
unique_list = list(set(my_list))
print("List without duplicates:", unique_list)




### **Program 7: Find the Sum and Average of List Elements**
# Program to find the sum and average of list elements
numbers = [10, 20, 30, 40]
total = sum(numbers)
average = total / len(numbers)

print("Sum:", total)
print("Average:", average)




### **Program 8: Merge Two Lists into One**
# Program to merge two lists
list1 = [1, 2, 3]
list2 = [4, 5, 6]
merged = list1 + list2
print("Merged list:", merged)




### **Program 9: Search an Element in a List**
# Program to search for an element in a list
my_list = [10, 20, 30, 40, 50]
element = 30

if element in my_list:
    print(f"{element} found at index {my_list.index(element)}")
else:
    print(f"{element} not found")




## **Tuple Operations**

### **Program 10: Create and Display a Tuple**
# Program to create and display a tuple
my_tuple = (10, 20, 30)
print("Tuple elements:", my_tuple)



