class CreateFacts < ActiveRecord::Migration[7.0]
  def change
    create_table :facts do |t|
      t.string :title
      t.string :content
      t.integer :rating
      t.references :user, index: true
      t.timestamps
    end
  end
end
