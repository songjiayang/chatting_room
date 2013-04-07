#encoding:utf-8
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
MyChatter::Application.initialize!

require 'will_paginate' 
require 'gravtastic'
WillPaginate::ViewHelpers.pagination_options[:previous_label] = '上一页'
WillPaginate::ViewHelpers.pagination_options[:next_label] = '下一页'
