class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :text_question
      t.integer :patient_id, index: true
      t.integer :doctor_id, index: true

      t.timestamps
    end
  end
end
