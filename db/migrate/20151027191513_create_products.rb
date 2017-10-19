class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :name
      t.decimal :price
      t.string  :description
      t.string  :typeOf
      t.string  :image
      t.string  :thumbnail

      t.timestamps null: false
    end
  end
end

