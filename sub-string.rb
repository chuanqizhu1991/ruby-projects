def substrings(str, dic)
    strArr = str.downcase.split(" ")
    hash_match = Hash.new(0)
    dic.each do |xdic|
        strArr.each do |xstr|
            if xstr.include?(xdic)
                hash_match[xdic] += 1
            end
        end
    end
    puts hash_match
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
