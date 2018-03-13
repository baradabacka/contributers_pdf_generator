class Contributor < ActiveRecord::Base
  belongs_to :repository
  before_create :set_url

  private

  def set_url
    self.pdf_url = 'test'
  end

end