# Automatically generated using Clang.jl wrap_c, version 0.0.0

using Compat

const unix = 1
const linux = 1

# Skipping MacroDefinition: AMQP_PUBLIC_FUNCTION __attribute__ ( ( visibility ( "default" ) ) )
# Skipping MacroDefinition: AMQP_PUBLIC_VARIABLE __attribute__ ( ( visibility ( "default" ) ) ) extern
# Skipping MacroDefinition: AMQP_DEPRECATED ( function ) function __attribute__ ( ( __deprecated__ ) )
# Skipping MacroDefinition: NULL ( ( void * ) 0 )
# Skipping MacroDefinition: offsetof ( t , d ) __builtin_offsetof ( t , d )

const INT8_MIN = -128
const INT16_MIN = -32767 - 1
const INT32_MIN = -2147483647 - 1

# Skipping MacroDefinition: INT64_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )

const INT8_MAX = 127
const INT16_MAX = 32767
const INT32_MAX = 2147483647

# Skipping MacroDefinition: INT64_MAX ( __INT64_C ( 9223372036854775807 ) )

const UINT8_MAX = 255
const UINT16_MAX = 65535
const UINT32_MAX = 4294967295

# Skipping MacroDefinition: UINT64_MAX ( __UINT64_C ( 18446744073709551615 ) )

const INT_LEAST8_MIN = -128
const INT_LEAST16_MIN = -32767 - 1
const INT_LEAST32_MIN = -2147483647 - 1

# Skipping MacroDefinition: INT_LEAST64_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )

const INT_LEAST8_MAX = 127
const INT_LEAST16_MAX = 32767
const INT_LEAST32_MAX = 2147483647

# Skipping MacroDefinition: INT_LEAST64_MAX ( __INT64_C ( 9223372036854775807 ) )

const UINT_LEAST8_MAX = 255
const UINT_LEAST16_MAX = 65535
const UINT_LEAST32_MAX = 4294967295

# Skipping MacroDefinition: UINT_LEAST64_MAX ( __UINT64_C ( 18446744073709551615 ) )

const INT_FAST8_MIN = -128
const INT_FAST16_MIN = -9223372036854775807 - 1
const INT_FAST32_MIN = -9223372036854775807 - 1

# Skipping MacroDefinition: INT_FAST64_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )

const INT_FAST8_MAX = 127
const INT_FAST16_MAX = 9223372036854775807
const INT_FAST32_MAX = 9223372036854775807

# Skipping MacroDefinition: INT_FAST64_MAX ( __INT64_C ( 9223372036854775807 ) )

const UINT_FAST8_MAX = 255
const UINT_FAST16_MAX = @int128_str("18446744073709551615")
const UINT_FAST32_MAX = @int128_str("18446744073709551615")

# Skipping MacroDefinition: UINT_FAST64_MAX ( __UINT64_C ( 18446744073709551615 ) )

const INTPTR_MIN = -9223372036854775807 - 1
const INTPTR_MAX = 9223372036854775807
const UINTPTR_MAX = @int128_str("18446744073709551615")

# Skipping MacroDefinition: INTMAX_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )
# Skipping MacroDefinition: INTMAX_MAX ( __INT64_C ( 9223372036854775807 ) )
# Skipping MacroDefinition: UINTMAX_MAX ( __UINT64_C ( 18446744073709551615 ) )

const PTRDIFF_MIN = -9223372036854775807 - 1
const PTRDIFF_MAX = 9223372036854775807
const SIG_ATOMIC_MIN = -2147483647 - 1
const SIG_ATOMIC_MAX = 2147483647
const SIZE_MAX = @int128_str("18446744073709551615")
#const WCHAR_MIN = __WCHAR_MIN
#const WCHAR_MAX = __WCHAR_MAX
const WINT_MIN = 0
const WINT_MAX = 4294967295

# Skipping MacroDefinition: INT8_C ( c ) c
# Skipping MacroDefinition: INT16_C ( c ) c
# Skipping MacroDefinition: INT32_C ( c ) c
# Skipping MacroDefinition: INT64_C ( c ) c ## L
# Skipping MacroDefinition: UINT8_C ( c ) c
# Skipping MacroDefinition: UINT16_C ( c ) c
# Skipping MacroDefinition: UINT32_C ( c ) c ## U
# Skipping MacroDefinition: UINT64_C ( c ) c ## UL
# Skipping MacroDefinition: INTMAX_C ( c ) c ## L
# Skipping MacroDefinition: UINTMAX_C ( c ) c ## UL

const AMQP_VERSION_MAJOR = 0
const AMQP_VERSION_MINOR = 5
const AMQP_VERSION_PATCH = 2
const AMQP_VERSION_IS_RELEASE = 1

# Skipping MacroDefinition: AMQP_VERSION ( ( AMQP_VERSION_MAJOR << 24 ) | ( AMQP_VERSION_MINOR << 16 ) | ( AMQP_VERSION_PATCH << 8 ) | ( AMQP_VERSION_IS_RELEASE ) )
# Skipping MacroDefinition: AMQ_STRINGIFY ( s ) AMQ_STRINGIFY_HELPER ( s )
# Skipping MacroDefinition: AMQ_STRINGIFY_HELPER ( s ) # s
# Skipping MacroDefinition: AMQ_VERSION_STRING AMQ_STRINGIFY ( AMQP_VERSION_MAJOR ) "." AMQ_STRINGIFY ( AMQP_VERSION_MINOR ) "." AMQ_STRINGIFY ( AMQP_VERSION_PATCH )

#const AMQP_VERSION_STRING = AMQ_VERSION_STRING
const AMQP_DEFAULT_FRAME_SIZE = 131072
const AMQP_DEFAULT_MAX_CHANNELS = 0
const AMQP_DEFAULT_HEARTBEAT = 0
const AMQP_PROTOCOL_VERSION_MAJOR = 0
const AMQP_PROTOCOL_VERSION_MINOR = 9
const AMQP_PROTOCOL_VERSION_REVISION = 1
const AMQP_PROTOCOL_PORT = 5672
const AMQP_FRAME_METHOD = 1
const AMQP_FRAME_HEADER = 2
const AMQP_FRAME_BODY = 3
const AMQP_FRAME_HEARTBEAT = 8
const AMQP_FRAME_MIN_SIZE = 4096
const AMQP_FRAME_END = 206
const AMQP_REPLY_SUCCESS = 200
const AMQP_CONTENT_TOO_LARGE = 311
const AMQP_NO_ROUTE = 312
const AMQP_NO_CONSUMERS = 313
const AMQP_ACCESS_REFUSED = 403
const AMQP_NOT_FOUND = 404
const AMQP_RESOURCE_LOCKED = 405
const AMQP_PRECONDITION_FAILED = 406
const AMQP_CONNECTION_FORCED = 320
const AMQP_INVALID_PATH = 402
const AMQP_FRAME_ERROR = 501
const AMQP_SYNTAX_ERROR = 502
const AMQP_COMMAND_INVALID = 503
const AMQP_CHANNEL_ERROR = 504
const AMQP_UNEXPECTED_FRAME = 505
const AMQP_RESOURCE_ERROR = 506
const AMQP_NOT_ALLOWED = 530
const AMQP_NOT_IMPLEMENTED = 540
const AMQP_INTERNAL_ERROR = 541

