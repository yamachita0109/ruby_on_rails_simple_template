class ApplicationController < ActionController::Base
  before_action :init, {only: [:index, :show, :edit, :update, :detail]}
  def init
    # Login check
    puts "hoge"
    @current_user = nil
  end

end
