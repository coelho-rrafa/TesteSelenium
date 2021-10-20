module Sections
  class InsuranceForm < SitePrism::Section
    #Step 1  Vehicle Data
    element  :select_make,                                       '#make'
    element  :field_engine_performance,                          '#engineperformance'
    element  :set_date_of_manufacture,                           '#dateofmanufacture'
    element  :select_number_of_seats,                            '#numberofseats'
    element  :select_fuel_type,                                  '#fuel'
    element  :field_list_price,                                  '#listprice'
    element  :field_license_plate_number,                        '#licenseplatenumber'
    element  :field_annual_mileage,                              '#annualmileage'
    element  :btn_next_to_insurant_data,                         '#nextenterinsurantdata'

    #Step 2  Insurant Data
    element  :field_firstname,                                   '#firstname'
    element  :field_lastname,                                    '#lastname'
    element  :set_date_of_birth,                                 '#birthdate'
    elements :select_gender,                                     '.ideal-radio'
    element  :field_street_address,                              '#streetaddress'
    element  :select_country,                                    '#country'
    element  :field_zip_code,                                    '#zipcode'
    element  :field_city,                                        '#city'
    element  :select_occupation,                                 '#occupation'
    elements :checkbox_hobbies,                                  '.ideal-check'
    element  :checkbox_hobbies_other,                            '#other'
    element  :field_website,                                     '#website'
    element  :send_picture,                                      '#picture'
    element  :btn_next_to_product_data,                          '#nextenterproductdata'

    #Step 3  Product Data
    element  :set_start_date,                                    '#startdate'
    element  :select_insurance_sum,                              '#insurancesum'
    element  :select_merit_rating,                               '#meritrating'
    element  :select_damage_insurance,                           '#damageinsurance'
    elements :select_optional_products,                          '.ideal-check'
    element  :select_courtesy_car,                               '#courtesycar'
    element  :btn_next_to_select_price_option,                   '#nextselectpriceoption'

    #Step 4  Price Option
    elements  :select_price_plan,                                '.ideal-radio'
    element   :btn_download_quote,                               '#downloadquote'
    element   :btn_view_quote,                                   '#viewquote'
    element   :btn_next_to_send_quote,                           '#nextsendquote'

    #Step 5  Send Quote
    element  :field_set_email,                                   '#email'
    element  :field_set_phone,                                   '#phone'
    element  :field_set_username,                                '#username'
    element  :field_set_password,                                '#password'
    element  :field_confirm_password,                            '#confirmpassword'
    element  :field_comments,                                    'textarea[name=Comments]'
    element  :btn_send_email,                                    '#sendemail'

    def vehicle_data
    @car = Factory::Static.static_data(:vehicle)
      select_make.select @car[:make]
      field_engine_performance.set @car[:engine_performance]
      set_date_of_manufacture.set @car[:date_of_manufacture]
      select_number_of_seats.select @car[:number_of_seats]
      select_fuel_type.select @car[:fuel_type]
      field_list_price.set @car[:list_price]
      field_license_plate_number.set @car[:license_plate]
      field_annual_mileage.set @car[:annual_mileage]
      btn_next_to_insurant_data.click
    end

    def insurant_data
      @user = Factory::Dynamic.user
      field_firstname.set @user[:firstname]
      field_lastname.set @user[:lastname]
      set_date_of_birth.set @user[:birthdate]
      select_gender[rand(0..1)].click
      field_street_address.set @user[:address]
      select_country.select @user[:country]
      field_zip_code.set @user[:postcode]
      field_city.set @user[:city]
      select_occupation.select @user[:occupation]
      checkbox_hobbies[3].click
      checkbox_hobbies[1].click
      field_website.set @user[:website]
    end

    def send_file
      @archive = "#{Dir.pwd}/features/support/archives/image.png"
      send_picture.set @archive
    end

    def product_data
      @product = Factory::Static.static_data(:product)
      set_start_date.set @product[:start_date]
      select_insurance_sum.select @product[:insurance_sum]
      select_merit_rating.select @product[:merit_rating]
      select_damage_insurance.select @product[:damage_insurance]
      select_optional_products[0].click
      select_optional_products[1].click
      select_courtesy_car.select @product[:courtesy_car]
      btn_next_to_select_price_option.click
    end

    def price_plan
      plan = rand(1..4)
      case plan
      when 1
        select_price_plan[0].click
      when 2
        select_price_plan[1].click
      when 3
        select_price_plan[2].click
      when 4
        select_price_plan[3].click
      end
    end

    def quote
      @user = Factory::Dynamic.user
      field_set_email.set @user[:email]
      field_set_phone.set @user[:phone]
      field_set_username.set @user[:username]
      field_set_password.set @user[:password]
      field_confirm_password.set @user[:password]
      field_comments.set @user[:comments]
      btn_send_email.click
    end
  end
end