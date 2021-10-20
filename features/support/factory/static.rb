module Factory
  class Static
    def self.load_file
      YAML.load_file("features/support/factory/static/dados.yml")
    end

    def self.static_data(data)
      Static.load_file[data]
    end
  end
end