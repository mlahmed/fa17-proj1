# Q0: Why is this error being thrown?

Because we need to make a controller for Pokemon.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

There are only four random pokemon that appear when you refresh, and they are all hardcoded into the seed.rb file.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

The line generates a form containing an interactive button that submits to the URL eat time we 'capture' a Pokemon, once we catch them all the button disappears.

# Question 3: What would you name your own Pokemon?

Patricia.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

You pass in the trainer id, to specify to redirect to trainers/trainer_id. For example, if the trainer_id is 6 you want it to redirect back to that trainer's page - trainer/6.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
