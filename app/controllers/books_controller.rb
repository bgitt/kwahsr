class BooksController < ApplicationController
		before_action :find_book, only: [:show, :edit, :update, :destroy]
	def index
		@books = Book.where(user_id: current_user)
	end

	def show
			
	end
	
	def new
		@book = current_user.books.build
	end

	def create
		@book = current_user.books.build(book_params)

		if @book.save
			redirect_to @book
		else
			render 'new'
		end

	end

	def edit
		
	end

	def update
		if @book.update(book_params)
			redirect_to @book
		else
			render 'edit'
		end

	end

	def destroy
		@book.destroy
		redirect_to books_path

	end

	private
	def find_book
		@book = Book.find(params[:id])
	end

	def book_params
		params.require(:book).permit(:title, :details, :bookID, :author)
	end
end