# when a parameter is passed by
# url like that: /contacts?subject=Budget

# is created a hash called params:
params = {subject: "Budget"}

# than I can use in a DB:
@contact = Contact.create(subject: params[:subject])

# however, often we will see something like
# /contacts?contact[subject]=Budget

# and my param will look like:
params = {contact: {subject: "Budget"}}

# we will use:
@contact = Contact.new(contact: params[:contact][:subject])

# for lucky, exist a alternative (and better) syntax,
# than will maping our DB properties and agree w/ the
# params hash:
@contact = Contact.new(params[:contact])


# avoiding a harmful user input we use something called
# Strong Paramaters, which blocks this security error.
# see how this works with a method
@contact = Contact.new(contact_params)

def contact_params
  params[:contact]
    .require(:contact)
    .permit(:subject)
end
