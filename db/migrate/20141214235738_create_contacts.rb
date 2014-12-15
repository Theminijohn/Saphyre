class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name

      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
    add_index :contacts, :first_name
    add_index :contacts, :last_name
    add_index :contacts, :user_id
    add_index :contacts, :project_id
  end
end
