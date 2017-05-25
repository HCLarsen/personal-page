class CreatePasswords < ActiveRecord::Migration
  def change
    create_table :passwords do |t|
      t.string :password

      t.timestamps null: false
    end
  end
end
