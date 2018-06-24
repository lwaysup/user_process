class User < ActiveRecord::Base
    attr_accessor :password     #allows variable password accessible without having to get it from controller
    validates :name, :email, :dob, :phone, :password,  presence: true
    before_create :encrypt_password


    private
    def encrypt(value)
        Digest::SHA1.hexdigest(value)
    end
    def encrypt_password
        return if password.blank?
        self.encrypted_password = encrypt(password)
    end
end
