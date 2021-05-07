class TodoItemsController < ApplicationController
  def create
    item = TodoItem.create(create_params)
    response = item.as_json
    render json: response.merge(description: "")
  end

  private
    def create_params
      params.permit(:name, :completed)
    end
end
