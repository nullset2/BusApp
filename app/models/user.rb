class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User
  inheritance_column = :role
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= "User"
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def confirmed_at
  end

  def confirmation_token 
  end
end
