class UserSubscription < ActiveRecord::Base
  belongs_to :subscriptions
  validates :username, presence: true,
                    length: { minimum: 2 }
end
