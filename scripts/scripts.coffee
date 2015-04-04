dom = React.DOM

Message = React.createClass
  render: ->
    dom.p {}, "Hello, #{@props.name}!"

Input = React.createClass
  render: ->
    dom.input {type: 'text', onChange: @props.updateName}

Greeter = React.createClass
  defaultName: 'Nobody'
  getInitialState: -> {name: @defaultName}
  doNameUpdate: (event) -> 
    if (event.target.value == '')
      @setState(name: @defaultName)
    else
      @setState(name: event.target.value)
  render: ->
    dom.div {}, 
      React.createElement(Message, {name: @state.name}),
      React.createElement(Input, {updateName: @doNameUpdate})


React.render(React.createElement(Greeter, 
  {}), document.getElementById('my-application'))

