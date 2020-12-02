class RenameChannelColumnandChangeTypeShows < ActiveRecord::Migration[5.2]
  def change
    rename_column :shows, :channel, :channel_id
    change_column :shows, :channel_id, 'integer USING CAST(channel_id AS integer)'
    remove_column :shows, :genre
  end
end
