#!/usr/bin/env camping
require 'camping'

Camping.goes :MiniTop

module MiniTop::Models
    class Link < Base; end
    class AddLinks < V 1.0
        def self.up
            create_table :links do |t|
                t.integer :id, :null => false
                t.string :name
                t.string :url
            end
        end
        def self.down
            drop_table :links
        end
    end
end

