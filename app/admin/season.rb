ActiveAdmin.register Season do
  index do
    column :year
    default_actions
  end

  form do |f|
    f.inputs "Season Details" do
      f.input :year
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit season: [:year]
    end
  end
end
