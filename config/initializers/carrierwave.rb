# # config/initializers/carrierwave.rb


CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_public = false
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AKIA5BRDRCEWDYZ3TT4C"],        # required
    aws_secret_access_key: ENV["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"],
            # required
  }
  config.fog_directory  = ENV["nomsters3apalit"]              # required
end