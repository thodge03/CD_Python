# Odd/Even:
def odd_even():
    for x in range(1,2001):
        if x%2==0:
            print 'Number is ' + str(x) + '. This is an even number.'
        else:
            print 'Number is '+ str(x) + '. This is an odd number.'
odd_even()

# Multiply:
def multiply(arr,num):
    for y in range(len(arr)):
        arr[y] *= num
    return arr
a = [2,4,10,16]
print multiply(a,5)


# Hacker Challenge:

def layered_multiples(arr):
    print arr
    new_array = []
    for v in arr:
        index_arr = []
        for i in range(0,v):
            index_arr.append(1)
        new_array.append(index_arr)
    return new_array

x = layered_multiples(multiply([2,4,5],3))
print x