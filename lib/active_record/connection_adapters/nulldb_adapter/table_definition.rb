# frozen_string_literal: true

class ActiveRecord::ConnectionAdapters::NullDBAdapter
  class TableDefinition < ActiveRecord::ConnectionAdapters::TableDefinition
    attr_accessor :name
    alias uuid string
    alias citext text
    alias interval text
    alias geometry text
    alias jsonb json if method_defined? :json

    def json(args); end
  end
end
