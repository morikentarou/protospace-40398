class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :prototypes
  has_many :comments, dependent: :destroy

   validates :email,              uniqueness: true
   validates :encrypted_password, length: { minimum: 6 }
   validates :name,               presence: true
   validates :profile,            presence: true
   validates :occupation,         presence: true
   validates :position,           presence: true
end
