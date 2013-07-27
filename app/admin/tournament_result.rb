ActiveAdmin.register TournamentResult do

  controller do
    def permitted_params
      params.permit tournament_result: [:member_id, :tournament_id, :weight, :count]
    end
  end

end
