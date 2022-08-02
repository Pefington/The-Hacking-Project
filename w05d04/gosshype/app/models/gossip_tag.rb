class GossipTag < ApplicationRecord
  belongs_to :tag
  belongs_to :gossip
  validates :tag, uniqueness: { scope: :gossip }
end
