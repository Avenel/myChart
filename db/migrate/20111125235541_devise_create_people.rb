class DeviseCreatePeople < ActiveRecord::Migration
  def self.up
    create_table(:people) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      t.references :link
      t.string :name

      t.timestamps
    end

    add_index :people, :email,                :unique => true
    add_index :people, :reset_password_token, :unique => true   
    
  end

  def self.down
    drop_table :people
  end
end
