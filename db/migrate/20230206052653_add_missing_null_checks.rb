class AddMissingNullChecks < ActiveRecord::Migration[7.0]
  def change
    change_column_null :questions, :title, false # метод добавляет атрибут null  параметрои false для заданный колонок
    change_column_null :questions, :body, false
    change_column_null :answers, :body, false
  end
end
