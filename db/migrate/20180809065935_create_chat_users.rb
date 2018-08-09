class CreateChatUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_users do |t|
      t.integer :chat_id
      t.integer :user_id

      t.timestamps
    end
  end
end
