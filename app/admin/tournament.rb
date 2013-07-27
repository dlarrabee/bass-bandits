ActiveAdmin.register Tournament do

  controller do
    def permitted_params
      params.permit tournament: [:lake, :tournament_date, :start_time, :end_time, :season_id]
    end
  end

end
