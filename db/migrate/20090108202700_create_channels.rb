class CreateChannels < ActiveRecord::Migration
  def self.up
    create_table :channels do |t|
      t.integer :channel_id
      t.text :raw_data
      t.text :field1
      t.text :field2
      t.text :field3
      t.text :field4
      t.text :field5
      t.text :field6
      t.text :field7
      t.text :field8

      t.timestamps
    end
  end

  def self.down
    drop_table :channels
  end
end
