class User < ActiveRecord::Base
  has_many :orders
  
  attr_accessible :username , :first , :last , :email , :password , :phone , :role , :bio , :facebook , :twitter , :linkedin , :org, :website, :showP, :showE, :showText, :showTwit, :showFace, :showLink, :showWeb, :classicMode
  attr_accessor :updating_password

  validates_presence_of :username, if: :on_personal_step?,
                    length: { minimum: 2 },
                    uniqueness: { case_sensitive: false }
  validates_presence_of :first, if: :on_personal_step?
  validates_presence_of :last, if: :on_personal_step?
  validates_presence_of :role, if: :on_personal_step?
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_presence_of :email, if: :on_personal_step?, format: {with: VALID_EMAIL_REGEX}
               #     inclusion: { in: %w(),
               #     message: "Email %{value}" }
  has_secure_password
  
  validates_format_of :phone, :with => /length: { within: 10..14 }/, :allow_blank => true
                   # numericality: { only_integer: true }

  validates_confirmation_of :password, :if => should_validate_password?

  def should_validate_password?
    updating_password || new_record?
  end

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end
end