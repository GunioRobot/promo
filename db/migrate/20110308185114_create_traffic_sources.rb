class CreateTrafficSources < ActiveRecord::Migration
  def self.up
    create_table :traffic_sources do |t|
      t.string :name
      t.string :type
      t.string :user_account

      t.timestamps
    end
  end

  def self.down
    drop_table :traffic_sources
  end
end
