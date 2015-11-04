using Clang.wrap_c

clang_includes = ["/usr/include/"]
headers = ["amqp.h", "amqp_ssl_socket.h","amqp_framing.h","amqp_tcp_socket.h"]
const wc = wrap_c.init(clang_includes = clang_includes,
                               output_file = "libamqp_h.jl",
                               common_file = "libamqp_common.jl",
                               header_library = x -> "librabbitmq" )

wc.options.immutable_structs = true
wrap_c.wrap_c_headers(wc, headers)
