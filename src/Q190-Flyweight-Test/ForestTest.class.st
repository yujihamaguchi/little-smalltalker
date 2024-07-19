Class {
	#name : 'ForestTest',
	#superclass : 'TestCase',
	#category : 'Q190-Flyweight-Test',
	#package : 'Q190-Flyweight-Test'
}

{ #category : 'tests' }
ForestTest >> testPlantTree [
| x y name color texture treeType tree forest trees |
"Arrange"
forest := Forest new.
trees := Mock new.
forest stub trees willReturn: trees.

x := Mock new.
y := Mock new.
name := Mock new.
color := Mock new.
texture := Mock new.

treeType := Mock new.
(TreeFactory stub treeTypeWithName: name color: color texture: texture) willReturn: treeType. 

tree := Mock new.
(Tree stub atX: x atY: y type: treeType) willReturn: tree.

trees stub add: tree willReturnYourself.

"Act"
forest plantTreeAtX: x atY: y name: name color: color texture: texture.

"Assert"
TreeFactory treeTypeWithName: name color: color texture: texture.
Tree should receive atX: x atY: y type: treeType.
forest should receive trees.
trees should receive add: tree.
]
