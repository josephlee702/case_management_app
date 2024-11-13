require 'rails_helper'

RSpec.describe Client, type: :model do
  before(:each) do
    @client = build(:client)
  end
  

  describe "associations" do
    it "has many cases" do
    end
  end

  describe "validations" do
    it "is valid with valid attributes" do
      expect(@client).to have_attribute(:first_name)
      expect(@client.first_name).to be_a(String)
      expect(@client).to have_attribute(:last_name)
      expect(@client.last_name).to be_a(String)
      expect(@client).to have_attribute(:email)
      expect(@client.email).to be_a(String)
      expect(@client).to have_attribute(:phone_number)
      expect(@client.phone_number).to be_a(String)
      expect(@client).to have_attribute(:address)
      expect(@client.address).to be_a(String)
      expect(@client).to have_attribute(:city)
      expect(@client.city).to be_a(String)
      expect(@client).to have_attribute(:state)
      expect(@client.state).to be_a(String)
      expect(@client).to have_attribute(:zip_code)
      expect(@client.zip_code).to be_a(String)
      expect(@client).to have_attribute(:gender)
      expect(@client.gender).to be_a(String)
      expect(@client).to have_attribute(:DOB)
      expect(@client.DOB).to be_a(Date)
      expect(@client).to have_attribute(:emergency_contact_name)
      expect(@client.emergency_contact_name).to be_a(String)
      expect(@client).to have_attribute(:emergency_contact_phone)
      expect(@client.emergency_contact_phone).to be_a(String)
      expect(@client).to have_attribute(:drivers_license)
      expect(@client.drivers_license).to be_a(String)
      expect(@client).to have_attribute(:insurance)
      expect(@client.insurance).to be_a(String)
      expect(@client).to have_attribute(:notes)
      expect(@client.notes).to be_a(String)
    end
  end

  describe "enums" do
    it "correctly maps case_status to a valid enum" do
      expect(@client.gender).to eq("male")
    end
  end
end