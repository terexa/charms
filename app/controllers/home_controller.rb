class HomeController < ApplicationController
  before_filter :load_default
  def index
  end

  def load_default
    if signed_in?
    end
  end

  def respond
    $current_activity=@activity=Activity.find_by_id(params[:id])
  end

  def validate_question
    respond_to do |format|
      if $current_activity.answer.to_s==params[:answer].to_s
        current_user.complete_activity($current_activity)
        format.js { render :json => {:data => 'well done!'}}
      else
        format.js { render :json => {:data => 'bad!'}}
      end
    end
  end

end
