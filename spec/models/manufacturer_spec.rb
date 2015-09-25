require 'rails_helper'

RSpec.describe Manufacturer, type: :model do
  describe Manufacturer do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:country) }
  end
end
