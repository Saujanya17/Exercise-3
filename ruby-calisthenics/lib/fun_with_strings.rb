module FunWithStrings
  def palindrome?(str)
    # your code here
    p = str.downcase.gsub(/[^a-z]*\s*\d*/, "")
    p == p.reverse
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
	return anagramarray.uniq 
    
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

=begin
puts anagram_groups(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] )
puts palindrome?("A man, a plan, a canal -- Panama")  # => true
puts palindrome?("Madam, I'm Adam!")                  # => true
puts palindrome?("Abracadabra")                       # => false (nil is also ok)
puts count_words("A man, a plan, a canal -- Panama")
=end
