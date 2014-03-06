chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'bikeshed', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/bikeshed')(@robot)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(/What is bikeshedding?/)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(/bikeshed/)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWith(/bikeshedding/)
