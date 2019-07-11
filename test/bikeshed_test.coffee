chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'
co     = require('co')
Helper = require('hubot-test-helper')
helper = new Helper('../src/bikeshed.coffee')

expect = chai.expect

describe 'bikeshed', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
    @room = helper.createRoom()
    require('../src/bikeshed')(@robot)

  afterEach ->
    @room.destroy()

  context 'registration', ->
    it 'registers a hear listener', ->
      expect(@robot.hear).to.have.been.calledWith(/What is bikeshedding\?/i)
  context 'response', ->
    beforeEach ->
      co =>
        yield @room.user.say 'alice', '@hubot bikeshedding'
        yield new Promise((resolve, reject) ->
            setTimeout(resolve, 1500);
        )
    it 'should contain a hexcode', ->
      expect(@room.messages[1][1]).to.contain('I suggest we should use #')
