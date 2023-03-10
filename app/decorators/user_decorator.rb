class UserDecorator < ApplicationDecorator
  delegate_all # данная строка нужна, чтобы делегировать неизвестные методы самому объекту, который мы декорируем.
# декараторы нужны для добавления к существующим объектам каких-либо дополнительных методов, эти методы включают в себя логику,
# связанную с отображением этого объекта. эти методы не живут в глобальном пространстве имен, как хелперы, а только для данных объектов

def name_or_email
  if name.present?
    name
  else
    email.split('@')[0]
  end
end

end
