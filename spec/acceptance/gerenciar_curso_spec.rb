# coding: utf-8

require 'spec_helper'

feature 'gerenciar curso' do

  scenario 'incluir curso' do # , :javascript => true  do

    visit new_curso_path

    preencher_e_verificar_curso

    page.should have_content 'Curso cadastrado com sucesso'

  end

  scenario 'alterar curso' do #, :javascript => true  do

    curso = FactoryGirl.create(:curso)

    visit edit_curso_path(curso)

    preencher_e_verificar_curso

    page.should have_content 'Curso alterado com sucesso'

  end

  scenario 'excluir curso' do #, :javascript => true  do

    curso = FactoryGirl.create(:curso)

    visit cursos_path

    click_link 'Excluir'

    

  end

  def preencher_e_verificar_curso

    fill_in 'Nome',  :with => "Informatica"

    fill_in 'Turno', :with   => "manha"

    

    click_button 'Salvar'

    page.should have_content 'Nome: Informatica'

    page.should have_content 'Turno: manha'

       

  end

      

end

