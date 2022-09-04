def bubble_sort(ary)
  length = ary.length
  (1..length).each do  |i|
    (1..(length-i)).each  do |jx|
      jy = jx - 1
      if ary[jy] > ary[jx]
        tmp = ary[jy]
        ary[jy] = ary[jx]
        ary[jx] = tmp
         p tmp
      end 
    end
  end
  return  ary
end

p bubble_sort([10, 8, 3, 5, 2, 4, 11, 18, 20, 33])