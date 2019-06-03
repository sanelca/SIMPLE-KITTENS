module KittensHelper
  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end  
end
