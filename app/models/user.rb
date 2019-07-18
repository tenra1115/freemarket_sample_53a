class User < ApplicationRecord
  has_many :products
  has_many :products, foreign_key: :saler_id

  

  devise :omniauthable, omniauth_providers: %i[google_oauth2 facebook]
  

  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, on: :create }

  validates :nickname, length: { minimum: 1, maximum: 25 }

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.nickname = auth.info.name
      user.password = Devise.friendly_token[0,20]
    end
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
end
