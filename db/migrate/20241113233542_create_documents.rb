class CreateDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :documents do |t|
      t.string :name
      t.date :date_uploaded
      t.string :file_url
      t.string :document_type
      t.integer :status
      t.text :notes

      t.timestamps
    end
  end
end
