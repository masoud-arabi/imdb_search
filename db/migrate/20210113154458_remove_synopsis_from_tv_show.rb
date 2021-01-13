class RemoveSynopsisFromTvShow < ActiveRecord::Migration[6.0]
  def change
    remove_column :tv_shows, :synopsis, :text
  end
end