# Skipping MacroDefinition: AMQP_CONNECTION_START_METHOD ( ( amqp_method_number_t ) 0x000A000A )
# Skipping MacroDefinition: AMQP_CONNECTION_START_OK_METHOD ( ( amqp_method_number_t ) 0x000A000B )
# Skipping MacroDefinition: AMQP_CONNECTION_SECURE_METHOD ( ( amqp_method_number_t ) 0x000A0014 )
# Skipping MacroDefinition: AMQP_CONNECTION_SECURE_OK_METHOD ( ( amqp_method_number_t ) 0x000A0015 )
# Skipping MacroDefinition: AMQP_CONNECTION_TUNE_METHOD ( ( amqp_method_number_t ) 0x000A001E )
# Skipping MacroDefinition: AMQP_CONNECTION_TUNE_OK_METHOD ( ( amqp_method_number_t ) 0x000A001F )
# Skipping MacroDefinition: AMQP_CONNECTION_OPEN_METHOD ( ( amqp_method_number_t ) 0x000A0028 )
# Skipping MacroDefinition: AMQP_CONNECTION_OPEN_OK_METHOD ( ( amqp_method_number_t ) 0x000A0029 )
# Skipping MacroDefinition: AMQP_CONNECTION_CLOSE_METHOD ( ( amqp_method_number_t ) 0x000A0032 )
# Skipping MacroDefinition: AMQP_CONNECTION_CLOSE_OK_METHOD ( ( amqp_method_number_t ) 0x000A0033 )
# Skipping MacroDefinition: AMQP_CONNECTION_BLOCKED_METHOD ( ( amqp_method_number_t ) 0x000A003C )
# Skipping MacroDefinition: AMQP_CONNECTION_UNBLOCKED_METHOD ( ( amqp_method_number_t ) 0x000A003D )
# Skipping MacroDefinition: AMQP_CHANNEL_OPEN_METHOD ( ( amqp_method_number_t ) 0x0014000A )
# Skipping MacroDefinition: AMQP_CHANNEL_OPEN_OK_METHOD ( ( amqp_method_number_t ) 0x0014000B )
# Skipping MacroDefinition: AMQP_CHANNEL_FLOW_METHOD ( ( amqp_method_number_t ) 0x00140014 )
# Skipping MacroDefinition: AMQP_CHANNEL_FLOW_OK_METHOD ( ( amqp_method_number_t ) 0x00140015 )
# Skipping MacroDefinition: AMQP_CHANNEL_CLOSE_METHOD ( ( amqp_method_number_t ) 0x00140028 )
# Skipping MacroDefinition: AMQP_CHANNEL_CLOSE_OK_METHOD ( ( amqp_method_number_t ) 0x00140029 )
# Skipping MacroDefinition: AMQP_ACCESS_REQUEST_METHOD ( ( amqp_method_number_t ) 0x001E000A )
# Skipping MacroDefinition: AMQP_ACCESS_REQUEST_OK_METHOD ( ( amqp_method_number_t ) 0x001E000B )
# Skipping MacroDefinition: AMQP_EXCHANGE_DECLARE_METHOD ( ( amqp_method_number_t ) 0x0028000A )
# Skipping MacroDefinition: AMQP_EXCHANGE_DECLARE_OK_METHOD ( ( amqp_method_number_t ) 0x0028000B )
# Skipping MacroDefinition: AMQP_EXCHANGE_DELETE_METHOD ( ( amqp_method_number_t ) 0x00280014 )
# Skipping MacroDefinition: AMQP_EXCHANGE_DELETE_OK_METHOD ( ( amqp_method_number_t ) 0x00280015 )
# Skipping MacroDefinition: AMQP_EXCHANGE_BIND_METHOD ( ( amqp_method_number_t ) 0x0028001E )
# Skipping MacroDefinition: AMQP_EXCHANGE_BIND_OK_METHOD ( ( amqp_method_number_t ) 0x0028001F )
# Skipping MacroDefinition: AMQP_EXCHANGE_UNBIND_METHOD ( ( amqp_method_number_t ) 0x00280028 )
# Skipping MacroDefinition: AMQP_EXCHANGE_UNBIND_OK_METHOD ( ( amqp_method_number_t ) 0x00280033 )
# Skipping MacroDefinition: AMQP_QUEUE_DECLARE_METHOD ( ( amqp_method_number_t ) 0x0032000A )
# Skipping MacroDefinition: AMQP_QUEUE_DECLARE_OK_METHOD ( ( amqp_method_number_t ) 0x0032000B )
# Skipping MacroDefinition: AMQP_QUEUE_BIND_METHOD ( ( amqp_method_number_t ) 0x00320014 )
# Skipping MacroDefinition: AMQP_QUEUE_BIND_OK_METHOD ( ( amqp_method_number_t ) 0x00320015 )
# Skipping MacroDefinition: AMQP_QUEUE_PURGE_METHOD ( ( amqp_method_number_t ) 0x0032001E )
# Skipping MacroDefinition: AMQP_QUEUE_PURGE_OK_METHOD ( ( amqp_method_number_t ) 0x0032001F )
# Skipping MacroDefinition: AMQP_QUEUE_DELETE_METHOD ( ( amqp_method_number_t ) 0x00320028 )
# Skipping MacroDefinition: AMQP_QUEUE_DELETE_OK_METHOD ( ( amqp_method_number_t ) 0x00320029 )
# Skipping MacroDefinition: AMQP_QUEUE_UNBIND_METHOD ( ( amqp_method_number_t ) 0x00320032 )
# Skipping MacroDefinition: AMQP_QUEUE_UNBIND_OK_METHOD ( ( amqp_method_number_t ) 0x00320033 )
# Skipping MacroDefinition: AMQP_BASIC_QOS_METHOD ( ( amqp_method_number_t ) 0x003C000A )
# Skipping MacroDefinition: AMQP_BASIC_QOS_OK_METHOD ( ( amqp_method_number_t ) 0x003C000B )
# Skipping MacroDefinition: AMQP_BASIC_CONSUME_METHOD ( ( amqp_method_number_t ) 0x003C0014 )
# Skipping MacroDefinition: AMQP_BASIC_CONSUME_OK_METHOD ( ( amqp_method_number_t ) 0x003C0015 )
# Skipping MacroDefinition: AMQP_BASIC_CANCEL_METHOD ( ( amqp_method_number_t ) 0x003C001E )
# Skipping MacroDefinition: AMQP_BASIC_CANCEL_OK_METHOD ( ( amqp_method_number_t ) 0x003C001F )
# Skipping MacroDefinition: AMQP_BASIC_PUBLISH_METHOD ( ( amqp_method_number_t ) 0x003C0028 )
# Skipping MacroDefinition: AMQP_BASIC_RETURN_METHOD ( ( amqp_method_number_t ) 0x003C0032 )
# Skipping MacroDefinition: AMQP_BASIC_DELIVER_METHOD ( ( amqp_method_number_t ) 0x003C003C )
# Skipping MacroDefinition: AMQP_BASIC_GET_METHOD ( ( amqp_method_number_t ) 0x003C0046 )
# Skipping MacroDefinition: AMQP_BASIC_GET_OK_METHOD ( ( amqp_method_number_t ) 0x003C0047 )
# Skipping MacroDefinition: AMQP_BASIC_GET_EMPTY_METHOD ( ( amqp_method_number_t ) 0x003C0048 )
# Skipping MacroDefinition: AMQP_BASIC_ACK_METHOD ( ( amqp_method_number_t ) 0x003C0050 )
# Skipping MacroDefinition: AMQP_BASIC_REJECT_METHOD ( ( amqp_method_number_t ) 0x003C005A )
# Skipping MacroDefinition: AMQP_BASIC_RECOVER_ASYNC_METHOD ( ( amqp_method_number_t ) 0x003C0064 )
# Skipping MacroDefinition: AMQP_BASIC_RECOVER_METHOD ( ( amqp_method_number_t ) 0x003C006E )
# Skipping MacroDefinition: AMQP_BASIC_RECOVER_OK_METHOD ( ( amqp_method_number_t ) 0x003C006F )
# Skipping MacroDefinition: AMQP_BASIC_NACK_METHOD ( ( amqp_method_number_t ) 0x003C0078 )
# Skipping MacroDefinition: AMQP_TX_SELECT_METHOD ( ( amqp_method_number_t ) 0x005A000A )
# Skipping MacroDefinition: AMQP_TX_SELECT_OK_METHOD ( ( amqp_method_number_t ) 0x005A000B )
# Skipping MacroDefinition: AMQP_TX_COMMIT_METHOD ( ( amqp_method_number_t ) 0x005A0014 )
# Skipping MacroDefinition: AMQP_TX_COMMIT_OK_METHOD ( ( amqp_method_number_t ) 0x005A0015 )
# Skipping MacroDefinition: AMQP_TX_ROLLBACK_METHOD ( ( amqp_method_number_t ) 0x005A001E )
# Skipping MacroDefinition: AMQP_TX_ROLLBACK_OK_METHOD ( ( amqp_method_number_t ) 0x005A001F )
# Skipping MacroDefinition: AMQP_CONFIRM_SELECT_METHOD ( ( amqp_method_number_t ) 0x0055000A )
# Skipping MacroDefinition: AMQP_CONFIRM_SELECT_OK_METHOD ( ( amqp_method_number_t ) 0x0055000B )

