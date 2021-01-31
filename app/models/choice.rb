class Choice < ApplicationRecord
  validates :name, presence: true
  validates :position, presence: true

  belongs_to :question
end
