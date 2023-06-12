def find_nth_largest(numbers, n):
    numbers.sort(reverse=True)  # Sort the numbers in descending order
    if n > len(numbers):
        return "Invalid value of n"

    return str(numbers[n - 1])


# Take user input for the list of numbers
number_list = input("Enter a list of numbers, separated by spaces: ").split()
number_list = [int(num) for num in number_list]

# Take user input for the nth value
nth = int(input("Enter the value of n: "))

result = find_nth_largest(number_list, nth)
print(f"The {nth} largest number is: {result}")
