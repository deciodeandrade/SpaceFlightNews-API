class RemoveArticleFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_reference :events, :article, null: false, foreign_key: true
  end
end
