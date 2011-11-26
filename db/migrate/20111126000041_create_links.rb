class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :person
      t.integer :to
      t.timestamps
    end
  end
end
