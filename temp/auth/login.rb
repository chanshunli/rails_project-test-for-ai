class Login
class Login
  def login(phone_number, new_argument, another_new_argument, additional_argument)
    if phone_number_login(phone_number, new_argument, another_new_argument, additional_argument)
      puts "Phone number login successful"
    else
      puts "Phone number login failed"
    end
  end

  def phone_number_login(phone_number, new_argument, another_new_argument, additional_argument)
    # Add your phone number login logic here
    # For example, check if phone_number is valid and return true if successful, false otherwise
    phone_number.match?(/^\+\d{10}$/)
  end
end
