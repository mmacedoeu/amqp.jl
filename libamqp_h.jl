# Julia wrapper for header: amqp.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function amqp_version_number()
    ccall((:amqp_version_number,librabbitmq),UInt32,())
end

function amqp_version()
    ccall((:amqp_version,librabbitmq),Ptr{UInt8},())
end

function amqp_constant_name(constantNumber::Cint)
    ccall((:amqp_constant_name,librabbitmq),Ptr{UInt8},(Cint,),constantNumber)
end

function amqp_constant_is_hard_error(constantNumber::Cint)
    ccall((:amqp_constant_is_hard_error,librabbitmq),amqp_boolean_t,(Cint,),constantNumber)
end

function amqp_method_name(methodNumber::amqp_method_number_t)
    ccall((:amqp_method_name,librabbitmq),Ptr{UInt8},(amqp_method_number_t,),methodNumber)
end

function amqp_method_has_content(methodNumber::amqp_method_number_t)
    ccall((:amqp_method_has_content,librabbitmq),amqp_boolean_t,(amqp_method_number_t,),methodNumber)
end

function amqp_decode_method(methodNumber::amqp_method_number_t,pool::Ptr{amqp_pool_t},encoded::amqp_bytes_t,decoded::Ptr{Ptr{Void}})
    ccall((:amqp_decode_method,librabbitmq),Cint,(amqp_method_number_t,Ptr{amqp_pool_t},amqp_bytes_t,Ptr{Ptr{Void}}),methodNumber,pool,encoded,decoded)
end

function amqp_decode_properties(class_id::UInt16,pool::Ptr{amqp_pool_t},encoded::amqp_bytes_t,decoded::Ptr{Ptr{Void}})
    ccall((:amqp_decode_properties,librabbitmq),Cint,(UInt16,Ptr{amqp_pool_t},amqp_bytes_t,Ptr{Ptr{Void}}),class_id,pool,encoded,decoded)
end

function amqp_encode_method(methodNumber::amqp_method_number_t,decoded::Ptr{Void},encoded::amqp_bytes_t)
    ccall((:amqp_encode_method,librabbitmq),Cint,(amqp_method_number_t,Ptr{Void},amqp_bytes_t),methodNumber,decoded,encoded)
end

function amqp_encode_properties(class_id::UInt16,decoded::Ptr{Void},encoded::amqp_bytes_t)
    ccall((:amqp_encode_properties,librabbitmq),Cint,(UInt16,Ptr{Void},amqp_bytes_t),class_id,decoded,encoded)
end

