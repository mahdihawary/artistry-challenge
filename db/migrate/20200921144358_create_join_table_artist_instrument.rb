class CreateJoinTableArtistInstrument < ActiveRecord::Migration[5.2]
  def change
    create_join_table :artists, :instruments do |t|
      # t.index [:artist_id, :instrument_id]
      # t.index [:instrument_id, :artist_id]
    end
  end
end
