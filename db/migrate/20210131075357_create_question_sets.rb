class CreateQuestionSets < ActiveRecord::Migration[6.1]
  def change
    create_table :question_sets do |t|
      t.bigint :score
      t.float :percent
      t.bigint :user_id

      t.timestamps
    end
  end
end
