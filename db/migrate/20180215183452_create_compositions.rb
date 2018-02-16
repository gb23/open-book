class CreateCompositions < ActiveRecord::Migration[5.1]
    def change
      create_table :compositions do |t|
        t.text :text
        t.integer :votes
        t.integer :next_ids, :array => true
        t.integer :prev_id
        t.timestamps
      end
    end
  end