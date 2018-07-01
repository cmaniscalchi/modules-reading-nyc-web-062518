# Without nesting our modules, we need to use:
#
# require_relative './dance_module.rb'
# require_relative './class_methods_module.rb'
#
# class Kid
#   extend MetaDancing
#   include Dance
#
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#   end
# end

require_relative './fancy_dance.rb'

class Kid
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
