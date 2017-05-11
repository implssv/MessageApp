class CategoriesController < ApplicationController
  before_action :find_category, except: [:index]


  def index
    @categories = Category.all.paginate(:page => params[:page], :per_page => 9)
  end

  def new
    if current_user.id != 1
      redirect_to root_path
    else
      render 'new'
    end

    end

  def create

    if @category.save
      redirect_to category_path(@category)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to category_path(@category)
    else
      render 'edit'
    end
  end

  def destroy
    @category.destroy
    redirect_to category_path(@category)
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def find_category
    @category = Category.find(params[:id])
  end

end
