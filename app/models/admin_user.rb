class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :trackable,
         :recoverable,
         :rememberable,
         :validatable,
         :confirmable
end
