class TopController < ApplicationController
  def index
    # 10件取得
    @images = Image.last(10)
  end
end
