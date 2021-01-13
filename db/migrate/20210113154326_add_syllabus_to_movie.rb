class AddSyllabusToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :syllabus, :text
  end
end
