require 'rails_helper'

RSpec.describe 'Repository' do
  let!(:repository) { create(:repository) }

  # rubocop:disable RSpec/ExampleLength
  it 'show and destroy a repository' do
    visit root_path

    expect(page).to have_content 'ruby'
    expect(page).to have_content 'ruby/ruby'
    expect(page).to have_content 'The Ruby Programming Language [mirror]'
    click_link 'ruby'

    expect(page).to have_content 'Detalhes'
    expect(page).to have_content 'ruby/ruby'
    expect(page).to have_content 'ruby'
    expect(page).to have_content 19_241
    expect(page).to have_content 'Other'
    expect(page).to have_content 'v3_2_0_preview1'
    expect(page).to have_content 'Ruby'
    expect(page).to have_content 'Ruby'
    expect(page).to have_content 'C'
    expect(page).to have_content 'C++'
    expect(page).to have_content 'Yacc'
    expect(page).to have_content 'Makefile'
    expect(page).to have_content 'Rust'
    expect(page).to have_content 'M4'
    expect(page).to have_content 'Roff'
    expect(page).to have_content 'Python'
    expect(page).to have_content 'GDB'
    expect(page).to have_content 'Ragel'
    expect(page).to have_content 'HTML'
    expect(page).to have_content 'CSS'
    expect(page).to have_content 'Assembly'
    expect(page).to have_content 'Shell'
    expect(page).to have_content 'JavaScript'
    expect(page).to have_content 'Batchfile'
    expect(page).to have_content 'Emacs Lisp'
    expect(page).to have_content 'sed'
    expect(page).to have_content 'Scheme'
    expect(page).to have_content 'Raku'
    expect(page).to have_content 'Perl'
    expect(page).to have_content 'Dockerfile'

    click_button 'Voltar'
    click_link 'ruby'
    click_button 'Deletar'

    page.driver.browser.switch_to.alert.accept

    expect(page).to have_content 'Repositório do Ruby foi removido!'
    expect(page).to have_content 'Nenhum repositório disponível para a apresentação.'
  end
  # rubocop:enable RSpec/ExampleLength
end
