class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :trackable, :validatable, :lockable     

	validates :name, :presence => true, length: { minimum: 2 }, on: :create
	#validates :phone, :presence => true, numericality: { only_integer: true }
	#validates :address, :presence => true, on: :create  

end