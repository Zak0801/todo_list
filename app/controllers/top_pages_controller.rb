# Topページに関するコントローラ
class TopPagesController < ApplicationController
  before_action :logged_in_user?

  def home; end
end
