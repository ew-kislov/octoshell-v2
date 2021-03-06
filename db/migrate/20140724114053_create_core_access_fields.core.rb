# This migration comes from core (originally 20140721100225)
class CreateCoreAccessFields < ActiveRecord::Migration[4.2]
  def change
    create_table :core_access_fields do |t|
      t.integer "access_id"
      t.string  "name"
      t.integer "quota"
      t.integer "used",      default: 0

      t.index :access_id
    end
  end
end
