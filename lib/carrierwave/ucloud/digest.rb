module CarrierWave
  module UCloud
    class Digest
      class << self
        def authorization(uploader, req)
          sign = sign(uploader, req)
          "UCloud #{uploader.public_key}:#{sign}"
        end

        def sign(uploader, req)
          string = string_to_sign(uploader, req)
          digest = OpenSSL::Digest.new('sha1')
          Base64.encode64(OpenSSL::HMAC.digest(digest, uploader.private_key, string))
        end

        def string_to_sign(uploader, req)
          headers = req.headers
          http_verb = "#{req.method.upcase}\n"
          content_md5 = "\n"
          content_type = "#{headers['Content-Type']}\n"
          date = "\n"
          canonicalized_ucloud_headers = ''
          http_verb + content_md5 + content_type + date + canonicalized_ucloud_headers + canonicalized_resource(uploader)
        end

        def canonicalized_resource(uploader)
          "/#{uploader.ucloud_bucket}/#{uploader.store_path}"
        end
      end
    end
  end
end