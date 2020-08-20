require 'rails_helper'

RSpec.describe Pet, type: :model do
  it { should validate_presence_of :name}
  it { should validate_presence_of :image}
  it { should validate_presence_of :age}
  it { should validate_presence_of :sex}
  it { should belong_to :shelter}
end
