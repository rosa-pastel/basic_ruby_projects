
dictionary_1 = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(sentence,dictionary)
    words=sentence.gsub(/[[:punct:]]/, '').downcase.split(' ')
    how_many=Hash.new
    dictionary.each do |word_in_dictionary|
        words.each do |word|
            if word.include?(word_in_dictionary.downcase)
                if how_many[word_in_dictionary]==nil
                    how_many[word_in_dictionary]=1
                else
                    how_many[word_in_dictionary]+=1
                end
            end
        end
    end
    p how_many
end
substrings("Howdy partner, sit down! How's it going?",dictionary_1)