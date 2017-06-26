class User < ApplicationRecord
  devise :two_factor_authenticatable,
         :otp_secret_encryption_key => "encryption_key" #ENV['ENCRYPTION_KEY']
         
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable
end
