class RenameCouseImageColumnToCourses < ActiveRecord::Migration[5.2]
  def change
    rename_column :courses, :couse_image, :image
  end
end
