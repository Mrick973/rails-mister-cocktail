class CocktailsController < ApplicationController
 before_action :set_cocktail, only: [:show]

	def index
	 @cocktails = Cocktail.first(3)
	end	

  def show
   # @doses = @cocktail.dose
  end

  def new
  	@cocktail = Cocktail.new
    @cocktail.doses << Dose.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    respond_to do |format|
      if @cocktail.save
        format.html { redirect_to @cocktail, notice: 'Cocktail was successfully created.' }
        format.json { render :show, status: :created, location: @cocktail }
      else
        format.html { render :new }
        format.json { render json: @Cocktail.errors, status: :unprocessable_entity }
      end
    end

  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cocktail_params
      params.require(:cocktail).permit(:name)
    end

end
