class CategoryQuestion < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :question, optional: true
end
