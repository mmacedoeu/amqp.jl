module AMQP
using Compat

import Base: convert

include("libwcs_common.jl")
include("libwcs_h.jl")

export make_connection

function make_connection()
  conn = amqp_new_connection()
  socket = amqp_tcp_socket_new(conn)
  status = amqp_socket_open(socket, "localhost", ci.port)
  amqp_login(conn, "fx", 0, 131072, amqp_heartbeat,
                     AMQP_SASL_METHOD_PLAIN,
                     "fx", "fx")
  amqp_get_rpc_reply(conn)
  return conn
end
