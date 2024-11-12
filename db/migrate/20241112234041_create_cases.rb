class CreateCases < ActiveRecord::Migration[7.1]
  def change
    create_table :cases do |t|
      t.string :case_#
      t.string :injury_type
      t.string :claimant_insurance
      t.string :policy_#
      t.string :attorney_assigned
      t.integer :case_status
      t.date :date_of_incident
      t.date :date_of_retention
      t.string :medical_providers
      t.text :notes
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
