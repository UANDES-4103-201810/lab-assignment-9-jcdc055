class PersonsController < ApplicationController
  def new
  end
  def show_all
    @actors = Actor.all
    @directors = Director.all
  end
  def create
    if params[:rol] == 'actor'
      @actor = Actor.new(actor_params)

      respond_to do |format|
        if @actor.save
          format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
          format.json { render :show, status: :created, location: @actor }
        else
          format.html { render :new }
          format.json { render json: @actor.errors, status: :unprocessable_entity }
        end
      end
    end
    if params[:rol] == 'director'
      @director = Director.new(director_params)

      respond_to do |format|
        if @director.save
          format.html { redirect_to @director, notice: 'Director was successfully created.' }
          format.json { render :show, status: :created, location: @director }
        else
          format.html { render :new }
          format.json { render json: @director.errors, status: :unprocessable_entity }
        end
      end
    end
  end
    private
    # Use callbacks to share common setup or constraints between actions.

    def set_director
      @person = person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def director_params
      params.permit(:first_name, :last_name, :birth_date, :description)
    end
  def actor_params
    params.permit(:first_name, :last_name, :birth_date, :description)
  end

end