const AMQP_CONNECTION_CLASS = 0x000a
const AMQP_CHANNEL_CLASS = 0x0014
const AMQP_ACCESS_CLASS = 0x001e
const AMQP_EXCHANGE_CLASS = 0x0028
const AMQP_QUEUE_CLASS = 0x0032
const AMQP_BASIC_CLASS = 0x003c
const AMQP_BASIC_CONTENT_TYPE_FLAG = 1 << 15
const AMQP_BASIC_CONTENT_ENCODING_FLAG = 1 << 14
const AMQP_BASIC_HEADERS_FLAG = 1 << 13
const AMQP_BASIC_DELIVERY_MODE_FLAG = 1 << 12
const AMQP_BASIC_PRIORITY_FLAG = 1 << 11
const AMQP_BASIC_CORRELATION_ID_FLAG = 1 << 10
const AMQP_BASIC_REPLY_TO_FLAG = 1 << 9
const AMQP_BASIC_EXPIRATION_FLAG = 1 << 8
const AMQP_BASIC_MESSAGE_ID_FLAG = 1 << 7
const AMQP_BASIC_TIMESTAMP_FLAG = 1 << 6
const AMQP_BASIC_TYPE_FLAG = 1 << 5
const AMQP_BASIC_USER_ID_FLAG = 1 << 4
const AMQP_BASIC_APP_ID_FLAG = 1 << 3
const AMQP_BASIC_CLUSTER_ID_FLAG = 1 << 2
const AMQP_TX_CLASS = 0x005a
const AMQP_CONFIRM_CLASS = 0x0055
#const AMQP_EMPTY_BYTES = amqp_empty_bytes
#const AMQP_EMPTY_TABLE = amqp_empty_table
#const AMQP_EMPTY_ARRAY = amqp_empty_array

typealias ptrdiff_t Clong
typealias size_t Culong
typealias wchar_t Cint

immutable max_align_t
    __clang_max_align_nonce1::Clonglong
    __clang_max_align_nonce2::Float64
end

typealias int8_t UInt8
typealias int16_t Int16
typealias int32_t Cint
typealias int64_t Clong
typealias uint8_t Cuchar
typealias uint16_t UInt16
typealias uint32_t UInt32
typealias uint64_t Culong
typealias int_least8_t UInt8
typealias int_least16_t Int16
typealias int_least32_t Cint
typealias int_least64_t Clong
typealias uint_least8_t Cuchar
typealias uint_least16_t UInt16
typealias uint_least32_t UInt32
typealias uint_least64_t Culong
typealias int_fast8_t UInt8
typealias int_fast16_t Clong
typealias int_fast32_t Clong
typealias int_fast64_t Clong
typealias uint_fast8_t Cuchar
typealias uint_fast16_t Culong
typealias uint_fast32_t Culong
typealias uint_fast64_t Culong
typealias intptr_t Clong
typealias uintptr_t Culong
typealias intmax_t Clong
typealias uintmax_t Culong

immutable timeval
end

typealias amqp_boolean_t Cint
typealias amqp_method_number_t UInt32
typealias amqp_flags_t UInt32
typealias amqp_channel_t UInt16

immutable amqp_bytes_t_
    len::Csize_t
    bytes::Ptr{Void}
end

immutable amqp_bytes_t
    len::Csize_t
    bytes::Ptr{Void}
end

immutable amqp_decimal_t_
    decimals::UInt8
    value::UInt32
end

immutable amqp_decimal_t
    decimals::UInt8
    value::UInt32
end

immutable amqp_field_value_t
    kind::UInt8
    value::Void
end

immutable amqp_table_entry_t_
    key::amqp_bytes_t
    value::amqp_field_value_t
end

immutable amqp_table_t_
    num_entries::Cint
    entries::Ptr{amqp_table_entry_t_}
end

immutable amqp_table_t
    num_entries::Cint
    entries::Ptr{amqp_table_entry_t_}
end

immutable amqp_field_value_t_
    kind::UInt8
    value::Void
end

immutable amqp_array_t_
    num_entries::Cint
    entries::Ptr{amqp_field_value_t_}
end

immutable amqp_array_t
    num_entries::Cint
    entries::Ptr{amqp_field_value_t_}
end

