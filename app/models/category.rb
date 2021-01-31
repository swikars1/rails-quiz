class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :category_questions, dependent: :destroy
	has_many :questions, through: :category_questions
end
