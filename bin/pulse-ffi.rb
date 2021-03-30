#!/usr/bin/env ruby
require 'ffi'

module Pulse
  extend FFI::Library
  ffi_lib 'pulse-simple'
  enum :stream_direction, [
    :nodirection,
    :playback,
    :record,
    :upload
  ]
  enum :sample_format, [
    :u8,
    :alaw,
    :ulaw,
    :s16le,
    :s16be,
    :f32le,
    :f32be,
    :s32le,
    :s32be,
    :s24le,
    :s24be,
    :s2432le,
    :s2432be,
    :max,
    -1,:invalid
  ]
  enum :channel_position, [
    -1,:invalid,
    0,:mono,
    :fl,:fr,:fc,
    :rl,:rr,:rc,
    :lfe,:fcl,:fcr,
    :sl,:sr,
    :a0,:a1,:a2,:a3,:a4,:a5,:a6,:a7,:a8,:a9,
    :a10,:a11,:a12,:a13,:a14,:a15,:a16,:a17,:a18,:a19,
    :a20,:a21,:a22,:a23,:a24,:a25,:a26,:a27,:a28,:a29,
    :a30,:a31,:a32,
    :tc,:tfl,:tfr,:tfc,:trl,:trr,:trc,
    :max
  ]
  class PulseSampleSpec < FFI::Struct
    pack 1
    layout  :format,  :int,
      :rate,  :uint32,
      :channels,  :uint8
  end
  #sample_spec, channel_map, buffer_attr
  class PulseSimple < FFI::Struct
    layout :server, :string,
      :name,  :string,
      :dir, :stream_direction,
      :dev, :string,
      :stream_name, :string,
      :ss,  PulseSampleSpec,
      :map, :int,
      #:map, :channel_map,
      :attr,  :int,
      #:attr,  :buffer_attr,
      :error, :int
  end
    attach_function :simple_new, :pa_simple_new, [:string,:string,:int,:int,:string,PulseSampleSpec,:int,:int,:int], :pointer
    #attach_function :simple_new, :pa_simple_new, [:string,:string,:stream_direction,:string,:string,PulseSampleSpec.by_ref,:int,:int,:int], :pointer
  attach_function :simple_get_latency, :pa_simple_get_latency, [:pointer,:int], :uint64
end
ps=Pulse::PulseSampleSpec.new
ps[:format]=5
ps[:rate]=44100
ps[:channels]=2

p=Pulse.simple_new(nil,'pulse-ffi',1,0,'music',ps,0,0,0)
# puts Pulse.simple_get_latency(p,0)
