class User < ActiveRecord::Base
  validates :username, presence: true,
                    length: { minimum: 2 },
                    uniqueness: { case_sensitive: false }
  validates :first, presence: true
  validates :last, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
               #     inclusion: { in: %w(),
               #     message: "Email %{value}" }
  has_secure_password
  validates :password, presence: true,
                    length: { minimum: 6 },
                    confirmation: true
  validates :phone, presence: true,
                    length: { within: 10..14 }
                   # numericality: { only_integer: true }
  def User.digest(string)
    cost=ActiveModel::SecurePassword.min_cost? 
    BCrypt::Engine::MIN_COST 
    BCrypt::Engine.cost
    BCrypt::Password.create(string, cost:cost)
  end

end
