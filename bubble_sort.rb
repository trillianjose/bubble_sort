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

def bubble_sort_by(arr, &block)
    swap = true
    while swap
        swap = false
        arr.each_with_index do |num, i|
            if i + 1 == arr.length
                break
            elsif yield(arr[i], arr[i + 1]) > 0
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                swap = true
            end
        end
    end
    return arr
end

puts "Do you want to sort a string press 1 or a number press 2"
choose = gets.chomp.to_i
if choose == 1
  puts "Say the ammount of values to sort just can be a String."
  num_value = gets.chomp.to_i
  i = 0
  arr = Array.new
  while i < num_value do
    puts "Add the number for position #{i}"
    num = gets.chomp.to_s
    arr[i] = num
    i += 1
  end
  res = bubble_sort_by(arr) { |left, right| left.length - right.length }
  puts "Your values in order are  #{res}"
elsif choose == 2
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
else
  puts "Wrong choise"
end
