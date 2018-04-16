#!/usr/bin/env ruby
require 'facter'
#Logic_Monitor
Facter.add(:purpose) do
  has_weight 100
  setcode do
    if File.exist? '/etc/webserver'
      'webserver'
    elsif File.exist? '/etc/database'
      'database'
    else
      'unknown'
    end
  end
end
