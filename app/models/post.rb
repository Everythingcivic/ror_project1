class Post
  include Mongoid::Document
  field :name, type: String
  field :age, type: Integer
  field :comment, type: String
end
