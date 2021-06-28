def stock_picker(arr)
    dayBuy = 0
    daySale = 1
    diff = arr[1]-arr[0]
    arr.each_with_index do |x,i|
        j = i+1
        while j< arr.length do
            diff0 = arr[j]-x
            if diff < diff0
                diff = diff0
                dayBuy = i
                daySale = j
            end
            j += 1
        end
    end

    puts [dayBuy,daySale]

end

stock_picker([17,3,6,9,15,8,6,1,10])
