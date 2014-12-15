require 'rails_helper'

describe Contact do

  it 'has a valid factory' do
    expect(build(:contact)).to be_valid
  end

  it 'is valid with a firstname, lastname and mobile_number' do
    contact = Contact.new(
      first_name: 'Aaron',
      last_name: 'Summer',
      mobile_number: '01737112792'
    )
    expect(contact).to be_valid
  end

  it 'is invalid without a firstname' do
    contact = build(:contact, first_name: nil) 
    contact.valid?
    expect(contact.errors[:first_name]).to include("can't be blank")
  end

  it 'is invalid without a lastname' do
    contact = build(:contact, last_name: nil)
    contact.valid?
    expect(contact.errors[:last_name]).to include("can't be blank")
  end

  it 'is invalid without a mobile_number' do
    contact = build(:contact, mobile_number: nil)
    contact.valid?
    expect(contact.errors[:mobile_number]).to include("can't be blank")
  end

end
