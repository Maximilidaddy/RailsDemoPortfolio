class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]

  #extends and implements specific layout page called portfolio.html.erb
  layout "portfolio"

	def index
		@portfolio_items= Portfolio.all
	end

  #pulls only portfolios with angular as subtitle
  def angular
    @angular_portfolio_items=Portfolio.angular
  end
	
  #creates new portfolio and calls new.ntml.erb file
  def new
		@portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
    #instantiaties 3 versions of the item
	end
	def create #below a whitelist is created
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "Portfolio was successfully created." }
        format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  	def edit
  	end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: "Record was successfully updated." }
        format.json { render :show, status: :ok, location: @portfolio_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end 
  end
  def show
    
  end
  def destroy
    #going to Destroy/Delete the record
    @portfolio_item.destroy

    #Redirect
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: "Record was successfully removed." }
    end
  end


  private #method only used with in this page
  
    def portfolio_params
      params.require(:portfolio).permit(:title,
                                        :subtitle, 
                                        :body,
                                        technologies_attributes: [:name]
                                        )
    end

    def set_portfolio_item
      @portfolio_item=Portfolio.find(params[:id])
    end
end
