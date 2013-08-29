def bubblr
  system("clear")
  puts " WELCOME TO Bubblr!"
  puts " Enter sequence of numbers, separated by commas...."
    r = gets.chomp
    r = r.split(',')
    r = r.map(&:to_i)
    puts " Creating array............."
    puts " INITIAL ARRAY: #{r}"
    b = r.to_s
    c = 0
    begin
      bubble = false
      for i in 0...(r.length - 1) do
        puts "Comparing positions #{i+1} & #{i+2}.........."
        if r[i] > r[i+1]
          r[i],r[i+1] = r[i+1],r[i]
          print " #{r[i+1]} !< #{r[i]} "
          puts " => BUBBLE_SORTING => #{r}"
          # puts " = #{r}"
          c = c+1
          bubble = true
        else
          puts "  #{r[i]} < #{r[i+1]} => OK"
        end
      end
    end until bubble == false
    puts "UNSORTED ARRAY: #{b}"
    puts "SORTED ARRAY: #{r}"
    puts " TOTAL OF #{c} BUBBLE_SORTS COMPLETED"
    puts " Thanks for trying Bubblr!"
end

bubblr


# OLD CODE, keeping it for legacy
# def bubble_sort
#     puts "Welcome to Bubblr."
#     puts" Enter sequence of numbers, separated by commas...."
#     r = gets.chomp
#     r = r.split(',')
#     r = r.map(&:to_i)
#   puts "We start with #{r}"
#   same = true
#   while same
#     same = false
#     for i in 0...(r.length - 1)
#       #r[i] = r[i].to_i
#       #r[i+1] = r[i+1].to_i
#         puts "Checking position #{i+1}"
#         if r[i] > r[i+1]
#           r[i],r[i+1] = r[i+1],r[i]
#           puts "SWAPPING #{r[i]} & #{r[i+1]}"
#           puts " #{r}"
#           same = true
#         end
#     end
#   end
#   puts " We end with #{r}"
# end
# # bubble_sort