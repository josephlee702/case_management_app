require 'rails_helper'

RSpec.describe Case, type: :model do
  before(:each) do
    @client = build(:client)
    @case = build(:case, client: @client)
    @client.cases << @case
  end
  

  describe "associations" do
    it "belongs to a client" do
      expect(@case.client).to eq(@client)
      expect(@client.cases).to eq([@case])
    end
  end

  describe "validations" do
    it "is valid with valid attributes" do
      expect(@case).to have_attribute(:client_id)
      expect(@case).to have_attribute(:injury_type)
      expect(@case.injury_type).to be_a(String)
      expect(@case).to have_attribute(:claimant_insurance)
      expect(@case.claimant_insurance).to be_a(String)
      expect(@case).to have_attribute(:policy_number)
      expect(@case.policy_number).to be_a(String)
      expect(@case).to have_attribute(:attorney_assigned)
      expect(@case.attorney_assigned).to be_a(String)
      expect(@case).to have_attribute(:case_status)
      expect(@case.case_status).to be_a(String)
      expect(@case).to have_attribute(:date_of_incident)
      expect(@case.date_of_incident).to be_a(Date)
      expect(@case).to have_attribute(:date_of_retention)
      expect(@case.date_of_retention).to be_a(Date)
      expect(@case).to have_attribute(:medical_providers)
      expect(@case.medical_providers).to be_a(String)
      expect(@case).to have_attribute(:notes)
      expect(@case.notes).to be_a(String)
    end
  end

  describe "enums" do
    it "correctly maps case_status to a valid enum" do
      expect(@case.case_status).to eq("Open")
    end
  end
end