class Post < ApplicationRecord
  def readable_updated_at
    updated_at.localtime.strftime('%a %b %e %l:%m:%S %p')
  end

  def readable_created_at
    created_at.localtime.strftime('%a %b %e %l:%m:%S %p')
  end

  def updated?
    updated_at != created_at
  end
end
