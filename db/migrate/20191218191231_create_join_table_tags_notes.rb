class CreateJoinTableTagsNotes < ActiveRecord::Migration[5.1]
  def change
    create_join_table :tags, :notes do |t|
      # t.index [:tag_id, :note_id]
      # t.index [:note_id, :tag_id]
    end
  end
end
