def letterChange(str)
  vowels_list = ['a','e','i','o','u']
  
  next_letter = str.downcase.split("").each do |letter|
    if letter == 'z'
      letter.sub!('z','a')
    else
      letter.next!
    end
  end
  
  next_letter.each do |vowel|
    if vowels_list.include?(vowel)
      vowel.capitalize!
    end
  end
  
  next_letter.join("")
end

puts letterChange('unicorn')