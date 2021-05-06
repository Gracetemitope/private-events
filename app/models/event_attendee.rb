class EventAttendee < ApplicationRecord
  belongs_to :user
  belongs_to :Private
end
