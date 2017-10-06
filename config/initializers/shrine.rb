require "shrine"
if Rails.env.production?
  require "shrine/storage/s3"

  s3_options = {
    access_key_id:     "AKIAILKV4TT6IQ3CK7CA",
    secret_access_key: "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",
    region:            "ap-southeast-1",
    bucket:            "thehand",
    upload_options: { acl: "public-read" }
  }

  Shrine.storages = {
    cache: Shrine::Storage::S3.new(prefix: "athena_cache", **s3_options),
    store: Shrine::Storage::S3.new(prefix: "athena_store", **s3_options),
  }

else
  require "shrine/storage/s3"

  s3_options = {
    access_key_id:     "AKIAILKV4TT6IQ3CK7CA",
    secret_access_key: "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",
    region:            "ap-southeast-1",
    bucket:            "thehand",
    upload_options: { acl: "public-read" }
  }

  Shrine.storages = {
    cache: Shrine::Storage::S3.new(prefix: "athena_cache", **s3_options),
    store: Shrine::Storage::S3.new(prefix: "athena_store", **s3_options),
  }
end

Shrine.plugin :default_url_options, store: { public: true, host: "https://thehand.s3.amazonaws.com" }

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data # for forms
