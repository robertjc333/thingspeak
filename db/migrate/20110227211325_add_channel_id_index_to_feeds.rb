class AddChannelIdIndexToFeeds < ActiveRecord::Migration
  def self.up
		add_index :feeds, :channel_id
  end

  def self.down
		remove_index :feeds, :channel_id
  end
end
