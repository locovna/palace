class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.boolean :solved
      t.references :realm, foreign_key: true

      t.timestamps
    end
  end
end
