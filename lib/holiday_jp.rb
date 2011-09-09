# -*- coding: utf-8 -*-
require "holiday_jp/version"
require 'holiday_jp/holiday'
require 'holiday_jp/holidays'

module HolidayJp
  # == Between date
  # === Example:
  #  >> holidays = HolidayJp.between(Date.new(2010, 9, 14), Date.new(2010, 9, 21))
  #  >> holidays.first.name # 敬老の日
  # === parameters
  # * <tt>start</tt>
  # * <tt>last</tt>
  def self.between(start, last)
    HOLIDAYS.find_all do |date, holiday|
      start <= date && date <= last
    end.map(&:last)
  end


  # == Whether the date is holiday or not.
  # === Example:
  # >> HolidayJp.holiday?(Date.new(2011, 9, 19)) # => true
  # === parameter(s)
  # * <tt>date</tt>
  def self.holiday?(date)
    !HOLIDAYS[date].nil?
  end
end
