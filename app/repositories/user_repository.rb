class UserRepository
  include Curator::Repository

  indexed_fields :email, :reset_password_token, :confirmation_token, :unlock_token
end
