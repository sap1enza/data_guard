require 'rails_helper'

RSpec.describe Unit, type: :model do
  describe 'associations' do
    it { should have_many(:employees) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
