class AddColumnAnswerAttempts < ActiveRecord::Migration
  def change
    add_column :cards, :answer_attempts, :integer, default:0
  end
end
