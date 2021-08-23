module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :movies, MovieType.connection_type, null: false do
      description "Find all movies"
    end

    def movies()
      Movie.all.includes(:director)
    end

    field :movies_plain, [MovieType], null: false do
      description "Find all movies (non-Relay)"
    end

    def movies_plain()
      Movie.all.includes(:director)
    end
  end
end
