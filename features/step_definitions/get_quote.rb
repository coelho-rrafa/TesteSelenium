Dado("que esteja na página incial") do
  @home_page.load
  page.driver.browser.manage.window.maximize
end

Quando("selecionar a categoria {string}") do |category|
  @home_page.set_category
  expect(@form_page.breadcrumb).to have_content category
end

Quando("preencher o formulário da forma correta") do
  @form_page.set_vehicle_data
  @form_page.set_insurant_data
  @form_page.set_product_data
  @form_page.set_price_plan
end

Então("deverá ser permitida o envio da cotação") do
  target = @form_page.insurance_form.btn_next_to_send_quote
  expect(target.visible?).to be true
  target.click

  @form_page.send_quote
end

Então("a mensagem {string} deverá ser exibida") do |message|
  expected_message = @form_page.span_message_alert
  expect(expected_message.visible?).to be true
  expect(expected_message).to have_content message
end