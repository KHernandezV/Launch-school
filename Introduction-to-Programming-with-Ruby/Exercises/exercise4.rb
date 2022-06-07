num = [1,2,3,4,5,6,7,8,9,10]
chosen = num.select {|x|x % 2 != 0}
num.push(11)
num.unshift(0)
