require "administrate/base_dashboard"

class SportDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    players: Field::HasMany,
    movies: Field::HasMany,
    articles: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    #image: Field::String,
    image: Administrate::Field::Image,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :image,
    :players,
    :movies,
    :articles,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :name,
    :image,
    :players,
    :movies,
    :articles,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :image,
  ].freeze

  # Overwrite this method to customize how sports are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(sport)
  #   "Sport ##{sport.id}"
  # end

  def display_resource(sport)
    sport.name
  end
end
