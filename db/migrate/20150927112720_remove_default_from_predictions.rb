class RemoveDefaultFromPredictions < ActiveRecord::Migration
  def change
    change_column_default(:predictions, :handle, nil)
  end
end
