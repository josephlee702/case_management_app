class RenameCaseNumberAndPolicyNumberInCases < ActiveRecord::Migration[7.1]
  def change
    rename_column :cases, :case, :case_number
    rename_column :cases, :policy, :policy_number
  end
end
