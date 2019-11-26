class Author 
  attr_accessor :name, :post, :title
    @@posts = []
  def initialize(name) 
   @name = name
  end 
  
  def posts 
    @@posts
    Post.all.select {|post| post.author == self}
  end 
  
  def add_post(post)
    # binding.pry
    post.author = self 
  end 
  
  def add_post_by_title(title)
    # binding.pry
    post = Post.new(title)
    add_post(post)
    
  end 
  
  def self.post_count
      Post.all.count
  end 
end 