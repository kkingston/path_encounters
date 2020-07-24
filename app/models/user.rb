class User < ActiveRecord::Base
  has_many :encounters

  has_secure_password

  validates :user_name, presence: true, uniqueness: true 
end

# <nav>
# <ul>
#   <% unless logged_in? %>
#     <li><a href="/signup">Create Account</a></li>
#     <li><a href="/login">Login</a></li>
#   <% else %>
#     <li><%=current_user.user_name%></li>
#     <li><a href="/logout">Logout</a></li>
#   <% end %>
# </ul>
# </nav>