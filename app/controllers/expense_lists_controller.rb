class ExpenseListsController < ApplicationController

	def index
		@expense_list = ExpenseList.all
	end

	def show
		@expense_list = ExpenseList.find(params[:id])
	end

	def new
		@expense_list = ExpenseList.new
	end

	def edit
		@expense_list = ExpenseList.find(params[:id])
	end

	def create
		@expense_list = ExpenseList.new(params[:expense_list])
		if @expense_list.save
			redirect_to @expense_list
		else
			render :new
		end
	end

	def update
		expense_list = ExpenseList.find(params[:id])
	end

	def destroy
		expense_list = ExpenseList.find(params[:id])
	end

end