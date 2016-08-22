class BooksController < ApplicationController
	def index
		@books = Book.all
	end
	
	def show
		@books = Book.find(params[:id])
	end
	
	def new
		@books = Book.new
	end
	def edit
		@books = Book.find(params[:id])
	end
	def update
		@books = Book.find(params[:id])
		@books.update(params.require(:book).permit(:name,:description))
		redirect_to book_url(@books)
	end
	def create

		@books = Book.new(params.require(:book).permit(:name,:description))  
        @books.save 
        redirect_to books_url(@books) 
	end
	

	
	def destroy
		@books = Book.find(params[:id])
		@books.destroy
		redirect_to books_url(@books)	
	end

	
end
