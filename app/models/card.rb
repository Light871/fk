class Card < ApplicationRecord
  validates :original_text, presence: true
  validates :translated_text, presence: true

  validate :original_text_cannot_be_equal_to_translated_text

  before_create do
    self.review_date = Date.today + 3
  end

  def original_text_cannot_be_equal_to_translated_text
    errors.add(:equally, "can't be equal") if original_text.casecmp?(translated_text)
  end
end
