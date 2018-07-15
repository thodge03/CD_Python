name = ["Anna", "Eli", "Pariece", "Brendan", "Amy", "Shane", "Oscar"]
favorite_animal = ["horse", "cat", "spider", "giraffe", "ticks", "dolphins", "llamas","elephants"]

def make_dict(list1,list2):
    lists_to_tuples= zip(list1,list2)
    # print name_animal
    tuples_to_dict = dict(lists_to_tuples)
    print tuples_to_dict
make_dict(name,favorite_animal)

# Hacker Challenge
def make_dict2(list1,list2):
    if list2 > list1:
        temp = list1
        list1 = list2
        list2 = temp
        lists_to_tuples= zip(list1,list2)
        # print name_animal
        tuples_to_dict = dict(lists_to_tuples)
        print tuples_to_dict
    else:
        lists_to_tuples= zip(list1,list2)
        # print name_animal
        tuples_to_dict = dict(lists_to_tuples)
        print tuples_to_dict
make_dict2(name,favorite_animal)