immutable amqp_table_entry_t
    key::amqp_bytes_t
    value::amqp_field_value_t
end

# begin enum ANONYMOUS_1
typealias ANONYMOUS_1 UInt32
const AMQP_FIELD_KIND_BOOLEAN = (UInt32)(116)
const AMQP_FIELD_KIND_I8 = (UInt32)(98)
const AMQP_FIELD_KIND_U8 = (UInt32)(66)
const AMQP_FIELD_KIND_I16 = (UInt32)(115)
const AMQP_FIELD_KIND_U16 = (UInt32)(117)
const AMQP_FIELD_KIND_I32 = (UInt32)(73)
const AMQP_FIELD_KIND_U32 = (UInt32)(105)
const AMQP_FIELD_KIND_I64 = (UInt32)(108)
const AMQP_FIELD_KIND_U64 = (UInt32)(76)
const AMQP_FIELD_KIND_F32 = (UInt32)(102)
const AMQP_FIELD_KIND_F64 = (UInt32)(100)
const AMQP_FIELD_KIND_DECIMAL = (UInt32)(68)
const AMQP_FIELD_KIND_UTF8 = (UInt32)(83)
const AMQP_FIELD_KIND_ARRAY = (UInt32)(65)
const AMQP_FIELD_KIND_TIMESTAMP = (UInt32)(84)
const AMQP_FIELD_KIND_TABLE = (UInt32)(70)
const AMQP_FIELD_KIND_VOID = (UInt32)(86)
const AMQP_FIELD_KIND_BYTES = (UInt32)(120)
# end enum ANONYMOUS_1

# begin enum amqp_field_value_kind_t
typealias amqp_field_value_kind_t UInt32
const AMQP_FIELD_KIND_BOOLEAN = (UInt32)(116)
const AMQP_FIELD_KIND_I8 = (UInt32)(98)
const AMQP_FIELD_KIND_U8 = (UInt32)(66)
const AMQP_FIELD_KIND_I16 = (UInt32)(115)
const AMQP_FIELD_KIND_U16 = (UInt32)(117)
const AMQP_FIELD_KIND_I32 = (UInt32)(73)
const AMQP_FIELD_KIND_U32 = (UInt32)(105)
const AMQP_FIELD_KIND_I64 = (UInt32)(108)
const AMQP_FIELD_KIND_U64 = (UInt32)(76)
const AMQP_FIELD_KIND_F32 = (UInt32)(102)
const AMQP_FIELD_KIND_F64 = (UInt32)(100)
const AMQP_FIELD_KIND_DECIMAL = (UInt32)(68)
const AMQP_FIELD_KIND_UTF8 = (UInt32)(83)
const AMQP_FIELD_KIND_ARRAY = (UInt32)(65)
const AMQP_FIELD_KIND_TIMESTAMP = (UInt32)(84)
const AMQP_FIELD_KIND_TABLE = (UInt32)(70)
const AMQP_FIELD_KIND_VOID = (UInt32)(86)
const AMQP_FIELD_KIND_BYTES = (UInt32)(120)
# end enum amqp_field_value_kind_t

immutable amqp_pool_blocklist_t_
    num_blocks::Cint
    blocklist::Ptr{Ptr{Void}}
end

immutable amqp_pool_blocklist_t
    num_blocks::Cint
    blocklist::Ptr{Ptr{Void}}
end

immutable amqp_pool_t_
    pagesize::Csize_t
    pages::amqp_pool_blocklist_t
    large_blocks::amqp_pool_blocklist_t
    next_page::Cint
    alloc_block::Ptr{UInt8}
    alloc_used::Csize_t
end

immutable amqp_pool_t
    pagesize::Csize_t
    pages::amqp_pool_blocklist_t
    large_blocks::amqp_pool_blocklist_t
    next_page::Cint
    alloc_block::Ptr{UInt8}
    alloc_used::Csize_t
end

immutable amqp_method_t_
    id::amqp_method_number_t
    decoded::Ptr{Void}
end

immutable amqp_method_t
    id::amqp_method_number_t
    decoded::Ptr{Void}
end

immutable amqp_frame_t_
    frame_type::UInt8
    channel::amqp_channel_t
    payload::Void
end

immutable amqp_frame_t
    frame_type::UInt8
    channel::amqp_channel_t
    payload::Void
end

# begin enum amqp_response_type_enum_
typealias amqp_response_type_enum_ UInt32
const AMQP_RESPONSE_NONE = (UInt32)(0)
const AMQP_RESPONSE_NORMAL = (UInt32)(1)
const AMQP_RESPONSE_LIBRARY_EXCEPTION = (UInt32)(2)
const AMQP_RESPONSE_SERVER_EXCEPTION = (UInt32)(3)
# end enum amqp_response_type_enum_

# begin enum amqp_response_type_enum
typealias amqp_response_type_enum UInt32
const AMQP_RESPONSE_NONE = (UInt32)(0)
const AMQP_RESPONSE_NORMAL = (UInt32)(1)
const AMQP_RESPONSE_LIBRARY_EXCEPTION = (UInt32)(2)
const AMQP_RESPONSE_SERVER_EXCEPTION = (UInt32)(3)
# end enum amqp_response_type_enum

immutable amqp_rpc_reply_t_
    reply_type::amqp_response_type_enum
    reply::amqp_method_t
    library_error::Cint
end

immutable amqp_rpc_reply_t
    reply_type::amqp_response_type_enum
    reply::amqp_method_t
    library_error::Cint
end

# begin enum amqp_sasl_method_enum_
typealias amqp_sasl_method_enum_ UInt32
const AMQP_SASL_METHOD_PLAIN = (UInt32)(0)
# end enum amqp_sasl_method_enum_

# begin enum amqp_sasl_method_enum
typealias amqp_sasl_method_enum UInt32
const AMQP_SASL_METHOD_PLAIN = (UInt32)(0)
# end enum amqp_sasl_method_enum

immutable amqp_connection_state_t_
end

typealias amqp_connection_state_t Ptr{amqp_connection_state_t_}

immutable amqp_socket_t_
end

typealias amqp_socket_t Void

