class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        has_one_attached :avatar
        has_many :posts
        has_many :bookmarks
        has_many :comments
        
  def username 
    email.split('@').first
  end
end
