class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, nil: false
      t.text :description
      t.string :plan
      t.string :duration
      t.text :furnitures
      t.string :author
      t.text :history

      t.timestamps
    end
  end
end
