require 'rails_helper'

describe Contractor do
  it 'has a valid factory' do
    expect(build(:contractor)).to be_valid
  end

  it 'is invalid without name' do
    expect(build(:contractor, name: nil)).to_not be_valid
  end

  it 'is invalid without street' do
    expect(build(:contractor, street: nil)).to_not be_valid
  end

  it 'is invalid without zip code' do
    expect(build(:contractor, zip_code: nil)).to_not be_valid
  end

  it 'is invalid without city' do
    expect(build(:contractor, city: nil)).to_not be_valid
  end

  it 'is invalid without nip' do
    expect(build(:contractor, nip: nil)).to_not be_valid
  end
end
