require "pry/loudmouth/version"

module Pry::Loudmouth
  def self.add_before_hook!
    Pry.hooks.add_hook :before_session, 'pry-loudmouth:announce_entrance' do |a,b,c|
      print "\a"
      Process.setproctitle 'pry'
    end
  end

  def self.add_after_hook!
    Pry.hooks.add_hook :after_session, 'pry-loudmouth:pry_has_left_the_building' do
      Process.setproctitle 'ruby'
    end
  end
end

Pry::Loudmouth.add_before_hook!
Pry::Loudmouth.add_after_hook!
