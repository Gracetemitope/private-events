class Private < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :event_attendees
  has_many :attendees, class_name: 'User', foreign_key: 'user_id', through: :event_attendees, source: :user

  scope :past, -> { where('event_date < ?', Date.current) }
  scope :upcoming, -> { where('event_date >= ?', Date.current) }

  validates :title_of_event, presence: true, uniqueness: true
  validates :event_date, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 50, maximum: 1000 }
  validates :location, presence: true, length: { minimum: 10, maximum: 1000 }
end
