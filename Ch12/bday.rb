bday = Time.local(1990,05,17,6,28,55) #goes in descending order from year, duh.
billion = bday + (1000**3) #can't define "bday+1000" as billion, must do the other way around.  B/c you can't set an integer or time value as a variable.
puts billion