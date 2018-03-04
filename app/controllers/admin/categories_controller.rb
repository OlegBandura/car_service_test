class Admin::CategoriesController < Admin::BaseController

  def index
    @categories = Category.all
  end

  def new
  end

  def create
    add_category = Category.new(category_params)
    add_category.save()
    redirect_to admin_categories_path
  end

  private

  def category_params
    params.require(:add_category).permit(:category_name)
  end
end
