class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :orders
    has_many :carts,   dependent: :destroy

	def current_cart
		carts.last
	end

	def role?
	  case role
	  when 1
	  	"admin"
	  when 2
	  	"user"
	  end
	end

end
