class CreateTemplateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :template_comments do |t|

      t.timestamps
    end
  end
end
