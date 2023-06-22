class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.references :fact, index: true
      t.references :sender, index: true
      t.references :receiver, index: true
      t.timestamps
    end
  end
end
