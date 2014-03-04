class Event < ActiveRecord::Base
	belongs_to :series
	validates :date, presence: true
	validates :title, presence: true,
                    length: { minimum: 2 }
	validates :description, presence: true,
                    length: { minimum: 1, maximum: 256 }
	validates :location, presence: true,
                    length: { minimum: 5 }
end
