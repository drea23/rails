class CryptController < ApplicationController
  def encode
    @text_to_encode = params[:text_to_encode]
    @encoded = encode_text(@text_to_encode) if @text_to_encode
  end

  def decode
    @text_to_decode = params[:text_to_decode]
    @decoded = decode_text(@text_to_decode) if @text_to_decode
  end

  private

  def encode_text(text)
    alphabet = ("a".."z").to_a
    tab = text.downcase.split("").map{|letter| alphabet.include?(letter) ? alphabet[alphabet.index(letter) - 3] : letter }
    tab.join
  end

  def decode_text(text)
    alphabet = ("a".."z").to_a.reverse
    tab = text.downcase.split("").map{|letter| alphabet.include?(letter) ? alphabet[alphabet.index(letter) - 3] : letter }
    tab.join
  end


end
