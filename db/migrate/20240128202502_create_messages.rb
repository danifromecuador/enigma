class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.string :english_message
      t.string :morse_code

      t.timestamps
    end
  end
end
