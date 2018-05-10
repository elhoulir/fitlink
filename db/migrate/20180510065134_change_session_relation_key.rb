class ChangeSessionRelationKey < ActiveRecord::Migration[5.1]
  def change
    # remove the old foreign_key
    remove_foreign_key :gym_sessions, :gyms

    # add the new foreign_key
    add_foreign_key :gym_sessions, :gyms, on_delete: :cascade
  end
end
