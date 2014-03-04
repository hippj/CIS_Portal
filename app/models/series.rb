class Series < ActiveRecord::Base
  has_many :events, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 2 }
  validates :text, presence: true,
                    length: { minimum: 1, maximum: 256 }
end
