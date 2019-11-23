class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.text :description
      t.string :couse_image

      t.timestamps
    end
  end
end
