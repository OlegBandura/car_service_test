class Admin::CategoriesController < Admin::BaseController

  def index
    @categories = Category.order(:category_name)
  end

  def new

  end

  def create
    add_category = Category.new(category_params)
    add_category.save()
    redirect_to admin_categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to admin_categories_path
    else
      render action 'edit'
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to admin_categories_path
  end

  private

  def category_params
    params.require(:category).permit(:category_name)
  end
end