# begin enum amqp_status_enum_
typealias amqp_status_enum_ Cint
const AMQP_STATUS_OK = (Int32)(0)
const AMQP_STATUS_NO_MEMORY = (Int32)(-1)
const AMQP_STATUS_BAD_AMQP_DATA = (Int32)(-2)
const AMQP_STATUS_UNKNOWN_CLASS = (Int32)(-3)
const AMQP_STATUS_UNKNOWN_METHOD = (Int32)(-4)
const AMQP_STATUS_HOSTNAME_RESOLUTION_FAILED = (Int32)(-5)
const AMQP_STATUS_INCOMPATIBLE_AMQP_VERSION = (Int32)(-6)
const AMQP_STATUS_CONNECTION_CLOSED = (Int32)(-7)
const AMQP_STATUS_BAD_URL = (Int32)(-8)
const AMQP_STATUS_SOCKET_ERROR = (Int32)(-9)
const AMQP_STATUS_INVALID_PARAMETER = (Int32)(-10)
const AMQP_STATUS_TABLE_TOO_BIG = (Int32)(-11)
const AMQP_STATUS_WRONG_METHOD = (Int32)(-12)
const AMQP_STATUS_TIMEOUT = (Int32)(-13)
const AMQP_STATUS_TIMER_FAILURE = (Int32)(-14)
const AMQP_STATUS_HEARTBEAT_TIMEOUT = (Int32)(-15)
const AMQP_STATUS_UNEXPECTED_STATE = (Int32)(-16)
const AMQP_STATUS_TCP_ERROR = (Int32)(-256)
const AMQP_STATUS_TCP_SOCKETLIB_INIT_ERROR = (Int32)(-257)
const AMQP_STATUS_SSL_ERROR = (Int32)(-512)
const AMQP_STATUS_SSL_HOSTNAME_VERIFY_FAILED = (Int32)(-513)
const AMQP_STATUS_SSL_PEER_VERIFY_FAILED = (Int32)(-514)
const AMQP_STATUS_SSL_CONNECTION_FAILED = (Int32)(-515)
# end enum amqp_status_enum_

# begin enum amqp_status_enum
typealias amqp_status_enum Cint
const AMQP_STATUS_OK = (Int32)(0)
const AMQP_STATUS_NO_MEMORY = (Int32)(-1)
const AMQP_STATUS_BAD_AMQP_DATA = (Int32)(-2)
const AMQP_STATUS_UNKNOWN_CLASS = (Int32)(-3)
const AMQP_STATUS_UNKNOWN_METHOD = (Int32)(-4)
const AMQP_STATUS_HOSTNAME_RESOLUTION_FAILED = (Int32)(-5)
const AMQP_STATUS_INCOMPATIBLE_AMQP_VERSION = (Int32)(-6)
const AMQP_STATUS_CONNECTION_CLOSED = (Int32)(-7)
const AMQP_STATUS_BAD_URL = (Int32)(-8)
const AMQP_STATUS_SOCKET_ERROR = (Int32)(-9)
const AMQP_STATUS_INVALID_PARAMETER = (Int32)(-10)
const AMQP_STATUS_TABLE_TOO_BIG = (Int32)(-11)
const AMQP_STATUS_WRONG_METHOD = (Int32)(-12)
const AMQP_STATUS_TIMEOUT = (Int32)(-13)
const AMQP_STATUS_TIMER_FAILURE = (Int32)(-14)
const AMQP_STATUS_HEARTBEAT_TIMEOUT = (Int32)(-15)
const AMQP_STATUS_UNEXPECTED_STATE = (Int32)(-16)
const AMQP_STATUS_TCP_ERROR = (Int32)(-256)
const AMQP_STATUS_TCP_SOCKETLIB_INIT_ERROR = (Int32)(-257)
const AMQP_STATUS_SSL_ERROR = (Int32)(-512)
const AMQP_STATUS_SSL_HOSTNAME_VERIFY_FAILED = (Int32)(-513)
const AMQP_STATUS_SSL_PEER_VERIFY_FAILED = (Int32)(-514)
const AMQP_STATUS_SSL_CONNECTION_FAILED = (Int32)(-515)
# end enum amqp_status_enum

# begin enum ANONYMOUS_2
typealias ANONYMOUS_2 UInt32
const AMQP_DELIVERY_NONPERSISTENT = (UInt32)(1)
const AMQP_DELIVERY_PERSISTENT = (UInt32)(2)
# end enum ANONYMOUS_2

# begin enum amqp_delivery_mode_enum
typealias amqp_delivery_mode_enum UInt32
const AMQP_DELIVERY_NONPERSISTENT = (UInt32)(1)
const AMQP_DELIVERY_PERSISTENT = (UInt32)(2)
# end enum amqp_delivery_mode_enum

immutable amqp_connection_start_t_
    version_major::UInt8
    version_minor::UInt8
    server_properties::amqp_table_t
    mechanisms::amqp_bytes_t
    locales::amqp_bytes_t
end

immutable amqp_connection_start_t
    version_major::UInt8
    version_minor::UInt8
    server_properties::amqp_table_t
    mechanisms::amqp_bytes_t
    locales::amqp_bytes_t
end

immutable amqp_connection_start_ok_t_
    client_properties::amqp_table_t
    mechanism::amqp_bytes_t
    response::amqp_bytes_t
    locale::amqp_bytes_t
end

immutable amqp_connection_start_ok_t
    client_properties::amqp_table_t
    mechanism::amqp_bytes_t
    response::amqp_bytes_t
    locale::amqp_bytes_t
end

immutable amqp_connection_secure_t_
    challenge::amqp_bytes_t
end

immutable amqp_connection_secure_t
    challenge::amqp_bytes_t
end

immutable amqp_connection_secure_ok_t_
    response::amqp_bytes_t
end

immutable amqp_connection_secure_ok_t
    response::amqp_bytes_t
end

immutable amqp_connection_tune_t_
    channel_max::UInt16
    frame_max::UInt32
    heartbeat::UInt16
end

immutable amqp_connection_tune_t
    channel_max::UInt16
    frame_max::UInt32
    heartbeat::UInt16
end

immutable amqp_connection_tune_ok_t_
    channel_max::UInt16
    frame_max::UInt32
    heartbeat::UInt16
end

immutable amqp_connection_tune_ok_t
    channel_max::UInt16
    frame_max::UInt32
    heartbeat::UInt16
end

immutable amqp_connection_open_t_
    virtual_host::amqp_bytes_t
    capabilities::amqp_bytes_t
    insist::amqp_boolean_t
end

immutable amqp_connection_open_t
    virtual_host::amqp_bytes_t
    capabilities::amqp_bytes_t
    insist::amqp_boolean_t
end

immutable amqp_connection_open_ok_t_
    known_hosts::amqp_bytes_t
end

immutable amqp_connection_open_ok_t
    known_hosts::amqp_bytes_t
end

immutable amqp_connection_close_t_
    reply_code::UInt16
    reply_text::amqp_bytes_t
    class_id::UInt16
    method_id::UInt16
end

immutable amqp_connection_close_t
    reply_code::UInt16
    reply_text::amqp_bytes_t
    class_id::UInt16
    method_id::UInt16
end

immutable amqp_connection_close_ok_t_
    dummy::UInt8
end

immutable amqp_connection_close_ok_t
    dummy::UInt8
end

immutable amqp_connection_blocked_t_
    reason::amqp_bytes_t
end

immutable amqp_connection_blocked_t
    reason::amqp_bytes_t
end

immutable amqp_connection_unblocked_t_
    dummy::UInt8
end

immutable amqp_connection_unblocked_t
    dummy::UInt8
end

immutable amqp_channel_open_t_
    out_of_band::amqp_bytes_t
end

immutable amqp_channel_open_t
    out_of_band::amqp_bytes_t
end

