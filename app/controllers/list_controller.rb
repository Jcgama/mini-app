class ListController < ApplicationController
    def show
        @user = current_user
        @lists = @user.lists.paginate(page: params[:page])
    end
end
