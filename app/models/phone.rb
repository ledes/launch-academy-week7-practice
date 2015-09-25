class Phone < ActiveRecord::Base
  belongs_to :manufacturer

  validates_presence_of :manufacturer
  validates_presence_of :year
  validates_numericality_of :year, only_integer: true
  validates_numericality_of :year, greater_than_or_equal_to: 2003
  validates_presence_of :battery_life

end
