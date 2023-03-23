class TodosController < ApplicationController
    before_action :session_expired?

    def create
        todo = user.todos.create(todo_params)
        if todo.valid?
            app_response(status: :created, data: todo)
        else
            app_response(message: "failed", status: unprocessaable_entity, data: todo.errors)
        end
    end

    def update
        todo = user.todos.find(params[:id]).update(todo_params)
        if todo
            app_response(data: {info: "Todo updated successfully"})
        else
            app_response(message: "failed",  data: {info: "Something went wrong, could not update todo"})
        end
    end

    private
    def todo_params
        params.permit(:title, :description, :status, :priority)
    end

   
end
