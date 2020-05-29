require 'rails_helper'

RSpec.describe EmployeeGroup, type: :model do
  describe 'associations' do
    it { should belong_to(:employee) }
    it { should belong_to(:group) }
  end
end
