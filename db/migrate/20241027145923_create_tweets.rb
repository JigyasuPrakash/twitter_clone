class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.text :content, null: false           # The content of the tweet
      t.references :user, null: false, foreign_key: true  # References the user who created the tweet
      t.timestamps                            # Adds created_at and updated_at columns
    end
  end
end
