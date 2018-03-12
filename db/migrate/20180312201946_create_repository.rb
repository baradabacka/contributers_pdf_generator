class CreateRepository < ActiveRecord::Migration[5.1]
  def change
    create_table :repositories do |t|
      t.string :organization
      t.string :repos_name
    end
  end
end
