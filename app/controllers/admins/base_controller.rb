class Admins::BaseController < ApplicationController
  add_flash_types :success, :info, :warning, :danger
  before_action :admin_user
  layout 'admin'

  private

  def admin_user
    redirect_to(root_url) unless current_host && current_host.admin?
  end
end