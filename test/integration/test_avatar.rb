require_relative '../test_helper'
require_relative 'externals'
  include Externals

    @dojo = Dojo.new(root_path,externals)
  #- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    avatar = kata.start_avatar
    visible_files = avatar.tags[0].visible_files
    before = avatar.tags[1].visible_files
    after = avatar.tags[2].visible_files
    avatar = kata.start_avatar
    visible_files = avatar.tags[0].visible_files
    traffic_lights = avatar.lights.each.entries
    actual = avatar.tags[1].diff(2)
    avatar = kata.start_avatar
    visible_files = avatar.tags[0].visible_files


    actual = avatar.tags[0].diff(1)
    avatar = kata.start_avatar
    visible_files = avatar.tags[0].visible_files
    actual = avatar.tags[1].diff(2)
    visible_files = avatar.tags[0].visible_files


    assert_equal output, avatar.tags[1].output