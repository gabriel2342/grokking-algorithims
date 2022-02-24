def findsmallest(array)
  smallest = array[0]
  (0...array.size).each do |i|
    if array[i] < smallest
      smallest = array[i]
    end
  end
  smallest
end

def selection_sort(array)
  resultarr = []
  loop do 
    smallest = findsmallest(array)
    resultarr.push(smallest)
    array.delete(smallest)
    break if array.empty?
  end
  resultarr
end

p selection_sort([5,9,10,21,90])