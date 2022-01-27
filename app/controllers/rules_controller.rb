class RulesController < ApplicationController
  def index
    @rules = Rule.all
    @rule = Rule.new #empty shell to generate simpleform new
  end

  def create
    @rule = Rule.new(params_rule)
    if @rule.save
      redirect_to rules_path
    else
      render :new
    end
  end

  def update
    @rule = Rule.find(params[:id])
    @rule.update(params_rule)
    if @rule.save
      redirect_to rules_path
    else
      render :new
    end
  end

  def destroy
    @rule = Rule.find(params[:id])
    @rule.destroy
    redirect_to rules_path
  end

   private

  def params_rule
    params.require(:rule).permit(:title, :points, :description)
  end
end
