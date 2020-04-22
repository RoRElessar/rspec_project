class Bid < ApplicationRecord
  belongs_to :auction, class_name: 'Auction'
  belongs_to :bidder, class_name: 'User'

  validates :bidder, presence: true
end
