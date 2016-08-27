class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User
  self.inheritance_column = :role
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role(role)
    self.role ||= "Client"
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, with: Devise.email_regexp
  validates :role, presence: true

end
