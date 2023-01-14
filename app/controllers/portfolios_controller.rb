class PortfoliosController < ApplicationController
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
  		@portfolio_item=Portfolio.find(params[:id])
  	end
  def update
  	@portfolio_item=Portfolio.find(params[:id])
  	
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
      @portfolio_item=Portfolio.find(params[:id])
  end
  def destroy
    #going to perform the look up
    @portfolio_item=Portfolio.find(params[:id])

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
end
