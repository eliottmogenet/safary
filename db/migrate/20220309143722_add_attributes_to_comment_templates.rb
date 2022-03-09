class AddAttributesToCommentTemplates < ActiveRecord::Migration[6.0]
  def change
    add_reference :template_comments, :user
    add_reference :template_tactics, :user
    add_column :template_comments, :content, :text
    add_column :template_tactics, :title, :string
    add_reference :template_comments, :template
    add_reference :template_tactics, :template
  end
end
