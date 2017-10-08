# Import file "BBM"
sketch = Framer.Importer.load("imported/BBM@2x", scale: 1)

document.body.style.cursor = "auto"
InputModule = require "input"

qInput = new InputModule.Input
  placeholder: "Qty"
  parent: sketch.Card_1.children[0].children[1]
  x: sketch.Card_1.children[0].children[1].children[0].x + 2
  y: sketch.Card_1.children[0].children[1].children[0].y - 10
  width: 50
  height: 33
  textColor: "#333333"
  fontFamily: "SF UI Text"
  fontWeight: "300"
  placeholderColor: "#B7B7B7"
  fontSize: 13
  virtualKeyboard: false
  padding: 10

# Input link
sketch.Card_1.children[0].children[1].opacity = 0
sketch.Card_1.children[0].children[1].visible = false

sketch.Card_1.children[0].children[0].children[1].onMouseOver ->
	document.body.style.cursor = "pointer"
	
sketch.Card_1.children[0].children[0].children[1].onMouseOut ->
	document.body.style.cursor = "auto"
	
sketch.Card_1.children[0].children[1].children[1].onMouseOver ->
	document.body.style.cursor = "pointer"
	
sketch.Card_1.children[0].children[1].children[1].onMouseOut ->
	document.body.style.cursor = "auto"
	
sketch.Card_1.children[0].children[0].children[1].onClick ->
	sketch.Card_1.children[0].children[1].opacity = 1
	sketch.Card_1.children[0].children[1].visible = true
	sketch.Card_1.children[0].children[0].opacity = 0
	sketch.Card_1.children[0].children[0].visible = false
	qInput.focus()

sketch.Card_1.children[0].children[1].children[1].onClick ->
	sketch.Card_1.children[0].children[1].opacity = 0
	sketch.Card_1.children[0].children[1].visible = false
	sketch.Card_1.children[0].children[0].opacity = 1
	sketch.Card_1.children[0].children[0].visible = true

qInput2 = new InputModule.Input
  placeholder: "Qty"
  text: "5"
  parent: sketch.Card_2.children[0].children[0].children[0]
  x: sketch.Card_2.children[0].children[0].children[0].x + 1
  y: sketch.Card_2.children[0].children[0].children[0].y - 3
  width: 50
  height: 10
  textColor: "#333333"
  fontFamily: "SF UI Text"
  fontWeight: "300"
  placeholderColor: "#B7B7B7"
  fontSize: 13
  virtualKeyboard: false
  padding: 10

# Plus and Minus
sketch.Card_3.children[0].children[2].children[2].onMouseOver ->
	document.body.style.cursor = "pointer"
	
sketch.Card_3.children[0].children[2].children[2].onMouseOut ->
	document.body.style.cursor = "auto"
	
sketch.Card_3.children[0].children[2].children[1].onMouseOver ->
	document.body.style.cursor = "pointer"
	
sketch.Card_3.children[0].children[2].children[1].onMouseOut ->
	document.body.style.cursor = "auto"

qInput3 = new InputModule.Input
  text: "5"
  parent: sketch.Card_3.children[0].children[2]
  x: sketch.Card_3.children[0].children[2].children[0].x + 3
  y: sketch.Card_3.children[0].children[2].children[0].y - 3.6
  width: 20
  height: 10
  textColor: "#333333"
  fontFamily: "SF UI Text"
  fontWeight: "300"
  fontSize: 13
  virtualKeyboard: false
  padding: 10

sketch.Card_3.children[0].children[2].children[1].onClick ->
	qInput3.value = parseInt(qInput3.value) + 1

sketch.Card_3.children[0].children[2].children[2].onClick ->
	qInput3.value = parseInt(qInput3.value) - 1