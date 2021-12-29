class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks
  has_one_attached :avatar

  def avatar_thumbnail
    if avatar.attached?
      avatar.variant(resize_to_limit: [100, 100])   
   else
     "user.svg"
   end
  end
end
