class CreateContributor < ActiveRecord::Migration[5.1]
  def change
    create_table :contributors do |t|
      t.references :repository
      t.string :name
      t.string :pdf_url
    end
  end
end
