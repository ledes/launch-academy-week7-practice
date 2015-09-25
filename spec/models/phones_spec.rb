require 'rails_helper'

RSpec.describe Phone, type: :model do
  describe Phone do
    it { should validate_presence_of(:year) }
    it { should validate_numericality_of(:year), only_integer: true}
    it { should validate_numericality_of(:year), greater_than_or_equal_to: 2003}
    it { should validate_presence_of(:battery_life) }
    it { should belong_to(:manufacturer) }
  end
end
