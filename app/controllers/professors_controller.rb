# coding: utf-8

class ProfessorsController < InheritedResources::Base
  
def create
    create! :notice => 'Professor cadastrado com sucesso'
  end


  def update
    update! :notice => 'Professor alterado com sucesso' 
  end

 
  def destroy
    destroy! :notice => 'Professor excluído com sucesso' 
  end

end
