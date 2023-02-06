class User < ApplicationRecord
  has_secure_password # создает виртуальный атрибут password и password_confirmation. Они не попадают в бд, в бд идет только хеш пароля в password_digest

  validates :email, presence: true, uniqueness: true
end
