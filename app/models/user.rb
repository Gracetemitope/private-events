class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :privates, foreign_key: "creator_id"
  has_many :event_attendees
  has_many :attending_events, foreign_key: "private_id", class_name: 'Private', through: :event_attendee, source: :private

  #  belongs_to :creator class_name: "User", foreign_key: "creator"
  # validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30, case_sensitive: false }

  def email_required?
    false
  end

  def password_required?
    false
  end
end
