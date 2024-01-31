class Message < ApplicationRecord
  validates :english_message, presence: true, length: { maximum: 25 }
  validates :morse_code, presence: true
end
