arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|str| str.start_with?('s') || str.start_with?('w')}
print arr