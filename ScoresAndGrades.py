import random

def scores(num):
    for i in range(0,num):
        random_num = random.randrange(60,101,1)
        if random_num >= 60:
            if random_num >= 70:
                if random_num >= 80:
                    if random_num >= 90:
                        print 'Score: ' + str(random_num) + '; Your grade is A.'
                    else:
                        print 'Score: ' + str(random_num) + '; Your grade is B.'
                else:
                    print 'Score: ' + str(random_num) + '; Your grade is C.'
            else:
                print 'Score: ' + str(random_num) + '; Your grade is D.'
    print 'End of program. Bye!'
    
scores(10)