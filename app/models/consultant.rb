class Consultant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :sei_loc
  has_many :consultant_projects
  has_many :projects, through: :consultant_projects
  has_many :billings
  has_many :consultant_sows
  has_many :sows, through: :consultant_sows

end
