# frozen_string_literal: true

# User type model used for registration/sessions
class Nerd < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]
  has_many :link_likes, dependent: :destroy
  has_many :liked_links, through: :link_likes, source: :link
  has_many :links, dependent: :destroy

  validates :email, presence: true, uniqueness: true

  class << self
    def from_google(email:, full_name:, uid:, avatar_url:)
      create_with(uid: uid, full_name: full_name, avatar_url: avatar_url, password: default_password)
        .find_or_create_by!(email: email)
    end

    private

    def default_password
      "default_pass#{rand(1..200)}"
    end
  end
end
