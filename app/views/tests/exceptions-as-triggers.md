
# Using Exceptions as Event Triggers (Refactoring Idea)

### Scenario

We have a feature that assigns an object to a user.

Here are the rules:

* 1-to-1 (1 user is assigned 1 object)
* An object can only be assigned 1 time
* There is a finite pool of objects that can be assigned

Because the number of objects is finite, if the number of users exceeds the
number of objects, no assignment will happen.

It is easy to handle a failed assigment without the app blowing up.  However,
the goal is to have the app notify us when this occurs.

I think throwing an exception, and handling it might be a clean way of solving
this.


### Without Exceptions

    class AssignableObject < ActiveRecord::Base
      def self.assign_to(user)
        return false unless next_available.present?
        user.update_attributes(assignable_object: next_available)
      end
    end

### With Exceptions

Instead of returning false immediately, we want to send an email and then
return false.

    class AssignableObject < ActiveRecord::Base
      def self.assign_to(user)
        raise NotAvailableException unless next_available.present?
        user.update_attributes(assignable_object: next_available)

        rescue NotAvailableException
          send_out_of_objects_email
          false
      end
    end

