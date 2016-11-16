#input Date today
#output Date ageBorderLine

def ageBorderLine = today.minus(18*365);

return ["ageBorderLine": ageBorderLine]