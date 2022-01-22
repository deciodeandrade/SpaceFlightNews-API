class CreateArticleEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :article_events do |t|
      t.references :article, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
