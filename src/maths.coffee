'use strict'
THREE = require 'three' #TODO: fix three-math requiring

###*
  *All classes , functions etc defined here are simple wrappers, to make "logical" namespacing
  *easier (ie Maths.Vector2 instead of THREE.Vector2), and to add a level of indirection between api and implementation:
  ie we can decouple changes in the THREE.js api from our own
  * 
###

###* 
* 3d vector class: simple wrapper around THREE.Vector3 + some additional params parsing helpers
###

class Vector3 extends THREE.Vector3
  clone:->
    return new Vector3( this.x, this.y, this.z )

class Vector2 extends THREE.Vector2
  clone:->
    return new Vector2( this.x, this.y )

#lines, curves  
class Line3 extends THREE.Line3
  clone:->
    return new Line3().copy( this )

class Spline extends THREE.Spline
  clone:->
    return new Spline( this.points )

class SplineCurve3 extends THREE.SplineCurve3
  clone:->
    return new SplineCurve3( this.points )

class ArcCurve extends THREE.ArcCurve

#TODO: unify bezier curve types under common api
class CubicBezierCurve3 extends THREE.CubicBezierCurve3

class QuadraticBezierCurve3 extends THREE.QuadraticBezierCurve3



module.exports = 
  Vector2: Vector2
  Vector3: Vector3
  Spline : Spline
  Spline3: SplineCurve3
  ArcCurve: ArcCurve
  Euler  : THREE.Euler
  CubicBezierCurve3: CubicBezierCurve3
  QuadraticBezierCurve3: QuadraticBezierCurve3
