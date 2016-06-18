class Post < ActiveRecord::Base
    has_many :replies
    validates :post_title, presence: true
    validates :post_name, presence: true
    validates :post_pwd, presence: true
    validates :post_content, presence: true
    
end
