    * |\      /|  -----  |\   |  -----  -----   /----\   |----\  *
    * | \    / |    |    | \  |    |      |    /      \  |    /  *
    * |  \  /  |    |    |  \ |    |      |    \      /  |---/   *
    * |   \/   |  -----  |   \|  -----    |     \----/   |       *
                           version   1.0

So, basically, MiniTop is a home page. But not just any homepage, it's an /extendable/ homepage.
What does that mean, exactly? Well, I'll show you an example MiniPart.
  Consider the following ZIP file:
    example.part
     |-- description.yml
     |-- part.erb

description.yml is a YAML map. An example would be:
    ---
    name: Example App
That's all you need.

part.erb is a template, where the actual interface/code goes for your app. Example:
    <strong><%= "This is an example.".upcase %></strong><br/>

Running the MiniTop
-------------------
Run:
    $ rake db:migrate
    $ script/server
Then go to http://localhost:3000/

