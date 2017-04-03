class Post < ApplicationRecord
    # if original post is deleted, the comments are deleted with the post
    has_many :comments, dependent: :destroy
    # sets a minimum input 
    validates :title, presence: true, length: { minimum: 5}
    validates :body, presence:true 
    
end
