class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, 
    :omniauthable, :omniauth_providers => [:github]

  def self.from_omniauth(auth)
    # NOTE: Even though auth is a hash, we can use dot notation to access its values!
  
    # Here we look for a user with that (provider: :github, uid: your_uid) pair,
    # and create them if they aren't in the database.
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      # we don't have to create a password, but we can
      user.password = Devise.friendly_token[0,20]
    end      
  end

end
