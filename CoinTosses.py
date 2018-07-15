import random

def coin_toss(num):
    heads = 0
    tails = 0
    for i in range(0,num):
        toss = random.random()
        # print toss
        if toss >= 0.5:
            heads = heads + 1
            print "Attempt", i, ": It is heads.", "Total Heads:", heads, 'Total Tails:', tails
        else:
            tails = tails + 1
            print "Attempt", i, ": It is tails.", "Total Heads:", heads, 'Total Tails:', tails        
coin_toss(5000)        