class EncryptionEngine

  def encrypt(message)
    lowers =*("a".."z")
    uppers =*("A".."Z")
    # lower =*("a".."z")
    encrypted = []
    message.chars.map do |character|
		  # if upper.include? character
      if character == character.downcase
        if lowers.index(character) <= 13
          new_char = lowers.index(character) + 13
        else
          new_char = lowers.index(character) - 13
        end
      encrypted.push(lowers[new_char])
      else
        if uppers.index(character) <= 13
          new_char = uppers.index(character) + 13
        else
          new_char = uppers.index(character) - 13
        end
      encrypted.push(uppers[new_char])
      end

      # puts "The index is #{new_char}"
      # diff = puts new_char - 26

      # else
		  # 	print character
		  # end
    end
    return encrypted.join
  end

end

engine = EncryptionEngine.new
print engine.encrypt("MyMessage")