# When a parameter is passed by
# URL like that: /contacts?subject=Budget

# Is created a hash called params:
params = {subject: "Budget"}

# Than I can use in a DB:
@contact = Contact.create(subject: params[:subject])

# However, often we will se something like
# /contacts?contact[subject]=Budget

# And my param will look like:
params = {contact: {subject: "Budget"}}

# And we will use:
@contact = Contact.new(contact: params[:contact][:subject])

# For lucky, exist a alternative (and better) syntax,
# than will maping our DB properties and agree w/ the
# params hash:
@contact = Contact.new(params[:contact])


# Avoiding a harmful user input we use something
# Strong Paramaters, which blocks this security error
@contact = Contact.new(params[:contact].require(:contact).permit(:subject))
