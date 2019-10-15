slope1 = input('Enter the slope of the first line : ')
slope2 = input('Enter the slope of the second line : ')
intercept1 =input('Enter the intercept of the first line (c1) : ')
intercept2 =input('Enter the intercept of the second line (c2) : ')

x =(( intercept1 - intercept2 )/(slope2 - slope1))
y = slope1*x + intercept1