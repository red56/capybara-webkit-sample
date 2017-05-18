class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.float :weight
      t.float :volume

      t.timestamps null: false
    end
  end
end
