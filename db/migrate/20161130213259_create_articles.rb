class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :subtitle
      t.string :kicker
      t.text :body
      t.belongs_to :author, foreign_key: true

      t.timestamps
    end
  end
end
