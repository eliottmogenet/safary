class CreateTemplateTactics < ActiveRecord::Migration[6.0]
  def change
    create_table :template_tactics do |t|

      t.timestamps
    end
  end
end
