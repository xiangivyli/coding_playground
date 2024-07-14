## Table of Contents
- [String Manipulation](#string-manipulation)
- [Dictionary Manipulation](#dictionary-manipulation)

### String Manipulation
#### `count` 
```python
def count(string):
    # Create and return a dictionary where the keys are characters in the string
    # and the values are the counts of how many times each character appears in the string
    return {i: string.count(i) for i in string}
```
#### `join`
- `''.join(i * 2 for i in s)`put new characters together

### Dictionary Manipulation
#### `get` and `items`
```python
def find_it(seq):
    # Initialize an empty dictionary to store counts
    count_dict = {} 

    # Count occurrences of each number
    for num in seq:
        # Update the count of num by adding 1 to the current count (or 0 if num is not in the dictionary)
        count_dict[num] = count_dict.get(num, 0) + 1
    
    # Find the number with an odd count
    for num, count in count_dict.items():
        if count % 2 != 0:
            return num
```
