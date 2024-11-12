class RenameDriversLicenseColumnInClients < ActiveRecord::Migration[7.1]
  def change
    rename_column :clients, :drivers_license_, :drivers_license
  end
end
