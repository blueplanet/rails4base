class SocialProfile < ActiveRecord::Base
  belongs_to :user

  validates :provider, presence: true
  validates :uid, presence: true
end
