module Faker
  class Table < Base
    class << self
      def color
        ['#fff', '#fff', '#fff', '#999', '#ccc', '#eee', '#f3f3f3', '#fff',
         '#f00', '#f90', '#fff', '#0f0', '#0ff', '#00f', '#90f', '#f0f',
         '#f4cccc', '#fce5cd', '#fff2cc', '#d9ead3', '#d0e0e3', '#cfe2f3', '#d9d2e9', '#fff',
         '#ea9999', '#f9cb9c', '#ffe599', '#fff', '#a2c4c9', '#9fc5e8', '#b4a7d6', '#d5a6bd',
         '#fff', '#f6b26b', '#ffd966', '#93c47d', '#76a5af', '#fff', '#8e7cc3', '#c27ba0',
         '#c00', '#e69138', '#fff', '#6aa84f', '#45818e', '#fff', '#674ea7', '#a64d79',
         '#900', '#b45f06', '#bf9000', '#38761d', '#134f5c', '#0b5394', '#351c75', '#741b47',
         '#fff', '#fff', '#7f6000', '#fff', '#0c343d', '#fff', '#20124d', '#fff'].sample
      end

      def os_name
        ['', 'WINDOWS-95', 'WINDOWS-95-OSR1', 'WINDOWS-95-OSR2', 'WINDOWS-98', 'WINDOWS-CE', 'WINDOWS-NT',
         'WINDOWS-NT-2', 'WINDOWS-NT-3', 'WINDOWS-NT-3.5', 'WINDOWS-NT-3.51', 'WINDOWS-NT-4',
         'WINDOWS-NT-5', 'WINDOWS-NT-5.1', 'WINDOWS-NT-6', 'WINDOWS-NT-6.1'].sample
      end

      def action_status
        %w(connected scanned).sample
      end

      def user_accounts
        ['Admin', 'root', 'Administrator', 'system', 'batanda', 'Админ', 'Администратор', ''].sample
      end
    end
  end
end

FactoryGirl.define do
  factory :host do
    user_color { Faker::Table.color }
    sessions_alive_count { rand(0..3) }
    ip_address { Faker::Internet.ip_v4_address }
    name { Faker::Internet.slug }
    os_name { Faker::Table.os_name }
    logged_users { Faker::Name.first_name }
    user_accounts { Faker::Table.user_accounts }
    info { Faker::Lorem.sentence }
    comment { Faker::Lorem.sentence }
    action_status { Faker::Table.action_status }
  end
end
