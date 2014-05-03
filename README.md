# Blankable

Adds blank slates to index view

## Installation

Add this line to your application's Gemfile:

    gem 'blankable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blankable

## Usage

```ruby
# Customers Controller
class CustomersController < ApplicationController
  def index
    @customers = Customer.all
    respond_with(@customers)
  end
end
```

```haml
# views/customers/_grid.html.haml
%table
  %tr
    %th Name
    %th Business Phone
    %th Mobile Phone
    %th Address


  - @customers.each do |customer|
    %tr
      %td= customer.name
      %td= customer.business_phone
      %td= customer.mobile_phone
      %td= customer.address
```

```haml
# views/customers/_blank.html.haml
 = link_to 'Add your first customer', new_customer_path
```

```haml
# views/customers/index.html.haml
= blankable @customers
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

- Blankable is maintained and funded by [lab2023 - information technologies](http://lab2023.com/)
- The names and logos for lab2023 are trademarks of lab2023, inc.

## License

Copyright 2014 lab2023 – information technologies