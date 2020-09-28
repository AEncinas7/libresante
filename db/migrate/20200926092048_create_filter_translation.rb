class CreateFilterTranslation < ActiveRecord::Migration[6.0]
 def self.up
    Filter.create_translation_table!({
      :name => :string,
    }, {
      :migrate_data => true,
      :remove_source_columns => true
    })
  end

  def self.down
    Filter.drop_translation_table! :migrate_data => true
  end
end
