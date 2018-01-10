class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :subject
      t.string :teacher
      t.decimal :score
      t.string :description

      t.timestamps
    end
  end
end
