%%% ----------------------------------------------------------------------------------------- %%%
%%% @doc Decrypt error code recived from Modbus TCP devices                                   %%%
%%% @end                                                                                      %%%
%%% ----------------------------------------------------------------------------------------- %%%

-module(decryption_error_code).

-export([decrypt/1]).


decrypt(16#01) ->
    error_logger:error_msg("Error code: the accepted function code cannot be processed.");

decrypt(16#02) ->
    error_logger:error_msg("Error code: the data address specified in the requestis not available.");

decrypt(16#03) ->
    error_logger:error_msg("Error code: the value contained in the request data field is not a valid value.");

decrypt(16#04) ->
    error_logger:error_msg("Error code: an unrecoverable error occurred while theslave was attempting to perform the requested action.");

decrypt(16#05) ->
    error_logger:error_msg("Error code: the slave device has accepted the requestand is processing it, but this is time consuming.");

decrypt(16#06) ->
    error_logger:error_msg("Error code: the slave is busy processing the command.");

decrypt(16#07) ->
    error_logger:error_msg("Error code: the slave cannot perform the software function specified in the request.");

decrypt(16#08) ->
    error_logger:error_msg("Error code: the gateway is configured incorrectly or is overloaded with requests.");

decrypt(16#0A) ->
    error_logger:error_msg("Error code: the gateway is configured incorrectly or is overloaded with requests.");

decrypt(16#0B) ->
    error_logger:error_msg("Error code: the device slave is offline or there is no response from it.");

decrypt(Err) ->
    error_logger:error_msg("Error code: ~w", Err).

