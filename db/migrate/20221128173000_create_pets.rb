class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :sex
      t.string :breed
      t.string :pet_type
      t.integer :age
      t.integer :adopter_id
      t.integer :shelter_id
      t.boolean :adopted
      t.string :image

      t.timestamps
    end
  end
end
