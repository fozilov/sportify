class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :title
      t.datetime :published
      t.text :content
      t.string :url
      t.string :author
      t.integer :feed_id
      t.string :ogp_image

      t.timestamps
    end
  end
end
