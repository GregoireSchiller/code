class AddFieldsToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :text_response, :string
    add_column :questions, :expected_response, :string
  end
end
