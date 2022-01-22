class RemoveArticleFromLaunches < ActiveRecord::Migration[6.1]
  def change
    remove_reference :launches, :article, null: false, foreign_key: true
  end
end
