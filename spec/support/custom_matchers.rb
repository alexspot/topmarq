require 'rspec/expectations'

RSpec::Matchers.define :include_phrase do |expected|
  match do |actual|
    @failed_items = actual.reject { |item| item.include? "#{expected}" }
    @failed_items.empty?
  end
  failure_message_for_should do |actual|
    "expected #{@failed_items} to include '#{expected}' phrase"
  end
end

RSpec::Matchers.define :cover_range do |expected|
  match do |actual|
    @failed_items = actual.reject { |item| expected.cover?(item) }
    @failed_items.empty?
  end
  failure_message_for_should do |actual|
    "expected #{@failed_items} to cover range #{expected}"
  end
end