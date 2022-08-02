class Like < ApplicationRecord
  belongs_to :user
  belongs_to :gossip, optional: true
  belongs_to :comment, optional: true
  # validates :gossip, :comment, uniqueness: { scope: :user } ==> a redéfinir
end
