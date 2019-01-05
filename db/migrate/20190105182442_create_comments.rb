class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :description
      t.belongs_to :video, foreign_key: true

      t.timestamps
    end
  end
end
