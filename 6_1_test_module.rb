require 'digest'

module Encryption extend self

  def encrypt(str)
    Digest::SHA256.hexdigest(str)
  end

end

class User
  include Encryption

  def initialize(name)
    @name = name
  end

  def encrypted_password(pass)
    encrypt(pass)
  end
end