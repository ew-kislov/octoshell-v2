# encoding: utf-8

require "main_spec_helper"

feature "Sign up", js: true do
  scenario "with valid data" do
    visit authentication.new_user_path
    fill_in "Email", with: "octo@shell.com"
    fill_in "Пароль", with: "123456"
    fill_in "Подтверждение", with: "123456"
    check 'cond_cond_accepted'
    click_on "Зарегистрироваться"
    expect(page).to have_content('отправлена инструкция по активации аккаунта')
  end
end
