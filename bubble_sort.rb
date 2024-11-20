def bubble_sort(arr)
  number_of_items = arr.length
  return arr if number_of_items <= 1
  #iterate over all items
  0.upto(number_of_items - 1) do |i|
    swapped = false
    #start 2nd iteration and compare values to the right
    (number_of_items - i - 1).times do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end
    #break loop if there's no swap after 1st iteration
    break unless swapped
  end
  arr
end
