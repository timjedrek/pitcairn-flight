class AddPhoneToQuizResults < ActiveRecord::Migration[7.0]
  def change
    add_column :quiz_results, :phone, :string
  end
end
