class CreateDataScappers < ActiveRecord::Migration
  def change
    create_table :data_scappers do |t|

      t.timestamps
    end
  end
end
