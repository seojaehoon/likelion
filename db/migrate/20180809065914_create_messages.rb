class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :chat_id
      t.integer :chat_user_id
      t.string :chat_body

      t.timestamps
    end
  end
end
