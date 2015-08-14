class User
  include Curator::Model

  include ActiveModel::Conversion
  include ActiveModel::Naming
  include ActiveModel::Validations
  include ActiveModel::Validations::Callbacks

  # TODO: support all modules
  devise :database_authenticatable, :registerable, :rememberable, :trackable#, :validatable, :recoverable

  attr_accessor :id, :created_at, :updated_at
  attr_accessor :email, :encrypted_password # Database authenticatable
  attr_accessor :reset_password_token, :reset_password_sent_at # Recoverable
  attr_accessor :remember_created_at # Rememberable
  attr_accessor :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip # Trackable
  attr_accessor :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email # Confirmable
  attr_accessor :failed_attempts, :unlock_token, :locked_at # Lockable
end
