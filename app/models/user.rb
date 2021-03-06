class User < ActiveRecord::Base
  has_many :training_sessions, :foreign_key => :client_id
  has_many :training_plan_templates, :foreign_key => :owner_id
  has_many :training_session_templates, :foreign_key => :owner_id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  scope :client, -> {where("type = ? ", Constants::TYPES_OPTIONS[:user])}

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

  def self.type
    if self.type.nil?
      return "User"
    else
      self.type
    end
  end
end




