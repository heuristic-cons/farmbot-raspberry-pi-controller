require_relative "fake_logger"
require_relative "fake_serial_port"
require 'farmbot-serial'

class FakeBot < FB::Arduino
  attr_reader :logs, :last_log, :rest_client

  def initialize(serial_port: FakeSerialPort.new, logger: FakeLogger.new)
    @logs = []
    @rest_client = FakeRestClient.new
    super
  end

end
