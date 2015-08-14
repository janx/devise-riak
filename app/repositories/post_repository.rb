class PostRepository
  include Curator::Repository

  indexed_fields :author
end
