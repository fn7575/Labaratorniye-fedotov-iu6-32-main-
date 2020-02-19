class CreateShelters < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.float :value
      t.text :numbers

      t.timestamps
    end
  end
end
