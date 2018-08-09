class CreateBodies < ActiveRecord::Migration[5.2]
  def change
    create_table :bodies do |t|
      t.string :weight
      t.string :tall

      t.timestamps
    end
  end
end
