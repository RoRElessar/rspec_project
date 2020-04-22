require 'rails_helper'

RSpec.describe Post, type: :model do
  subject do
    described_class.new(title: 'Some title', body: 'Some body')
  end

  it 'valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a body' do
    subject.body = nil
    expect(subject).to_not be_valid
  end
end