function amqp_channel_open(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_channel_open,librabbitmq),Ptr{amqp_channel_open_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_channel_flow(state::amqp_connection_state_t,channel::amqp_channel_t,active::amqp_boolean_t)
    ccall((:amqp_channel_flow,librabbitmq),Ptr{amqp_channel_flow_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_boolean_t),state,channel,active)
end

function amqp_exchange_declare(state::amqp_connection_state_t,channel::amqp_channel_t,exchange::amqp_bytes_t,_type::amqp_bytes_t,passive::amqp_boolean_t,durable::amqp_boolean_t,arguments::amqp_table_t)
    ccall((:amqp_exchange_declare,librabbitmq),Ptr{amqp_exchange_declare_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,amqp_table_t),state,channel,exchange,_type,passive,durable,arguments)
end

function amqp_exchange_delete(state::amqp_connection_state_t,channel::amqp_channel_t,exchange::amqp_bytes_t,if_unused::amqp_boolean_t)
    ccall((:amqp_exchange_delete,librabbitmq),Ptr{amqp_exchange_delete_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t),state,channel,exchange,if_unused)
end

function amqp_exchange_bind(state::amqp_connection_state_t,channel::amqp_channel_t,destination::amqp_bytes_t,source::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_exchange_bind,librabbitmq),Ptr{amqp_exchange_bind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,destination,source,routing_key,arguments)
end

function amqp_exchange_unbind(state::amqp_connection_state_t,channel::amqp_channel_t,destination::amqp_bytes_t,source::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_exchange_unbind,librabbitmq),Ptr{amqp_exchange_unbind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,destination,source,routing_key,arguments)
end

function amqp_queue_declare(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,passive::amqp_boolean_t,durable::amqp_boolean_t,exclusive::amqp_boolean_t,auto_delete::amqp_boolean_t,arguments::amqp_table_t)
    ccall((:amqp_queue_declare,librabbitmq),Ptr{amqp_queue_declare_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,amqp_boolean_t,amqp_boolean_t,amqp_table_t),state,channel,queue,passive,durable,exclusive,auto_delete,arguments)
end

function amqp_queue_bind(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,exchange::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_queue_bind,librabbitmq),Ptr{amqp_queue_bind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,queue,exchange,routing_key,arguments)
end

function amqp_queue_purge(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t)
    ccall((:amqp_queue_purge,librabbitmq),Ptr{amqp_queue_purge_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t),state,channel,queue)
end

function amqp_queue_delete(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,if_unused::amqp_boolean_t,if_empty::amqp_boolean_t)
    ccall((:amqp_queue_delete,librabbitmq),Ptr{amqp_queue_delete_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t),state,channel,queue,if_unused,if_empty)
end

function amqp_queue_unbind(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,exchange::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_queue_unbind,librabbitmq),Ptr{amqp_queue_unbind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,queue,exchange,routing_key,arguments)
end

function amqp_basic_qos(state::amqp_connection_state_t,channel::amqp_channel_t,prefetch_size::UInt32,prefetch_count::UInt16,_global::amqp_boolean_t)
    ccall((:amqp_basic_qos,librabbitmq),Ptr{amqp_basic_qos_ok_t},(amqp_connection_state_t,amqp_channel_t,UInt32,UInt16,amqp_boolean_t),state,channel,prefetch_size,prefetch_count,_global)
end

function amqp_basic_consume(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,consumer_tag::amqp_bytes_t,no_local::amqp_boolean_t,no_ack::amqp_boolean_t,exclusive::amqp_boolean_t,arguments::amqp_table_t)
    ccall((:amqp_basic_consume,librabbitmq),Ptr{amqp_basic_consume_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,amqp_boolean_t,amqp_table_t),state,channel,queue,consumer_tag,no_local,no_ack,exclusive,arguments)
end

function amqp_basic_cancel(state::amqp_connection_state_t,channel::amqp_channel_t,consumer_tag::amqp_bytes_t)
    ccall((:amqp_basic_cancel,librabbitmq),Ptr{amqp_basic_cancel_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t),state,channel,consumer_tag)
end

function amqp_basic_recover(state::amqp_connection_state_t,channel::amqp_channel_t,requeue::amqp_boolean_t)
    ccall((:amqp_basic_recover,librabbitmq),Ptr{amqp_basic_recover_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_boolean_t),state,channel,requeue)
end

function amqp_tx_select(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_tx_select,librabbitmq),Ptr{amqp_tx_select_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_tx_commit(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_tx_commit,librabbitmq),Ptr{amqp_tx_commit_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_tx_rollback(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_tx_rollback,librabbitmq),Ptr{amqp_tx_rollback_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_confirm_select(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_confirm_select,librabbitmq),Ptr{amqp_confirm_select_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function init_amqp_pool(pool::Ptr{amqp_pool_t},pagesize::Csize_t)
    ccall((:init_amqp_pool,librabbitmq),Void,(Ptr{amqp_pool_t},Csize_t),pool,pagesize)
end

function recycle_amqp_pool(pool::Ptr{amqp_pool_t})
    ccall((:recycle_amqp_pool,librabbitmq),Void,(Ptr{amqp_pool_t},),pool)
end

function empty_amqp_pool(pool::Ptr{amqp_pool_t})
    ccall((:empty_amqp_pool,librabbitmq),Void,(Ptr{amqp_pool_t},),pool)
end

function amqp_pool_alloc(pool::Ptr{amqp_pool_t},amount::Csize_t)
    ccall((:amqp_pool_alloc,librabbitmq),Ptr{Void},(Ptr{amqp_pool_t},Csize_t),pool,amount)
end

function amqp_pool_alloc_bytes(pool::Ptr{amqp_pool_t},amount::Csize_t,output::Ptr{amqp_bytes_t})
    ccall((:amqp_pool_alloc_bytes,librabbitmq),Void,(Ptr{amqp_pool_t},Csize_t,Ptr{amqp_bytes_t}),pool,amount,output)
end

function amqp_cstring_bytes(cstr::Ptr{UInt8})
    ccall((:amqp_cstring_bytes,librabbitmq),amqp_bytes_t,(Ptr{UInt8},),cstr)
end

function amqp_bytes_malloc_dup(src::amqp_bytes_t)
    ccall((:amqp_bytes_malloc_dup,librabbitmq),amqp_bytes_t,(amqp_bytes_t,),src)
end

function amqp_bytes_malloc(amount::Csize_t)
    ccall((:amqp_bytes_malloc,librabbitmq),amqp_bytes_t,(Csize_t,),amount)
end

function amqp_bytes_free(bytes::amqp_bytes_t)
    ccall((:amqp_bytes_free,librabbitmq),Void,(amqp_bytes_t,),bytes)
end

function amqp_new_connection()
    ccall((:amqp_new_connection,librabbitmq),amqp_connection_state_t,())
end

function amqp_get_sockfd(state::amqp_connection_state_t)
    ccall((:amqp_get_sockfd,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_set_sockfd(state::amqp_connection_state_t,sockfd::Cint)
    ccall((:amqp_set_sockfd,librabbitmq),Void,(amqp_connection_state_t,Cint),state,sockfd)
end

function amqp_tune_connection(state::amqp_connection_state_t,channel_max::Cint,frame_max::Cint,heartbeat::Cint)
    ccall((:amqp_tune_connection,librabbitmq),Cint,(amqp_connection_state_t,Cint,Cint,Cint),state,channel_max,frame_max,heartbeat)
end

function amqp_get_channel_max(state::amqp_connection_state_t)
    ccall((:amqp_get_channel_max,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_destroy_connection(state::amqp_connection_state_t)
    ccall((:amqp_destroy_connection,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_handle_input(state::amqp_connection_state_t,received_data::amqp_bytes_t,decoded_frame::Ptr{amqp_frame_t})
    ccall((:amqp_handle_input,librabbitmq),Cint,(amqp_connection_state_t,amqp_bytes_t,Ptr{amqp_frame_t}),state,received_data,decoded_frame)
end

function amqp_release_buffers_ok(state::amqp_connection_state_t)
    ccall((:amqp_release_buffers_ok,librabbitmq),amqp_boolean_t,(amqp_connection_state_t,),state)
end

function amqp_release_buffers(state::amqp_connection_state_t)
    ccall((:amqp_release_buffers,librabbitmq),Void,(amqp_connection_state_t,),state)
end

function amqp_maybe_release_buffers(state::amqp_connection_state_t)
    ccall((:amqp_maybe_release_buffers,librabbitmq),Void,(amqp_connection_state_t,),state)
end

function amqp_maybe_release_buffers_on_channel(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_maybe_release_buffers_on_channel,librabbitmq),Void,(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_send_frame(state::amqp_connection_state_t,frame::Ptr{amqp_frame_t})
    ccall((:amqp_send_frame,librabbitmq),Cint,(amqp_connection_state_t,Ptr{amqp_frame_t}),state,frame)
end

function amqp_table_entry_cmp(entry1::Ptr{Void},entry2::Ptr{Void})
    ccall((:amqp_table_entry_cmp,librabbitmq),Cint,(Ptr{Void},Ptr{Void}),entry1,entry2)
end

function amqp_open_socket(hostname::Ptr{UInt8},portnumber::Cint)
    ccall((:amqp_open_socket,librabbitmq),Cint,(Ptr{UInt8},Cint),hostname,portnumber)
end

function amqp_send_header(state::amqp_connection_state_t)
    ccall((:amqp_send_header,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_frames_enqueued(state::amqp_connection_state_t)
    ccall((:amqp_frames_enqueued,librabbitmq),amqp_boolean_t,(amqp_connection_state_t,),state)
end

function amqp_simple_wait_frame(state::amqp_connection_state_t,decoded_frame::Ptr{amqp_frame_t})
    ccall((:amqp_simple_wait_frame,librabbitmq),Cint,(amqp_connection_state_t,Ptr{amqp_frame_t}),state,decoded_frame)
end

function amqp_simple_wait_frame_noblock(state::amqp_connection_state_t,decoded_frame::Ptr{amqp_frame_t},tv::Ptr{timeval})
    ccall((:amqp_simple_wait_frame_noblock,librabbitmq),Cint,(amqp_connection_state_t,Ptr{amqp_frame_t},Ptr{timeval}),state,decoded_frame,tv)
end

function amqp_simple_wait_method(state::amqp_connection_state_t,expected_channel::amqp_channel_t,expected_method::amqp_method_number_t,output::Ptr{amqp_method_t})
    ccall((:amqp_simple_wait_method,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,Ptr{amqp_method_t}),state,expected_channel,expected_method,output)
end

function amqp_send_method(state::amqp_connection_state_t,channel::amqp_channel_t,id::amqp_method_number_t,decoded::Ptr{Void})
    ccall((:amqp_send_method,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,Ptr{Void}),state,channel,id,decoded)
end

function amqp_simple_rpc(state::amqp_connection_state_t,channel::amqp_channel_t,request_id::amqp_method_number_t,expected_reply_ids::Ptr{amqp_method_number_t},decoded_request_method::Ptr{Void})
    ccall((:amqp_simple_rpc,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,Ptr{amqp_method_number_t},Ptr{Void}),state,channel,request_id,expected_reply_ids,decoded_request_method)
end

function amqp_simple_rpc_decoded(state::amqp_connection_state_t,channel::amqp_channel_t,request_id::amqp_method_number_t,reply_id::amqp_method_number_t,decoded_request_method::Ptr{Void})
    ccall((:amqp_simple_rpc_decoded,librabbitmq),Ptr{Void},(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,amqp_method_number_t,Ptr{Void}),state,channel,request_id,reply_id,decoded_request_method)
end

function amqp_get_rpc_reply(state::amqp_connection_state_t)
    ccall((:amqp_get_rpc_reply,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,),state)
end

function amqp_basic_publish(state::amqp_connection_state_t,channel::amqp_channel_t,exchange::amqp_bytes_t,routing_key::amqp_bytes_t,mandatory::amqp_boolean_t,immediate::amqp_boolean_t,properties::Ptr{amqp_basic_properties_t_},body::amqp_bytes_t)
    ccall((:amqp_basic_publish,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,Ptr{amqp_basic_properties_t_},amqp_bytes_t),state,channel,exchange,routing_key,mandatory,immediate,properties,body)
end

function amqp_channel_close(state::amqp_connection_state_t,channel::amqp_channel_t,code::Cint)
    ccall((:amqp_channel_close,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,Cint),state,channel,code)
end

function amqp_connection_close(state::amqp_connection_state_t,code::Cint)
    ccall((:amqp_connection_close,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,Cint),state,code)
end

function amqp_basic_ack(state::amqp_connection_state_t,channel::amqp_channel_t,delivery_tag::UInt64,multiple::amqp_boolean_t)
    ccall((:amqp_basic_ack,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,UInt64,amqp_boolean_t),state,channel,delivery_tag,multiple)
end

function amqp_basic_get(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,no_ack::amqp_boolean_t)
    ccall((:amqp_basic_get,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t),state,channel,queue,no_ack)
end

function amqp_basic_reject(state::amqp_connection_state_t,channel::amqp_channel_t,delivery_tag::UInt64,requeue::amqp_boolean_t)
    ccall((:amqp_basic_reject,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,UInt64,amqp_boolean_t),state,channel,delivery_tag,requeue)
end

function amqp_basic_nack(state::amqp_connection_state_t,channel::amqp_channel_t,delivery_tag::UInt64,multiple::amqp_boolean_t,requeue::amqp_boolean_t)
    ccall((:amqp_basic_nack,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,UInt64,amqp_boolean_t,amqp_boolean_t),state,channel,delivery_tag,multiple,requeue)
end

function amqp_data_in_buffer(state::amqp_connection_state_t)
    ccall((:amqp_data_in_buffer,librabbitmq),amqp_boolean_t,(amqp_connection_state_t,),state)
end

function amqp_error_string(err::Cint)
    ccall((:amqp_error_string,librabbitmq),Ptr{UInt8},(Cint,),err)
end

function amqp_error_string2(err::Cint)
    ccall((:amqp_error_string2,librabbitmq),Ptr{UInt8},(Cint,),err)
end

function amqp_decode_table(encoded::amqp_bytes_t,pool::Ptr{amqp_pool_t},output::Ptr{amqp_table_t},offset::Ptr{Csize_t})
    ccall((:amqp_decode_table,librabbitmq),Cint,(amqp_bytes_t,Ptr{amqp_pool_t},Ptr{amqp_table_t},Ptr{Csize_t}),encoded,pool,output,offset)
end

function amqp_encode_table(encoded::amqp_bytes_t,input::Ptr{amqp_table_t},offset::Ptr{Csize_t})
    ccall((:amqp_encode_table,librabbitmq),Cint,(amqp_bytes_t,Ptr{amqp_table_t},Ptr{Csize_t}),encoded,input,offset)
end

function amqp_table_clone(original::Ptr{amqp_table_t},clone::Ptr{amqp_table_t},pool::Ptr{amqp_pool_t})
    ccall((:amqp_table_clone,librabbitmq),Cint,(Ptr{amqp_table_t},Ptr{amqp_table_t},Ptr{amqp_pool_t}),original,clone,pool)
end

function amqp_read_message(state::amqp_connection_state_t,channel::amqp_channel_t,message::Ptr{amqp_message_t},flags::Cint)
    ccall((:amqp_read_message,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,Ptr{amqp_message_t},Cint),state,channel,message,flags)
end

function amqp_destroy_message(message::Ptr{amqp_message_t})
    ccall((:amqp_destroy_message,librabbitmq),Void,(Ptr{amqp_message_t},),message)
end

function amqp_consume_message(state::amqp_connection_state_t,envelope::Ptr{amqp_envelope_t},timeout::Ptr{timeval},flags::Cint)
    ccall((:amqp_consume_message,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,Ptr{amqp_envelope_t},Ptr{timeval},Cint),state,envelope,timeout,flags)
end

function amqp_destroy_envelope(envelope::Ptr{amqp_envelope_t})
    ccall((:amqp_destroy_envelope,librabbitmq),Void,(Ptr{amqp_envelope_t},),envelope)
end

function amqp_default_connection_info(parsed::Ptr{amqp_connection_info})
    ccall((:amqp_default_connection_info,librabbitmq),Void,(Ptr{amqp_connection_info},),parsed)
end

function amqp_parse_url(url::Ptr{UInt8},parsed::Ptr{amqp_connection_info})
    ccall((:amqp_parse_url,librabbitmq),Cint,(Ptr{UInt8},Ptr{amqp_connection_info}),url,parsed)
end

function amqp_socket_open(self::Ptr{amqp_socket_t},host::Ptr{UInt8},port::Cint)
    ccall((:amqp_socket_open,librabbitmq),Cint,(Ptr{amqp_socket_t},Ptr{UInt8},Cint),self,host,port)
end

function amqp_socket_open_noblock(self::Ptr{amqp_socket_t},host::Ptr{UInt8},port::Cint,timeout::Ptr{timeval})
    ccall((:amqp_socket_open_noblock,librabbitmq),Cint,(Ptr{amqp_socket_t},Ptr{UInt8},Cint,Ptr{timeval}),self,host,port,timeout)
end

function amqp_socket_get_sockfd(self::Ptr{amqp_socket_t})
    ccall((:amqp_socket_get_sockfd,librabbitmq),Cint,(Ptr{amqp_socket_t},),self)
end

function amqp_get_socket(state::amqp_connection_state_t)
    ccall((:amqp_get_socket,librabbitmq),Ptr{amqp_socket_t},(amqp_connection_state_t,),state)
end

function amqp_get_server_properties(state::amqp_connection_state_t)
    ccall((:amqp_get_server_properties,librabbitmq),Ptr{amqp_table_t},(amqp_connection_state_t,),state)
end
# Julia wrapper for header: amqp_ssl_socket.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function amqp_version_number()
    ccall((:amqp_version_number,librabbitmq),UInt32,())
end

function amqp_version()
    ccall((:amqp_version,librabbitmq),Ptr{UInt8},())
end

function amqp_constant_name(constantNumber::Cint)
    ccall((:amqp_constant_name,librabbitmq),Ptr{UInt8},(Cint,),constantNumber)
end

function amqp_constant_is_hard_error(constantNumber::Cint)
    ccall((:amqp_constant_is_hard_error,librabbitmq),amqp_boolean_t,(Cint,),constantNumber)
end

function amqp_method_name(methodNumber::amqp_method_number_t)
    ccall((:amqp_method_name,librabbitmq),Ptr{UInt8},(amqp_method_number_t,),methodNumber)
end

function amqp_method_has_content(methodNumber::amqp_method_number_t)
    ccall((:amqp_method_has_content,librabbitmq),amqp_boolean_t,(amqp_method_number_t,),methodNumber)
end

function amqp_decode_method(methodNumber::amqp_method_number_t,pool::Ptr{amqp_pool_t},encoded::amqp_bytes_t,decoded::Ptr{Ptr{Void}})
    ccall((:amqp_decode_method,librabbitmq),Cint,(amqp_method_number_t,Ptr{amqp_pool_t},amqp_bytes_t,Ptr{Ptr{Void}}),methodNumber,pool,encoded,decoded)
end

function amqp_decode_properties(class_id::UInt16,pool::Ptr{amqp_pool_t},encoded::amqp_bytes_t,decoded::Ptr{Ptr{Void}})
    ccall((:amqp_decode_properties,librabbitmq),Cint,(UInt16,Ptr{amqp_pool_t},amqp_bytes_t,Ptr{Ptr{Void}}),class_id,pool,encoded,decoded)
end

function amqp_encode_method(methodNumber::amqp_method_number_t,decoded::Ptr{Void},encoded::amqp_bytes_t)
    ccall((:amqp_encode_method,librabbitmq),Cint,(amqp_method_number_t,Ptr{Void},amqp_bytes_t),methodNumber,decoded,encoded)
end

function amqp_encode_properties(class_id::UInt16,decoded::Ptr{Void},encoded::amqp_bytes_t)
    ccall((:amqp_encode_properties,librabbitmq),Cint,(UInt16,Ptr{Void},amqp_bytes_t),class_id,decoded,encoded)
end

function amqp_channel_open(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_channel_open,librabbitmq),Ptr{amqp_channel_open_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_channel_flow(state::amqp_connection_state_t,channel::amqp_channel_t,active::amqp_boolean_t)
    ccall((:amqp_channel_flow,librabbitmq),Ptr{amqp_channel_flow_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_boolean_t),state,channel,active)
end

function amqp_exchange_declare(state::amqp_connection_state_t,channel::amqp_channel_t,exchange::amqp_bytes_t,_type::amqp_bytes_t,passive::amqp_boolean_t,durable::amqp_boolean_t,arguments::amqp_table_t)
    ccall((:amqp_exchange_declare,librabbitmq),Ptr{amqp_exchange_declare_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,amqp_table_t),state,channel,exchange,_type,passive,durable,arguments)
end

function amqp_exchange_delete(state::amqp_connection_state_t,channel::amqp_channel_t,exchange::amqp_bytes_t,if_unused::amqp_boolean_t)
    ccall((:amqp_exchange_delete,librabbitmq),Ptr{amqp_exchange_delete_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t),state,channel,exchange,if_unused)
end

function amqp_exchange_bind(state::amqp_connection_state_t,channel::amqp_channel_t,destination::amqp_bytes_t,source::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_exchange_bind,librabbitmq),Ptr{amqp_exchange_bind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,destination,source,routing_key,arguments)
end

function amqp_exchange_unbind(state::amqp_connection_state_t,channel::amqp_channel_t,destination::amqp_bytes_t,source::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_exchange_unbind,librabbitmq),Ptr{amqp_exchange_unbind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,destination,source,routing_key,arguments)
end

function amqp_queue_declare(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,passive::amqp_boolean_t,durable::amqp_boolean_t,exclusive::amqp_boolean_t,auto_delete::amqp_boolean_t,arguments::amqp_table_t)
    ccall((:amqp_queue_declare,librabbitmq),Ptr{amqp_queue_declare_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,amqp_boolean_t,amqp_boolean_t,amqp_table_t),state,channel,queue,passive,durable,exclusive,auto_delete,arguments)
end

function amqp_queue_bind(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,exchange::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_queue_bind,librabbitmq),Ptr{amqp_queue_bind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,queue,exchange,routing_key,arguments)
end

function amqp_queue_purge(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t)
    ccall((:amqp_queue_purge,librabbitmq),Ptr{amqp_queue_purge_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t),state,channel,queue)
end

function amqp_queue_delete(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,if_unused::amqp_boolean_t,if_empty::amqp_boolean_t)
    ccall((:amqp_queue_delete,librabbitmq),Ptr{amqp_queue_delete_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t),state,channel,queue,if_unused,if_empty)
end

function amqp_queue_unbind(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,exchange::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_queue_unbind,librabbitmq),Ptr{amqp_queue_unbind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,queue,exchange,routing_key,arguments)
end

function amqp_basic_qos(state::amqp_connection_state_t,channel::amqp_channel_t,prefetch_size::UInt32,prefetch_count::UInt16,_global::amqp_boolean_t)
    ccall((:amqp_basic_qos,librabbitmq),Ptr{amqp_basic_qos_ok_t},(amqp_connection_state_t,amqp_channel_t,UInt32,UInt16,amqp_boolean_t),state,channel,prefetch_size,prefetch_count,_global)
end

function amqp_basic_consume(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,consumer_tag::amqp_bytes_t,no_local::amqp_boolean_t,no_ack::amqp_boolean_t,exclusive::amqp_boolean_t,arguments::amqp_table_t)
    ccall((:amqp_basic_consume,librabbitmq),Ptr{amqp_basic_consume_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,amqp_boolean_t,amqp_table_t),state,channel,queue,consumer_tag,no_local,no_ack,exclusive,arguments)
end

function amqp_basic_cancel(state::amqp_connection_state_t,channel::amqp_channel_t,consumer_tag::amqp_bytes_t)
    ccall((:amqp_basic_cancel,librabbitmq),Ptr{amqp_basic_cancel_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t),state,channel,consumer_tag)
end

function amqp_basic_recover(state::amqp_connection_state_t,channel::amqp_channel_t,requeue::amqp_boolean_t)
    ccall((:amqp_basic_recover,librabbitmq),Ptr{amqp_basic_recover_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_boolean_t),state,channel,requeue)
end

function amqp_tx_select(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_tx_select,librabbitmq),Ptr{amqp_tx_select_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_tx_commit(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_tx_commit,librabbitmq),Ptr{amqp_tx_commit_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_tx_rollback(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_tx_rollback,librabbitmq),Ptr{amqp_tx_rollback_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_confirm_select(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_confirm_select,librabbitmq),Ptr{amqp_confirm_select_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function init_amqp_pool(pool::Ptr{amqp_pool_t},pagesize::Csize_t)
    ccall((:init_amqp_pool,librabbitmq),Void,(Ptr{amqp_pool_t},Csize_t),pool,pagesize)
end

function recycle_amqp_pool(pool::Ptr{amqp_pool_t})
    ccall((:recycle_amqp_pool,librabbitmq),Void,(Ptr{amqp_pool_t},),pool)
end

function empty_amqp_pool(pool::Ptr{amqp_pool_t})
    ccall((:empty_amqp_pool,librabbitmq),Void,(Ptr{amqp_pool_t},),pool)
end

function amqp_pool_alloc(pool::Ptr{amqp_pool_t},amount::Csize_t)
    ccall((:amqp_pool_alloc,librabbitmq),Ptr{Void},(Ptr{amqp_pool_t},Csize_t),pool,amount)
end

function amqp_pool_alloc_bytes(pool::Ptr{amqp_pool_t},amount::Csize_t,output::Ptr{amqp_bytes_t})
    ccall((:amqp_pool_alloc_bytes,librabbitmq),Void,(Ptr{amqp_pool_t},Csize_t,Ptr{amqp_bytes_t}),pool,amount,output)
end

function amqp_cstring_bytes(cstr::Ptr{UInt8})
    ccall((:amqp_cstring_bytes,librabbitmq),amqp_bytes_t,(Ptr{UInt8},),cstr)
end

function amqp_bytes_malloc_dup(src::amqp_bytes_t)
    ccall((:amqp_bytes_malloc_dup,librabbitmq),amqp_bytes_t,(amqp_bytes_t,),src)
end

function amqp_bytes_malloc(amount::Csize_t)
    ccall((:amqp_bytes_malloc,librabbitmq),amqp_bytes_t,(Csize_t,),amount)
end

function amqp_bytes_free(bytes::amqp_bytes_t)
    ccall((:amqp_bytes_free,librabbitmq),Void,(amqp_bytes_t,),bytes)
end

function amqp_new_connection()
    ccall((:amqp_new_connection,librabbitmq),amqp_connection_state_t,())
end

function amqp_get_sockfd(state::amqp_connection_state_t)
    ccall((:amqp_get_sockfd,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_set_sockfd(state::amqp_connection_state_t,sockfd::Cint)
    ccall((:amqp_set_sockfd,librabbitmq),Void,(amqp_connection_state_t,Cint),state,sockfd)
end

function amqp_tune_connection(state::amqp_connection_state_t,channel_max::Cint,frame_max::Cint,heartbeat::Cint)
    ccall((:amqp_tune_connection,librabbitmq),Cint,(amqp_connection_state_t,Cint,Cint,Cint),state,channel_max,frame_max,heartbeat)
end

function amqp_get_channel_max(state::amqp_connection_state_t)
    ccall((:amqp_get_channel_max,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_destroy_connection(state::amqp_connection_state_t)
    ccall((:amqp_destroy_connection,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_handle_input(state::amqp_connection_state_t,received_data::amqp_bytes_t,decoded_frame::Ptr{amqp_frame_t})
    ccall((:amqp_handle_input,librabbitmq),Cint,(amqp_connection_state_t,amqp_bytes_t,Ptr{amqp_frame_t}),state,received_data,decoded_frame)
end

function amqp_release_buffers_ok(state::amqp_connection_state_t)
    ccall((:amqp_release_buffers_ok,librabbitmq),amqp_boolean_t,(amqp_connection_state_t,),state)
end

function amqp_release_buffers(state::amqp_connection_state_t)
    ccall((:amqp_release_buffers,librabbitmq),Void,(amqp_connection_state_t,),state)
end

function amqp_maybe_release_buffers(state::amqp_connection_state_t)
    ccall((:amqp_maybe_release_buffers,librabbitmq),Void,(amqp_connection_state_t,),state)
end

function amqp_maybe_release_buffers_on_channel(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_maybe_release_buffers_on_channel,librabbitmq),Void,(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_send_frame(state::amqp_connection_state_t,frame::Ptr{amqp_frame_t})
    ccall((:amqp_send_frame,librabbitmq),Cint,(amqp_connection_state_t,Ptr{amqp_frame_t}),state,frame)
end

function amqp_table_entry_cmp(entry1::Ptr{Void},entry2::Ptr{Void})
    ccall((:amqp_table_entry_cmp,librabbitmq),Cint,(Ptr{Void},Ptr{Void}),entry1,entry2)
end

function amqp_open_socket(hostname::Ptr{UInt8},portnumber::Cint)
    ccall((:amqp_open_socket,librabbitmq),Cint,(Ptr{UInt8},Cint),hostname,portnumber)
end

function amqp_send_header(state::amqp_connection_state_t)
    ccall((:amqp_send_header,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_frames_enqueued(state::amqp_connection_state_t)
    ccall((:amqp_frames_enqueued,librabbitmq),amqp_boolean_t,(amqp_connection_state_t,),state)
end

function amqp_simple_wait_frame(state::amqp_connection_state_t,decoded_frame::Ptr{amqp_frame_t})
    ccall((:amqp_simple_wait_frame,librabbitmq),Cint,(amqp_connection_state_t,Ptr{amqp_frame_t}),state,decoded_frame)
end

function amqp_simple_wait_frame_noblock(state::amqp_connection_state_t,decoded_frame::Ptr{amqp_frame_t},tv::Ptr{timeval})
    ccall((:amqp_simple_wait_frame_noblock,librabbitmq),Cint,(amqp_connection_state_t,Ptr{amqp_frame_t},Ptr{timeval}),state,decoded_frame,tv)
end

function amqp_simple_wait_method(state::amqp_connection_state_t,expected_channel::amqp_channel_t,expected_method::amqp_method_number_t,output::Ptr{amqp_method_t})
    ccall((:amqp_simple_wait_method,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,Ptr{amqp_method_t}),state,expected_channel,expected_method,output)
end

function amqp_send_method(state::amqp_connection_state_t,channel::amqp_channel_t,id::amqp_method_number_t,decoded::Ptr{Void})
    ccall((:amqp_send_method,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,Ptr{Void}),state,channel,id,decoded)
end

function amqp_simple_rpc(state::amqp_connection_state_t,channel::amqp_channel_t,request_id::amqp_method_number_t,expected_reply_ids::Ptr{amqp_method_number_t},decoded_request_method::Ptr{Void})
    ccall((:amqp_simple_rpc,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,Ptr{amqp_method_number_t},Ptr{Void}),state,channel,request_id,expected_reply_ids,decoded_request_method)
end

function amqp_simple_rpc_decoded(state::amqp_connection_state_t,channel::amqp_channel_t,request_id::amqp_method_number_t,reply_id::amqp_method_number_t,decoded_request_method::Ptr{Void})
    ccall((:amqp_simple_rpc_decoded,librabbitmq),Ptr{Void},(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,amqp_method_number_t,Ptr{Void}),state,channel,request_id,reply_id,decoded_request_method)
end

function amqp_get_rpc_reply(state::amqp_connection_state_t)
    ccall((:amqp_get_rpc_reply,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,),state)
end

function amqp_basic_publish(state::amqp_connection_state_t,channel::amqp_channel_t,exchange::amqp_bytes_t,routing_key::amqp_bytes_t,mandatory::amqp_boolean_t,immediate::amqp_boolean_t,properties::Ptr{amqp_basic_properties_t_},body::amqp_bytes_t)
    ccall((:amqp_basic_publish,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,Ptr{amqp_basic_properties_t_},amqp_bytes_t),state,channel,exchange,routing_key,mandatory,immediate,properties,body)
end

function amqp_channel_close(state::amqp_connection_state_t,channel::amqp_channel_t,code::Cint)
    ccall((:amqp_channel_close,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,Cint),state,channel,code)
end

function amqp_connection_close(state::amqp_connection_state_t,code::Cint)
    ccall((:amqp_connection_close,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,Cint),state,code)
end

function amqp_basic_ack(state::amqp_connection_state_t,channel::amqp_channel_t,delivery_tag::UInt64,multiple::amqp_boolean_t)
    ccall((:amqp_basic_ack,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,UInt64,amqp_boolean_t),state,channel,delivery_tag,multiple)
end

function amqp_basic_get(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,no_ack::amqp_boolean_t)
    ccall((:amqp_basic_get,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t),state,channel,queue,no_ack)
end

function amqp_basic_reject(state::amqp_connection_state_t,channel::amqp_channel_t,delivery_tag::UInt64,requeue::amqp_boolean_t)
    ccall((:amqp_basic_reject,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,UInt64,amqp_boolean_t),state,channel,delivery_tag,requeue)
end

function amqp_basic_nack(state::amqp_connection_state_t,channel::amqp_channel_t,delivery_tag::UInt64,multiple::amqp_boolean_t,requeue::amqp_boolean_t)
    ccall((:amqp_basic_nack,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,UInt64,amqp_boolean_t,amqp_boolean_t),state,channel,delivery_tag,multiple,requeue)
end

function amqp_data_in_buffer(state::amqp_connection_state_t)
    ccall((:amqp_data_in_buffer,librabbitmq),amqp_boolean_t,(amqp_connection_state_t,),state)
end

function amqp_error_string(err::Cint)
    ccall((:amqp_error_string,librabbitmq),Ptr{UInt8},(Cint,),err)
end

function amqp_error_string2(err::Cint)
    ccall((:amqp_error_string2,librabbitmq),Ptr{UInt8},(Cint,),err)
end

function amqp_decode_table(encoded::amqp_bytes_t,pool::Ptr{amqp_pool_t},output::Ptr{amqp_table_t},offset::Ptr{Csize_t})
    ccall((:amqp_decode_table,librabbitmq),Cint,(amqp_bytes_t,Ptr{amqp_pool_t},Ptr{amqp_table_t},Ptr{Csize_t}),encoded,pool,output,offset)
end

function amqp_encode_table(encoded::amqp_bytes_t,input::Ptr{amqp_table_t},offset::Ptr{Csize_t})
    ccall((:amqp_encode_table,librabbitmq),Cint,(amqp_bytes_t,Ptr{amqp_table_t},Ptr{Csize_t}),encoded,input,offset)
end

function amqp_table_clone(original::Ptr{amqp_table_t},clone::Ptr{amqp_table_t},pool::Ptr{amqp_pool_t})
    ccall((:amqp_table_clone,librabbitmq),Cint,(Ptr{amqp_table_t},Ptr{amqp_table_t},Ptr{amqp_pool_t}),original,clone,pool)
end

function amqp_read_message(state::amqp_connection_state_t,channel::amqp_channel_t,message::Ptr{amqp_message_t},flags::Cint)
    ccall((:amqp_read_message,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,Ptr{amqp_message_t},Cint),state,channel,message,flags)
end

function amqp_destroy_message(message::Ptr{amqp_message_t})
    ccall((:amqp_destroy_message,librabbitmq),Void,(Ptr{amqp_message_t},),message)
end

function amqp_consume_message(state::amqp_connection_state_t,envelope::Ptr{amqp_envelope_t},timeout::Ptr{timeval},flags::Cint)
    ccall((:amqp_consume_message,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,Ptr{amqp_envelope_t},Ptr{timeval},Cint),state,envelope,timeout,flags)
end

function amqp_destroy_envelope(envelope::Ptr{amqp_envelope_t})
    ccall((:amqp_destroy_envelope,librabbitmq),Void,(Ptr{amqp_envelope_t},),envelope)
end

function amqp_default_connection_info(parsed::Ptr{amqp_connection_info})
    ccall((:amqp_default_connection_info,librabbitmq),Void,(Ptr{amqp_connection_info},),parsed)
end

function amqp_parse_url(url::Ptr{UInt8},parsed::Ptr{amqp_connection_info})
    ccall((:amqp_parse_url,librabbitmq),Cint,(Ptr{UInt8},Ptr{amqp_connection_info}),url,parsed)
end

function amqp_socket_open(self::Ptr{amqp_socket_t},host::Ptr{UInt8},port::Cint)
    ccall((:amqp_socket_open,librabbitmq),Cint,(Ptr{amqp_socket_t},Ptr{UInt8},Cint),self,host,port)
end

function amqp_socket_open_noblock(self::Ptr{amqp_socket_t},host::Ptr{UInt8},port::Cint,timeout::Ptr{timeval})
    ccall((:amqp_socket_open_noblock,librabbitmq),Cint,(Ptr{amqp_socket_t},Ptr{UInt8},Cint,Ptr{timeval}),self,host,port,timeout)
end

function amqp_socket_get_sockfd(self::Ptr{amqp_socket_t})
    ccall((:amqp_socket_get_sockfd,librabbitmq),Cint,(Ptr{amqp_socket_t},),self)
end

function amqp_get_socket(state::amqp_connection_state_t)
    ccall((:amqp_get_socket,librabbitmq),Ptr{amqp_socket_t},(amqp_connection_state_t,),state)
end

function amqp_get_server_properties(state::amqp_connection_state_t)
    ccall((:amqp_get_server_properties,librabbitmq),Ptr{amqp_table_t},(amqp_connection_state_t,),state)
end

function amqp_ssl_socket_new(state::amqp_connection_state_t)
    ccall((:amqp_ssl_socket_new,librabbitmq),Ptr{amqp_socket_t},(amqp_connection_state_t,),state)
end

function amqp_ssl_socket_set_cacert(self::Ptr{amqp_socket_t},cacert::Ptr{UInt8})
    ccall((:amqp_ssl_socket_set_cacert,librabbitmq),Cint,(Ptr{amqp_socket_t},Ptr{UInt8}),self,cacert)
end

function amqp_ssl_socket_set_key(self::Ptr{amqp_socket_t},cert::Ptr{UInt8},key::Ptr{UInt8})
    ccall((:amqp_ssl_socket_set_key,librabbitmq),Cint,(Ptr{amqp_socket_t},Ptr{UInt8},Ptr{UInt8}),self,cert,key)
end

function amqp_ssl_socket_set_key_buffer(self::Ptr{amqp_socket_t},cert::Ptr{UInt8},key::Ptr{Void},n::Csize_t)
    ccall((:amqp_ssl_socket_set_key_buffer,librabbitmq),Cint,(Ptr{amqp_socket_t},Ptr{UInt8},Ptr{Void},Csize_t),self,cert,key,n)
end

function amqp_ssl_socket_set_verify(self::Ptr{amqp_socket_t},verify::amqp_boolean_t)
    ccall((:amqp_ssl_socket_set_verify,librabbitmq),Void,(Ptr{amqp_socket_t},amqp_boolean_t),self,verify)
end

function amqp_set_initialize_ssl_library(do_initialize::amqp_boolean_t)
    ccall((:amqp_set_initialize_ssl_library,librabbitmq),Void,(amqp_boolean_t,),do_initialize)
end
# Julia wrapper for header: amqp_framing.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function amqp_version_number()
    ccall((:amqp_version_number,librabbitmq),UInt32,())
end

function amqp_version()
    ccall((:amqp_version,librabbitmq),Ptr{UInt8},())
end

function init_amqp_pool(pool::Ptr{amqp_pool_t},pagesize::Csize_t)
    ccall((:init_amqp_pool,librabbitmq),Void,(Ptr{amqp_pool_t},Csize_t),pool,pagesize)
end

function recycle_amqp_pool(pool::Ptr{amqp_pool_t})
    ccall((:recycle_amqp_pool,librabbitmq),Void,(Ptr{amqp_pool_t},),pool)
end

function empty_amqp_pool(pool::Ptr{amqp_pool_t})
    ccall((:empty_amqp_pool,librabbitmq),Void,(Ptr{amqp_pool_t},),pool)
end

function amqp_pool_alloc(pool::Ptr{amqp_pool_t},amount::Csize_t)
    ccall((:amqp_pool_alloc,librabbitmq),Ptr{Void},(Ptr{amqp_pool_t},Csize_t),pool,amount)
end

function amqp_pool_alloc_bytes(pool::Ptr{amqp_pool_t},amount::Csize_t,output::Ptr{amqp_bytes_t})
    ccall((:amqp_pool_alloc_bytes,librabbitmq),Void,(Ptr{amqp_pool_t},Csize_t,Ptr{amqp_bytes_t}),pool,amount,output)
end

function amqp_cstring_bytes(cstr::Ptr{UInt8})
    ccall((:amqp_cstring_bytes,librabbitmq),amqp_bytes_t,(Ptr{UInt8},),cstr)
end

function amqp_bytes_malloc_dup(src::amqp_bytes_t)
    ccall((:amqp_bytes_malloc_dup,librabbitmq),amqp_bytes_t,(amqp_bytes_t,),src)
end

function amqp_bytes_malloc(amount::Csize_t)
    ccall((:amqp_bytes_malloc,librabbitmq),amqp_bytes_t,(Csize_t,),amount)
end

function amqp_bytes_free(bytes::amqp_bytes_t)
    ccall((:amqp_bytes_free,librabbitmq),Void,(amqp_bytes_t,),bytes)
end

function amqp_new_connection()
    ccall((:amqp_new_connection,librabbitmq),amqp_connection_state_t,())
end

function amqp_get_sockfd(state::amqp_connection_state_t)
    ccall((:amqp_get_sockfd,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_set_sockfd(state::amqp_connection_state_t,sockfd::Cint)
    ccall((:amqp_set_sockfd,librabbitmq),Void,(amqp_connection_state_t,Cint),state,sockfd)
end

function amqp_tune_connection(state::amqp_connection_state_t,channel_max::Cint,frame_max::Cint,heartbeat::Cint)
    ccall((:amqp_tune_connection,librabbitmq),Cint,(amqp_connection_state_t,Cint,Cint,Cint),state,channel_max,frame_max,heartbeat)
end

function amqp_get_channel_max(state::amqp_connection_state_t)
    ccall((:amqp_get_channel_max,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_destroy_connection(state::amqp_connection_state_t)
    ccall((:amqp_destroy_connection,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_handle_input(state::amqp_connection_state_t,received_data::amqp_bytes_t,decoded_frame::Ptr{amqp_frame_t})
    ccall((:amqp_handle_input,librabbitmq),Cint,(amqp_connection_state_t,amqp_bytes_t,Ptr{amqp_frame_t}),state,received_data,decoded_frame)
end

function amqp_release_buffers_ok(state::amqp_connection_state_t)
    ccall((:amqp_release_buffers_ok,librabbitmq),amqp_boolean_t,(amqp_connection_state_t,),state)
end

function amqp_release_buffers(state::amqp_connection_state_t)
    ccall((:amqp_release_buffers,librabbitmq),Void,(amqp_connection_state_t,),state)
end

function amqp_maybe_release_buffers(state::amqp_connection_state_t)
    ccall((:amqp_maybe_release_buffers,librabbitmq),Void,(amqp_connection_state_t,),state)
end

function amqp_maybe_release_buffers_on_channel(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_maybe_release_buffers_on_channel,librabbitmq),Void,(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_send_frame(state::amqp_connection_state_t,frame::Ptr{amqp_frame_t})
    ccall((:amqp_send_frame,librabbitmq),Cint,(amqp_connection_state_t,Ptr{amqp_frame_t}),state,frame)
end

function amqp_table_entry_cmp(entry1::Ptr{Void},entry2::Ptr{Void})
    ccall((:amqp_table_entry_cmp,librabbitmq),Cint,(Ptr{Void},Ptr{Void}),entry1,entry2)
end

function amqp_open_socket(hostname::Ptr{UInt8},portnumber::Cint)
    ccall((:amqp_open_socket,librabbitmq),Cint,(Ptr{UInt8},Cint),hostname,portnumber)
end

function amqp_send_header(state::amqp_connection_state_t)
    ccall((:amqp_send_header,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_frames_enqueued(state::amqp_connection_state_t)
    ccall((:amqp_frames_enqueued,librabbitmq),amqp_boolean_t,(amqp_connection_state_t,),state)
end

function amqp_simple_wait_frame(state::amqp_connection_state_t,decoded_frame::Ptr{amqp_frame_t})
    ccall((:amqp_simple_wait_frame,librabbitmq),Cint,(amqp_connection_state_t,Ptr{amqp_frame_t}),state,decoded_frame)
end

function amqp_simple_wait_frame_noblock(state::amqp_connection_state_t,decoded_frame::Ptr{amqp_frame_t},tv::Ptr{timeval})
    ccall((:amqp_simple_wait_frame_noblock,librabbitmq),Cint,(amqp_connection_state_t,Ptr{amqp_frame_t},Ptr{timeval}),state,decoded_frame,tv)
end

function amqp_simple_wait_method(state::amqp_connection_state_t,expected_channel::amqp_channel_t,expected_method::amqp_method_number_t,output::Ptr{amqp_method_t})
    ccall((:amqp_simple_wait_method,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,Ptr{amqp_method_t}),state,expected_channel,expected_method,output)
end

function amqp_send_method(state::amqp_connection_state_t,channel::amqp_channel_t,id::amqp_method_number_t,decoded::Ptr{Void})
    ccall((:amqp_send_method,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,Ptr{Void}),state,channel,id,decoded)
end

function amqp_simple_rpc(state::amqp_connection_state_t,channel::amqp_channel_t,request_id::amqp_method_number_t,expected_reply_ids::Ptr{amqp_method_number_t},decoded_request_method::Ptr{Void})
    ccall((:amqp_simple_rpc,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,Ptr{amqp_method_number_t},Ptr{Void}),state,channel,request_id,expected_reply_ids,decoded_request_method)
end

function amqp_simple_rpc_decoded(state::amqp_connection_state_t,channel::amqp_channel_t,request_id::amqp_method_number_t,reply_id::amqp_method_number_t,decoded_request_method::Ptr{Void})
    ccall((:amqp_simple_rpc_decoded,librabbitmq),Ptr{Void},(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,amqp_method_number_t,Ptr{Void}),state,channel,request_id,reply_id,decoded_request_method)
end

function amqp_get_rpc_reply(state::amqp_connection_state_t)
    ccall((:amqp_get_rpc_reply,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,),state)
end

function amqp_basic_publish(state::amqp_connection_state_t,channel::amqp_channel_t,exchange::amqp_bytes_t,routing_key::amqp_bytes_t,mandatory::amqp_boolean_t,immediate::amqp_boolean_t,properties::Ptr{amqp_basic_properties_t_},body::amqp_bytes_t)
    ccall((:amqp_basic_publish,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,Ptr{amqp_basic_properties_t_},amqp_bytes_t),state,channel,exchange,routing_key,mandatory,immediate,properties,body)
end

function amqp_channel_close(state::amqp_connection_state_t,channel::amqp_channel_t,code::Cint)
    ccall((:amqp_channel_close,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,Cint),state,channel,code)
end

function amqp_connection_close(state::amqp_connection_state_t,code::Cint)
    ccall((:amqp_connection_close,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,Cint),state,code)
end

function amqp_basic_ack(state::amqp_connection_state_t,channel::amqp_channel_t,delivery_tag::UInt64,multiple::amqp_boolean_t)
    ccall((:amqp_basic_ack,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,UInt64,amqp_boolean_t),state,channel,delivery_tag,multiple)
end

function amqp_basic_get(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,no_ack::amqp_boolean_t)
    ccall((:amqp_basic_get,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t),state,channel,queue,no_ack)
end

function amqp_basic_reject(state::amqp_connection_state_t,channel::amqp_channel_t,delivery_tag::UInt64,requeue::amqp_boolean_t)
    ccall((:amqp_basic_reject,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,UInt64,amqp_boolean_t),state,channel,delivery_tag,requeue)
end

function amqp_basic_nack(state::amqp_connection_state_t,channel::amqp_channel_t,delivery_tag::UInt64,multiple::amqp_boolean_t,requeue::amqp_boolean_t)
    ccall((:amqp_basic_nack,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,UInt64,amqp_boolean_t,amqp_boolean_t),state,channel,delivery_tag,multiple,requeue)
end

function amqp_data_in_buffer(state::amqp_connection_state_t)
    ccall((:amqp_data_in_buffer,librabbitmq),amqp_boolean_t,(amqp_connection_state_t,),state)
end

function amqp_error_string(err::Cint)
    ccall((:amqp_error_string,librabbitmq),Ptr{UInt8},(Cint,),err)
end

function amqp_error_string2(err::Cint)
    ccall((:amqp_error_string2,librabbitmq),Ptr{UInt8},(Cint,),err)
end

function amqp_decode_table(encoded::amqp_bytes_t,pool::Ptr{amqp_pool_t},output::Ptr{amqp_table_t},offset::Ptr{Csize_t})
    ccall((:amqp_decode_table,librabbitmq),Cint,(amqp_bytes_t,Ptr{amqp_pool_t},Ptr{amqp_table_t},Ptr{Csize_t}),encoded,pool,output,offset)
end

function amqp_encode_table(encoded::amqp_bytes_t,input::Ptr{amqp_table_t},offset::Ptr{Csize_t})
    ccall((:amqp_encode_table,librabbitmq),Cint,(amqp_bytes_t,Ptr{amqp_table_t},Ptr{Csize_t}),encoded,input,offset)
end

function amqp_table_clone(original::Ptr{amqp_table_t},clone::Ptr{amqp_table_t},pool::Ptr{amqp_pool_t})
    ccall((:amqp_table_clone,librabbitmq),Cint,(Ptr{amqp_table_t},Ptr{amqp_table_t},Ptr{amqp_pool_t}),original,clone,pool)
end

function amqp_read_message(state::amqp_connection_state_t,channel::amqp_channel_t,message::Ptr{amqp_message_t},flags::Cint)
    ccall((:amqp_read_message,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,Ptr{amqp_message_t},Cint),state,channel,message,flags)
end

function amqp_destroy_message(message::Ptr{amqp_message_t})
    ccall((:amqp_destroy_message,librabbitmq),Void,(Ptr{amqp_message_t},),message)
end

function amqp_consume_message(state::amqp_connection_state_t,envelope::Ptr{amqp_envelope_t},timeout::Ptr{timeval},flags::Cint)
    ccall((:amqp_consume_message,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,Ptr{amqp_envelope_t},Ptr{timeval},Cint),state,envelope,timeout,flags)
end

function amqp_destroy_envelope(envelope::Ptr{amqp_envelope_t})
    ccall((:amqp_destroy_envelope,librabbitmq),Void,(Ptr{amqp_envelope_t},),envelope)
end

function amqp_default_connection_info(parsed::Ptr{amqp_connection_info})
    ccall((:amqp_default_connection_info,librabbitmq),Void,(Ptr{amqp_connection_info},),parsed)
end

function amqp_parse_url(url::Ptr{UInt8},parsed::Ptr{amqp_connection_info})
    ccall((:amqp_parse_url,librabbitmq),Cint,(Ptr{UInt8},Ptr{amqp_connection_info}),url,parsed)
end

function amqp_socket_open(self::Ptr{amqp_socket_t},host::Ptr{UInt8},port::Cint)
    ccall((:amqp_socket_open,librabbitmq),Cint,(Ptr{amqp_socket_t},Ptr{UInt8},Cint),self,host,port)
end

function amqp_socket_open_noblock(self::Ptr{amqp_socket_t},host::Ptr{UInt8},port::Cint,timeout::Ptr{timeval})
    ccall((:amqp_socket_open_noblock,librabbitmq),Cint,(Ptr{amqp_socket_t},Ptr{UInt8},Cint,Ptr{timeval}),self,host,port,timeout)
end

function amqp_socket_get_sockfd(self::Ptr{amqp_socket_t})
    ccall((:amqp_socket_get_sockfd,librabbitmq),Cint,(Ptr{amqp_socket_t},),self)
end

function amqp_get_socket(state::amqp_connection_state_t)
    ccall((:amqp_get_socket,librabbitmq),Ptr{amqp_socket_t},(amqp_connection_state_t,),state)
end

function amqp_get_server_properties(state::amqp_connection_state_t)
    ccall((:amqp_get_server_properties,librabbitmq),Ptr{amqp_table_t},(amqp_connection_state_t,),state)
end

function amqp_constant_name(constantNumber::Cint)
    ccall((:amqp_constant_name,librabbitmq),Ptr{UInt8},(Cint,),constantNumber)
end

function amqp_constant_is_hard_error(constantNumber::Cint)
    ccall((:amqp_constant_is_hard_error,librabbitmq),amqp_boolean_t,(Cint,),constantNumber)
end

function amqp_method_name(methodNumber::amqp_method_number_t)
    ccall((:amqp_method_name,librabbitmq),Ptr{UInt8},(amqp_method_number_t,),methodNumber)
end

function amqp_method_has_content(methodNumber::amqp_method_number_t)
    ccall((:amqp_method_has_content,librabbitmq),amqp_boolean_t,(amqp_method_number_t,),methodNumber)
end

function amqp_decode_method(methodNumber::amqp_method_number_t,pool::Ptr{amqp_pool_t},encoded::amqp_bytes_t,decoded::Ptr{Ptr{Void}})
    ccall((:amqp_decode_method,librabbitmq),Cint,(amqp_method_number_t,Ptr{amqp_pool_t},amqp_bytes_t,Ptr{Ptr{Void}}),methodNumber,pool,encoded,decoded)
end

function amqp_decode_properties(class_id::UInt16,pool::Ptr{amqp_pool_t},encoded::amqp_bytes_t,decoded::Ptr{Ptr{Void}})
    ccall((:amqp_decode_properties,librabbitmq),Cint,(UInt16,Ptr{amqp_pool_t},amqp_bytes_t,Ptr{Ptr{Void}}),class_id,pool,encoded,decoded)
end

function amqp_encode_method(methodNumber::amqp_method_number_t,decoded::Ptr{Void},encoded::amqp_bytes_t)
    ccall((:amqp_encode_method,librabbitmq),Cint,(amqp_method_number_t,Ptr{Void},amqp_bytes_t),methodNumber,decoded,encoded)
end

function amqp_encode_properties(class_id::UInt16,decoded::Ptr{Void},encoded::amqp_bytes_t)
    ccall((:amqp_encode_properties,librabbitmq),Cint,(UInt16,Ptr{Void},amqp_bytes_t),class_id,decoded,encoded)
end

function amqp_channel_open(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_channel_open,librabbitmq),Ptr{amqp_channel_open_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_channel_flow(state::amqp_connection_state_t,channel::amqp_channel_t,active::amqp_boolean_t)
    ccall((:amqp_channel_flow,librabbitmq),Ptr{amqp_channel_flow_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_boolean_t),state,channel,active)
end

function amqp_exchange_declare(state::amqp_connection_state_t,channel::amqp_channel_t,exchange::amqp_bytes_t,_type::amqp_bytes_t,passive::amqp_boolean_t,durable::amqp_boolean_t,arguments::amqp_table_t)
    ccall((:amqp_exchange_declare,librabbitmq),Ptr{amqp_exchange_declare_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,amqp_table_t),state,channel,exchange,_type,passive,durable,arguments)
end

function amqp_exchange_delete(state::amqp_connection_state_t,channel::amqp_channel_t,exchange::amqp_bytes_t,if_unused::amqp_boolean_t)
    ccall((:amqp_exchange_delete,librabbitmq),Ptr{amqp_exchange_delete_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t),state,channel,exchange,if_unused)
end

function amqp_exchange_bind(state::amqp_connection_state_t,channel::amqp_channel_t,destination::amqp_bytes_t,source::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_exchange_bind,librabbitmq),Ptr{amqp_exchange_bind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,destination,source,routing_key,arguments)
end

function amqp_exchange_unbind(state::amqp_connection_state_t,channel::amqp_channel_t,destination::amqp_bytes_t,source::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_exchange_unbind,librabbitmq),Ptr{amqp_exchange_unbind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,destination,source,routing_key,arguments)
end

function amqp_queue_declare(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,passive::amqp_boolean_t,durable::amqp_boolean_t,exclusive::amqp_boolean_t,auto_delete::amqp_boolean_t,arguments::amqp_table_t)
    ccall((:amqp_queue_declare,librabbitmq),Ptr{amqp_queue_declare_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,amqp_boolean_t,amqp_boolean_t,amqp_table_t),state,channel,queue,passive,durable,exclusive,auto_delete,arguments)
end

function amqp_queue_bind(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,exchange::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_queue_bind,librabbitmq),Ptr{amqp_queue_bind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,queue,exchange,routing_key,arguments)
end

function amqp_queue_purge(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t)
    ccall((:amqp_queue_purge,librabbitmq),Ptr{amqp_queue_purge_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t),state,channel,queue)
end

function amqp_queue_delete(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,if_unused::amqp_boolean_t,if_empty::amqp_boolean_t)
    ccall((:amqp_queue_delete,librabbitmq),Ptr{amqp_queue_delete_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t),state,channel,queue,if_unused,if_empty)
end

function amqp_queue_unbind(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,exchange::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_queue_unbind,librabbitmq),Ptr{amqp_queue_unbind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,queue,exchange,routing_key,arguments)
end

function amqp_basic_qos(state::amqp_connection_state_t,channel::amqp_channel_t,prefetch_size::UInt32,prefetch_count::UInt16,_global::amqp_boolean_t)
    ccall((:amqp_basic_qos,librabbitmq),Ptr{amqp_basic_qos_ok_t},(amqp_connection_state_t,amqp_channel_t,UInt32,UInt16,amqp_boolean_t),state,channel,prefetch_size,prefetch_count,_global)
end

function amqp_basic_consume(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,consumer_tag::amqp_bytes_t,no_local::amqp_boolean_t,no_ack::amqp_boolean_t,exclusive::amqp_boolean_t,arguments::amqp_table_t)
    ccall((:amqp_basic_consume,librabbitmq),Ptr{amqp_basic_consume_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,amqp_boolean_t,amqp_table_t),state,channel,queue,consumer_tag,no_local,no_ack,exclusive,arguments)
end

function amqp_basic_cancel(state::amqp_connection_state_t,channel::amqp_channel_t,consumer_tag::amqp_bytes_t)
    ccall((:amqp_basic_cancel,librabbitmq),Ptr{amqp_basic_cancel_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t),state,channel,consumer_tag)
end

function amqp_basic_recover(state::amqp_connection_state_t,channel::amqp_channel_t,requeue::amqp_boolean_t)
    ccall((:amqp_basic_recover,librabbitmq),Ptr{amqp_basic_recover_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_boolean_t),state,channel,requeue)
end

function amqp_tx_select(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_tx_select,librabbitmq),Ptr{amqp_tx_select_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_tx_commit(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_tx_commit,librabbitmq),Ptr{amqp_tx_commit_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_tx_rollback(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_tx_rollback,librabbitmq),Ptr{amqp_tx_rollback_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_confirm_select(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_confirm_select,librabbitmq),Ptr{amqp_confirm_select_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end
# Julia wrapper for header: amqp_tcp_socket.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function amqp_version_number()
    ccall((:amqp_version_number,librabbitmq),UInt32,())
end

function amqp_version()
    ccall((:amqp_version,librabbitmq),Ptr{UInt8},())
end

function amqp_constant_name(constantNumber::Cint)
    ccall((:amqp_constant_name,librabbitmq),Ptr{UInt8},(Cint,),constantNumber)
end

function amqp_constant_is_hard_error(constantNumber::Cint)
    ccall((:amqp_constant_is_hard_error,librabbitmq),amqp_boolean_t,(Cint,),constantNumber)
end

function amqp_method_name(methodNumber::amqp_method_number_t)
    ccall((:amqp_method_name,librabbitmq),Ptr{UInt8},(amqp_method_number_t,),methodNumber)
end

function amqp_method_has_content(methodNumber::amqp_method_number_t)
    ccall((:amqp_method_has_content,librabbitmq),amqp_boolean_t,(amqp_method_number_t,),methodNumber)
end

function amqp_decode_method(methodNumber::amqp_method_number_t,pool::Ptr{amqp_pool_t},encoded::amqp_bytes_t,decoded::Ptr{Ptr{Void}})
    ccall((:amqp_decode_method,librabbitmq),Cint,(amqp_method_number_t,Ptr{amqp_pool_t},amqp_bytes_t,Ptr{Ptr{Void}}),methodNumber,pool,encoded,decoded)
end

function amqp_decode_properties(class_id::UInt16,pool::Ptr{amqp_pool_t},encoded::amqp_bytes_t,decoded::Ptr{Ptr{Void}})
    ccall((:amqp_decode_properties,librabbitmq),Cint,(UInt16,Ptr{amqp_pool_t},amqp_bytes_t,Ptr{Ptr{Void}}),class_id,pool,encoded,decoded)
end

function amqp_encode_method(methodNumber::amqp_method_number_t,decoded::Ptr{Void},encoded::amqp_bytes_t)
    ccall((:amqp_encode_method,librabbitmq),Cint,(amqp_method_number_t,Ptr{Void},amqp_bytes_t),methodNumber,decoded,encoded)
end

function amqp_encode_properties(class_id::UInt16,decoded::Ptr{Void},encoded::amqp_bytes_t)
    ccall((:amqp_encode_properties,librabbitmq),Cint,(UInt16,Ptr{Void},amqp_bytes_t),class_id,decoded,encoded)
end

function amqp_channel_open(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_channel_open,librabbitmq),Ptr{amqp_channel_open_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_channel_flow(state::amqp_connection_state_t,channel::amqp_channel_t,active::amqp_boolean_t)
    ccall((:amqp_channel_flow,librabbitmq),Ptr{amqp_channel_flow_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_boolean_t),state,channel,active)
end

function amqp_exchange_declare(state::amqp_connection_state_t,channel::amqp_channel_t,exchange::amqp_bytes_t,_type::amqp_bytes_t,passive::amqp_boolean_t,durable::amqp_boolean_t,arguments::amqp_table_t)
    ccall((:amqp_exchange_declare,librabbitmq),Ptr{amqp_exchange_declare_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,amqp_table_t),state,channel,exchange,_type,passive,durable,arguments)
end

function amqp_exchange_delete(state::amqp_connection_state_t,channel::amqp_channel_t,exchange::amqp_bytes_t,if_unused::amqp_boolean_t)
    ccall((:amqp_exchange_delete,librabbitmq),Ptr{amqp_exchange_delete_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t),state,channel,exchange,if_unused)
end

function amqp_exchange_bind(state::amqp_connection_state_t,channel::amqp_channel_t,destination::amqp_bytes_t,source::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_exchange_bind,librabbitmq),Ptr{amqp_exchange_bind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,destination,source,routing_key,arguments)
end

function amqp_exchange_unbind(state::amqp_connection_state_t,channel::amqp_channel_t,destination::amqp_bytes_t,source::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_exchange_unbind,librabbitmq),Ptr{amqp_exchange_unbind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,destination,source,routing_key,arguments)
end

function amqp_queue_declare(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,passive::amqp_boolean_t,durable::amqp_boolean_t,exclusive::amqp_boolean_t,auto_delete::amqp_boolean_t,arguments::amqp_table_t)
    ccall((:amqp_queue_declare,librabbitmq),Ptr{amqp_queue_declare_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,amqp_boolean_t,amqp_boolean_t,amqp_table_t),state,channel,queue,passive,durable,exclusive,auto_delete,arguments)
end

function amqp_queue_bind(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,exchange::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_queue_bind,librabbitmq),Ptr{amqp_queue_bind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,queue,exchange,routing_key,arguments)
end

function amqp_queue_purge(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t)
    ccall((:amqp_queue_purge,librabbitmq),Ptr{amqp_queue_purge_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t),state,channel,queue)
end

function amqp_queue_delete(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,if_unused::amqp_boolean_t,if_empty::amqp_boolean_t)
    ccall((:amqp_queue_delete,librabbitmq),Ptr{amqp_queue_delete_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t),state,channel,queue,if_unused,if_empty)
end

function amqp_queue_unbind(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,exchange::amqp_bytes_t,routing_key::amqp_bytes_t,arguments::amqp_table_t)
    ccall((:amqp_queue_unbind,librabbitmq),Ptr{amqp_queue_unbind_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_bytes_t,amqp_table_t),state,channel,queue,exchange,routing_key,arguments)
end

function amqp_basic_qos(state::amqp_connection_state_t,channel::amqp_channel_t,prefetch_size::UInt32,prefetch_count::UInt16,_global::amqp_boolean_t)
    ccall((:amqp_basic_qos,librabbitmq),Ptr{amqp_basic_qos_ok_t},(amqp_connection_state_t,amqp_channel_t,UInt32,UInt16,amqp_boolean_t),state,channel,prefetch_size,prefetch_count,_global)
end

function amqp_basic_consume(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,consumer_tag::amqp_bytes_t,no_local::amqp_boolean_t,no_ack::amqp_boolean_t,exclusive::amqp_boolean_t,arguments::amqp_table_t)
    ccall((:amqp_basic_consume,librabbitmq),Ptr{amqp_basic_consume_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,amqp_boolean_t,amqp_table_t),state,channel,queue,consumer_tag,no_local,no_ack,exclusive,arguments)
end

function amqp_basic_cancel(state::amqp_connection_state_t,channel::amqp_channel_t,consumer_tag::amqp_bytes_t)
    ccall((:amqp_basic_cancel,librabbitmq),Ptr{amqp_basic_cancel_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t),state,channel,consumer_tag)
end

function amqp_basic_recover(state::amqp_connection_state_t,channel::amqp_channel_t,requeue::amqp_boolean_t)
    ccall((:amqp_basic_recover,librabbitmq),Ptr{amqp_basic_recover_ok_t},(amqp_connection_state_t,amqp_channel_t,amqp_boolean_t),state,channel,requeue)
end

function amqp_tx_select(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_tx_select,librabbitmq),Ptr{amqp_tx_select_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_tx_commit(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_tx_commit,librabbitmq),Ptr{amqp_tx_commit_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_tx_rollback(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_tx_rollback,librabbitmq),Ptr{amqp_tx_rollback_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_confirm_select(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_confirm_select,librabbitmq),Ptr{amqp_confirm_select_ok_t},(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function init_amqp_pool(pool::Ptr{amqp_pool_t},pagesize::Csize_t)
    ccall((:init_amqp_pool,librabbitmq),Void,(Ptr{amqp_pool_t},Csize_t),pool,pagesize)
end

function recycle_amqp_pool(pool::Ptr{amqp_pool_t})
    ccall((:recycle_amqp_pool,librabbitmq),Void,(Ptr{amqp_pool_t},),pool)
end

function empty_amqp_pool(pool::Ptr{amqp_pool_t})
    ccall((:empty_amqp_pool,librabbitmq),Void,(Ptr{amqp_pool_t},),pool)
end

function amqp_pool_alloc(pool::Ptr{amqp_pool_t},amount::Csize_t)
    ccall((:amqp_pool_alloc,librabbitmq),Ptr{Void},(Ptr{amqp_pool_t},Csize_t),pool,amount)
end

function amqp_pool_alloc_bytes(pool::Ptr{amqp_pool_t},amount::Csize_t,output::Ptr{amqp_bytes_t})
    ccall((:amqp_pool_alloc_bytes,librabbitmq),Void,(Ptr{amqp_pool_t},Csize_t,Ptr{amqp_bytes_t}),pool,amount,output)
end

function amqp_cstring_bytes(cstr::Ptr{UInt8})
    ccall((:amqp_cstring_bytes,librabbitmq),amqp_bytes_t,(Ptr{UInt8},),cstr)
end

function amqp_bytes_malloc_dup(src::amqp_bytes_t)
    ccall((:amqp_bytes_malloc_dup,librabbitmq),amqp_bytes_t,(amqp_bytes_t,),src)
end

function amqp_bytes_malloc(amount::Csize_t)
    ccall((:amqp_bytes_malloc,librabbitmq),amqp_bytes_t,(Csize_t,),amount)
end

function amqp_bytes_free(bytes::amqp_bytes_t)
    ccall((:amqp_bytes_free,librabbitmq),Void,(amqp_bytes_t,),bytes)
end

function amqp_new_connection()
    ccall((:amqp_new_connection,librabbitmq),amqp_connection_state_t,())
end

function amqp_get_sockfd(state::amqp_connection_state_t)
    ccall((:amqp_get_sockfd,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_set_sockfd(state::amqp_connection_state_t,sockfd::Cint)
    ccall((:amqp_set_sockfd,librabbitmq),Void,(amqp_connection_state_t,Cint),state,sockfd)
end

function amqp_tune_connection(state::amqp_connection_state_t,channel_max::Cint,frame_max::Cint,heartbeat::Cint)
    ccall((:amqp_tune_connection,librabbitmq),Cint,(amqp_connection_state_t,Cint,Cint,Cint),state,channel_max,frame_max,heartbeat)
end

function amqp_get_channel_max(state::amqp_connection_state_t)
    ccall((:amqp_get_channel_max,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_destroy_connection(state::amqp_connection_state_t)
    ccall((:amqp_destroy_connection,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_handle_input(state::amqp_connection_state_t,received_data::amqp_bytes_t,decoded_frame::Ptr{amqp_frame_t})
    ccall((:amqp_handle_input,librabbitmq),Cint,(amqp_connection_state_t,amqp_bytes_t,Ptr{amqp_frame_t}),state,received_data,decoded_frame)
end

function amqp_release_buffers_ok(state::amqp_connection_state_t)
    ccall((:amqp_release_buffers_ok,librabbitmq),amqp_boolean_t,(amqp_connection_state_t,),state)
end

function amqp_release_buffers(state::amqp_connection_state_t)
    ccall((:amqp_release_buffers,librabbitmq),Void,(amqp_connection_state_t,),state)
end

function amqp_maybe_release_buffers(state::amqp_connection_state_t)
    ccall((:amqp_maybe_release_buffers,librabbitmq),Void,(amqp_connection_state_t,),state)
end

function amqp_maybe_release_buffers_on_channel(state::amqp_connection_state_t,channel::amqp_channel_t)
    ccall((:amqp_maybe_release_buffers_on_channel,librabbitmq),Void,(amqp_connection_state_t,amqp_channel_t),state,channel)
end

function amqp_send_frame(state::amqp_connection_state_t,frame::Ptr{amqp_frame_t})
    ccall((:amqp_send_frame,librabbitmq),Cint,(amqp_connection_state_t,Ptr{amqp_frame_t}),state,frame)
end

function amqp_table_entry_cmp(entry1::Ptr{Void},entry2::Ptr{Void})
    ccall((:amqp_table_entry_cmp,librabbitmq),Cint,(Ptr{Void},Ptr{Void}),entry1,entry2)
end

function amqp_open_socket(hostname::Ptr{UInt8},portnumber::Cint)
    ccall((:amqp_open_socket,librabbitmq),Cint,(Ptr{UInt8},Cint),hostname,portnumber)
end

function amqp_send_header(state::amqp_connection_state_t)
    ccall((:amqp_send_header,librabbitmq),Cint,(amqp_connection_state_t,),state)
end

function amqp_frames_enqueued(state::amqp_connection_state_t)
    ccall((:amqp_frames_enqueued,librabbitmq),amqp_boolean_t,(amqp_connection_state_t,),state)
end

function amqp_simple_wait_frame(state::amqp_connection_state_t,decoded_frame::Ptr{amqp_frame_t})
    ccall((:amqp_simple_wait_frame,librabbitmq),Cint,(amqp_connection_state_t,Ptr{amqp_frame_t}),state,decoded_frame)
end

function amqp_simple_wait_frame_noblock(state::amqp_connection_state_t,decoded_frame::Ptr{amqp_frame_t},tv::Ptr{timeval})
    ccall((:amqp_simple_wait_frame_noblock,librabbitmq),Cint,(amqp_connection_state_t,Ptr{amqp_frame_t},Ptr{timeval}),state,decoded_frame,tv)
end

function amqp_simple_wait_method(state::amqp_connection_state_t,expected_channel::amqp_channel_t,expected_method::amqp_method_number_t,output::Ptr{amqp_method_t})
    ccall((:amqp_simple_wait_method,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,Ptr{amqp_method_t}),state,expected_channel,expected_method,output)
end

function amqp_send_method(state::amqp_connection_state_t,channel::amqp_channel_t,id::amqp_method_number_t,decoded::Ptr{Void})
    ccall((:amqp_send_method,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,Ptr{Void}),state,channel,id,decoded)
end

function amqp_simple_rpc(state::amqp_connection_state_t,channel::amqp_channel_t,request_id::amqp_method_number_t,expected_reply_ids::Ptr{amqp_method_number_t},decoded_request_method::Ptr{Void})
    ccall((:amqp_simple_rpc,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,Ptr{amqp_method_number_t},Ptr{Void}),state,channel,request_id,expected_reply_ids,decoded_request_method)
end

function amqp_simple_rpc_decoded(state::amqp_connection_state_t,channel::amqp_channel_t,request_id::amqp_method_number_t,reply_id::amqp_method_number_t,decoded_request_method::Ptr{Void})
    ccall((:amqp_simple_rpc_decoded,librabbitmq),Ptr{Void},(amqp_connection_state_t,amqp_channel_t,amqp_method_number_t,amqp_method_number_t,Ptr{Void}),state,channel,request_id,reply_id,decoded_request_method)
end

function amqp_get_rpc_reply(state::amqp_connection_state_t)
    ccall((:amqp_get_rpc_reply,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,),state)
end

function amqp_basic_publish(state::amqp_connection_state_t,channel::amqp_channel_t,exchange::amqp_bytes_t,routing_key::amqp_bytes_t,mandatory::amqp_boolean_t,immediate::amqp_boolean_t,properties::Ptr{amqp_basic_properties_t_},body::amqp_bytes_t)
    ccall((:amqp_basic_publish,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_bytes_t,amqp_boolean_t,amqp_boolean_t,Ptr{amqp_basic_properties_t_},amqp_bytes_t),state,channel,exchange,routing_key,mandatory,immediate,properties,body)
end

function amqp_channel_close(state::amqp_connection_state_t,channel::amqp_channel_t,code::Cint)
    ccall((:amqp_channel_close,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,Cint),state,channel,code)
end

function amqp_connection_close(state::amqp_connection_state_t,code::Cint)
    ccall((:amqp_connection_close,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,Cint),state,code)
end

function amqp_basic_ack(state::amqp_connection_state_t,channel::amqp_channel_t,delivery_tag::UInt64,multiple::amqp_boolean_t)
    ccall((:amqp_basic_ack,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,UInt64,amqp_boolean_t),state,channel,delivery_tag,multiple)
end

function amqp_basic_get(state::amqp_connection_state_t,channel::amqp_channel_t,queue::amqp_bytes_t,no_ack::amqp_boolean_t)
    ccall((:amqp_basic_get,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,amqp_bytes_t,amqp_boolean_t),state,channel,queue,no_ack)
end

function amqp_basic_reject(state::amqp_connection_state_t,channel::amqp_channel_t,delivery_tag::UInt64,requeue::amqp_boolean_t)
    ccall((:amqp_basic_reject,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,UInt64,amqp_boolean_t),state,channel,delivery_tag,requeue)
end

function amqp_basic_nack(state::amqp_connection_state_t,channel::amqp_channel_t,delivery_tag::UInt64,multiple::amqp_boolean_t,requeue::amqp_boolean_t)
    ccall((:amqp_basic_nack,librabbitmq),Cint,(amqp_connection_state_t,amqp_channel_t,UInt64,amqp_boolean_t,amqp_boolean_t),state,channel,delivery_tag,multiple,requeue)
end

function amqp_data_in_buffer(state::amqp_connection_state_t)
    ccall((:amqp_data_in_buffer,librabbitmq),amqp_boolean_t,(amqp_connection_state_t,),state)
end

function amqp_error_string(err::Cint)
    ccall((:amqp_error_string,librabbitmq),Ptr{UInt8},(Cint,),err)
end

function amqp_error_string2(err::Cint)
    ccall((:amqp_error_string2,librabbitmq),Ptr{UInt8},(Cint,),err)
end

function amqp_decode_table(encoded::amqp_bytes_t,pool::Ptr{amqp_pool_t},output::Ptr{amqp_table_t},offset::Ptr{Csize_t})
    ccall((:amqp_decode_table,librabbitmq),Cint,(amqp_bytes_t,Ptr{amqp_pool_t},Ptr{amqp_table_t},Ptr{Csize_t}),encoded,pool,output,offset)
end

function amqp_encode_table(encoded::amqp_bytes_t,input::Ptr{amqp_table_t},offset::Ptr{Csize_t})
    ccall((:amqp_encode_table,librabbitmq),Cint,(amqp_bytes_t,Ptr{amqp_table_t},Ptr{Csize_t}),encoded,input,offset)
end

function amqp_table_clone(original::Ptr{amqp_table_t},clone::Ptr{amqp_table_t},pool::Ptr{amqp_pool_t})
    ccall((:amqp_table_clone,librabbitmq),Cint,(Ptr{amqp_table_t},Ptr{amqp_table_t},Ptr{amqp_pool_t}),original,clone,pool)
end

function amqp_read_message(state::amqp_connection_state_t,channel::amqp_channel_t,message::Ptr{amqp_message_t},flags::Cint)
    ccall((:amqp_read_message,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,amqp_channel_t,Ptr{amqp_message_t},Cint),state,channel,message,flags)
end

function amqp_destroy_message(message::Ptr{amqp_message_t})
    ccall((:amqp_destroy_message,librabbitmq),Void,(Ptr{amqp_message_t},),message)
end

function amqp_consume_message(state::amqp_connection_state_t,envelope::Ptr{amqp_envelope_t},timeout::Ptr{timeval},flags::Cint)
    ccall((:amqp_consume_message,librabbitmq),amqp_rpc_reply_t,(amqp_connection_state_t,Ptr{amqp_envelope_t},Ptr{timeval},Cint),state,envelope,timeout,flags)
end

function amqp_destroy_envelope(envelope::Ptr{amqp_envelope_t})
    ccall((:amqp_destroy_envelope,librabbitmq),Void,(Ptr{amqp_envelope_t},),envelope)
end

function amqp_default_connection_info(parsed::Ptr{amqp_connection_info})
    ccall((:amqp_default_connection_info,librabbitmq),Void,(Ptr{amqp_connection_info},),parsed)
end

function amqp_parse_url(url::Ptr{UInt8},parsed::Ptr{amqp_connection_info})
    ccall((:amqp_parse_url,librabbitmq),Cint,(Ptr{UInt8},Ptr{amqp_connection_info}),url,parsed)
end

function amqp_socket_open(self::Ptr{amqp_socket_t},host::Ptr{UInt8},port::Cint)
    ccall((:amqp_socket_open,librabbitmq),Cint,(Ptr{amqp_socket_t},Ptr{UInt8},Cint),self,host,port)
end

function amqp_socket_open_noblock(self::Ptr{amqp_socket_t},host::Ptr{UInt8},port::Cint,timeout::Ptr{timeval})
    ccall((:amqp_socket_open_noblock,librabbitmq),Cint,(Ptr{amqp_socket_t},Ptr{UInt8},Cint,Ptr{timeval}),self,host,port,timeout)
end

function amqp_socket_get_sockfd(self::Ptr{amqp_socket_t})
    ccall((:amqp_socket_get_sockfd,librabbitmq),Cint,(Ptr{amqp_socket_t},),self)
end

function amqp_get_socket(state::amqp_connection_state_t)
    ccall((:amqp_get_socket,librabbitmq),Ptr{amqp_socket_t},(amqp_connection_state_t,),state)
end

function amqp_get_server_properties(state::amqp_connection_state_t)
    ccall((:amqp_get_server_properties,librabbitmq),Ptr{amqp_table_t},(amqp_connection_state_t,),state)
end

function amqp_tcp_socket_new(state::amqp_connection_state_t)
    ccall((:amqp_tcp_socket_new,librabbitmq),Ptr{amqp_socket_t},(amqp_connection_state_t,),state)
end

function amqp_tcp_socket_set_sockfd(self::Ptr{amqp_socket_t},sockfd::Cint)
    ccall((:amqp_tcp_socket_set_sockfd,librabbitmq),Void,(Ptr{amqp_socket_t},Cint),self,sockfd)
end
