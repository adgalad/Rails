class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :to
      t.string :from
      t.string :subject
      t.text :body
      t.integer :person_id

      t.timestamps null: false
    end
    add_index :emails, :person_id
  end
end
