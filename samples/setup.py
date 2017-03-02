# Python script to setup for run.py
# Written as two separate files to allow user to look at generated data before
# Starting with machine learning.

# Import necessary libs
import random, pandas, pickle

# Random list generator function
def randomList(length, distribution):
    r = random.Random()
    for i in range(length):
        rand = r.randint(0,99) + round(r.random(),3)


# Generate a small pseudorandom dataset (5 columns, 150 samples)
df = pandas.DataFrame()
for header in ['A', 'B', 'C', 'D', 'E']:
    for i in range(150):
        df[header][i] = random.randomint(0,99) + round(random.random(), 3)


print (df.describe())
