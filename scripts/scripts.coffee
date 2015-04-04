dom = React.DOM

Thingy = React.createClass
  render: ->
    dom.p {}, 'Hello World!'


React.render(React.createElement(Thingy, 
  {}), document.getElementById('my-application'))

