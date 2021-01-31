class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.string :name
      t.bigint :position
      t.bigint :question_id

      t.timestamps
    end
  end
end