immutable amqp_channel_open_ok_t_
    channel_id::amqp_bytes_t
end

immutable amqp_channel_open_ok_t
    channel_id::amqp_bytes_t
end

immutable amqp_channel_flow_t_
    active::amqp_boolean_t
end

immutable amqp_channel_flow_t
    active::amqp_boolean_t
end

immutable amqp_channel_flow_ok_t_
    active::amqp_boolean_t
end

immutable amqp_channel_flow_ok_t
    active::amqp_boolean_t
end

immutable amqp_channel_close_t_
    reply_code::UInt16
    reply_text::amqp_bytes_t
    class_id::UInt16
    method_id::UInt16
end

immutable amqp_channel_close_t
    reply_code::UInt16
    reply_text::amqp_bytes_t
    class_id::UInt16
    method_id::UInt16
end

immutable amqp_channel_close_ok_t_
    dummy::UInt8
end

immutable amqp_channel_close_ok_t
    dummy::UInt8
end

immutable amqp_access_request_t_
    realm::amqp_bytes_t
    exclusive::amqp_boolean_t
    passive::amqp_boolean_t
    active::amqp_boolean_t
    write::amqp_boolean_t
    read::amqp_boolean_t
end

immutable amqp_access_request_t
    realm::amqp_bytes_t
    exclusive::amqp_boolean_t
    passive::amqp_boolean_t
    active::amqp_boolean_t
    write::amqp_boolean_t
    read::amqp_boolean_t
end

immutable amqp_access_request_ok_t_
    ticket::UInt16
end

immutable amqp_access_request_ok_t
    ticket::UInt16
end

immutable amqp_exchange_declare_t_
    ticket::UInt16
    exchange::amqp_bytes_t
    _type::amqp_bytes_t
    passive::amqp_boolean_t
    durable::amqp_boolean_t
    auto_delete::amqp_boolean_t
    internal::amqp_boolean_t
    nowait::amqp_boolean_t
    arguments::amqp_table_t
end

immutable amqp_exchange_declare_t
    ticket::UInt16
    exchange::amqp_bytes_t
    _type::amqp_bytes_t
    passive::amqp_boolean_t
    durable::amqp_boolean_t
    auto_delete::amqp_boolean_t
    internal::amqp_boolean_t
    nowait::amqp_boolean_t
    arguments::amqp_table_t
end

immutable amqp_exchange_declare_ok_t_
    dummy::UInt8
end

immutable amqp_exchange_declare_ok_t
    dummy::UInt8
end

immutable amqp_exchange_delete_t_
    ticket::UInt16
    exchange::amqp_bytes_t
    if_unused::amqp_boolean_t
    nowait::amqp_boolean_t
end

immutable amqp_exchange_delete_t
    ticket::UInt16
    exchange::amqp_bytes_t
    if_unused::amqp_boolean_t
    nowait::amqp_boolean_t
end

immutable amqp_exchange_delete_ok_t_
    dummy::UInt8
end

immutable amqp_exchange_delete_ok_t
    dummy::UInt8
end

immutable amqp_exchange_bind_t_
    ticket::UInt16
    destination::amqp_bytes_t
    source::amqp_bytes_t
    routing_key::amqp_bytes_t
    nowait::amqp_boolean_t
    arguments::amqp_table_t
end

immutable amqp_exchange_bind_t
    ticket::UInt16
    destination::amqp_bytes_t
    source::amqp_bytes_t
    routing_key::amqp_bytes_t
    nowait::amqp_boolean_t
    arguments::amqp_table_t
end

immutable amqp_exchange_bind_ok_t_
    dummy::UInt8
end

immutable amqp_exchange_bind_ok_t
    dummy::UInt8
end

immutable amqp_exchange_unbind_t_
    ticket::UInt16
    destination::amqp_bytes_t
    source::amqp_bytes_t
    routing_key::amqp_bytes_t
    nowait::amqp_boolean_t
    arguments::amqp_table_t
end

immutable amqp_exchange_unbind_t
    ticket::UInt16
    destination::amqp_bytes_t
    source::amqp_bytes_t
    routing_key::amqp_bytes_t
    nowait::amqp_boolean_t
    arguments::amqp_table_t
end

immutable amqp_exchange_unbind_ok_t_
    dummy::UInt8
end

immutable amqp_exchange_unbind_ok_t
    dummy::UInt8
end

immutable amqp_queue_declare_t_
    ticket::UInt16
    queue::amqp_bytes_t
    passive::amqp_boolean_t
    durable::amqp_boolean_t
    exclusive::amqp_boolean_t
    auto_delete::amqp_boolean_t
    nowait::amqp_boolean_t
    arguments::amqp_table_t
end

immutable amqp_queue_declare_t
    ticket::UInt16
    queue::amqp_bytes_t
    passive::amqp_boolean_t
    durable::amqp_boolean_t
    exclusive::amqp_boolean_t
    auto_delete::amqp_boolean_t
    nowait::amqp_boolean_t
    arguments::amqp_table_t
end

immutable amqp_queue_declare_ok_t_
    queue::amqp_bytes_t
    message_count::UInt32
    consumer_count::UInt32
end

immutable amqp_queue_declare_ok_t
    queue::amqp_bytes_t
    message_count::UInt32
    consumer_count::UInt32
end

immutable amqp_queue_bind_t_
    ticket::UInt16
    queue::amqp_bytes_t
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
    nowait::amqp_boolean_t
    arguments::amqp_table_t
end

immutable amqp_queue_bind_t
    ticket::UInt16
    queue::amqp_bytes_t
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
    nowait::amqp_boolean_t
    arguments::amqp_table_t
end

immutable amqp_queue_bind_ok_t_
    dummy::UInt8
end

immutable amqp_queue_bind_ok_t
    dummy::UInt8
end

immutable amqp_queue_purge_t_
    ticket::UInt16
    queue::amqp_bytes_t
    nowait::amqp_boolean_t
end

immutable amqp_queue_purge_t
    ticket::UInt16
    queue::amqp_bytes_t
    nowait::amqp_boolean_t
end

immutable amqp_queue_purge_ok_t_
    message_count::UInt32
end

immutable amqp_queue_purge_ok_t
    message_count::UInt32
end

immutable amqp_queue_delete_t_
    ticket::UInt16
    queue::amqp_bytes_t
    if_unused::amqp_boolean_t
    if_empty::amqp_boolean_t
    nowait::amqp_boolean_t
end

immutable amqp_queue_delete_t
    ticket::UInt16
    queue::amqp_bytes_t
    if_unused::amqp_boolean_t
    if_empty::amqp_boolean_t
    nowait::amqp_boolean_t
end

immutable amqp_queue_delete_ok_t_
    message_count::UInt32
end

immutable amqp_queue_delete_ok_t
    message_count::UInt32
end

immutable amqp_queue_unbind_t_
    ticket::UInt16
    queue::amqp_bytes_t
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
    arguments::amqp_table_t
end

