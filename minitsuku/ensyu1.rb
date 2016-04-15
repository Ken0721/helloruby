class Library
    attr_accessor :books

    def initialize()
        @books = []
    end

    def addBook(book)
        @books.push(book)
    end

    def to_s
#        puts "test"
#        p @books
        for b in @books do
            "Title:" + b.title + ", "  + "Author:" + b.author
        end
    end

end

class Book
    attr_accessor :author, :title
    def initialize(args)
        @author = args[:author]
        @title = args[:title]
        @library = args[:library]
        @library.addBook(self)
    end
end

my_library = Library.new
Book.new(:author => "Herman Melville", :title => "Moby-Dick", :library => my_library)
Book.new(:author => "Hans Christian Andersen", :title => "The Ugly Duckling", :library => my_library)
puts my_library
#
#
#
#
#Library contents:
#    Title: Moby-Dick, Author: Herman Melville
#Title: The Ugly Duckling, Author: Hans Christian Andersen
