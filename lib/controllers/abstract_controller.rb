module FBPi
  class AbstractController
    attr_reader :message, :bot, :mesh

    def initialize(message, bot, mesh)
      @message, @bot, @mesh = message, bot, mesh
    end

    def reply(type, payl = {})
      mesh.emit message.from, payl.merge(message_type: type)
    end
  end
end
