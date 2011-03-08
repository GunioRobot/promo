class CreateAffiliateNetworks < ActiveRecord::Migration
  def self.up
    create_table :affiliate_networks do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :affiliate_networks
  end
end