immutable amqp_queue_unbind_t
    ticket::UInt16
    queue::amqp_bytes_t
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
    arguments::amqp_table_t
end

immutable amqp_queue_unbind_ok_t_
    dummy::UInt8
end

immutable amqp_queue_unbind_ok_t
    dummy::UInt8
end

immutable amqp_basic_qos_t_
    prefetch_size::UInt32
    prefetch_count::UInt16
    _global::amqp_boolean_t
end

immutable amqp_basic_qos_t
    prefetch_size::UInt32
    prefetch_count::UInt16
    _global::amqp_boolean_t
end

immutable amqp_basic_qos_ok_t_
    dummy::UInt8
end

immutable amqp_basic_qos_ok_t
    dummy::UInt8
end

immutable amqp_basic_consume_t_
    ticket::UInt16
    queue::amqp_bytes_t
    consumer_tag::amqp_bytes_t
    no_local::amqp_boolean_t
    no_ack::amqp_boolean_t
    exclusive::amqp_boolean_t
    nowait::amqp_boolean_t
    arguments::amqp_table_t
end

immutable amqp_basic_consume_t
    ticket::UInt16
    queue::amqp_bytes_t
    consumer_tag::amqp_bytes_t
    no_local::amqp_boolean_t
    no_ack::amqp_boolean_t
    exclusive::amqp_boolean_t
    nowait::amqp_boolean_t
    arguments::amqp_table_t
end

immutable amqp_basic_consume_ok_t_
    consumer_tag::amqp_bytes_t
end

immutable amqp_basic_consume_ok_t
    consumer_tag::amqp_bytes_t
end

immutable amqp_basic_cancel_t_
    consumer_tag::amqp_bytes_t
    nowait::amqp_boolean_t
end

immutable amqp_basic_cancel_t
    consumer_tag::amqp_bytes_t
    nowait::amqp_boolean_t
end

immutable amqp_basic_cancel_ok_t_
    consumer_tag::amqp_bytes_t
end

immutable amqp_basic_cancel_ok_t
    consumer_tag::amqp_bytes_t
end

immutable amqp_basic_publish_t_
    ticket::UInt16
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
    mandatory::amqp_boolean_t
    immediate::amqp_boolean_t
end

immutable amqp_basic_publish_t
    ticket::UInt16
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
    mandatory::amqp_boolean_t
    immediate::amqp_boolean_t
end

immutable amqp_basic_return_t_
    reply_code::UInt16
    reply_text::amqp_bytes_t
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
end

immutable amqp_basic_return_t
    reply_code::UInt16
    reply_text::amqp_bytes_t
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
end

immutable amqp_basic_deliver_t_
    consumer_tag::amqp_bytes_t
    delivery_tag::UInt64
    redelivered::amqp_boolean_t
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
end

immutable amqp_basic_deliver_t
    consumer_tag::amqp_bytes_t
    delivery_tag::UInt64
    redelivered::amqp_boolean_t
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
end

immutable amqp_basic_get_t_
    ticket::UInt16
    queue::amqp_bytes_t
    no_ack::amqp_boolean_t
end

immutable amqp_basic_get_t
    ticket::UInt16
    queue::amqp_bytes_t
    no_ack::amqp_boolean_t
end

immutable amqp_basic_get_ok_t_
    delivery_tag::UInt64
    redelivered::amqp_boolean_t
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
    message_count::UInt32
end

immutable amqp_basic_get_ok_t
    delivery_tag::UInt64
    redelivered::amqp_boolean_t
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
    message_count::UInt32
end

immutable amqp_basic_get_empty_t_
    cluster_id::amqp_bytes_t
end

immutable amqp_basic_get_empty_t
    cluster_id::amqp_bytes_t
end

immutable amqp_basic_ack_t_
    delivery_tag::UInt64
    multiple::amqp_boolean_t
end

immutable amqp_basic_ack_t
    delivery_tag::UInt64
    multiple::amqp_boolean_t
end

immutable amqp_basic_reject_t_
    delivery_tag::UInt64
    requeue::amqp_boolean_t
end

immutable amqp_basic_reject_t
    delivery_tag::UInt64
    requeue::amqp_boolean_t
end

immutable amqp_basic_recover_async_t_
    requeue::amqp_boolean_t
end

immutable amqp_basic_recover_async_t
    requeue::amqp_boolean_t
end

immutable amqp_basic_recover_t_
    requeue::amqp_boolean_t
end

immutable amqp_basic_recover_t
    requeue::amqp_boolean_t
end

immutable amqp_basic_recover_ok_t_
    dummy::UInt8
end

immutable amqp_basic_recover_ok_t
    dummy::UInt8
end

immutable amqp_basic_nack_t_
    delivery_tag::UInt64
    multiple::amqp_boolean_t
    requeue::amqp_boolean_t
end

immutable amqp_basic_nack_t
    delivery_tag::UInt64
    multiple::amqp_boolean_t
    requeue::amqp_boolean_t
end

immutable amqp_tx_select_t_
    dummy::UInt8
end

immutable amqp_tx_select_t
    dummy::UInt8
end

immutable amqp_tx_select_ok_t_
    dummy::UInt8
end

immutable amqp_tx_select_ok_t
    dummy::UInt8
end

immutable amqp_tx_commit_t_
    dummy::UInt8
end

immutable amqp_tx_commit_t
    dummy::UInt8
end

immutable amqp_tx_commit_ok_t_
    dummy::UInt8
end

immutable amqp_tx_commit_ok_t
    dummy::UInt8
end

immutable amqp_tx_rollback_t_
    dummy::UInt8
end

immutable amqp_tx_rollback_t
    dummy::UInt8
end

immutable amqp_tx_rollback_ok_t_
    dummy::UInt8
end

immutable amqp_tx_rollback_ok_t
    dummy::UInt8
end

immutable amqp_confirm_select_t_
    nowait::amqp_boolean_t
end

immutable amqp_confirm_select_t
    nowait::amqp_boolean_t
end

immutable amqp_confirm_select_ok_t_
    dummy::UInt8
end

immutable amqp_confirm_select_ok_t
    dummy::UInt8
end

immutable amqp_connection_properties_t_
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_connection_properties_t
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_channel_properties_t_
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_channel_properties_t
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_access_properties_t_
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_access_properties_t
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_exchange_properties_t_
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_exchange_properties_t
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_queue_properties_t_
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_queue_properties_t
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_basic_properties_t_
    _flags::amqp_flags_t
    content_type::amqp_bytes_t
    content_encoding::amqp_bytes_t
    headers::amqp_table_t
    delivery_mode::UInt8
    priority::UInt8
    correlation_id::amqp_bytes_t
    reply_to::amqp_bytes_t
    expiration::amqp_bytes_t
    message_id::amqp_bytes_t
    timestamp::UInt64
    _type::amqp_bytes_t
    user_id::amqp_bytes_t
    app_id::amqp_bytes_t
    cluster_id::amqp_bytes_t
end

