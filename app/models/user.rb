class User < ApplicationRecord
  devise :omniauthable, omniauth_providers: %i[google_oauth2 facebook]
  
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  validates :encrypted_password, length: { minimum: 6 } 

  validates :nickname, length: { minimum: 1, maximum: 10 }

  validates :first_name, presence: true

  validates :last_name, presence: true

  validates :kana_first_name, presence: true

  validates :kana_last_name, presence: true

  validates :birth_date, presence: true


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
