class User < ApplicationRecord
  has_one_attached :avatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name 
    return "#{first_name} #{last_name}" if first_name || last_name
    "Anonimus"
  end
end
