class AddSectionIdToLessons < ActiveRecord::Migration
  def change
    change_table :lessons do |t|
      t.integer :section_id
    end
  end
end
