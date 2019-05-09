class CreateTowns < ActiveRecord::Migration[5.1]
  def change
    create_table :towns do |t|
      t.string :title
      t.string :comment
      t.string :image
      t.string :region
      t.timestamps
    end
  end
end
