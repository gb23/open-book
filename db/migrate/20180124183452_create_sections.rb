class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.text :text
      t.integer :votes
      t.integer :next_ids, :array => true

      t.timestamps
    end
  end
end
