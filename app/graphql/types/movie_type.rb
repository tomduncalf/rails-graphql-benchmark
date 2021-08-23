module Types
  class MovieType < Types::BaseObject
    field :id, ID, null: false
    field :imdb_id, String, null: true
    field :title, String, null: true
    field :year, Integer, null: true
    field :image_url, String, null: true
    field :imdb_rating, Float, null: true
    field :imdb_rating_count, String, null: true
    field :director, DirectorType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
