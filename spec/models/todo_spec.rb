require 'rails_helper'

RSpec.describe Todo, type: :model do
  context 'can create a valid todo instance' do
    subject { Todo.new(description: "Derp") }
    it { is_expected.to be_valid }
  end
end
