class BookReadersController < ApplicationController
	before_action :set_book
	
	def index
		
	end

	protected	

	def set_book
		@book = Book.find(params[:book_id])
	end
end
