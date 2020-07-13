# frozen_string_literal: true

# User type model used for registration/sessions
class Nerd < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :link_likes
  has_many :liked_links, through: :link_likes, source: :link

  validates :email, presence: true, uniqueness: true
end
