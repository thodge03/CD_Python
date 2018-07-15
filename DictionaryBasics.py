info={'name':'Taylor','age':29,'country':'USA','language':'Spanish'}
def print_info(dict):
    for key,data in dict.iteritems():
        print 'My',key,'is',data
print_info(info)