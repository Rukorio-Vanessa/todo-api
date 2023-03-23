class TodosController < ApplicationController
    before_action :session_expired?
    rescue_from ArguementError, with: :check_for_invalid_priority

    def create
        todo = user.todos.create(todo_params)
        if todo.valid?
            app_response(status: :created, data: todo)
        else
            app_response(message: "failed", status: unprocessaable_entity, data: todo.errors)
        end
    end

    private
    def todo_params
        params.permit(:title, :description, :status, :priority)
    end

    def check_for_invalid_priority
        app_response(message: "failed", status: unprocessaable_entity, data: {info: "invalid priority"})
    end
end
