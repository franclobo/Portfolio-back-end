class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.text :image, array: true, default: []
      t.text :skills, array: true, default: []
      t.text :github
      t.text :demo

      t.timestamps
    end
  end
end
