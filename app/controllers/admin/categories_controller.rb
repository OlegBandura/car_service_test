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

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to admin_categories_path
  end

  private

  def category_params
    params.require(:add_category).permit(:category_name)
  end
end
