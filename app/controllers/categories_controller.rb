class CategoriesController < GroupingController
  # index - inherited
  # show - inherited
  def new_or_edit
    @categories = Category.find(:all)
    @category = Category.find_by_id(params[:id])
    #@category.attributes = params[:category]
    if request.post?
    end
  end
end
