class CreateCredentials < ActiveRecord::Migration[6.1]
  def change
    create_table :credentials do |t|
      t.string :username
      t.string :password_digest
      t.integer :adopter_id

      t.timestamps
    end
  end
end
