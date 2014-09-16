require 'rubygems'
require 'date'
require 'active_support'
require 'forwardable'
require 'active_support/core_ext/string/inflections'

if RUBY_VERSION > '1.9'
 require 'csv'
 unless defined? FCSV
   class Object
     FCSV = CSV
     alias_method :FCSV, :CSV
   end
 end
else
 require 'fastercsv'
end

require './lib/adt/globals'
require './lib/adt/record'
require './lib/adt/column'
require './lib/adt/table'


