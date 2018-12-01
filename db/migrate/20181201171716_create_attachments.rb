class CreateAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments do |t|
 t.column :filename, :string
        t.column :content_type, :string
        t.column :data, :binary
      t.timestamps
    end
  end
end
