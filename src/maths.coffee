'use strict'
THREE = require 'three' #TODO: fix three-math requiring

###*
  *All classes , functions etc defined here are simple wrappers, to make "logical" namespacing
  *easier (ie Maths.Vector2 instead of THREE.Vector2), and to add a level of indirection between api and implementation
  * 
###

###* 
* 3d vector class: simple wrapper around THREE.Vector3 + some additional params parsing helpers
###

class Vector3 extends THREE.Vector3
  constructor:( options )->
    super(options)

class Vector2 extends THREE.Vector2
  constructor:( options )->
    super(options)

#lines, curves  
class SplineCurve3 extends THREE.SplineCurve3
  
class Spline extends THREE.Spline
  constructor:( options )->
    super(options)

class ArcCurve extends THREE.ArcCurve

#TODO: unify bezier curve types under common api
class CubicBezierCurve3 extends THREE.CubicBezierCurve3

class QuadraticBezierCurve3 extends THREE.QuadraticBezierCurve3

#other


module.exports = 
  Vector2: Vector2
  Vector3: Vector3
  Spline : Spline
  Spline3: SplineCurve3
  ArcCurve: ArcCurve
  Euler  : THREE.Euler
  CubicBezierCurve3: CubicBezierCurve3
  QuadraticBezierCurve3: QuadraticBezierCurve3
