class CodeController < ApplicationController
  def index
    @codes = Code.all.order('updated_at DESC')
  end

  def new
    @code = codes.build
  end

  private

  def code_params
    params.require(:code).permit(:content)
  end
end
