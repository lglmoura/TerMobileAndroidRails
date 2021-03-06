# coding: utf-8

require 'spec_helper'

feature 'gerenciar curso disciplina professor' do
  
  scenario 'incluir acurso disciplina professor' do # , :javascript => true  do
    professor = FactoryGirl.create(:professor, nome: 'luiz')
    curso = FactoryGirl.create(:curso, nome: 'info')
    disciplina =FactoryGirl.create(:disciplina, sigla: 'INFO')
    cursodisciplina = FactoryGirl.create(:cursodisciplina, curso: curso , disciplina:  disciplina)
  
    visit new_cursodisciplinaprofessor_path
    preencher_e_verificar_curso_disciplina_professor
    page.should have_content 'Curso disciplina professor cadastrado com sucesso'

  end

  scenario 'alterar curso disciplina professor' do# , :javascript => true  do

    professor = FactoryGirl.create(:professor, nome: 'luiz')
    curso = FactoryGirl.create(:curso, nome: 'info')
    disciplina =FactoryGirl.create(:disciplina, sigla: 'INFO')
    cursodisciplina = FactoryGirl.create(:cursodisciplina, curso: curso , disciplina:  disciplina)
    cursodisciplinaprofessor = FactoryGirl.create(:cursodisciplinaprofessor,cursodisciplina: cursodisciplina, professor: professor)

    visit edit_cursodisciplinaprofessor_path(cursodisciplinaprofessor)

    preencher_e_verificar_curso_disciplina_professor
    page.should have_content 'Curso disciplina professor alterado com sucesso'

  end

  scenario 'excluir curso disciplina professor' do #, :javascript => true  do

    professor = FactoryGirl.create(:professor, nome: 'luiz')
    curso = FactoryGirl.create(:curso, nome: 'info')
    disciplina =FactoryGirl.create(:disciplina, sigla: 'INFO')
    cursodisciplina = FactoryGirl.create(:cursodisciplina, curso: curso , disciplina:  disciplina)
    cursodisciplinaprofessor = FactoryGirl.create(:cursodisciplinaprofessor,cursodisciplina: cursodisciplina, professor: professor)

    visit cursodisciplinaprofessors_path

    click_link 'Excluir'
   
   
  end

  def preencher_e_verificar_curso_disciplina_professor

    
    select 'luiz', :on => 'Professor'
    select 'INFO', :on =>  'Curso X Disciplina'
    
    click_button 'Salvar'
    page.should have_content 'Professor: luiz'
    page.should have_content 'Curso X Disciplina: INFO'
    
    
  end
      
end
