def b_sort(arr)
  n = arr.length
  loop do
    swa = false
    (n-1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swa = true
      end
    end
    break if swa == false
  end
  return arr
end

puts "Say the ammount of values to sort just can be number."
num_value = gets.chomp.to_i
i = 0
arr = Array.new
while i < num_value do
  puts "Add the number for position #{i}"
  num = gets.chomp.to_i
  arr[i] = num
  i += 1
end
res = b_sort(arr)
puts "Your values in order are  #{res}"
