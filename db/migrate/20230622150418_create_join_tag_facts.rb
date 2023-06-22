class CreateJoinTagFacts < ActiveRecord::Migration[7.0]
  def change
    create_table :join_tag_facts do |t|
      t.references :fact, index: true
      t.references :tag, index: true
      t.timestamps
    end
  end
end
