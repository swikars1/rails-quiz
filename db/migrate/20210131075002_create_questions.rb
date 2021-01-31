class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :question
      t.bigint :answer
      t.bigint :question_set_id

      t.timestamps
    end
  end
end
