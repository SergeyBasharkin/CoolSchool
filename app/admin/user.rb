ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  permit_params :full_name, :email, :password, :password_confirmation, :role, :avatar, :vk_avatar

  controller do
 
  def update
    if params[:user][:password].blank?
      params[:user].delete("password")
      params[:user].delete("password_confirmation")
    end
    super
  end
 
end

  index do
    selectable_column
    id_column
    column :full_name
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :role
    column "Image" do |user|
      image_tag user.vk_avatar, height: "100px"
    end
    actions
  end

  form do |f|
    f.inputs "User Details" do
      f.input :full_name
      f.input :role,  :collection => ["student","teacher"]
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.inputs "Attachment", :multipart => true do
        f.input :vk_avatar, height: "100px"
      end

    end
    f.actions
  end

end
