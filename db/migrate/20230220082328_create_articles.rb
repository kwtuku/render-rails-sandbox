class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :slug, null: false, index: { unique: true }
      t.string :title, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
