require "administrate/base_dashboard"

class FriendRelationshipDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    follower: Field::BelongsTo.with_options(class_name: "Player"),
    followed: Field::BelongsTo.with_options(class_name: "Player"),
    id: Field::Number,
    follower_id: Field::Number,
    followed_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :follower,
    :followed,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :follower,
    :followed,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :follower,
    :followed,
  ].freeze

  # Overwrite this method to customize how friend relationships are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(friend_relationship)
  #   "FriendRelationship ##{friend_relationship.id}"
  # end
end
