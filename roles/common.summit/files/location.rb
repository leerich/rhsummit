require 'facter'
Facter.add(:role) do
  function = Facter.value(:hostname)
  setcode do
    if function[12..13] == '65' then role = 'database'
    elsif function[12..14] == '236' then role = 'webserver'
    else
    datacenter = 'unknown'
    end
  end
end
