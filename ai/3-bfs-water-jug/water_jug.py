
a = int(input("Enter Jug A Capacity: "))
b = int(input("Enter Jug B Capacity: "))
ai = int(input("Initially Water in Jug A: "))
bi = int(input("Initially Water in Jug B: "))
af = int(input("Final State of Jug A: "))
bf = int(input("Final State of Jug B: "))


print("\nList of Operations You Can Perform:")

print("1. Fill Jug A Completely")
print("2. Fill Jug B Completely")
print("3. Empty Jug A Completely")
print("4. Empty Jug B Completely")
print("5. Pour from Jug A until Jug B is full or Jug A is empty")
print("6. Pour from Jug B until Jug A is full or Jug B is empty")
print("7. Pour all water from Jug B to Jug A")
print("8. Pour all water from Jug A to Jug B")


while (ai != af or bi != bf):
    op = int(input("\nEnter the Operation Number: "))

    if op == 1:
        ai = a  # Fill Jug A
    elif op == 2:
        bi = b  # Fill Jug B
    elif op == 3:
        ai = 0  # Empty Jug A
    elif op == 4:
        bi = 0  # Empty Jug B
    elif op == 5:
        transfer = min(ai, b - bi)  # Amount that can be poured
        ai -= transfer
        bi += transfer
    elif op == 6:
        transfer = min(bi, a - ai)  # Amount that can be poured
        bi -= transfer
        ai += transfer
    elif op == 7:
        ai += bi  # Pour all from Jug B to Jug A
        bi = 0
    elif op == 8:
        bi += ai  # Pour all from Jug A to Jug B
        ai = 0
    else:
        print("Invalid operation! Please enter a number between 1 and 8.")
    
    print(f"Current State: Jug A = {ai}, Jug B = {bi}")