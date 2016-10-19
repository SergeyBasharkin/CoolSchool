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
  permit_params :email, :password, :password_confirmation, :role, :avatar


  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :role
    column "Image" do |user|
      image_tag user.avatar.url, height: "100px"
    end
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :role
      f.inputs "Attachment", :multipart => true do
        f.input :avatar, :as => :file, :hint => image_tag(f.object.avatar.url), height: "100px"
        f.input :avatar_cache, :as => :hidden, height: "100px"
      end

    end
    f.actions
  end

end
