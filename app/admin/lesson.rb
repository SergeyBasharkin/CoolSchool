ActiveAdmin.register Lesson do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
  permit_params :date, :subject_id, :teacher_id, :student_id
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    selectable_column
    id_column
    column :date
    column :subject
    column :teacher
    column :student
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :date
      f.input :subject
      f.input :teacher, :collection => User.where(role: "teacher")
      f.input :student, :collection => User.where(role: "student")
    end
    f.actions
  end

end
