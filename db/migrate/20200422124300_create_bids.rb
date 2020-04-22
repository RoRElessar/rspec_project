class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
      t.references :auction, foreign_key: true
      t.integer :bidder_id
      t.integer :amount

      t.timestamps
    end
  end
end
