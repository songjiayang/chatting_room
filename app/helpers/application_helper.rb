# coding: utf-8
require "redcarpet"
module ApplicationHelper
	def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def markdown(str, options = {})
    options[:hard_wrap] ||= false
    options[:class] ||= ''
    assembler = Redcarpet::Render::HTML.new(:hard_wrap => options[:hard_wrap]) # auto <br> in <p>

    renderer = Redcarpet::Markdown.new(assembler, {
      :autolink => true,
      :fenced_code_blocks => true
    })
    content_tag(:div, raw(MarkdownConverter.convert(str)), :class => options[:class])
  end
end
