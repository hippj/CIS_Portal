class Usersubscription < ActiveRecord::Base
  belongs_to :subscription
  has_many  :series
end
