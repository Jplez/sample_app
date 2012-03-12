# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                  "James Pleasant"
  user.email                 "James.M.Pleasant@temple.edu"
  user.password              "foobar"
  user.password_confirmation "foobar"
end