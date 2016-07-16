class AddColumnAnsweredCorrectly < ActiveRecord::Migration
  def change
    add_column :cards, :answered_correctly, :boolean, default:false
  end
end
