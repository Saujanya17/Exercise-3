module FunWithStrings
  def palindrome?(str)
    # your code here
    p = str.downcase.gsub(/[^a-z]*\s*\d*/, "")
   puts "\n Palindrome\n" if p == p.reverse
  end
  
  def count_words(str)
    # your code here
    wordhash = Hash.new
    str.downcase.scan(/\b\w*\b/) do |word|
        if wordhash.has_key?(word) 
            wordhash[word] += 1
        elsif word == ""
        else wordhash[word] = 1
        end
        end
        p wordhash
  end
  def anagram_groups(words)
    # your code here
    anagramarray = Array.new
    words.each do |aword|  #do for allthe words
            temp = [] #holds result
        words.each do |nextword|    
            if (aword.downcase.split(//).sort == nextword.downcase.split(//).sort) #compare characters
                temp.push(nextword)# if the same MOVE IT to the new array
            end
        end
        anagramarray.push(temp) # push temp into results array 
    end
        
    # ouput the arrays!!
    print (anagramarray.uniq) 
    
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

s = String.new
j = String.new
k = String.new
s.anagram_groups(['cars', 'uofr', 'potatoes', 'racs', 'four','scar', 'creams', 'scream', 'tomatoes', 'real', 'madrid', 'bear', 'reab'] )
j.palindrome?("RaceCar")  
j.palindrome?("Madam, I'm Adam!")                  
j.palindrome?("Abracadabra")                       
k.count_words("A huge victory for Real madrid. A truly sensational victory.")
