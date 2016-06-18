class Reply < ActiveRecord::Base
    belongs_to :post
    validates :reply_content, presence: true
    #validates :reply_name, presence: true
    
end
