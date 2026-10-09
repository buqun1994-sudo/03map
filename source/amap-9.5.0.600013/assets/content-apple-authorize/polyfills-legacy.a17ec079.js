(function () {
  if (typeof crypto === "undefined" || typeof crypto.randomUUID === "function" || typeof crypto.getRandomValues !== "function") return;
  crypto.randomUUID = function () {
    var bytes = new Uint8Array(16);
    crypto.getRandomValues(bytes);
    bytes[6] = (bytes[6] & 15) | 64;
    bytes[8] = (bytes[8] & 63) | 128;
    var hex = [];
    for (var index = 0; index < bytes.length; index++) hex.push((bytes[index] + 256).toString(16).slice(1));
    return hex.slice(0, 4).join("") + "-" + hex.slice(4, 6).join("") + "-" + hex.slice(6, 8).join("") + "-" + hex.slice(8, 10).join("") + "-" + hex.slice(10, 16).join("");
  };
})();
// Public widget code calls Object.fromEntries; Chrome 66 has iterators but not this API.
// Preserve a native implementation and DefineProperty so __proto__ remains an ordinary own key.
(function () {
  if (typeof Object.fromEntries === "function") return;
  Object.defineProperty(Object, "fromEntries", {
    configurable: true,
    writable: true,
    value: function (entries) {
      var result = {};
      for (var entry of entries) {
        if (entry === null || (typeof entry !== "object" && typeof entry !== "function")) {
          throw new TypeError("Object.fromEntries requires entry objects");
        }
        Object.defineProperty(result, entry[0], {
          value: entry[1], writable: true, enumerable: true, configurable: true
        });
      }
      return result;
    }
  });
})();

