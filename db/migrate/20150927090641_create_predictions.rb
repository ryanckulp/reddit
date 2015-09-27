class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.string :title
      t.string :url
      t.string :handle, default: "yourhandle"

      t.timestamps null: false
    end
  end
end
