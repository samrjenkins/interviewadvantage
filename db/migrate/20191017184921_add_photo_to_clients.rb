class AddPhotoToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :photo, :string
  end
end
