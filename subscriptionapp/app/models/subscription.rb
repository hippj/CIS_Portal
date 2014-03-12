class Subscription < ActiveRecord::Base
  has_and_belongs_to_many :series
  
  #SOURCE:  http://stackoverflow.com/questions/18738180/cant-get-has-and-belongs-to-many-to-work
  def series_id=(value)
    self.series << Series.find(value)
  end
  #def unsubscribe=(value)
  #	self.series.delete(value)
  #end
  #def unsubscribe=(value)
  #	self.series.delete(value)
  #end
end
