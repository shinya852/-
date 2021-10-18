class PostImage < ApplicationRecord

  belongs_to :user
  #（ID)を含めずに追加
  attachment :image
end
