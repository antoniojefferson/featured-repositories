require 'rails_helper'

RSpec.feature 'Repository' do
  given!(:repository) { create(:repository) }
  
  scenario 'show and destroy a repository' do
    visit root_path

    expect(page).to have_content 'react'
    expect(page).to have_content 'facebook/react'
    expect(page).to have_content 'A declarative, efficient, and flexible JavaScript library for building user interfaces.'
    click_link 'react'
    
    expect(page).to have_content 'Detalhes'
    expect(page).to have_content 'facebook/react'
    expect(page).to have_content 'react'
    expect(page).to have_content 190003
    expect(page).to have_content 'MIT License'
    expect(page).to have_content 'v18.2.0'
    expect(page).to have_content 'JavaScript'
    expect(page).to have_content 'JavaScript'
    expect(page).to have_content 'HTML'
    expect(page).to have_content 'CSS'
    expect(page).to have_content 'C++'
    expect(page).to have_content 'TypeScript'
    expect(page).to have_content 'CoffeeScript'
    expect(page).to have_content 'C'
    expect(page).to have_content 'Shell'
    expect(page).to have_content 'Python'
    expect(page).to have_content 'Makefile'

    click_button 'Voltar'
    click_link 'react'
    click_button 'Deletar'
    
    page.driver.browser.switch_to.alert.accept

    expect(page).to have_content 'Repositório do react foi removido!'
    expect(page).to have_content 'Nenhum repositório disponível para a apresentação.'
  end
end