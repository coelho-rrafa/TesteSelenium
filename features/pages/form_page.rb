require_relative 'sections/insurance_form.rb'

module Pages
  class FormPage < SitePrism::Page
    set_url '/101/app.php'

    element :breadcrumb,                              '.breadcrumbs'
    element :span_message_alert,                      'div[data-animation=pop]'
    section :insurance_form, Sections::InsuranceForm, '#insurance-form'

    def set_vehicle_data
      insurance_form.vehicle_data
    end

    def set_insurant_data
      insurance_form.insurant_data
      insurance_form.send_file
      insurance_form.btn_next_to_product_data.click
    end
    
    def set_product_data
      insurance_form.product_data
    end

    def set_price_plan
      insurance_form.price_plan
    end

    def send_quote
      insurance_form.quote
    end
  end
end