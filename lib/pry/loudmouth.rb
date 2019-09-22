# frozen_string_literal: true

require 'pry/loudmouth/version'

module Pry
  module Loudmouth
    def self.add_before_hook!
      Pry.hooks.add_hook :before_eval, 'pry-loudmouth:eval' do
        Process.setproctitle 'ruby'
      end
    end

    def self.add_after_hook!
      Pry.hooks.add_hook :after_eval, 'pry-loudmouth:all-done' do
        print "\a"
        Process.setproctitle 'pry'
      end
    end
  end
end

Pry::Loudmouth.add_before_hook!
Pry::Loudmouth.add_after_hook!
