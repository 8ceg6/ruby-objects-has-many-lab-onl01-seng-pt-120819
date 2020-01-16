require 'pry'
class Author 
attr_accessor :name, :posts 

  @@post_count =0 
  
  def initialize(name)
    @name = name 
    @posts = []
    
  end 
  
  def posts 
      Post.all.select do |posts|
      posts.author == self 
    end 
  end 

  def add_post(new_post)
      @posts << new_post
      new_post.author = self
   
  end 
  
  def add_post_by_title(post_title)
      post = Post.new(post_title)
      post.author = self 
  
  end 
  
  def self.post_count
   Post.all.count 
  
  end 
end 





