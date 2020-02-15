class UserInfo < ApplicationRecord
  validates :email_address, presence:true
  validates :email_address, uniqueness:true
  validates :password,      presence:true
  validates :password,      length: {maximum: 16}
  validates :password,      length: {minimum: 6}
  validates :first_name,    presence:true
  validates :last_name,     presence:true
  validates :user_name,     presence:true
  validates :user_name,     length: {maximum: 20}
  validates :user_name,     length: {minimum: 1}
  validates :account_id,    presence:true
  validates :account_id,    length: {maximum: 20}
  validates :account_id,    length: {minimum: 10}
  validates :address_number,length: {maximum: 7}
  validates :address_number,length: {minimum: 7}
  validates :prefecture,    presence:true
  validates :city,          presence:true
end
