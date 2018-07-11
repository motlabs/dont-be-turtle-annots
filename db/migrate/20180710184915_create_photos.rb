class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.boolean :done, default: false
      t.boolean :is_turtle
      t.string :code

      t.integer :head_x, default: 0
      t.integer :head_y, default: 0
      t.integer :head_occluded, default: 0
      t.integer :neck_x, default: 0
      t.integer :neck_y, default: 0
      t.integer :neck_occluded, default: 0
      t.integer :rshoulder_x, default: 0
      t.integer :rshoulder_y, default: 0
      t.integer :rshoulder_occluded, default: 0
      t.integer :lshoulder_x, default: 0
      t.integer :lshoulder_y, default: 0
      t.integer :lshoulder_occluded, default: 0

      t.timestamps
    end
  end
end
