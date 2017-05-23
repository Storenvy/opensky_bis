module OpenskyBis
  # Extend the OpenskyBis object with some methods for building the various
  # signatures needed to communicate with BIS.
  module Signature
    module_function

    # Build the registration key, which is a md5 hash of a multi-component token string, as detailed in
    # the OpenSky (BIS) Vendio/Auctiva Integration Documentation. The components of the string are joined by
    # pipe "|" characters. This hash computation is different than the A&A flow request signature.
    # The signature logic should be equivalent to this PHP code: md5(<seller_id>|<timestamp>|<secret_key>)
    # @param components [Array<String>] A list of the components which will be joined with pipes "|" to form the full string.
    # @return [String] the components encoded into a MD5 hash.
    def generate_registration_key(components)
      string_to_encode = components.join('|')

      Digest::MD5.hexdigest(string_to_encode)
    end

    # Build the request signature, which is a url-safe base64 encoded sha1 hash of a multi-component request string,
    # as detailed in the OpenSky (BIS) External API Documentation. The components of the string are joined by
    # newline characters. Url-safe means converting '+' to '/', '-' to '_', and removing '='. The signature logic
    # should also be equivalent to this PHP code, a form of which was used for comparison during initial testing:
    #
    #     $signature = rtrim(strtr(base64_encode(hash_hmac("sha1", $string_to_sign, $appSecretKey, true)), '+/', '-_'), '=');
    #
    # Params:
    # - components: A list of the components which will be joined with newlines to form the full string
    def generate_request_signature(components)
      string_to_sign = components.join("\n")

      digest = OpenSSL::Digest.new('sha1')
      Base64.encode64(OpenSSL::HMAC.digest(digest, @configuration.secret_key, string_to_sign))
    end
  end
end
