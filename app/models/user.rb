class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum access_level: [:contributor, :admin]

  after_initialize :set_default_access_level, :if => :new_record?

  def set_default_access_level
    self.access_level = :contributor
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :comments
end
