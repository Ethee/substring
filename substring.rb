def substring(string, dictionary)
  sub_hash = {}
  string.downcase!
  string = string.split(" ")
  string.each do |str_word|
    dictionary.each do |dict_word|
      if (str_word.include? dict_word)
        if (sub_hash[dict_word] != nil)
          sub_hash[dict_word] += 1
        else
          sub_hash[dict_word] = 1
        end
      end
    end
  end
  puts sub_hash
end

dictionary = ["hello", "brother", "sister", "welcome",  "amazing", "estate", "sick", "bro"]
string = "Hello Brother and Sister what an amazing palace this is so sick."

substring(string, dictionary)
