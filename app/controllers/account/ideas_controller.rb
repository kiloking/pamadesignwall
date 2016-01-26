class Account::IdeasController < ApplicationController
	before_action :authenticate_user!

	 def index
	   @ideas = current_user.ideas.order("updated_at DESC")
	 end
end
