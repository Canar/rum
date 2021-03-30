#!/usr/bin/env ruby
require 'ffi'

module Pulse
  extend FFI::Library
  ffi_lib 'pulse-simple'
  class IntPtr < FFI::Struct
    layout  :value, :int
  end
  class PulseSampleSpec < FFI::Struct
    layout  :format,  :int,
      :rate,  :uint32,
      :channels,  :uint8
  end
  attach_function :simple_new, :pa_simple_new, [
    :string,:string,:int,
    :string,:string,PulseSampleSpec,
    :pointer,:pointer,:pointer], :pointer
    #attach_function :simple_new, :pa_simple_new, [:string,:string,:stream_direction,:string,:string,PulseSampleSpec.by_ref,:int,:int,:int], :pointer
  attach_function :simple_get_latency, :pa_simple_get_latency, [:pointer,:int], :uint64
  attach_function :simple_write, :pa_simple_write, [:pointer,:strptr,:uint64,IntPtr], :int
  attach_function :simple_free, :pa_simple_free, [:pointer], :void
  #attach_function :simple_write, :pa_simple_write, [:pointer,:pointer,:uint64,IntPtr], :int
end
