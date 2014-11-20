class CreateAdherents < ActiveRecord::Migration
  def change
    create_table :adherents do |t|
      t.string :firstname
      t.string :lastname
      t.string :user_email
      t.string :phone

      t.timestamps
    end
  end
end
