# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Files::Application.initialize!

Time::DATE_FORMATS[:on_date] = "Creado en %B %d a las %I:%M %p"
