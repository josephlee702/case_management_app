class RenameCaseNumberAndPolicyNumberInCases < ActiveRecord::Migration[7.1]
  def change
    rename_column :cases, :case_, :case_number
    rename_column :cases, :policy_, :policy_number
  end
end
