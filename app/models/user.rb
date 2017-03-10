class User < ApplicationRecord
  has_and_belongs_to_many :lists
  has_many :lists
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
  def self.search(search)
    where("email ILIKE ? ", "%#{search}%") 
  end
end
