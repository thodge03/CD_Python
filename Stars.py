# Part I
def draw_stars(arr):
    print arr
    z= "*"
    for v in arr:
        print z*v

x = [4,6,1,3,5,7,25]
draw_stars(x)


# Part II
def draw_stars_letters(arr):
    print arr
    z = "*"
    for v in arr:
        if type(v)==int:
            print z*v
        else:
            print v[0]*len(v)

y = [4,'tom',1,3,'stacy','carl']
draw_stars_letters(y)