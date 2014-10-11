class AddSlugColToOriginalSnippets < ActiveRecord::Migration
  def change
    add_column :original_snippets, :slug, :string
  end
end
