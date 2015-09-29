CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAICC3LJPF65F7FRYA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'daewang'                          # required
end