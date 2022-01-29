def caesar_cipher(string, key)
	new_string=''
	letters=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
	string.split('').map! { |letter_of_phrase|
		is_letter = 0
		letters.map.with_index { |letter, index|
			if letter==letter_of_phrase
				new_string+=letters[index+key]
				is_letter=1
			elsif letter==letter_of_phrase.downcase
				new_string+=letters[index+key].upcase
				is_letter=1
			end
		}
		new_string+=letter_of_phrase if is_letter == 0
	}
	new_string
end
