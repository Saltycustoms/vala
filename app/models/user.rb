class User < ApplicationRecord
  include RoleModel
  roles_attribute :roles_mask
  roles :admin, :apparel_consultant, :creative, :logistic, :procurement, :director

  acts_as_paranoid

  devise :database_authenticatable,
      :recoverable, :rememberable, :trackable, :validatable,
      :omniauthable, :omniauth_providers => [:valkyrie]

  def self.from_omniauth(auth)
    user = where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      #  user.name = auth.info.name   # assuming the user model has a name
      #  user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
    if user.persisted?
      user.roles_mask = auth.info.roles_mask
      user.save
    end
    user
  end

  def notifications(params=nil)
    if params
      Notification.all(params: params)
    else
      Notification.where(target_id: self.id, target_type: self.model_name.name)
    end
  end
end
