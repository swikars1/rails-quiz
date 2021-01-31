class Question < ApplicationRecord
  validates :question, presence: true
  validates :answer, presence: true

  has_many :category_questions, dependent: :destroy
	has_many :categories, through: :category_questions
  has_many :choices
  belongs_to :question_set, optional: true
end
