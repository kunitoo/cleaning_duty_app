class WelcomeController < ApplicationController
  def index
    @cleaning_duties = CleaningDuty.all
  end
end
