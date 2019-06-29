# Your Code Here
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new << yield(source_array[i])
    i += 1
  end
  new
end

def reduce(source_array, starting_point=nil)
  if starting_point
    memo = starting_point
    i = 0
  else
    memo = source_array[0]
    i = 1
  end
  source_array.each do |n|
    memo = yield(memo,n)
  end
  memo
end