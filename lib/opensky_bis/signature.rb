module OpenskyBis
  # Extend the OpenskyBis object with some methods for building the various
  # signatures needed to communicate with BIS.
  module Signature
    module_function

    # Build the request signature, which is a url-safe base64 encoded sha1 hash of a multi-component request string,
    # as detailed in the OpenSky (BIS) External API Documentation. The components of the string are joined by
    # newline characters. Url-safe means converting '+' to '/', '-' to '_', and removing '='. The signature logic
    # should also be equivalent to this PHP code, a form of which was used for comparison during initial testing:
    #
    #     $signature = rtrim(strtr(base64_encode(hash_hmac("sha1", $string_to_sign, $appSecretKey, true)), '+/', '-_'), '=');
    #
    # @param [Array<String>] components A list of the components which will be joined with newlines to form the full string.
    # @return [String] the components as an url-safe base64 encoded sha1 hash.
    def generate_request_signature(components)
      string_to_sign = components.join("\n")

      digest = OpenSSL::Digest.new('sha1')
      Base64.encode64(OpenSSL::HMAC.digest(digest, @configuration.secret_key, string_to_sign))
    end
  end
end
