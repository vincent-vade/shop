class OrderItem < ActiveRecord::Base
  belongs_to :movie
  belongs_to :order

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :movie_present
  validate :order_present

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      movie.price
    end
  end

  def total_price
    unit_price * quantity
  end

	private
	  def movie_present
	    if movie.nil?
	      errors.add(:movie, "n'est pas valide ou n'est pas actif.")
	    end
	  end

	  def order_present
	    if order.nil?
	      errors.add(:order, "is not a valid order.")
	    end
	  end

	  def finalize
	    self[:unit_price] = unit_price
	    self[:total_price] = quantity * self[:unit_price]
	  end
end
