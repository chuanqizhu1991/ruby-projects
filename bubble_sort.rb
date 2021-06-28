def bubble_sort(arr)
sorted = false
max = arr.max + 1

while sorted==false do 
    arr.each_with_index do |x,i|
        if i < arr.length-1
            if x>arr[i+1]
                arr[i]=arr[i+1]
                arr[i+1]=x
            end
        end
    end

    arr0 = arr + [max]
    if arr.all?{|x| x<= arr0[arr.index(x)+1]}
        sorted = true
    end

end

print arr

end

bubble_sort([4,3,78,2,0,2])
