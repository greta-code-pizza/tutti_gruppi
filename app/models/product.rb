class Product < ActiveRecord::Base
  enum package: {
    bag:     "bag",
    bottle:  "bottle",
    box:     "box", 
    jar:     "jar",
    tray:    "tray"
  }
end