!(function() {
  "use strict";
  var t = "undefined" != typeof globalThis ? globalThis : "undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : {}, e = function(t2) {
    return t2 && t2.Math == Math && t2;
  }, r = e("object" == typeof globalThis && globalThis) || e("object" == typeof window && window) || e("object" == typeof self && self) || e("object" == typeof t && t) || /* @__PURE__ */ (function() {
    return this;
  })() || Function("return this")(), n = {}, o = function(t2) {
    try {
      return !!t2();
    } catch (e2) {
      return true;
    }
  }, i = !o((function() {
    return 7 != Object.defineProperty({}, 1, { get: function() {
      return 7;
    } })[1];
  })), c = !o((function() {
    var t2 = function() {
    }.bind();
    return "function" != typeof t2 || t2.hasOwnProperty("prototype");
  })), u = c, a = Function.prototype.call, f = u ? a.bind(a) : function() {
    return a.apply(a, arguments);
  }, s = {}, l = {}.propertyIsEnumerable, p = Object.getOwnPropertyDescriptor, v = p && !l.call({ 1: 2 }, 1);
  s.f = v ? function(t2) {
    var e2 = p(this, t2);
    return !!e2 && e2.enumerable;
  } : l;
  var h, d, y = function(t2, e2) {
    return { enumerable: !(1 & t2), configurable: !(2 & t2), writable: !(4 & t2), value: e2 };
  }, m = c, g = Function.prototype, b = g.call, w = m && g.bind.bind(b, b), O = m ? w : function(t2) {
    return function() {
      return b.apply(t2, arguments);
    };
  }, j = O, S = j({}.toString), E = j("".slice), P = function(t2) {
    return E(S(t2), 8, -1);
  }, T = P, x = O, I = function(t2) {
    if ("Function" === T(t2)) return x(t2);
  }, R = o, C = P, _ = Object, A = I("".split), M = R((function() {
    return !_("z").propertyIsEnumerable(0);
  })) ? function(t2) {
    return "String" == C(t2) ? A(t2, "") : _(t2);
  } : _, L = function(t2) {
    return null == t2;
  }, k = L, F = TypeError, N = function(t2) {
    if (k(t2)) throw F("Can't call method on " + t2);
    return t2;
  }, D = M, U = N, G = function(t2) {
    return D(U(t2));
  }, W = "object" == typeof document && document.all, z = { all: W, IS_HTMLDDA: void 0 === W && void 0 !== W }, B = z.all, q = z.IS_HTMLDDA ? function(t2) {
    return "function" == typeof t2 || t2 === B;
  } : function(t2) {
    return "function" == typeof t2;
  }, H = q, J = z.all, V = z.IS_HTMLDDA ? function(t2) {
    return "object" == typeof t2 ? null !== t2 : H(t2) || t2 === J;
  } : function(t2) {
    return "object" == typeof t2 ? null !== t2 : H(t2);
  }, Y = r, K = q, X = function(t2) {
    return K(t2) ? t2 : void 0;
  }, $ = function(t2, e2) {
    return arguments.length < 2 ? X(Y[t2]) : Y[t2] && Y[t2][e2];
  }, Q = I({}.isPrototypeOf), Z = $("navigator", "userAgent") || "", tt = r, et = Z, rt = tt.process, nt = tt.Deno, ot = rt && rt.versions || nt && nt.version, it = ot && ot.v8;
  it && (d = (h = it.split("."))[0] > 0 && h[0] < 4 ? 1 : +(h[0] + h[1])), !d && et && (!(h = et.match(/Edge\/(\d+)/)) || h[1] >= 74) && (h = et.match(/Chrome\/(\d+)/)) && (d = +h[1]);
  var ct = d, ut = ct, at = o, ft = !!Object.getOwnPropertySymbols && !at((function() {
    var t2 = Symbol();
    return !String(t2) || !(Object(t2) instanceof Symbol) || !Symbol.sham && ut && ut < 41;
  })), st = ft && !Symbol.sham && "symbol" == typeof Symbol.iterator, lt = $, pt = q, vt = Q, ht = Object, dt = st ? function(t2) {
    return "symbol" == typeof t2;
  } : function(t2) {
    var e2 = lt("Symbol");
    return pt(e2) && vt(e2.prototype, ht(t2));
  }, yt = String, mt = function(t2) {
    try {
      return yt(t2);
    } catch (e2) {
      return "Object";
    }
  }, gt = q, bt = mt, wt = TypeError, Ot = function(t2) {
    if (gt(t2)) return t2;
    throw wt(bt(t2) + " is not a function");
  }, jt = Ot, St = L, Et = function(t2, e2) {
    var r2 = t2[e2];
    return St(r2) ? void 0 : jt(r2);
  }, Pt = f, Tt = q, xt = V, It = TypeError, Rt = { exports: {} }, Ct = r, _t = Object.defineProperty, At = function(t2, e2) {
    try {
      _t(Ct, t2, { value: e2, configurable: true, writable: true });
    } catch (r2) {
      Ct[t2] = e2;
    }
    return e2;
  }, Mt = At, Lt = "__core-js_shared__", kt = r[Lt] || Mt(Lt, {}), Ft = kt;
  (Rt.exports = function(t2, e2) {
    return Ft[t2] || (Ft[t2] = void 0 !== e2 ? e2 : {});
  })("versions", []).push({ version: "3.26.0", mode: "global", copyright: "© 2014-2022 Denis Pushkarev (zloirock.ru)", license: "https://github.com/zloirock/core-js/blob/v3.26.0/LICENSE", source: "https://github.com/zloirock/core-js" });
  var Nt = N, Dt = Object, Ut = function(t2) {
    return Dt(Nt(t2));
  }, Gt = Ut, Wt = I({}.hasOwnProperty), zt = Object.hasOwn || function(t2, e2) {
    return Wt(Gt(t2), e2);
  }, Bt = I, qt = 0, Ht = Math.random(), Jt = Bt(1 .toString), Vt = function(t2) {
    return "Symbol(" + (void 0 === t2 ? "" : t2) + ")_" + Jt(++qt + Ht, 36);
  }, Yt = r, Kt = Rt.exports, Xt = zt, $t = Vt, Qt = ft, Zt = st, te = Kt("wks"), ee = Yt.Symbol, re = ee && ee.for, ne = Zt ? ee : ee && ee.withoutSetter || $t, oe = function(t2) {
    if (!Xt(te, t2) || !Qt && "string" != typeof te[t2]) {
      var e2 = "Symbol." + t2;
      Qt && Xt(ee, t2) ? te[t2] = ee[t2] : te[t2] = Zt && re ? re(e2) : ne(e2);
    }
    return te[t2];
  }, ie = f, ce = V, ue = dt, ae = Et, fe = function(t2, e2) {
    var r2, n2;
    if ("string" === e2 && Tt(r2 = t2.toString) && !xt(n2 = Pt(r2, t2))) return n2;
    if (Tt(r2 = t2.valueOf) && !xt(n2 = Pt(r2, t2))) return n2;
    if ("string" !== e2 && Tt(r2 = t2.toString) && !xt(n2 = Pt(r2, t2))) return n2;
    throw It("Can't convert object to primitive value");
  }, se = TypeError, le = oe("toPrimitive"), pe = function(t2, e2) {
    if (!ce(t2) || ue(t2)) return t2;
    var r2, n2 = ae(t2, le);
    if (n2) {
      if (void 0 === e2 && (e2 = "default"), r2 = ie(n2, t2, e2), !ce(r2) || ue(r2)) return r2;
      throw se("Can't convert object to primitive value");
    }
    return void 0 === e2 && (e2 = "number"), fe(t2, e2);
  }, ve = dt, he = function(t2) {
    var e2 = pe(t2, "string");
    return ve(e2) ? e2 : e2 + "";
  }, de = V, ye = r.document, me = de(ye) && de(ye.createElement), ge = function(t2) {
    return me ? ye.createElement(t2) : {};
  }, be = ge, we = !i && !o((function() {
    return 7 != Object.defineProperty(be("div"), "a", { get: function() {
      return 7;
    } }).a;
  })), Oe = i, je = f, Se = s, Ee = y, Pe = G, Te = he, xe = zt, Ie = we, Re = Object.getOwnPropertyDescriptor;
  n.f = Oe ? Re : function(t2, e2) {
    if (t2 = Pe(t2), e2 = Te(e2), Ie) try {
      return Re(t2, e2);
    } catch (r2) {
    }
    if (xe(t2, e2)) return Ee(!je(Se.f, t2, e2), t2[e2]);
  };
  var Ce = {}, _e = i && o((function() {
    return 42 != Object.defineProperty((function() {
    }), "prototype", { value: 42, writable: false }).prototype;
  })), Ae = V, Me = String, Le = TypeError, ke = function(t2) {
    if (Ae(t2)) return t2;
    throw Le(Me(t2) + " is not an object");
  }, Fe = i, Ne = we, De = _e, Ue = ke, Ge = he, We = TypeError, ze = Object.defineProperty, Be = Object.getOwnPropertyDescriptor, qe = "enumerable", He = "configurable", Je = "writable";
  Ce.f = Fe ? De ? function(t2, e2, r2) {
    if (Ue(t2), e2 = Ge(e2), Ue(r2), "function" == typeof t2 && "prototype" === e2 && "value" in r2 && Je in r2 && !r2.writable) {
      var n2 = Be(t2, e2);
      n2 && n2.writable && (t2[e2] = r2.value, r2 = { configurable: He in r2 ? r2.configurable : n2.configurable, enumerable: qe in r2 ? r2.enumerable : n2.enumerable, writable: false });
    }
    return ze(t2, e2, r2);
  } : ze : function(t2, e2, r2) {
    if (Ue(t2), e2 = Ge(e2), Ue(r2), Ne) try {
      return ze(t2, e2, r2);
    } catch (n2) {
    }
    if ("get" in r2 || "set" in r2) throw We("Accessors not supported");
    return "value" in r2 && (t2[e2] = r2.value), t2;
  };
  var Ve = Ce, Ye = y, Ke = i ? function(t2, e2, r2) {
    return Ve.f(t2, e2, Ye(1, r2));
  } : function(t2, e2, r2) {
    return t2[e2] = r2, t2;
  }, Xe = { exports: {} }, $e = i, Qe = zt, Ze = Function.prototype, tr = $e && Object.getOwnPropertyDescriptor, er = Qe(Ze, "name"), rr = { EXISTS: er, PROPER: er && "something" === function() {
  }.name, CONFIGURABLE: er && (!$e || $e && tr(Ze, "name").configurable) }, nr = q, or = kt, ir = I(Function.toString);
  nr(or.inspectSource) || (or.inspectSource = function(t2) {
    return ir(t2);
  });
  var cr, ur, ar, fr = or.inspectSource, sr = q, lr = r.WeakMap, pr = sr(lr) && /native code/.test(String(lr)), vr = Rt.exports, hr = Vt, dr = vr("keys"), yr = function(t2) {
    return dr[t2] || (dr[t2] = hr(t2));
  }, mr = {}, gr = pr, br = r, wr = V, Or = Ke, jr = zt, Sr = kt, Er = yr, Pr = mr, Tr = "Object already initialized", xr = br.TypeError, Ir = br.WeakMap;
  if (gr || Sr.state) {
    var Rr = Sr.state || (Sr.state = new Ir());
    Rr.get = Rr.get, Rr.has = Rr.has, Rr.set = Rr.set, cr = function(t2, e2) {
      if (Rr.has(t2)) throw xr(Tr);
      return e2.facade = t2, Rr.set(t2, e2), e2;
    }, ur = function(t2) {
      return Rr.get(t2) || {};
    }, ar = function(t2) {
      return Rr.has(t2);
    };
  } else {
    var Cr = Er("state");
    Pr[Cr] = true, cr = function(t2, e2) {
      if (jr(t2, Cr)) throw xr(Tr);
      return e2.facade = t2, Or(t2, Cr, e2), e2;
    }, ur = function(t2) {
      return jr(t2, Cr) ? t2[Cr] : {};
    }, ar = function(t2) {
      return jr(t2, Cr);
    };
  }
  var _r = { set: cr, get: ur, has: ar, enforce: function(t2) {
    return ar(t2) ? ur(t2) : cr(t2, {});
  }, getterFor: function(t2) {
    return function(e2) {
      var r2;
      if (!wr(e2) || (r2 = ur(e2)).type !== t2) throw xr("Incompatible receiver, " + t2 + " required");
      return r2;
    };
  } }, Ar = o, Mr = q, Lr = zt, kr = i, Fr = rr.CONFIGURABLE, Nr = fr, Dr = _r.enforce, Ur = _r.get, Gr = Object.defineProperty, Wr = kr && !Ar((function() {
    return 8 !== Gr((function() {
    }), "length", { value: 8 }).length;
  })), zr = String(String).split("String"), Br = Xe.exports = function(t2, e2, r2) {
    "Symbol(" === String(e2).slice(0, 7) && (e2 = "[" + String(e2).replace(/^Symbol\(([^)]*)\)/, "$1") + "]"), r2 && r2.getter && (e2 = "get " + e2), r2 && r2.setter && (e2 = "set " + e2), (!Lr(t2, "name") || Fr && t2.name !== e2) && (kr ? Gr(t2, "name", { value: e2, configurable: true }) : t2.name = e2), Wr && r2 && Lr(r2, "arity") && t2.length !== r2.arity && Gr(t2, "length", { value: r2.arity });
    try {
      r2 && Lr(r2, "constructor") && r2.constructor ? kr && Gr(t2, "prototype", { writable: false }) : t2.prototype && (t2.prototype = void 0);
    } catch (o2) {
    }
    var n2 = Dr(t2);
    return Lr(n2, "source") || (n2.source = zr.join("string" == typeof e2 ? e2 : "")), t2;
  };
  Function.prototype.toString = Br((function() {
    return Mr(this) && Ur(this).source || Nr(this);
  }), "toString");
  var qr = q, Hr = Ce, Jr = Xe.exports, Vr = At, Yr = function(t2, e2, r2, n2) {
    n2 || (n2 = {});
    var o2 = n2.enumerable, i2 = void 0 !== n2.name ? n2.name : e2;
    if (qr(r2) && Jr(r2, i2, n2), n2.global) o2 ? t2[e2] = r2 : Vr(e2, r2);
    else {
      try {
        n2.unsafe ? t2[e2] && (o2 = true) : delete t2[e2];
      } catch (c2) {
      }
      o2 ? t2[e2] = r2 : Hr.f(t2, e2, { value: r2, enumerable: false, configurable: !n2.nonConfigurable, writable: !n2.nonWritable });
    }
    return t2;
  }, Kr = {}, Xr = Math.ceil, $r = Math.floor, Qr = Math.trunc || function(t2) {
    var e2 = +t2;
    return (e2 > 0 ? $r : Xr)(e2);
  }, Zr = function(t2) {
    var e2 = +t2;
    return e2 != e2 || 0 === e2 ? 0 : Qr(e2);
  }, tn = Zr, en = Math.max, rn = Math.min, nn = Zr, on = Math.min, cn = function(t2) {
    return t2 > 0 ? on(nn(t2), 9007199254740991) : 0;
  }, un = function(t2) {
    return cn(t2.length);
  }, an = G, fn = function(t2, e2) {
    var r2 = tn(t2);
    return r2 < 0 ? en(r2 + e2, 0) : rn(r2, e2);
  }, sn = un, ln = function(t2) {
    return function(e2, r2, n2) {
      var o2, i2 = an(e2), c2 = sn(i2), u2 = fn(n2, c2);
      if (t2 && r2 != r2) {
        for (; c2 > u2; ) if ((o2 = i2[u2++]) != o2) return true;
      } else for (; c2 > u2; u2++) if ((t2 || u2 in i2) && i2[u2] === r2) return t2 || u2 || 0;
      return !t2 && -1;
    };
  }, pn = { includes: ln(true), indexOf: ln(false) }, vn = zt, hn = G, dn = pn.indexOf, yn = mr, mn = I([].push), gn = function(t2, e2) {
    var r2, n2 = hn(t2), o2 = 0, i2 = [];
    for (r2 in n2) !vn(yn, r2) && vn(n2, r2) && mn(i2, r2);
    for (; e2.length > o2; ) vn(n2, r2 = e2[o2++]) && (~dn(i2, r2) || mn(i2, r2));
    return i2;
  }, bn = ["constructor", "hasOwnProperty", "isPrototypeOf", "propertyIsEnumerable", "toLocaleString", "toString", "valueOf"], wn = gn, On = bn.concat("length", "prototype");
  Kr.f = Object.getOwnPropertyNames || function(t2) {
    return wn(t2, On);
  };
  var jn = {};
  jn.f = Object.getOwnPropertySymbols;
  var Sn = $, En = Kr, Pn = jn, Tn = ke, xn = I([].concat), In = Sn("Reflect", "ownKeys") || function(t2) {
    var e2 = En.f(Tn(t2)), r2 = Pn.f;
    return r2 ? xn(e2, r2(t2)) : e2;
  }, Rn = zt, Cn = In, _n = n, An = Ce, Mn = o, Ln = q, kn = /#|\.prototype\./, Fn = function(t2, e2) {
    var r2 = Dn[Nn(t2)];
    return r2 == Gn || r2 != Un && (Ln(e2) ? Mn(e2) : !!e2);
  }, Nn = Fn.normalize = function(t2) {
    return String(t2).replace(kn, ".").toLowerCase();
  }, Dn = Fn.data = {}, Un = Fn.NATIVE = "N", Gn = Fn.POLYFILL = "P", Wn = Fn, zn = r, Bn = n.f, qn = Ke, Hn = Yr, Jn = At, Vn = function(t2, e2, r2) {
    for (var n2 = Cn(e2), o2 = An.f, i2 = _n.f, c2 = 0; c2 < n2.length; c2++) {
      var u2 = n2[c2];
      Rn(t2, u2) || r2 && Rn(r2, u2) || o2(t2, u2, i2(e2, u2));
    }
  }, Yn = Wn, Kn = function(t2, e2) {
    var r2, n2, o2, i2, c2, u2 = t2.target, a2 = t2.global, f2 = t2.stat;
    if (r2 = a2 ? zn : f2 ? zn[u2] || Jn(u2, {}) : (zn[u2] || {}).prototype) for (n2 in e2) {
      if (i2 = e2[n2], o2 = t2.dontCallGetSet ? (c2 = Bn(r2, n2)) && c2.value : r2[n2], !Yn(a2 ? n2 : u2 + (f2 ? "." : "#") + n2, t2.forced) && void 0 !== o2) {
        if (typeof i2 == typeof o2) continue;
        Vn(i2, o2);
      }
      (t2.sham || o2 && o2.sham) && qn(i2, "sham", true), Hn(r2, n2, i2, t2);
    }
  }, Xn = "process" == P(r.process), $n = q, Qn = String, Zn = TypeError, to = I, eo = ke, ro = function(t2) {
    if ("object" == typeof t2 || $n(t2)) return t2;
    throw Zn("Can't set " + Qn(t2) + " as a prototype");
  }, no = Object.setPrototypeOf || ("__proto__" in {} ? (function() {
    var t2, e2 = false, r2 = {};
    try {
      (t2 = to(Object.getOwnPropertyDescriptor(Object.prototype, "__proto__").set))(r2, []), e2 = r2 instanceof Array;
    } catch (n2) {
    }
    return function(r3, n2) {
      return eo(r3), ro(n2), e2 ? t2(r3, n2) : r3.__proto__ = n2, r3;
    };
  })() : void 0), oo = Ce.f, io = zt, co = oe("toStringTag"), uo = function(t2, e2, r2) {
    t2 && !r2 && (t2 = t2.prototype), t2 && !io(t2, co) && oo(t2, co, { configurable: true, value: e2 });
  }, ao = $, fo = Ce, so = i, lo = oe("species"), po = Q, vo = TypeError, ho = {};
  ho[oe("toStringTag")] = "z";
  var yo = "[object z]" === String(ho), mo = q, go = P, bo = oe("toStringTag"), wo = Object, Oo = "Arguments" == go(/* @__PURE__ */ (function() {
    return arguments;
  })()), jo = yo ? go : function(t2) {
    var e2, r2, n2;
    return void 0 === t2 ? "Undefined" : null === t2 ? "Null" : "string" == typeof (r2 = (function(t3, e3) {
      try {
        return t3[e3];
      } catch (r3) {
      }
    })(e2 = wo(t2), bo)) ? r2 : Oo ? go(e2) : "Object" == (n2 = go(e2)) && mo(e2.callee) ? "Arguments" : n2;
  }, So = I, Eo = o, Po = q, To = jo, xo = fr, Io = function() {
  }, Ro = [], Co = $("Reflect", "construct"), _o = /^\s*(?:class|function)\b/, Ao = So(_o.exec), Mo = !_o.exec(Io), Lo = function(t2) {
    if (!Po(t2)) return false;
    try {
      return Co(Io, Ro, t2), true;
    } catch (e2) {
      return false;
    }
  }, ko = function(t2) {
    if (!Po(t2)) return false;
    switch (To(t2)) {
      case "AsyncFunction":
      case "GeneratorFunction":
      case "AsyncGeneratorFunction":
        return false;
    }
    try {
      return Mo || !!Ao(_o, xo(t2));
    } catch (e2) {
      return true;
    }
  };
  ko.sham = true;
  var Fo, No, Do, Uo, Go = !Co || Eo((function() {
    var t2;
    return Lo(Lo.call) || !Lo(Object) || !Lo((function() {
      t2 = true;
    })) || t2;
  })) ? ko : Lo, Wo = Go, zo = mt, Bo = TypeError, qo = ke, Ho = function(t2) {
    if (Wo(t2)) return t2;
    throw Bo(zo(t2) + " is not a constructor");
  }, Jo = L, Vo = oe("species"), Yo = c, Ko = Function.prototype, Xo = Ko.apply, $o = Ko.call, Qo = "object" == typeof Reflect && Reflect.apply || (Yo ? $o.bind(Xo) : function() {
    return $o.apply(Xo, arguments);
  }), Zo = Ot, ti = c, ei = I(I.bind), ri = function(t2, e2) {
    return Zo(t2), void 0 === e2 ? t2 : ti ? ei(t2, e2) : function() {
      return t2.apply(e2, arguments);
    };
  }, ni = $("document", "documentElement"), oi = I([].slice), ii = TypeError, ci = /(?:ipad|iphone|ipod).*applewebkit/i.test(Z), ui = r, ai = Qo, fi = ri, si = q, li = zt, pi = o, vi = ni, hi = oi, di = ge, yi = function(t2, e2) {
    if (t2 < e2) throw ii("Not enough arguments");
    return t2;
  }, mi = ci, gi = Xn, bi = ui.setImmediate, wi = ui.clearImmediate, Oi = ui.process, ji = ui.Dispatch, Si = ui.Function, Ei = ui.MessageChannel, Pi = ui.String, Ti = 0, xi = {}, Ii = "onreadystatechange";
  try {
    Fo = ui.location;
  } catch (Ss) {
  }
  var Ri = function(t2) {
    if (li(xi, t2)) {
      var e2 = xi[t2];
      delete xi[t2], e2();
    }
  }, Ci = function(t2) {
    return function() {
      Ri(t2);
    };
  }, _i = function(t2) {
    Ri(t2.data);
  }, Ai = function(t2) {
    ui.postMessage(Pi(t2), Fo.protocol + "//" + Fo.host);
  };
  bi && wi || (bi = function(t2) {
    yi(arguments.length, 1);
    var e2 = si(t2) ? t2 : Si(t2), r2 = hi(arguments, 1);
    return xi[++Ti] = function() {
      ai(e2, void 0, r2);
    }, No(Ti), Ti;
  }, wi = function(t2) {
    delete xi[t2];
  }, gi ? No = function(t2) {
    Oi.nextTick(Ci(t2));
  } : ji && ji.now ? No = function(t2) {
    ji.now(Ci(t2));
  } : Ei && !mi ? (Uo = (Do = new Ei()).port2, Do.port1.onmessage = _i, No = fi(Uo.postMessage, Uo)) : ui.addEventListener && si(ui.postMessage) && !ui.importScripts && Fo && "file:" !== Fo.protocol && !pi(Ai) ? (No = Ai, ui.addEventListener("message", _i, false)) : No = Ii in di("script") ? function(t2) {
    vi.appendChild(di("script")).onreadystatechange = function() {
      vi.removeChild(this), Ri(t2);
    };
  } : function(t2) {
    setTimeout(Ci(t2), 0);
  });
  var Mi, Li, ki, Fi, Ni, Di, Ui, Gi, Wi = { set: bi, clear: wi }, zi = r, Bi = /ipad|iphone|ipod/i.test(Z) && void 0 !== zi.Pebble, qi = /web0s(?!.*chrome)/i.test(Z), Hi = r, Ji = ri, Vi = n.f, Yi = Wi.set, Ki = ci, Xi = Bi, $i = qi, Qi = Xn, Zi = Hi.MutationObserver || Hi.WebKitMutationObserver, tc = Hi.document, ec = Hi.process, rc = Hi.Promise, nc = Vi(Hi, "queueMicrotask"), oc = nc && nc.value;
  oc || (Mi = function() {
    var t2, e2;
    for (Qi && (t2 = ec.domain) && t2.exit(); Li; ) {
      e2 = Li.fn, Li = Li.next;
      try {
        e2();
      } catch (Ss) {
        throw Li ? Fi() : ki = void 0, Ss;
      }
    }
    ki = void 0, t2 && t2.enter();
  }, Ki || Qi || $i || !Zi || !tc ? !Xi && rc && rc.resolve ? ((Ui = rc.resolve(void 0)).constructor = rc, Gi = Ji(Ui.then, Ui), Fi = function() {
    Gi(Mi);
  }) : Qi ? Fi = function() {
    ec.nextTick(Mi);
  } : (Yi = Ji(Yi, Hi), Fi = function() {
    Yi(Mi);
  }) : (Ni = true, Di = tc.createTextNode(""), new Zi(Mi).observe(Di, { characterData: true }), Fi = function() {
    Di.data = Ni = !Ni;
  }));
  var ic = oc || function(t2) {
    var e2 = { fn: t2, next: void 0 };
    ki && (ki.next = e2), Li || (Li = e2, Fi()), ki = e2;
  }, cc = r, uc = function(t2) {
    try {
      return { error: false, value: t2() };
    } catch (Ss) {
      return { error: true, value: Ss };
    }
  }, ac = function() {
    this.head = null, this.tail = null;
  };
  ac.prototype = { add: function(t2) {
    var e2 = { item: t2, next: null };
    this.head ? this.tail.next = e2 : this.head = e2, this.tail = e2;
  }, get: function() {
    var t2 = this.head;
    if (t2) return this.head = t2.next, this.tail === t2 && (this.tail = null), t2.item;
  } };
  var fc = ac, sc = r.Promise, lc = "object" == typeof Deno && Deno && "object" == typeof Deno.version, pc = !lc && !Xn && "object" == typeof window && "object" == typeof document, vc = r, hc = sc, dc = q, yc = Wn, mc = fr, gc = oe, bc = pc, wc = lc, Oc = ct;
  hc && hc.prototype;
  var jc = gc("species"), Sc = false, Ec = dc(vc.PromiseRejectionEvent), Pc = yc("Promise", (function() {
    var t2 = mc(hc), e2 = t2 !== String(hc);
    if (!e2 && 66 === Oc) return true;
    if (!Oc || Oc < 51 || !/native code/.test(t2)) {
      var r2 = new hc((function(t3) {
        t3(1);
      })), n2 = function(t3) {
        t3((function() {
        }), (function() {
        }));
      };
      if ((r2.constructor = {})[jc] = n2, !(Sc = r2.then((function() {
      })) instanceof n2)) return true;
    }
    return !e2 && (bc || wc) && !Ec;
  })), Tc = { CONSTRUCTOR: Pc, REJECTION_EVENT: Ec, SUBCLASSING: Sc }, xc = {}, Ic = Ot, Rc = TypeError, Cc = function(t2) {
    var e2, r2;
    this.promise = new t2((function(t3, n2) {
      if (void 0 !== e2 || void 0 !== r2) throw Rc("Bad Promise constructor");
      e2 = t3, r2 = n2;
    })), this.resolve = Ic(e2), this.reject = Ic(r2);
  };
  xc.f = function(t2) {
    return new Cc(t2);
  };
  var _c, Ac, Mc, Lc = Kn, kc = Xn, Fc = r, Nc = f, Dc = Yr, Uc = no, Gc = uo, Wc = function(t2) {
    var e2 = ao(t2), r2 = fo.f;
    so && e2 && !e2[lo] && r2(e2, lo, { configurable: true, get: function() {
      return this;
    } });
  }, zc = Ot, Bc = q, qc = V, Hc = function(t2, e2) {
    if (po(e2, t2)) return t2;
    throw vo("Incorrect invocation");
  }, Jc = function(t2, e2) {
    var r2, n2 = qo(t2).constructor;
    return void 0 === n2 || Jo(r2 = qo(n2)[Vo]) ? e2 : Ho(r2);
  }, Vc = Wi.set, Yc = ic, Kc = function(t2, e2) {
    var r2 = cc.console;
    r2 && r2.error && (1 == arguments.length ? r2.error(t2) : r2.error(t2, e2));
  }, Xc = uc, $c = fc, Qc = _r, Zc = sc, tu = xc, eu = "Promise", ru = Tc.CONSTRUCTOR, nu = Tc.REJECTION_EVENT, ou = Tc.SUBCLASSING, iu = Qc.getterFor(eu), cu = Qc.set, uu = Zc && Zc.prototype, au = Zc, fu = uu, su = Fc.TypeError, lu = Fc.document, pu = Fc.process, vu = tu.f, hu = vu, du = !!(lu && lu.createEvent && Fc.dispatchEvent), yu = "unhandledrejection", mu = function(t2) {
    var e2;
    return !(!qc(t2) || !Bc(e2 = t2.then)) && e2;
  }, gu = function(t2, e2) {
    var r2, n2, o2, i2 = e2.value, c2 = 1 == e2.state, u2 = c2 ? t2.ok : t2.fail, a2 = t2.resolve, f2 = t2.reject, s2 = t2.domain;
    try {
      u2 ? (c2 || (2 === e2.rejection && Su(e2), e2.rejection = 1), true === u2 ? r2 = i2 : (s2 && s2.enter(), r2 = u2(i2), s2 && (s2.exit(), o2 = true)), r2 === t2.promise ? f2(su("Promise-chain cycle")) : (n2 = mu(r2)) ? Nc(n2, r2, a2, f2) : a2(r2)) : f2(i2);
    } catch (Ss) {
      s2 && !o2 && s2.exit(), f2(Ss);
    }
  }, bu = function(t2, e2) {
    t2.notified || (t2.notified = true, Yc((function() {
      for (var r2, n2 = t2.reactions; r2 = n2.get(); ) gu(r2, t2);
      t2.notified = false, e2 && !t2.rejection && Ou(t2);
    })));
  }, wu = function(t2, e2, r2) {
    var n2, o2;
    du ? ((n2 = lu.createEvent("Event")).promise = e2, n2.reason = r2, n2.initEvent(t2, false, true), Fc.dispatchEvent(n2)) : n2 = { promise: e2, reason: r2 }, !nu && (o2 = Fc["on" + t2]) ? o2(n2) : t2 === yu && Kc("Unhandled promise rejection", r2);
  }, Ou = function(t2) {
    Nc(Vc, Fc, (function() {
      var e2, r2 = t2.facade, n2 = t2.value;
      if (ju(t2) && (e2 = Xc((function() {
        kc ? pu.emit("unhandledRejection", n2, r2) : wu(yu, r2, n2);
      })), t2.rejection = kc || ju(t2) ? 2 : 1, e2.error)) throw e2.value;
    }));
  }, ju = function(t2) {
    return 1 !== t2.rejection && !t2.parent;
  }, Su = function(t2) {
    Nc(Vc, Fc, (function() {
      var e2 = t2.facade;
      kc ? pu.emit("rejectionHandled", e2) : wu("rejectionhandled", e2, t2.value);
    }));
  }, Eu = function(t2, e2, r2) {
    return function(n2) {
      t2(e2, n2, r2);
    };
  }, Pu = function(t2, e2, r2) {
    t2.done || (t2.done = true, r2 && (t2 = r2), t2.value = e2, t2.state = 2, bu(t2, true));
  }, Tu = function(t2, e2, r2) {
    if (!t2.done) {
      t2.done = true, r2 && (t2 = r2);
      try {
        if (t2.facade === e2) throw su("Promise can't be resolved itself");
        var n2 = mu(e2);
        n2 ? Yc((function() {
          var r3 = { done: false };
          try {
            Nc(n2, e2, Eu(Tu, r3, t2), Eu(Pu, r3, t2));
          } catch (Ss) {
            Pu(r3, Ss, t2);
          }
        })) : (t2.value = e2, t2.state = 1, bu(t2, false));
      } catch (Ss) {
        Pu({ done: false }, Ss, t2);
      }
    }
  };
  if (ru && (fu = (au = function(t2) {
    Hc(this, fu), zc(t2), Nc(_c, this);
    var e2 = iu(this);
    try {
      t2(Eu(Tu, e2), Eu(Pu, e2));
    } catch (Ss) {
      Pu(e2, Ss);
    }
  }).prototype, (_c = function(t2) {
    cu(this, { type: eu, done: false, notified: false, parent: false, reactions: new $c(), rejection: false, state: 0, value: void 0 });
  }).prototype = Dc(fu, "then", (function(t2, e2) {
    var r2 = iu(this), n2 = vu(Jc(this, au));
    return r2.parent = true, n2.ok = !Bc(t2) || t2, n2.fail = Bc(e2) && e2, n2.domain = kc ? pu.domain : void 0, 0 == r2.state ? r2.reactions.add(n2) : Yc((function() {
      gu(n2, r2);
    })), n2.promise;
  })), Ac = function() {
    var t2 = new _c(), e2 = iu(t2);
    this.promise = t2, this.resolve = Eu(Tu, e2), this.reject = Eu(Pu, e2);
  }, tu.f = vu = function(t2) {
    return t2 === au || void 0 === t2 ? new Ac(t2) : hu(t2);
  }, Bc(Zc) && uu !== Object.prototype)) {
    Mc = uu.then, ou || Dc(uu, "then", (function(t2, e2) {
      var r2 = this;
      return new au((function(t3, e3) {
        Nc(Mc, r2, t3, e3);
      })).then(t2, e2);
    }), { unsafe: true });
    try {
      delete uu.constructor;
    } catch (Ss) {
    }
    Uc && Uc(uu, fu);
  }
  Lc({ global: true, constructor: true, wrap: true, forced: ru }, { Promise: au }), Gc(au, eu, false), Wc(eu);
  var xu = {}, Iu = xu, Ru = oe("iterator"), Cu = Array.prototype, _u = jo, Au = Et, Mu = L, Lu = xu, ku = oe("iterator"), Fu = function(t2) {
    if (!Mu(t2)) return Au(t2, ku) || Au(t2, "@@iterator") || Lu[_u(t2)];
  }, Nu = f, Du = Ot, Uu = ke, Gu = mt, Wu = Fu, zu = TypeError, Bu = f, qu = ke, Hu = Et, Ju = ri, Vu = f, Yu = ke, Ku = mt, Xu = function(t2) {
    return void 0 !== t2 && (Iu.Array === t2 || Cu[Ru] === t2);
  }, $u = un, Qu = Q, Zu = function(t2, e2) {
    var r2 = arguments.length < 2 ? Wu(t2) : e2;
    if (Du(r2)) return Uu(Nu(r2, t2));
    throw zu(Gu(t2) + " is not iterable");
  }, ta = Fu, ea = function(t2, e2, r2) {
    var n2, o2;
    qu(t2);
    try {
      if (!(n2 = Hu(t2, "return"))) {
        if ("throw" === e2) throw r2;
        return r2;
      }
      n2 = Bu(n2, t2);
    } catch (Ss) {
      o2 = true, n2 = Ss;
    }
    if ("throw" === e2) throw r2;
    if (o2) throw n2;
    return qu(n2), r2;
  }, ra = TypeError, na = function(t2, e2) {
    this.stopped = t2, this.result = e2;
  }, oa = na.prototype, ia = function(t2, e2, r2) {
    var n2, o2, i2, c2, u2, a2, f2, s2 = r2 && r2.that, l2 = !(!r2 || !r2.AS_ENTRIES), p2 = !(!r2 || !r2.IS_RECORD), v2 = !(!r2 || !r2.IS_ITERATOR), h2 = !(!r2 || !r2.INTERRUPTED), d2 = Ju(e2, s2), y2 = function(t3) {
      return n2 && ea(n2, "normal", t3), new na(true, t3);
    }, m2 = function(t3) {
      return l2 ? (Yu(t3), h2 ? d2(t3[0], t3[1], y2) : d2(t3[0], t3[1])) : h2 ? d2(t3, y2) : d2(t3);
    };
    if (p2) n2 = t2.iterator;
    else if (v2) n2 = t2;
    else {
      if (!(o2 = ta(t2))) throw ra(Ku(t2) + " is not iterable");
      if (Xu(o2)) {
        for (i2 = 0, c2 = $u(t2); c2 > i2; i2++) if ((u2 = m2(t2[i2])) && Qu(oa, u2)) return u2;
        return new na(false);
      }
      n2 = Zu(t2, o2);
    }
    for (a2 = p2 ? t2.next : n2.next; !(f2 = Vu(a2, n2)).done; ) {
      try {
        u2 = m2(f2.value);
      } catch (Ss) {
        ea(n2, "throw", Ss);
      }
      if ("object" == typeof u2 && u2 && Qu(oa, u2)) return u2;
    }
    return new na(false);
  }, ca = oe("iterator"), ua = false;
  try {
    var aa = 0, fa = { next: function() {
      return { done: !!aa++ };
    }, return: function() {
      ua = true;
    } };
    fa[ca] = function() {
      return this;
    }, Array.from(fa, (function() {
      throw 2;
    }));
  } catch (Ss) {
  }
  var sa = sc, la = function(t2, e2) {
    if (!e2 && !ua) return false;
    var r2 = false;
    try {
      var n2 = {};
      n2[ca] = function() {
        return { next: function() {
          return { done: r2 = true };
        } };
      }, t2(n2);
    } catch (Ss) {
    }
    return r2;
  }, pa = Tc.CONSTRUCTOR || !la((function(t2) {
    sa.all(t2).then(void 0, (function() {
    }));
  })), va = f, ha = Ot, da = xc, ya = uc, ma = ia;
  Kn({ target: "Promise", stat: true, forced: pa }, { all: function(t2) {
    var e2 = this, r2 = da.f(e2), n2 = r2.resolve, o2 = r2.reject, i2 = ya((function() {
      var r3 = ha(e2.resolve), i3 = [], c2 = 0, u2 = 1;
      ma(t2, (function(t3) {
        var a2 = c2++, f2 = false;
        u2++, va(r3, e2, t3).then((function(t4) {
          f2 || (f2 = true, i3[a2] = t4, --u2 || n2(i3));
        }), o2);
      })), --u2 || n2(i3);
    }));
    return i2.error && o2(i2.value), r2.promise;
  } });
  var ga = Kn, ba = Tc.CONSTRUCTOR, wa = sc, Oa = $, ja = q, Sa = Yr, Ea = wa && wa.prototype;
  if (ga({ target: "Promise", proto: true, forced: ba, real: true }, { catch: function(t2) {
    return this.then(void 0, t2);
  } }), ja(wa)) {
    var Pa = Oa("Promise").prototype.catch;
    Ea.catch !== Pa && Sa(Ea, "catch", Pa, { unsafe: true });
  }
  var Ta = f, xa = Ot, Ia = xc, Ra = uc, Ca = ia;
  Kn({ target: "Promise", stat: true, forced: pa }, { race: function(t2) {
    var e2 = this, r2 = Ia.f(e2), n2 = r2.reject, o2 = Ra((function() {
      var o3 = xa(e2.resolve);
      Ca(t2, (function(t3) {
        Ta(o3, e2, t3).then(r2.resolve, n2);
      }));
    }));
    return o2.error && n2(o2.value), r2.promise;
  } });
  var _a = f, Aa = xc;
  Kn({ target: "Promise", stat: true, forced: Tc.CONSTRUCTOR }, { reject: function(t2) {
    var e2 = Aa.f(this);
    return _a(e2.reject, void 0, t2), e2.promise;
  } });
  var Ma = ke, La = V, ka = xc, Fa = Kn, Na = Tc.CONSTRUCTOR, Da = function(t2, e2) {
    if (Ma(t2), La(e2) && e2.constructor === t2) return e2;
    var r2 = ka.f(t2);
    return (0, r2.resolve)(e2), r2.promise;
  };
  $("Promise"), Fa({ target: "Promise", stat: true, forced: Na }, { resolve: function(t2) {
    return Da(this, t2);
  } });
  var Ua = {}, Ga = gn, Wa = bn, za = Object.keys || function(t2) {
    return Ga(t2, Wa);
  }, Ba = i, qa = _e, Ha = Ce, Ja = ke, Va = G, Ya = za;
  Ua.f = Ba && !qa ? Object.defineProperties : function(t2, e2) {
    Ja(t2);
    for (var r2, n2 = Va(e2), o2 = Ya(e2), i2 = o2.length, c2 = 0; i2 > c2; ) Ha.f(t2, r2 = o2[c2++], n2[r2]);
    return t2;
  };
  var Ka, Xa = ke, $a = Ua, Qa = bn, Za = mr, tf = ni, ef = ge, rf = yr("IE_PROTO"), nf = function() {
  }, of = function(t2) {
    return "<script>" + t2 + "<\/script>";
  }, cf = function(t2) {
    t2.write(of("")), t2.close();
    var e2 = t2.parentWindow.Object;
    return t2 = null, e2;
  }, uf = function() {
    try {
      Ka = new ActiveXObject("htmlfile");
    } catch (Ss) {
    }
    var t2, e2;
    uf = "undefined" != typeof document ? document.domain && Ka ? cf(Ka) : ((e2 = ef("iframe")).style.display = "none", tf.appendChild(e2), e2.src = String("javascript:"), (t2 = e2.contentWindow.document).open(), t2.write(of("document.F=Object")), t2.close(), t2.F) : cf(Ka);
    for (var r2 = Qa.length; r2--; ) delete uf.prototype[Qa[r2]];
    return uf();
  };
  Za[rf] = true;
  var af = Object.create || function(t2, e2) {
    var r2;
    return null !== t2 ? (nf.prototype = Xa(t2), r2 = new nf(), nf.prototype = null, r2[rf] = t2) : r2 = uf(), void 0 === e2 ? r2 : $a.f(r2, e2);
  }, ff = oe, sf = af, lf = Ce.f, pf = ff("unscopables"), vf = Array.prototype;
  null == vf[pf] && lf(vf, pf, { configurable: true, value: sf(null) });
  var hf, df, yf, mf = !o((function() {
    function t2() {
    }
    return t2.prototype.constructor = null, Object.getPrototypeOf(new t2()) !== t2.prototype;
  })), gf = zt, bf = q, wf = Ut, Of = mf, jf = yr("IE_PROTO"), Sf = Object, Ef = Sf.prototype, Pf = Of ? Sf.getPrototypeOf : function(t2) {
    var e2 = wf(t2);
    if (gf(e2, jf)) return e2[jf];
    var r2 = e2.constructor;
    return bf(r2) && e2 instanceof r2 ? r2.prototype : e2 instanceof Sf ? Ef : null;
  }, Tf = o, xf = q, If = V, Rf = Pf, Cf = Yr, _f = oe("iterator"), Af = false;
  [].keys && ("next" in (yf = [].keys()) ? (df = Rf(Rf(yf))) !== Object.prototype && (hf = df) : Af = true);
  var Mf = !If(hf) || Tf((function() {
    var t2 = {};
    return hf[_f].call(t2) !== t2;
  }));
  Mf && (hf = {}), xf(hf[_f]) || Cf(hf, _f, (function() {
    return this;
  }));
  var Lf = { IteratorPrototype: hf, BUGGY_SAFARI_ITERATORS: Af }, kf = Lf.IteratorPrototype, Ff = af, Nf = y, Df = uo, Uf = xu, Gf = function() {
    return this;
  }, Wf = Kn, zf = f, Bf = q, qf = function(t2, e2, r2, n2) {
    var o2 = e2 + " Iterator";
    return t2.prototype = Ff(kf, { next: Nf(+!n2, r2) }), Df(t2, o2, false), Uf[o2] = Gf, t2;
  }, Hf = Pf, Jf = no, Vf = uo, Yf = Ke, Kf = Yr, Xf = xu, $f = rr.PROPER, Qf = rr.CONFIGURABLE, Zf = Lf.IteratorPrototype, ts = Lf.BUGGY_SAFARI_ITERATORS, es = oe("iterator"), rs = "keys", ns = "values", os = "entries", is = function() {
    return this;
  }, cs = G, us = function(t2) {
    vf[pf][t2] = true;
  }, as = xu, fs = _r, ss = Ce.f, ls = function(t2, e2, r2, n2, o2, i2, c2) {
    qf(r2, e2, n2);
    var u2, a2, f2, s2 = function(t3) {
      if (t3 === o2 && d2) return d2;
      if (!ts && t3 in v2) return v2[t3];
      switch (t3) {
        case rs:
        case ns:
        case os:
          return function() {
            return new r2(this, t3);
          };
      }
      return function() {
        return new r2(this);
      };
    }, l2 = e2 + " Iterator", p2 = false, v2 = t2.prototype, h2 = v2[es] || v2["@@iterator"] || o2 && v2[o2], d2 = !ts && h2 || s2(o2), y2 = "Array" == e2 && v2.entries || h2;
    if (y2 && (u2 = Hf(y2.call(new t2()))) !== Object.prototype && u2.next && (Hf(u2) !== Zf && (Jf ? Jf(u2, Zf) : Bf(u2[es]) || Kf(u2, es, is)), Vf(u2, l2, true)), $f && o2 == ns && h2 && h2.name !== ns && (Qf ? Yf(v2, "name", ns) : (p2 = true, d2 = function() {
      return zf(h2, this);
    })), o2) if (a2 = { values: s2(ns), keys: i2 ? d2 : s2(rs), entries: s2(os) }, c2) for (f2 in a2) (ts || p2 || !(f2 in v2)) && Kf(v2, f2, a2[f2]);
    else Wf({ target: e2, proto: true, forced: ts || p2 }, a2);
    return v2[es] !== d2 && Kf(v2, es, d2, { name: o2 }), Xf[e2] = d2, a2;
  }, ps = function(t2, e2) {
    return { value: t2, done: e2 };
  }, vs = i, hs = "Array Iterator", ds = fs.set, ys = fs.getterFor(hs);
  ls(Array, "Array", (function(t2, e2) {
    ds(this, { type: hs, target: cs(t2), index: 0, kind: e2 });
  }), (function() {
    var t2 = ys(this), e2 = t2.target, r2 = t2.kind, n2 = t2.index++;
    return !e2 || n2 >= e2.length ? (t2.target = void 0, ps(void 0, true)) : ps("keys" == r2 ? n2 : "values" == r2 ? e2[n2] : [n2, e2[n2]], false);
  }), "values");
  var ms = as.Arguments = as.Array;
  if (us("keys"), us("values"), us("entries"), vs && "values" !== ms.name) try {
    ss(ms, "name", { value: "values" });
  } catch (Ss) {
  }
  var gs = f, bs = Ot, ws = xc, Os = uc, js = ia;
  Kn({ target: "Promise", stat: true }, { allSettled: function(t2) {
    var e2 = this, r2 = ws.f(e2), n2 = r2.resolve, o2 = r2.reject, i2 = Os((function() {
      var r3 = bs(e2.resolve), o3 = [], i3 = 0, c2 = 1;
      js(t2, (function(t3) {
        var u2 = i3++, a2 = false;
        c2++, gs(r3, e2, t3).then((function(t4) {
          a2 || (a2 = true, o3[u2] = { status: "fulfilled", value: t4 }, --c2 || n2(o3));
        }), (function(t4) {
          a2 || (a2 = true, o3[u2] = { status: "rejected", reason: t4 }, --c2 || n2(o3));
        }));
      })), --c2 || n2(o3);
    }));
    return i2.error && o2(i2.value), r2.promise;
  } }), (function() {
    function e2(t2, e3) {
      return (e3 || "") + " (SystemJS https://github.com/systemjs/systemjs/blob/main/docs/errors.md#" + t2 + ")";
    }
    function r2(t2, e3) {
      if (-1 !== t2.indexOf("\\") && (t2 = t2.replace(E2, "/")), "/" === t2[0] && "/" === t2[1]) return e3.slice(0, e3.indexOf(":") + 1) + t2;
      if ("." === t2[0] && ("/" === t2[1] || "." === t2[1] && ("/" === t2[2] || 2 === t2.length && (t2 += "/")) || 1 === t2.length && (t2 += "/")) || "/" === t2[0]) {
        var r3, n3 = e3.slice(0, e3.indexOf(":") + 1);
        if (r3 = "/" === e3[n3.length + 1] ? "file:" !== n3 ? (r3 = e3.slice(n3.length + 2)).slice(r3.indexOf("/") + 1) : e3.slice(8) : e3.slice(n3.length + ("/" === e3[n3.length])), "/" === t2[0]) return e3.slice(0, e3.length - r3.length - 1) + t2;
        for (var o3 = r3.slice(0, r3.lastIndexOf("/") + 1) + t2, i3 = [], c3 = -1, u3 = 0; u3 < o3.length; u3++) -1 !== c3 ? "/" === o3[u3] && (i3.push(o3.slice(c3, u3 + 1)), c3 = -1) : "." === o3[u3] ? "." !== o3[u3 + 1] || "/" !== o3[u3 + 2] && u3 + 2 !== o3.length ? "/" === o3[u3 + 1] || u3 + 1 === o3.length ? u3 += 1 : c3 = u3 : (i3.pop(), u3 += 2) : c3 = u3;
        return -1 !== c3 && i3.push(o3.slice(c3)), e3.slice(0, e3.length - r3.length) + i3.join("");
      }
    }
    function n2(t2, e3) {
      return r2(t2, e3) || (-1 !== t2.indexOf(":") ? t2 : r2("./" + t2, e3));
    }
    function o2(t2, e3, n3, o3, i3) {
      for (var c3 in t2) {
        var u3 = r2(c3, n3) || c3, s3 = t2[c3];
        if ("string" == typeof s3) {
          var l3 = f2(o3, r2(s3, n3) || s3, i3);
          l3 ? e3[u3] = l3 : a2("W1", c3, s3);
        }
      }
    }
    function i2(t2, e3, r3) {
      var i3;
      for (i3 in t2.imports && o2(t2.imports, r3.imports, e3, r3, null), t2.scopes || {}) {
        var c3 = n2(i3, e3);
        o2(t2.scopes[i3], r3.scopes[c3] || (r3.scopes[c3] = {}), e3, r3, c3);
      }
      for (i3 in t2.depcache || {}) r3.depcache[n2(i3, e3)] = t2.depcache[i3];
      for (i3 in t2.integrity || {}) r3.integrity[n2(i3, e3)] = t2.integrity[i3];
    }
    function c2(t2, e3) {
      if (e3[t2]) return t2;
      var r3 = t2.length;
      do {
        var n3 = t2.slice(0, r3 + 1);
        if (n3 in e3) return n3;
      } while (-1 !== (r3 = t2.lastIndexOf("/", r3 - 1)));
    }
    function u2(t2, e3) {
      var r3 = c2(t2, e3);
      if (r3) {
        var n3 = e3[r3];
        if (null === n3) return;
        if (!(t2.length > r3.length && "/" !== n3[n3.length - 1])) return n3 + t2.slice(r3.length);
        a2("W2", r3, n3);
      }
    }
    function a2(t2, r3, n3) {
      console.warn(e2(t2, [n3, r3].join(", ")));
    }
    function f2(t2, e3, r3) {
      for (var n3 = t2.scopes, o3 = r3 && c2(r3, n3); o3; ) {
        var i3 = u2(e3, n3[o3]);
        if (i3) return i3;
        o3 = c2(o3.slice(0, o3.lastIndexOf("/")), n3);
      }
      return u2(e3, t2.imports) || -1 !== e3.indexOf(":") && e3;
    }
    function s2() {
      this[T2] = {};
    }
    function l2(t2, r3, n3) {
      var o3 = t2[T2][r3];
      if (o3) return o3;
      var i3 = [], c3 = /* @__PURE__ */ Object.create(null);
      P2 && Object.defineProperty(c3, P2, { value: "Module" });
      var u3 = Promise.resolve().then((function() {
        return t2.instantiate(r3, n3);
      })).then((function(n4) {
        if (!n4) throw Error(e2(2, r3));
        var u4 = n4[1]((function(t3, e3) {
          o3.h = true;
          var r4 = false;
          if ("string" == typeof t3) t3 in c3 && c3[t3] === e3 || (c3[t3] = e3, r4 = true);
          else {
            for (var n5 in t3) e3 = t3[n5], n5 in c3 && c3[n5] === e3 || (c3[n5] = e3, r4 = true);
            t3 && t3.__esModule && (c3.__esModule = t3.__esModule);
          }
          if (r4) for (var u5 = 0; u5 < i3.length; u5++) {
            var a4 = i3[u5];
            a4 && a4(c3);
          }
          return e3;
        }), 2 === n4[1].length ? { import: function(e3) {
          return t2.import(e3, r3);
        }, meta: t2.createContext(r3) } : void 0);
        return o3.e = u4.execute || function() {
        }, [n4[0], u4.setters || []];
      }), (function(t3) {
        throw o3.e = null, o3.er = t3, t3;
      })), a3 = u3.then((function(e3) {
        return Promise.all(e3[0].map((function(n4, o4) {
          var i4 = e3[1][o4];
          return Promise.resolve(t2.resolve(n4, r3)).then((function(e4) {
            var n5 = l2(t2, e4, r3);
            return Promise.resolve(n5.I).then((function() {
              return i4 && (n5.i.push(i4), !n5.h && n5.I || i4(n5.n)), n5;
            }));
          }));
        }))).then((function(t3) {
          o3.d = t3;
        }));
      }));
      return o3 = t2[T2][r3] = { id: r3, i: i3, n: c3, I: u3, L: a3, h: false, d: void 0, e: void 0, er: void 0, E: void 0, C: void 0, p: void 0 };
    }
    function p2(t2, e3, r3, n3) {
      if (!n3[e3.id]) return n3[e3.id] = true, Promise.resolve(e3.L).then((function() {
        return e3.p && null !== e3.p.e || (e3.p = r3), Promise.all(e3.d.map((function(e4) {
          return p2(t2, e4, r3, n3);
        })));
      })).catch((function(t3) {
        if (e3.er) throw t3;
        throw e3.e = null, t3;
      }));
    }
    function v2(t2, e3) {
      return e3.C = p2(t2, e3, e3, {}).then((function() {
        return h2(t2, e3, {});
      })).then((function() {
        return e3.n;
      }));
    }
    function h2(t2, e3, r3) {
      function n3() {
        try {
          var t3 = i3.call(I2);
          if (t3) return t3 = t3.then((function() {
            e3.C = e3.n, e3.E = null;
          }), (function(t4) {
            throw e3.er = t4, e3.E = null, t4;
          })), e3.E = t3;
          e3.C = e3.n, e3.L = e3.I = void 0;
        } catch (r4) {
          throw e3.er = r4, r4;
        }
      }
      if (!r3[e3.id]) {
        if (r3[e3.id] = true, !e3.e) {
          if (e3.er) throw e3.er;
          return e3.E ? e3.E : void 0;
        }
        var o3, i3 = e3.e;
        return e3.e = null, e3.d.forEach((function(n4) {
          try {
            var i4 = h2(t2, n4, r3);
            i4 && (o3 = o3 || []).push(i4);
          } catch (u3) {
            throw e3.er = u3, u3;
          }
        })), o3 ? Promise.all(o3).then(n3) : n3();
      }
    }
    function d2() {
      [].forEach.call(document.querySelectorAll("script"), (function(t2) {
        if (!t2.sp) {
          if ("systemjs-module" === t2.type) {
            if (t2.sp = true, !t2.src) return;
            System.import("import:" === t2.src.slice(0, 7) ? t2.src.slice(7) : n2(t2.src, y2)).catch((function(e3) {
              if (e3.message.indexOf("https://github.com/systemjs/systemjs/blob/main/docs/errors.md#3") > -1) {
                var r4 = document.createEvent("Event");
                r4.initEvent("error", false, false), t2.dispatchEvent(r4);
              }
              return Promise.reject(e3);
            }));
          } else if ("systemjs-importmap" === t2.type) {
            t2.sp = true;
            var r3 = t2.src ? (System.fetch || fetch)(t2.src, { integrity: t2.integrity, passThrough: true }).then((function(t3) {
              if (!t3.ok) throw Error(t3.status);
              return t3.text();
            })).catch((function(r4) {
              return r4.message = e2("W4", t2.src) + "\n" + r4.message, console.warn(r4), "function" == typeof t2.onerror && t2.onerror(), "{}";
            })) : t2.innerHTML;
            _2 = _2.then((function() {
              return r3;
            })).then((function(r4) {
              !(function(t3, r5, n3) {
                var o3 = {};
                try {
                  o3 = JSON.parse(r5);
                } catch (u3) {
                  console.warn(Error(e2("W5")));
                }
                i2(o3, n3, t3);
              })(A2, r4, t2.src || y2);
            }));
          }
        }
      }));
    }
    var y2, m2 = "undefined" != typeof Symbol, g2 = "undefined" != typeof self, b2 = "undefined" != typeof document, w2 = g2 ? self : t;
    if (b2) {
      var O2 = document.querySelector("base[href]");
      O2 && (y2 = O2.href);
    }
    if (!y2 && "undefined" != typeof location) {
      var j2 = (y2 = location.href.split("#")[0].split("?")[0]).lastIndexOf("/");
      -1 !== j2 && (y2 = y2.slice(0, j2 + 1));
    }
    var S2, E2 = /\\/g, P2 = m2 && Symbol.toStringTag, T2 = m2 ? Symbol() : "@", x2 = s2.prototype;
    x2.import = function(t2, e3) {
      var r3 = this;
      return Promise.resolve(r3.prepareImport()).then((function() {
        return r3.resolve(t2, e3);
      })).then((function(t3) {
        var e4 = l2(r3, t3);
        return e4.C || v2(r3, e4);
      }));
    }, x2.createContext = function(t2) {
      var e3 = this;
      return { url: t2, resolve: function(r3, n3) {
        return Promise.resolve(e3.resolve(r3, n3 || t2));
      } };
    }, x2.register = function(t2, e3) {
      S2 = [t2, e3];
    }, x2.getRegister = function() {
      var t2 = S2;
      return S2 = void 0, t2;
    };
    var I2 = Object.freeze(/* @__PURE__ */ Object.create(null));
    w2.System = new s2();
    var R2, C2, _2 = Promise.resolve(), A2 = { imports: {}, scopes: {}, depcache: {}, integrity: {} }, M2 = b2;
    if (x2.prepareImport = function(t2) {
      return (M2 || t2) && (d2(), M2 = false), _2;
    }, b2 && (d2(), window.addEventListener("DOMContentLoaded", d2)), x2.addImportMap = function(t2, e3) {
      i2(t2, e3 || y2, A2);
    }, b2) {
      window.addEventListener("error", (function(t2) {
        k2 = t2.filename, F2 = t2.error;
      }));
      var L2 = location.origin;
    }
    x2.createScript = function(t2) {
      var e3 = document.createElement("script");
      e3.async = true, t2.indexOf(L2 + "/") && (e3.crossOrigin = "anonymous");
      var r3 = A2.integrity[t2];
      return r3 && (e3.integrity = r3), e3.src = t2, e3;
    };
    var k2, F2, N2 = {}, D2 = x2.register;
    x2.register = function(t2, e3) {
      if (b2 && "loading" === document.readyState && "string" != typeof t2) {
        var r3 = document.querySelectorAll("script[src]"), n3 = r3[r3.length - 1];
        if (n3) {
          R2 = t2;
          var o3 = this;
          C2 = setTimeout((function() {
            N2[n3.src] = [t2, e3], o3.import(n3.src);
          }));
        }
      } else R2 = void 0;
      return D2.call(this, t2, e3);
    }, x2.instantiate = function(t2, r3) {
      var n3 = N2[t2];
      if (n3) return delete N2[t2], n3;
      var o3 = this;
      return Promise.resolve(x2.createScript(t2)).then((function(n4) {
        return new Promise((function(i3, c3) {
          n4.addEventListener("error", (function() {
            c3(Error(e2(3, [t2, r3].join(", "))));
          })), n4.addEventListener("load", (function() {
            if (document.head.removeChild(n4), k2 === t2) c3(F2);
            else {
              var e3 = o3.getRegister(t2);
              e3 && e3[0] === R2 && clearTimeout(C2), i3(e3);
            }
          })), document.head.appendChild(n4);
        }));
      }));
    }, x2.shouldFetch = function() {
      return false;
    }, "undefined" != typeof fetch && (x2.fetch = fetch);
    var U2 = x2.instantiate, G2 = /^(text|application)\/(x-)?javascript(;|$)/;
    x2.instantiate = function(t2, r3) {
      var n3 = this;
      return this.shouldFetch(t2) ? this.fetch(t2, { credentials: "same-origin", integrity: A2.integrity[t2] }).then((function(o3) {
        if (!o3.ok) throw Error(e2(7, [o3.status, o3.statusText, t2, r3].join(", ")));
        var i3 = o3.headers.get("content-type");
        if (!i3 || !G2.test(i3)) throw Error(e2(4, i3));
        return o3.text().then((function(e3) {
          return e3.indexOf("//# sourceURL=") < 0 && (e3 += "\n//# sourceURL=" + t2), (0, eval)(e3), n3.getRegister(t2);
        }));
      })) : U2.apply(this, arguments);
    }, x2.resolve = function(t2, n3) {
      return f2(A2, r2(t2, n3 = n3 || y2) || t2, n3) || (function(t3, r3) {
        throw Error(e2(8, [t3, r3].join(", ")));
      })(t2, n3);
    };
    var W2 = x2.instantiate;
    x2.instantiate = function(t2, e3) {
      var r3 = A2.depcache[t2];
      if (r3) for (var n3 = 0; n3 < r3.length; n3++) l2(this, this.resolve(r3[n3], t2), t2);
      return W2.call(this, t2, e3);
    }, g2 && "function" == typeof importScripts && (x2.instantiate = function(t2) {
      var e3 = this;
      return Promise.resolve().then((function() {
        return importScripts(t2), e3.getRegister(t2);
      }));
    });
  })();
})();
