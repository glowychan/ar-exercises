require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :must_carry_mens_or_womens_apparel


  def must_carry_mens_or_womens_apparel
    if (!self.mens_apparel && !self.womens_apparel)
      errors.add(:mens_apparel, "a store must have mens_apparel or womens_apparel")
    end
  end

end

burnaby = Store.create(name: "burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Store.create(name: "richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown = Store.create(name: "gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count
