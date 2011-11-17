class WelcomeController < ApplicationController
  def index
    @cleaning_dutys = CleaningDuty.all
  end
end
