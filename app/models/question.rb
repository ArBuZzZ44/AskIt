class Question < ApplicationRecord
  has_many :answers, dependent: :destroy # если удалить question, то все зависимые ответы тоже долнжы удалиться
  validates :title, presence: true, length: {minimum: 2}
  validates :body, presence: true, length: {minimum: 2}

end
