ActiveAdmin.register Audience do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :user_count, :template_id
  #
  index do
    selectable_column
    id_column
    column :user_count
    column :name
    column :template_id
    actions
  end

  form do |f|
    f.inputs do
      f.input :user_count
      f.input :name
      f.input :template
    end
    f.actions
  end
  # or
  #
  # permit_params do
  #   permitted = [:name, :user_count, :template_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
