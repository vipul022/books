# * Using the below controller and routes files as a starting guide create a full CRUD resource for books.
# * Use the @data instance variable to hold all of your data (we will do models later), each book should have a title and an author.
# * Respond back in JSON (we will do views later)
# * Using Postman will be easier to test than the browser
# * Remember to push to github and get those green squares!

class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data

    def index
        render json: @data
    end

    #Show a single book
    def show
      # puts @data[0]
      # render json: @data[0]
      puts id = params[:id]
      # id = id.to_i - 1
      render json: @data[id.to_i - 1]
      puts "working"
    end

    #Create a new book
    def create
      @data << {
        title: params[:title],
        author: params[:author]
      }
      render json: @data

    end

    #Update a book
    def update
     id = params[:id]
     p id = id.to_i - 1
     @data[id][:title] = params[:title]
     @data[id][:author] = params[:author]
     render json: @data
    end

    #Remove a book
    def destroy
      id = params[:id]
       id = id.to_i - 1
       p id
      @data.delete_at(id)
      render json: @data

    end

    private
    def setup_data
        @data = [
            { title: "Harry Potter", author: "J.K Rowling" },
            { title: "Name of the wind", author: "Patrick Rothfuss" }
        ]
    end
end
