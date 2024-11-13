require 'rails_helper'

RSpec.describe Document, type: :model do
  before(:each) do
    @client = build(:client)
    @case = build(:case, client: @client)
    @document = build(:document)
    @case.documents << @document
    @client.cases << @case
  end
  

  describe "associations" do
    it "belongs to a client" do
      expect(@case.documents).to eq([@document])
    end
  end

  describe "validations" do
    it "is valid with valid attributes" do
      expect(@document).to have_attribute(:name)
      expect(@document.name).to be_a(String)
      expect(@document).to have_attribute(:date_uploaded)
      expect(@document.date_uploaded).to be_a(Date)
      expect(@document).to have_attribute(:file_url)
      expect(@document.file_url).to be_a(String)
      expect(@document).to have_attribute(:document_type)
      expect(@document.document_type).to be_a(String)
      expect(@document).to have_attribute(:status)
      expect(@document.status).to be_a(String)
      expect(@document).to have_attribute(:notes)
      expect(@document.notes).to be_a(String)
    end
  end

  describe "enums" do
    it "correctly maps case_status to a valid enum" do
      expect(@document.status).to eq("Needs Signature")
    end
  end
end