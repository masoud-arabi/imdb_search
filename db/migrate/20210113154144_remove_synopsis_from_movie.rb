class RemoveSynopsisFromMovie < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :synopsis, :text
  end
end
