class Consumer < ActiveRecord::Base
  enum group_status: {
    consumer: 'consumer',
    manager: 'manager'
  }
end
