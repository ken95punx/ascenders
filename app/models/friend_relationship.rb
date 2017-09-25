class FriendRelationship < ApplicationRecord
  belongs_to :follower, class_name: "Player", optional: true
  belongs_to :followed, class_name: "Player", optional: true
end
