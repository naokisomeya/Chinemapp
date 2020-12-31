class CreateChinemaLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :chinema_likes do |t|
      t.references :user, foreign_key: true
      t.references :chinema, foreign_key: true

      t.timestamps
    end
  end
end
