class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]

   has_many :bookings, through: :events
   has_many :events
   has_many :bookings
   has_many :received_reviews, class_name: :review, foreign_key: :reviewer_id
   has_many :written_reviews, class_name: :review, foreign_key: :reviewee_id

   def self.find_for_facebook_oauth(auth)
    user_params = auth.to_h.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end
end

  # validates :email_address, :password, :first_name, :last_name, :bank_account, presence: true
  # validates :email_address, uniqueness: true

  # roles. to state if user is guest / host and use that for reviews

  # maybe need to make seperate host / guest reviewer / reviewee roles? (so 4 in total)

