class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  #also hopind I don't really need these: :trackable, :recoverable, :rememberable,
  devise :database_authenticatable, :registerable, :validatable

  has_many :carts
  belongs_to :current_cart, class_name: "Cart"

  def current_cart=(cart)
  	Cart.find(cart.id)
  end

  def current_cart
  	current_cart ||= Cart.new
  end
  
end
