  def substrings(string, dictionary)
    word_array = string.split(' ')
    found_hash = Hash.new(0)
      dictionary.each do |entry|
        word_array.each do |word|
          if word.downcase.include?(entry)
            found_hash[entry] += 1
          end
        end
      end
    found_hash
  end

  # debugger
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  puts "What string will we use?"
  string = gets.chomp
  puts substrings(string, dictionary)