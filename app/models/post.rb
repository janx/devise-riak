class Post
  include Curator::Model

  include ActiveModel::Conversion
  include ActiveModel::Naming
  include ActiveModel::Validations

  attr_accessor :id, :title, :author, :content, :created_at, :updated_at
end
