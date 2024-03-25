# frozen_string_literal: true

class Publisher
  def self.publish(queue_name, message = {})
    channel = connection.create_channel
    queue = channel.queue(queue_name, durable: true)
    queue.publish(message)
    channel.close
  end

  def self.connection
    @connection ||= Bunny.new(hostname: 'rabbitmq',
                              username: 'guest',
                              password: 'guest')
    @connection.start
  end
end
