class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :Website
      t.text :info
      t.string :area

      t.timestamps
    end
  end
end
