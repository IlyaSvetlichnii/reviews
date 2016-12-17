ActiveAdmin.register User, as: 'Active' do
  
  permit_params :name, :status, :email, :password, :password_confirmation

  controller do
    def scoped_collection
      User.where(status: 'active')
    end
  end
  
  form do |f|
    f.inputs "Active" do
      f.input :name
      f.input :email
      f.input :status
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  
  index do
    selectable_column
    column :name
    column :email
    column 'Отказ' do |user|
      link_to 'Отказать', reject_path(user)
    end
    actions
  end

end

ActiveAdmin.register User, as: 'Notactive' do
  permit_params :name, :status, :email, :password, :password_confirmation
  
  controller do
    def scoped_collection
      User.where(status: 'notactive')
    end
  end

  form do |f|
    f.inputs "Notactive" do
      f.input :name
      f.input :email
      f.input :status
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  index do
    selectable_column
    column :name do |user|
      user.name
    end
    column :email
    column 'Подтверждение' do |user|
      link_to 'Подтвердить', accept_path(user)
    end
    column 'Отказ' do |user|
      link_to 'Отказать', reject_path(user)
    end
    actions
  end
end

ActiveAdmin.register User, as: 'Rejected' do

  permit_params :name, :password_confirmation, :password, :status, :email

  controller do
    def scoped_collection
      User.where(status: 'denied')
    end
  end

  form do |f|
      f.inputs "Rejected" do
        f.input :name
        f.input :email
        f.input :status
        f.input :password
        f.input :password_confirmation
      end
      f.actions
  end


  index do
    selectable_column
    column :name do |user|
        user.name
    end
    column :email
    column 'Accept' do |user|
      link_to 'Accept', accept_path(user)
    end
    actions
  end

end
