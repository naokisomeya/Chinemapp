class CreateChinemas < ActiveRecord::Migration[5.2]
  def change
    create_table :chinemas do |t|
      t.references :user, foreign_key: true
      t.string :chinema_name
      t.text :chinema_body
      t.string :address
      t.string :url
      t.string :chinema_image
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
