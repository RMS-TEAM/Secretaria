class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessor :password
        attr_accessible :nombre, :email, :password, :password_confirmation, :admin, :nickname


   before_save :encrypt_password

       def has_password?(submitted_password)
               encrypted_password == encrypt(submitted_password)
       end

       def User.authenticate(nick, submitted_password)
               user = User.find_by_nickname(nick)
               return nil if user.nil?
               return user if user.has_password?(submitted_password)
       end

       def User.authenticate_with_salt(id, cookie_salt)
               user = find_by_id(id)
               (user && user.salt == cookie_salt) ? user : nil
       end

       private

       def encrypt_password
               self.salt = make_salt if new_record?
               self.encrypted_password = encrypt(self.password) if new_record?
       end

       def encrypt(string)
               secure_hash("#{salt}--#{string}")
       end

       def make_salt
               secure_hash("#{Time.now.utc}--#{password}")
       end

       def secure_hash(string)
               Digest::SHA2.hexdigest(string)
       end
end
