
def binary_search(array, value)
  low = 0
  high = array.size - 1
  
  while low <= high
    mid = (low+high)/2
    guess = array[mid]
    if guess == value 
      return mid
    elsif guess > value
      high = mid-1
    else
      low = mid + 1
    end
  end
  "Value does not exist"
end
    

p binary_search([1,3,5,7,9], -1)