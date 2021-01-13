class AddSyllabusToTvShow < ActiveRecord::Migration[6.0]
  def change
    add_column :tv_shows, :syllabus, :text
  end
end
