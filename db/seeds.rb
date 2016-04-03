Admin.create!(email: "clarsenipod@gmail.com",
              password: "foobar13",
              password_confirmation: "foobar13")

Post.create!(title: "My first blog post",
              content: "Hello. I've just started my new blog on this website. I will be posting regularly on the various technological products that I work on.")

Post.create!(title: "My second blog post",
              content: "I've recently studied a little bit of Python. It seems to me that they just took C, and made it a bit more readable. Whereas Ruby is purely object oriented, and the code flows better because of that, Python has the same kind of syntax as a low level language, but with English language based keywords. Except for the elif statement. Seriously, what's up with that one?")
