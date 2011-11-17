class CleaningDutiesController < ApplicationController
  # GET /cleaning_duties
  # GET /cleaning_duties.json
  def index
    @cleaning_duties = CleaningDuty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cleaning_duties }
    end
  end

  # GET /cleaning_duties/1
  # GET /cleaning_duties/1.json
  def show
    @cleaning_duty = CleaningDuty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cleaning_duty }
    end
  end

  # GET /cleaning_duties/new
  # GET /cleaning_duties/new.json
  def new
    @cleaning_duty = CleaningDuty.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cleaning_duty }
    end
  end

  def duty_allocation!(cleaning_duty)
    cleaning_duty.dust1 = Member.find(1).name
  end

  # GET /cleaning_duties/1/edit
  def edit
    @cleaning_duty = CleaningDuty.find(params[:id])
  end

  # POST /cleaning_duties
  # POST /cleaning_duties.json
  def create
    @cleaning_duty = CleaningDuty.new(params[:cleaning_duty])

    respond_to do |format|
      if @cleaning_duty.save
        format.html { redirect_to @cleaning_duty, notice: 'Cleaning duty was successfully created.' }
        format.json { render json: @cleaning_duty, status: :created, location: @cleaning_duty }
      else
        format.html { render action: "new" }
        format.json { render json: @cleaning_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cleaning_duties/1
  # PUT /cleaning_duties/1.json
  def update
    @cleaning_duty = CleaningDuty.find(params[:id])

    respond_to do |format|
      if @cleaning_duty.update_attributes(params[:cleaning_duty])
        format.html { redirect_to @cleaning_duty, notice: 'Cleaning duty was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cleaning_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cleaning_duties/1
  # DELETE /cleaning_duties/1.json
  def destroy
    @cleaning_duty = CleaningDuty.find(params[:id])
    @cleaning_duty.destroy

    respond_to do |format|
      format.html { redirect_to cleaning_duties_url }
      format.json { head :ok }
    end
  end
end
