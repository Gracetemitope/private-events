class Event_attendees < ApplicationRecord
  belongs_to :private
  belongs_to :user
end