immutable amqp_basic_properties_t
    _flags::amqp_flags_t
    content_type::amqp_bytes_t
    content_encoding::amqp_bytes_t
    headers::amqp_table_t
    delivery_mode::UInt8
    priority::UInt8
    correlation_id::amqp_bytes_t
    reply_to::amqp_bytes_t
    expiration::amqp_bytes_t
    message_id::amqp_bytes_t
    timestamp::UInt64
    _type::amqp_bytes_t
    user_id::amqp_bytes_t
    app_id::amqp_bytes_t
    cluster_id::amqp_bytes_t
end

immutable amqp_tx_properties_t_
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_tx_properties_t
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_confirm_properties_t_
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_confirm_properties_t
    _flags::amqp_flags_t
    dummy::UInt8
end

immutable amqp_message_t_
    properties::amqp_basic_properties_t
    body::amqp_bytes_t
    pool::amqp_pool_t
end

immutable amqp_message_t
    properties::amqp_basic_properties_t
    body::amqp_bytes_t
    pool::amqp_pool_t
end

immutable amqp_envelope_t_
    channel::amqp_channel_t
    consumer_tag::amqp_bytes_t
    delivery_tag::UInt64
    redelivered::amqp_boolean_t
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
    message::amqp_message_t
end

immutable amqp_envelope_t
    channel::amqp_channel_t
    consumer_tag::amqp_bytes_t
    delivery_tag::UInt64
    redelivered::amqp_boolean_t
    exchange::amqp_bytes_t
    routing_key::amqp_bytes_t
    message::amqp_message_t
end

immutable amqp_connection_info
    user::Ptr{UInt8}
    password::Ptr{UInt8}
    host::Ptr{UInt8}
    vhost::Ptr{UInt8}
    port::Cint
    ssl::amqp_boolean_t
end

# begin enum ANONYMOUS_3
typealias ANONYMOUS_3 UInt32
const AMQP_FIELD_KIND_BOOLEAN = (UInt32)(116)
const AMQP_FIELD_KIND_I8 = (UInt32)(98)
const AMQP_FIELD_KIND_U8 = (UInt32)(66)
const AMQP_FIELD_KIND_I16 = (UInt32)(115)
const AMQP_FIELD_KIND_U16 = (UInt32)(117)
const AMQP_FIELD_KIND_I32 = (UInt32)(73)
const AMQP_FIELD_KIND_U32 = (UInt32)(105)
const AMQP_FIELD_KIND_I64 = (UInt32)(108)
const AMQP_FIELD_KIND_U64 = (UInt32)(76)
const AMQP_FIELD_KIND_F32 = (UInt32)(102)
const AMQP_FIELD_KIND_F64 = (UInt32)(100)
const AMQP_FIELD_KIND_DECIMAL = (UInt32)(68)
const AMQP_FIELD_KIND_UTF8 = (UInt32)(83)
const AMQP_FIELD_KIND_ARRAY = (UInt32)(65)
const AMQP_FIELD_KIND_TIMESTAMP = (UInt32)(84)
const AMQP_FIELD_KIND_TABLE = (UInt32)(70)
const AMQP_FIELD_KIND_VOID = (UInt32)(86)
const AMQP_FIELD_KIND_BYTES = (UInt32)(120)
# end enum ANONYMOUS_3

# begin enum ANONYMOUS_4
typealias ANONYMOUS_4 UInt32
const AMQP_DELIVERY_NONPERSISTENT = (UInt32)(1)
const AMQP_DELIVERY_PERSISTENT = (UInt32)(2)
# end enum ANONYMOUS_4

# begin enum ANONYMOUS_5
typealias ANONYMOUS_5 UInt32
const AMQP_FIELD_KIND_BOOLEAN = (UInt32)(116)
const AMQP_FIELD_KIND_I8 = (UInt32)(98)
const AMQP_FIELD_KIND_U8 = (UInt32)(66)
const AMQP_FIELD_KIND_I16 = (UInt32)(115)
const AMQP_FIELD_KIND_U16 = (UInt32)(117)
const AMQP_FIELD_KIND_I32 = (UInt32)(73)
const AMQP_FIELD_KIND_U32 = (UInt32)(105)
const AMQP_FIELD_KIND_I64 = (UInt32)(108)
const AMQP_FIELD_KIND_U64 = (UInt32)(76)
const AMQP_FIELD_KIND_F32 = (UInt32)(102)
const AMQP_FIELD_KIND_F64 = (UInt32)(100)
const AMQP_FIELD_KIND_DECIMAL = (UInt32)(68)
const AMQP_FIELD_KIND_UTF8 = (UInt32)(83)
const AMQP_FIELD_KIND_ARRAY = (UInt32)(65)
const AMQP_FIELD_KIND_TIMESTAMP = (UInt32)(84)
const AMQP_FIELD_KIND_TABLE = (UInt32)(70)
const AMQP_FIELD_KIND_VOID = (UInt32)(86)
const AMQP_FIELD_KIND_BYTES = (UInt32)(120)
# end enum ANONYMOUS_5

# begin enum ANONYMOUS_6
typealias ANONYMOUS_6 UInt32
const AMQP_DELIVERY_NONPERSISTENT = (UInt32)(1)
const AMQP_DELIVERY_PERSISTENT = (UInt32)(2)
# end enum ANONYMOUS_6

# begin enum ANONYMOUS_7
typealias ANONYMOUS_7 UInt32
const AMQP_FIELD_KIND_BOOLEAN = (UInt32)(116)
const AMQP_FIELD_KIND_I8 = (UInt32)(98)
const AMQP_FIELD_KIND_U8 = (UInt32)(66)
const AMQP_FIELD_KIND_I16 = (UInt32)(115)
const AMQP_FIELD_KIND_U16 = (UInt32)(117)
const AMQP_FIELD_KIND_I32 = (UInt32)(73)
const AMQP_FIELD_KIND_U32 = (UInt32)(105)
const AMQP_FIELD_KIND_I64 = (UInt32)(108)
const AMQP_FIELD_KIND_U64 = (UInt32)(76)
const AMQP_FIELD_KIND_F32 = (UInt32)(102)
const AMQP_FIELD_KIND_F64 = (UInt32)(100)
const AMQP_FIELD_KIND_DECIMAL = (UInt32)(68)
const AMQP_FIELD_KIND_UTF8 = (UInt32)(83)
const AMQP_FIELD_KIND_ARRAY = (UInt32)(65)
const AMQP_FIELD_KIND_TIMESTAMP = (UInt32)(84)
const AMQP_FIELD_KIND_TABLE = (UInt32)(70)
const AMQP_FIELD_KIND_VOID = (UInt32)(86)
const AMQP_FIELD_KIND_BYTES = (UInt32)(120)
# end enum ANONYMOUS_7

# begin enum ANONYMOUS_8
typealias ANONYMOUS_8 UInt32
const AMQP_DELIVERY_NONPERSISTENT = (UInt32)(1)
const AMQP_DELIVERY_PERSISTENT = (UInt32)(2)
# end enum ANONYMOUS_8
