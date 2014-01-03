'use strict'
maths = require '../src/maths'
#TODO: come up with better way to test all the wrappers ?

describe "Maths", ->
  
  it 'all Maths classes can be instanciated correctly', ->
    Vector2 = maths.Vector2
    v2 = new Vector2()
    expect(v2).not.toEqual(null)

    Vector3 = maths.Vector3
    v3 = new Vector3()
    expect(v3).not.toEqual(null)

    Spline = maths.Spline
    s = new Spline()
    expect(s).not.toEqual(null)

    Spline3 = maths.Spline3
    s  = new Spline3()
    expect(s).not.toEqual(null)

    ArcCurve = maths.ArcCurve
    s  = new ArcCurve()
    expect(s).not.toEqual(null)

    Euler = maths.Euler
    s  = new Euler()
    expect(s).not.toEqual(null)

    CubicBezierCurve3 = maths.CubicBezierCurve3
    s  = new CubicBezierCurve3()
    expect(s).not.toEqual(null)

    QuadraticBezierCurve3 = maths.QuadraticBezierCurve3
    s  = new QuadraticBezierCurve3()
    expect(s).not.toEqual(null)

    
