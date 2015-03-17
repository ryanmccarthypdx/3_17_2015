class AddNumberToLessons < ActiveRecord::Migration
  def change
    change_table :lessons do |t|
      t.integer :number
    end
  end
end
