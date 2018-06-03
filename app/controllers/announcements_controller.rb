class AnnouncementsController < ApplicationController

  before_action :find_announcement, only: %i(show make_done assign_user_to_announcement)



  def create
    @announcement = Announcement.new(announcement_params)
    if @announcement.save
      @announcement.update(status: "waiting_for_confirmation", user_id: params[:user_id])
      #It will be added push notification
      render_json(@announcement_update_success, 200)
    else
      render json:{ errors: @announcement.errors.full_message } , status: 422
      render_json
    end
  end

  def index
    @announcements = Announcement.all
    render json: @announcements, status: 200
  end

  def show
    render json: @announcement, status: 200
  end

  def make_done
      @announcement.update(status: "done", user_id: params[:user_id])
      render json: @announcement, status: 204
  end

  def assign_user_to_announcement
    @announcement.update(status: "helping", user_id: params[:user_id])
    render json: @announcement, status: 204
  end

  def get_all_by_status_type
    @announcements = Announcement.where(status: :status_type)
    render json: @announcement, status: 200
  end
  private

  def announcement_params
    params.require(:announcement).permit(:title, :description, :animal_type, :help_status, :help_type, :status)
  end
end
