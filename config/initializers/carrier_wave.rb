CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['AKIAJEW3KOLSPDO2SUIQ'],
      aws_secret_access_key: ENV['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'],
      region:                'ap-northeast-1'
    }
    config.fog_directory  = ENV['pamadesign']
  else
    config.storage :file
  end
end