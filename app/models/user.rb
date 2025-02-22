class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable,
         :omniauth_providers => [:discord, :developer]

  has_many :project_users
  has_many :projects, through: :project_users
  has_many :dashboard_users
  has_many :dashboards, through: :dashboard_users
  has_many :expedition_users
  has_many :expeditions, through: :expedition_users
  has_many :guilds
  has_many :templates
  has_one_attached :photo
  has_many :template_comments

  def name
    "#{pseudo}"
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.provider = auth.provider
      user.photo.attach(io: URI.open(auth.info.image), filename: "#{auth.info.name}.png")
      user.uid = auth.uid
      user.password = Devise.friendly_token[0,20]
      user.pseudo = auth.info.name
    end
  end

end

