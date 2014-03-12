class Series < ActiveRecord::Base
	has_and_belongs_to_many :subscriptions
	has_many :events
	
	#def unsubscribe=(value)
	#  self.subscriptions.delete << Subscription.find(value)
    #end
end
