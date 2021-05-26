class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :wish_list

  validates :nick_name, presence: true
  after_create :wish_list_creation

  def wish_list_creation
    WishList.create!(user: self)
  end
end
