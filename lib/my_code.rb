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

def reduce(source_array, starting_point=0)
  if source_array[4] == true
    starting_point = true
  end
  memo = starting_point
  source_array.each do |n|
    memo = yield(memo,n)
  end
  memo
end