class PostImage < ApplicationRecord

  belongs_to :user
  attachment :filed#（ID)を含めずに追加
end
