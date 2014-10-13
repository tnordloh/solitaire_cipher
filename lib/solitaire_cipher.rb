require_relative "solitaire_cipher/cipher"

module SolitaireCipher
  def self.encrypt(string,deck=nil)

    SolitaireCipher::Cipher.new(string,deck).encrypt

  end
  def self.decrypt(string,deck=nil)

    SolitaireCipher::Cipher.new(string,deck).decrypt

  end

end

