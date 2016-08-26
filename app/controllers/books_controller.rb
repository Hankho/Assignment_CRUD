class BooksController < ApplicationController
	before_action :set_book , :only => [:show , :edit , :update , :destroy]

	def index
		@books = Book.page(params[:page]).per(5)
		if params[:id]
			@book = Book.find(params[:id]) 
		else
			@book = Book.new
		end
		# @book = Book.new
	end
	
	def show
   		
	end
	
	def new
		@book = Book.new
	end
	def edit

	end
	def update

		if @book.update(book_params)
			flash[:notice] = "編輯成功"
			redirect_to books_path
		else
			flash[:notice] = "編輯失敗"
			render :action => :edit		#借edit 的頁面
		end
		
	end
	def create

		@book = Book.new(book_params)   #@book = Book.new(params.require(:book).permit(:name,:description)) 
        if @book.save
        	flash[:notice] ="新增成功"
        	redirect_to books_path  
        else
        	flash[:notice] ="新增失敗"
        	render :action => :new		#借new 的頁面
        end 

	end
	
	def destroy

		@book.destroy
		flash[:notice] = "刪除成功"
		redirect_to books_path(:page => params[:page])
	end

	private
	def book_params
		params.require(:book).permit(:name,:description)
	end
	def set_book
		@book = Book.find(params[:id])
	end

	
end
