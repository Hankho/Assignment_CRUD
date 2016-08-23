class BooksController < ApplicationController
	def index
		@books = Book.all
	end
	
	def show
		@book = Book.find(params[:id])
	end
	
	def new
		@book = Book.new
	end
	def edit
		@book = Book.find(params[:id])
	end
	def update
		@book = Book.find(params[:id])
		@book.update(params.require(:book).permit(:name,:description))
		redirect_to book_path
	end
	def create

		@book = Book.new(params.require(:book).permit(:name,:description))  
        @book.save 
        redirect_to books_path 
	end
	

	
	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to books_path	
	end

	
end
