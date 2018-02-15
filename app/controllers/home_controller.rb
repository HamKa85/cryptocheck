$s = ''
class HomeController < ApplicationController
  def index
  end

  def check

     @message = currency_params[:content]

     if Crypto.new(@message).perform
       flash[:success] = $s
       redirect_to root_path
     else
       flash[:danger] = 'Something went wrong sorry'
       redirect_to root_path
     end
  end

    private

    def currency_params

     params.require(:currency).permit(:content)

    end

end
