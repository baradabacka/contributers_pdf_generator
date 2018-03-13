class Repository < ActiveRecord::Base
  has_many :contributors

  def create_contributtors(logins)
    logins.each_with_object([]) do |login, res|
      res << contributors.create(name: login)
    end
  end
end