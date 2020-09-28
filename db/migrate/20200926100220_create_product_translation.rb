class CreateProductTranslation < ActiveRecord::Migration[6.0]
 def self.up
    Product.create_translation_table!({
      :name => :string,
      :description => :text,
      :category => :string,
      :catalog => :string,
      :detail => :string,
    }, {
      :migrate_data => true,
      :remove_source_columns => true
    })
  end

  def self.down
    Product.drop_translation_table! :migrate_data => true
  end
end
