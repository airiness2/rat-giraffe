class RenameIdColumnToStations < ActiveRecord::Migration[5.0]
  def change
    rename_column :stations, :renthouse_id, :rent_house_id
  end
end
