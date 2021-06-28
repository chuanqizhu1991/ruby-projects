def caesar_cipher(str,num)
   strArr = str.chars
   azStr = "abcdefghijklmnopqrstuvwxyz"
   azStr0 = azStr.upcase
   azArr = azStr.chars
   azArr0 = azStr0.chars
   cipherArr = []
   
   strArr.each do |x|
    if azArr.include?(x)
        cipherArr.push(azArr[(azArr.index(x) + num)%26])
    elsif azArr0.include?(x)
        cipherArr.push(azArr0[(azArr0.index(x) + num)%26])
    else
        cipherArr.push(x)
    end
end
   
   puts cipherArr.join("")

end

caesar_cipher("What a string!", 5)