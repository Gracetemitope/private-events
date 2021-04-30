class Private < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  validates :title_of_event, presence: true, uniqueness: true
  validates :event_date, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 50, maximum: 1000 }
  validates :location, presence: true, length: { minimum: 50, maximum: 1000 }
end
