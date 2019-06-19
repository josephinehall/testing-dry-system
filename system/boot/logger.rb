Application.boot(:logger) do
  init do
    require "logger"
  end
  start do
    logger = Logger.new($stdout)
    $stdout.sync = true
    register(:logger, logger.reopen($stdout))
  end
end

