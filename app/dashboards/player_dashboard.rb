require "administrate/base_dashboard"

class PlayerDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    movies: Field::HasMany,
    articles: Field::HasMany,
    gelleries: Field::HasMany,
    #sport: Field::BelongsTo,
    sport: BelongsToField,
    #administrator: Field::BelongsTo,
    administrator: BelongsToField,
    friend_relationships: Field::HasMany,
    followed_players: Field::HasMany.with_options(class_name: "Player"),
    id: Field::Number,
    name: Field::String,
    place_birth: Field::String,
    blood_type: Field::String,
    league_school: Field::String,
    team: Field::String,
    height: Field::Number,
    weight: Field::Number,
    alma_mater: Field::String,
    website: Field::String,
    introduction: Field::Text,
    opponent_next: Field::String,
    time_next: Field::DateTime,
    url_next: Field::String,
    opponent_result: Field::String,
    result_result: Field::String,
    self_point_result: Field::Number,
    enemy_point_result: Field::Number,
    url_result: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    birth_date: Field::DateTime,
    #profile_image: Field::String,
    profile_image: Administrate::Field::Image,
    #cover_image: Field::String,
    cover_image: Administrate::Field::Image,
    place_next: Field::String,
    hiragana_name: Field::String,
    katakana_name: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :sport,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :name,
    :hiragana_name,
    :katakana_name,
    :administrator,
    :sport,
    :profile_image,
    :cover_image,
    :birth_date,
    :place_birth,
    :blood_type,
    :league_school,
    :team,
    :height,
    :weight,
    :alma_mater,
    :website,
    :introduction,
    :opponent_next,
    :time_next,
    :url_next,
    :opponent_result,
    :result_result,
    :self_point_result,
    :enemy_point_result,
    :url_result,
    :place_next,
    :followed_players,
    :movies,
    :articles,
    :gelleries,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :hiragana_name,
    :katakana_name,
    :administrator,
    :sport,
    :articles,
    :movies,
    :gelleries,
    :birth_date,
    :place_birth,
    :blood_type,
    :league_school,
    :team,
    :height,
    :weight,
    :alma_mater,
    :website,
    :introduction,
    :opponent_next,
    :time_next,
    :url_next,
    :opponent_result,
    :result_result,
    :self_point_result,
    :enemy_point_result,
    :url_result,
    :place_next,
    :followed_players,
    :profile_image,
    :cover_image,
  ].freeze

  # Overwrite this method to customize how players are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(player)
  #   "Player ##{player.id}"
  # end

  def display_resource(player)
    player.name
  end
end
