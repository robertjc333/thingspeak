class AddIndexToFeeds < ActiveRecord::Migration
  def self.up
		add_index :feeds, :device_id
                add_index :feeds, :channel_id
		add_index :feeds, :created_at
  end

  def self.down
		remove_index :feeds, :device_id
                remove_index :feeds, :channel_id
		remove_index :feeds, :created_at
  end
end
