# coding: utf-8

class DisciplinasController < InheritedResources::Base
  def create
    create! :notice => 'Disciplina cadastrado com sucesso'
  end
  

  def update
    update! :notice => 'Disciplina alterado com sucesso' 
  end

  

  def destroy
    destroy! :notice => 'Disciplina excluído com sucesso' 
  end
end
