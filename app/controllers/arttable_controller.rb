class ArttableController < ApplicationController

 
  def add
    @arttable=Arttable.new(arttable_params)
    if @arttable.save
      redirect_to(action:'list')
    else
      flash[:notice]="Error:Record is not created"
      render(action:'new')
     end 
  end

  def delete
    @arttable = Arttable.find(params[:id])
  end


  def destroy
    a = Arttable.find(params[:id])
    a.destroy
    redirect_to(action: 'list')
  end

  def new
    @arttable=Arttable.new
  end
  def create
    @arttable = Arttable.new(arttable_params)
    
    if @arttable.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
    
  end


  def update
    @arttable = Arttable.find(params[:id])
     if @arttable.update_attributes(arttable_params)
      redirect_to(action: 'list')
    else
      render("edit")
       
     end
  end

  def edit
    @arttable = Arttable.find(params[:id])
  end

  def list
    @arttable=Arttable.all
  end

  def show
    @arttable = Arttable.find(params[:id])
  end
  
  
  



  def arttable_params
    params.require(:arttables).permit(:artName, :descreption, :category,:price,:image)
  end

end
