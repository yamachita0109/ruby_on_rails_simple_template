class ApplicationController < ActionController::Base
  # before_action :init, {only: [:index, :show, :edit, :update, :detail]}
  before_action :init
  def init
    if request.path_info.split('/')[2] == 'login'
      @view_code = 'normal'
    else
      @view_code = 'side'
    end
    # Login check
    @company_id = params[:company_id]
    @current_user = nil
  end

  def redirect_to_login
    redirect_to '/'.concat(@company_id).concat('/login')
  end

  def redirect_to_home
    redirect_to '/'.concat(@company_id).concat('/home')
  end

end
