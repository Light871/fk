class Card < ApplicationRecord
  validates :original_text, presence: true
  validates :translated_text, presence: true

  validate :original_text_cannot_be_equal_to_translated_text

  def original_text_cannot_be_equal_to_translated_text
    errors.add(:equally, "can't be equal") if
      original_text.downcase == translated_text.downcase
  end
end