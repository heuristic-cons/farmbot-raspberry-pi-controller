module FBPi
  class MeshMessage
    attr_accessor :from, :type, :payload

    def initialize(from:, type:, payload:)
      payload.delete("message_type") if payload.respond_to?(:delete)
      @from, @type, @payload = from, type, payload
    end
  end
end
