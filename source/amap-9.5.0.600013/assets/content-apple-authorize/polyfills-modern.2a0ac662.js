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
})), u = !o((function() {
  var t2 = function() {
  }.bind();
  return "function" != typeof t2 || t2.hasOwnProperty("prototype");
})), c = u, f = Function.prototype.call, a = c ? f.bind(f) : function() {
  return f.apply(f, arguments);
}, s = {}, l = {}.propertyIsEnumerable, p = Object.getOwnPropertyDescriptor, h = p && !l.call({ 1: 2 }, 1);
s.f = h ? function(t2) {
  var e2 = p(this, t2);
  return !!e2 && e2.enumerable;
} : l;
var v, d, y = function(t2, e2) {
  return { enumerable: !(1 & t2), configurable: !(2 & t2), writable: !(4 & t2), value: e2 };
}, g = u, m = Function.prototype, b = m.call, w = g && m.bind.bind(b, b), S = g ? w : function(t2) {
  return function() {
    return b.apply(t2, arguments);
  };
}, O = S, j = O({}.toString), E = O("".slice), P = function(t2) {
  return E(j(t2), 8, -1);
}, x = P, T = S, I = function(t2) {
  if ("Function" === x(t2)) return T(t2);
}, _ = o, L = P, C = Object, M = I("".split), R = _((function() {
  return !C("z").propertyIsEnumerable(0);
})) ? function(t2) {
  return "String" == L(t2) ? M(t2, "") : C(t2);
} : C, A = function(t2) {
  return null == t2;
}, D = A, F = TypeError, k = function(t2) {
  if (D(t2)) throw F("Can't call method on " + t2);
  return t2;
}, z = R, N = k, W = function(t2) {
  return z(N(t2));
}, U = "object" == typeof document && document.all, q = { all: U, IS_HTMLDDA: void 0 === U && void 0 !== U }, H = q.all, B = q.IS_HTMLDDA ? function(t2) {
  return "function" == typeof t2 || t2 === H;
} : function(t2) {
  return "function" == typeof t2;
}, G = B, J = q.all, $ = q.IS_HTMLDDA ? function(t2) {
  return "object" == typeof t2 ? null !== t2 : G(t2) || t2 === J;
} : function(t2) {
  return "object" == typeof t2 ? null !== t2 : G(t2);
}, K = r, V = B, X = function(t2) {
  return V(t2) ? t2 : void 0;
}, Y = function(t2, e2) {
  return arguments.length < 2 ? X(K[t2]) : K[t2] && K[t2][e2];
}, Q = I({}.isPrototypeOf), Z = r, tt = Y("navigator", "userAgent") || "", et = Z.process, rt = Z.Deno, nt = et && et.versions || rt && rt.version, ot = nt && nt.v8;
ot && (d = (v = ot.split("."))[0] > 0 && v[0] < 4 ? 1 : +(v[0] + v[1])), !d && tt && (!(v = tt.match(/Edge\/(\d+)/)) || v[1] >= 74) && (v = tt.match(/Chrome\/(\d+)/)) && (d = +v[1]);
var it = d, ut = o, ct = !!Object.getOwnPropertySymbols && !ut((function() {
  var t2 = Symbol();
  return !String(t2) || !(Object(t2) instanceof Symbol) || !Symbol.sham && it && it < 41;
})), ft = ct && !Symbol.sham && "symbol" == typeof Symbol.iterator, at = Y, st = B, lt = Q, pt = Object, ht = ft ? function(t2) {
  return "symbol" == typeof t2;
} : function(t2) {
  var e2 = at("Symbol");
  return st(e2) && lt(e2.prototype, pt(t2));
}, vt = String, dt = function(t2) {
  try {
    return vt(t2);
  } catch (e2) {
    return "Object";
  }
}, yt = B, gt = dt, mt = TypeError, bt = function(t2) {
  if (yt(t2)) return t2;
  throw mt(gt(t2) + " is not a function");
}, wt = bt, St = A, Ot = function(t2, e2) {
  var r2 = t2[e2];
  return St(r2) ? void 0 : wt(r2);
}, jt = a, Et = B, Pt = $, xt = TypeError, Tt = { exports: {} }, It = r, _t = Object.defineProperty, Lt = function(t2, e2) {
  try {
    _t(It, t2, { value: e2, configurable: true, writable: true });
  } catch (r2) {
    It[t2] = e2;
  }
  return e2;
}, Ct = Lt, Mt = r["__core-js_shared__"] || Ct("__core-js_shared__", {}), Rt = Mt;
(Tt.exports = function(t2, e2) {
  return Rt[t2] || (Rt[t2] = void 0 !== e2 ? e2 : {});
})("versions", []).push({ version: "3.26.0", mode: "global", copyright: "© 2014-2022 Denis Pushkarev (zloirock.ru)", license: "https://github.com/zloirock/core-js/blob/v3.26.0/LICENSE", source: "https://github.com/zloirock/core-js" });
var At = k, Dt = Object, Ft = function(t2) {
  return Dt(At(t2));
}, kt = I({}.hasOwnProperty), zt = Object.hasOwn || function(t2, e2) {
  return kt(Ft(t2), e2);
}, Nt = I, Wt = 0, Ut = Math.random(), qt = Nt(1 .toString), Ht = function(t2) {
  return "Symbol(" + (void 0 === t2 ? "" : t2) + ")_" + qt(++Wt + Ut, 36);
}, Bt = r, Gt = Tt.exports, Jt = zt, $t = Ht, Kt = ct, Vt = ft, Xt = Gt("wks"), Yt = Bt.Symbol, Qt = Yt && Yt.for, Zt = Vt ? Yt : Yt && Yt.withoutSetter || $t, te = function(t2) {
  if (!Jt(Xt, t2) || !Kt && "string" != typeof Xt[t2]) {
    var e2 = "Symbol." + t2;
    Kt && Jt(Yt, t2) ? Xt[t2] = Yt[t2] : Xt[t2] = Vt && Qt ? Qt(e2) : Zt(e2);
  }
  return Xt[t2];
}, ee = a, re = $, ne = ht, oe = Ot, ie = function(t2, e2) {
  var r2, n2;
  if ("string" === e2 && Et(r2 = t2.toString) && !Pt(n2 = jt(r2, t2))) return n2;
  if (Et(r2 = t2.valueOf) && !Pt(n2 = jt(r2, t2))) return n2;
  if ("string" !== e2 && Et(r2 = t2.toString) && !Pt(n2 = jt(r2, t2))) return n2;
  throw xt("Can't convert object to primitive value");
}, ue = TypeError, ce = te("toPrimitive"), fe = function(t2, e2) {
  if (!re(t2) || ne(t2)) return t2;
  var r2, n2 = oe(t2, ce);
  if (n2) {
    if (void 0 === e2 && (e2 = "default"), r2 = ee(n2, t2, e2), !re(r2) || ne(r2)) return r2;
    throw ue("Can't convert object to primitive value");
  }
  return void 0 === e2 && (e2 = "number"), ie(t2, e2);
}, ae = ht, se = function(t2) {
  var e2 = fe(t2, "string");
  return ae(e2) ? e2 : e2 + "";
}, le = $, pe = r.document, he = le(pe) && le(pe.createElement), ve = function(t2) {
  return he ? pe.createElement(t2) : {};
}, de = !i && !o((function() {
  return 7 != Object.defineProperty(ve("div"), "a", { get: function() {
    return 7;
  } }).a;
})), ye = i, ge = a, me = s, be = y, we = W, Se = se, Oe = zt, je = de, Ee = Object.getOwnPropertyDescriptor;
n.f = ye ? Ee : function(t2, e2) {
  if (t2 = we(t2), e2 = Se(e2), je) try {
    return Ee(t2, e2);
  } catch (r2) {
  }
  if (Oe(t2, e2)) return be(!ge(me.f, t2, e2), t2[e2]);
};
var Pe = {}, xe = i && o((function() {
  return 42 != Object.defineProperty((function() {
  }), "prototype", { value: 42, writable: false }).prototype;
})), Te = $, Ie = String, _e = TypeError, Le = function(t2) {
  if (Te(t2)) return t2;
  throw _e(Ie(t2) + " is not an object");
}, Ce = i, Me = de, Re = xe, Ae = Le, De = se, Fe = TypeError, ke = Object.defineProperty, ze = Object.getOwnPropertyDescriptor;
Pe.f = Ce ? Re ? function(t2, e2, r2) {
  if (Ae(t2), e2 = De(e2), Ae(r2), "function" == typeof t2 && "prototype" === e2 && "value" in r2 && "writable" in r2 && !r2.writable) {
    var n2 = ze(t2, e2);
    n2 && n2.writable && (t2[e2] = r2.value, r2 = { configurable: "configurable" in r2 ? r2.configurable : n2.configurable, enumerable: "enumerable" in r2 ? r2.enumerable : n2.enumerable, writable: false });
  }
  return ke(t2, e2, r2);
} : ke : function(t2, e2, r2) {
  if (Ae(t2), e2 = De(e2), Ae(r2), Me) try {
    return ke(t2, e2, r2);
  } catch (n2) {
  }
  if ("get" in r2 || "set" in r2) throw Fe("Accessors not supported");
  return "value" in r2 && (t2[e2] = r2.value), t2;
};
var Ne = Pe, We = y, Ue = i ? function(t2, e2, r2) {
  return Ne.f(t2, e2, We(1, r2));
} : function(t2, e2, r2) {
  return t2[e2] = r2, t2;
}, qe = { exports: {} }, He = i, Be = zt, Ge = Function.prototype, Je = He && Object.getOwnPropertyDescriptor, $e = Be(Ge, "name"), Ke = { EXISTS: $e, PROPER: $e && "something" === function() {
}.name, CONFIGURABLE: $e && (!He || He && Je(Ge, "name").configurable) }, Ve = B, Xe = Mt, Ye = I(Function.toString);
Ve(Xe.inspectSource) || (Xe.inspectSource = function(t2) {
  return Ye(t2);
});
var Qe, Ze, tr, er = Xe.inspectSource, rr = B, nr = r.WeakMap, or = rr(nr) && /native code/.test(String(nr)), ir = Tt.exports, ur = Ht, cr = ir("keys"), fr = {}, ar = or, sr = r, lr = $, pr = Ue, hr = zt, vr = Mt, dr = function(t2) {
  return cr[t2] || (cr[t2] = ur(t2));
}, yr = fr, gr = sr.TypeError, mr = sr.WeakMap;
if (ar || vr.state) {
  var br = vr.state || (vr.state = new mr());
  br.get = br.get, br.has = br.has, br.set = br.set, Qe = function(t2, e2) {
    if (br.has(t2)) throw gr("Object already initialized");
    return e2.facade = t2, br.set(t2, e2), e2;
  }, Ze = function(t2) {
    return br.get(t2) || {};
  }, tr = function(t2) {
    return br.has(t2);
  };
} else {
  var wr = dr("state");
  yr[wr] = true, Qe = function(t2, e2) {
    if (hr(t2, wr)) throw gr("Object already initialized");
    return e2.facade = t2, pr(t2, wr, e2), e2;
  }, Ze = function(t2) {
    return hr(t2, wr) ? t2[wr] : {};
  }, tr = function(t2) {
    return hr(t2, wr);
  };
}
var Sr = { set: Qe, get: Ze, has: tr, enforce: function(t2) {
  return tr(t2) ? Ze(t2) : Qe(t2, {});
}, getterFor: function(t2) {
  return function(e2) {
    var r2;
    if (!lr(e2) || (r2 = Ze(e2)).type !== t2) throw gr("Incompatible receiver, " + t2 + " required");
    return r2;
  };
} }, Or = o, jr = B, Er = zt, Pr = i, xr = Ke.CONFIGURABLE, Tr = er, Ir = Sr.enforce, _r = Sr.get, Lr = Object.defineProperty, Cr = Pr && !Or((function() {
  return 8 !== Lr((function() {
  }), "length", { value: 8 }).length;
})), Mr = String(String).split("String"), Rr = qe.exports = function(t2, e2, r2) {
  "Symbol(" === String(e2).slice(0, 7) && (e2 = "[" + String(e2).replace(/^Symbol\(([^)]*)\)/, "$1") + "]"), r2 && r2.getter && (e2 = "get " + e2), r2 && r2.setter && (e2 = "set " + e2), (!Er(t2, "name") || xr && t2.name !== e2) && (Pr ? Lr(t2, "name", { value: e2, configurable: true }) : t2.name = e2), Cr && r2 && Er(r2, "arity") && t2.length !== r2.arity && Lr(t2, "length", { value: r2.arity });
  try {
    r2 && Er(r2, "constructor") && r2.constructor ? Pr && Lr(t2, "prototype", { writable: false }) : t2.prototype && (t2.prototype = void 0);
  } catch (o2) {
  }
  var n2 = Ir(t2);
  return Er(n2, "source") || (n2.source = Mr.join("string" == typeof e2 ? e2 : "")), t2;
};
Function.prototype.toString = Rr((function() {
  return jr(this) && _r(this).source || Tr(this);
}), "toString");
var Ar = B, Dr = Pe, Fr = qe.exports, kr = Lt, zr = {}, Nr = Math.ceil, Wr = Math.floor, Ur = Math.trunc || function(t2) {
  var e2 = +t2;
  return (e2 > 0 ? Wr : Nr)(e2);
}, qr = function(t2) {
  var e2 = +t2;
  return e2 != e2 || 0 === e2 ? 0 : Ur(e2);
}, Hr = qr, Br = Math.max, Gr = Math.min, Jr = qr, $r = Math.min, Kr = function(t2) {
  return t2 > 0 ? $r(Jr(t2), 9007199254740991) : 0;
}, Vr = function(t2) {
  return Kr(t2.length);
}, Xr = W, Yr = function(t2, e2) {
  var r2 = Hr(t2);
  return r2 < 0 ? Br(r2 + e2, 0) : Gr(r2, e2);
}, Qr = Vr, Zr = function(t2) {
  return function(e2, r2, n2) {
    var o2, i2 = Xr(e2), u2 = Qr(i2), c2 = Yr(n2, u2);
    if (t2 && r2 != r2) {
      for (; u2 > c2; ) if ((o2 = i2[c2++]) != o2) return true;
    } else for (; u2 > c2; c2++) if ((t2 || c2 in i2) && i2[c2] === r2) return t2 || c2 || 0;
    return !t2 && -1;
  };
}, tn = { includes: Zr(true), indexOf: Zr(false) }, en = zt, rn = W, nn = tn.indexOf, on = fr, un = I([].push), cn = function(t2, e2) {
  var r2, n2 = rn(t2), o2 = 0, i2 = [];
  for (r2 in n2) !en(on, r2) && en(n2, r2) && un(i2, r2);
  for (; e2.length > o2; ) en(n2, r2 = e2[o2++]) && (~nn(i2, r2) || un(i2, r2));
  return i2;
}, fn = ["constructor", "hasOwnProperty", "isPrototypeOf", "propertyIsEnumerable", "toLocaleString", "toString", "valueOf"].concat("length", "prototype");
zr.f = Object.getOwnPropertyNames || function(t2) {
  return cn(t2, fn);
};
var an = {};
an.f = Object.getOwnPropertySymbols;
var sn = Y, ln = zr, pn = an, hn = Le, vn = I([].concat), dn = sn("Reflect", "ownKeys") || function(t2) {
  var e2 = ln.f(hn(t2)), r2 = pn.f;
  return r2 ? vn(e2, r2(t2)) : e2;
}, yn = zt, gn = dn, mn = n, bn = Pe, wn = o, Sn = B, On = /#|\.prototype\./, jn = function(t2, e2) {
  var r2 = Pn[En(t2)];
  return r2 == Tn || r2 != xn && (Sn(e2) ? wn(e2) : !!e2);
}, En = jn.normalize = function(t2) {
  return String(t2).replace(On, ".").toLowerCase();
}, Pn = jn.data = {}, xn = jn.NATIVE = "N", Tn = jn.POLYFILL = "P", In = jn, _n = r, Ln = n.f, Cn = Ue, Mn = function(t2, e2, r2, n2) {
  n2 || (n2 = {});
  var o2 = n2.enumerable, i2 = void 0 !== n2.name ? n2.name : e2;
  if (Ar(r2) && Fr(r2, i2, n2), n2.global) o2 ? t2[e2] = r2 : kr(e2, r2);
  else {
    try {
      n2.unsafe ? t2[e2] && (o2 = true) : delete t2[e2];
    } catch (u2) {
    }
    o2 ? t2[e2] = r2 : Dr.f(t2, e2, { value: r2, enumerable: false, configurable: !n2.nonConfigurable, writable: !n2.nonWritable });
  }
  return t2;
}, Rn = Lt, An = function(t2, e2, r2) {
  for (var n2 = gn(e2), o2 = bn.f, i2 = mn.f, u2 = 0; u2 < n2.length; u2++) {
    var c2 = n2[u2];
    yn(t2, c2) || r2 && yn(r2, c2) || o2(t2, c2, i2(e2, c2));
  }
}, Dn = In, Fn = {}, kn = bt, zn = TypeError, Nn = function(t2) {
  var e2, r2;
  this.promise = new t2((function(t3, n2) {
    if (void 0 !== e2 || void 0 !== r2) throw zn("Bad Promise constructor");
    e2 = t3, r2 = n2;
  })), this.resolve = kn(e2), this.reject = kn(r2);
};
Fn.f = function(t2) {
  return new Nn(t2);
};
var Wn = bt, Un = u, qn = I(I.bind), Hn = {}, Bn = Hn, Gn = te("iterator"), Jn = Array.prototype, $n = {};
$n[te("toStringTag")] = "z";
var Kn = "[object z]" === String($n), Vn = B, Xn = P, Yn = te("toStringTag"), Qn = Object, Zn = "Arguments" == Xn(/* @__PURE__ */ (function() {
  return arguments;
})()), to = Kn ? Xn : function(t2) {
  var e2, r2, n2;
  return void 0 === t2 ? "Undefined" : null === t2 ? "Null" : "string" == typeof (r2 = (function(t3, e3) {
    try {
      return t3[e3];
    } catch (r3) {
    }
  })(e2 = Qn(t2), Yn)) ? r2 : Zn ? Xn(e2) : "Object" == (n2 = Xn(e2)) && Vn(e2.callee) ? "Arguments" : n2;
}, eo = Ot, ro = A, no = Hn, oo = te("iterator"), io = function(t2) {
  if (!ro(t2)) return eo(t2, oo) || eo(t2, "@@iterator") || no[to(t2)];
}, uo = a, co = bt, fo = Le, ao = dt, so = io, lo = TypeError, po = a, ho = Le, vo = Ot, yo = function(t2, e2) {
  return Wn(t2), void 0 === e2 ? t2 : Un ? qn(t2, e2) : function() {
    return t2.apply(e2, arguments);
  };
}, go = a, mo = Le, bo = dt, wo = function(t2) {
  return void 0 !== t2 && (Bn.Array === t2 || Jn[Gn] === t2);
}, So = Vr, Oo = Q, jo = function(t2, e2) {
  var r2 = arguments.length < 2 ? so(t2) : e2;
  if (co(r2)) return fo(uo(r2, t2));
  throw lo(ao(t2) + " is not iterable");
}, Eo = io, Po = function(t2, e2, r2) {
  var n2, o2;
  ho(t2);
  try {
    if (!(n2 = vo(t2, "return"))) {
      if ("throw" === e2) throw r2;
      return r2;
    }
    n2 = po(n2, t2);
  } catch (i2) {
    o2 = true, n2 = i2;
  }
  if ("throw" === e2) throw r2;
  if (o2) throw n2;
  return ho(n2), r2;
}, xo = TypeError, To = function(t2, e2) {
  this.stopped = t2, this.result = e2;
}, Io = To.prototype, _o = a, Lo = bt, Co = Fn, Mo = function(t2) {
  try {
    return { error: false, value: t2() };
  } catch (e2) {
    return { error: true, value: e2 };
  }
}, Ro = function(t2, e2, r2) {
  var n2, o2, i2, u2, c2, f2, a2, s2 = r2 && r2.that, l2 = !(!r2 || !r2.AS_ENTRIES), p2 = !(!r2 || !r2.IS_RECORD), h2 = !(!r2 || !r2.IS_ITERATOR), v2 = !(!r2 || !r2.INTERRUPTED), d2 = yo(e2, s2), y2 = function(t3) {
    return n2 && Po(n2, "normal", t3), new To(true, t3);
  }, g2 = function(t3) {
    return l2 ? (mo(t3), v2 ? d2(t3[0], t3[1], y2) : d2(t3[0], t3[1])) : v2 ? d2(t3, y2) : d2(t3);
  };
  if (p2) n2 = t2.iterator;
  else if (h2) n2 = t2;
  else {
    if (!(o2 = Eo(t2))) throw xo(bo(t2) + " is not iterable");
    if (wo(o2)) {
      for (i2 = 0, u2 = So(t2); u2 > i2; i2++) if ((c2 = g2(t2[i2])) && Oo(Io, c2)) return c2;
      return new To(false);
    }
    n2 = jo(t2, o2);
  }
  for (f2 = p2 ? t2.next : n2.next; !(a2 = go(f2, n2)).done; ) {
    try {
      c2 = g2(a2.value);
    } catch (m2) {
      Po(n2, "throw", m2);
    }
    if ("object" == typeof c2 && c2 && Oo(Io, c2)) return c2;
  }
  return new To(false);
};
(function(t2, e2) {
  var r2, n2, o2, i2, u2, c2 = t2.target, f2 = t2.global, a2 = t2.stat;
  if (r2 = f2 ? _n : a2 ? _n[c2] || Rn(c2, {}) : (_n[c2] || {}).prototype) for (n2 in e2) {
    if (i2 = e2[n2], o2 = t2.dontCallGetSet ? (u2 = Ln(r2, n2)) && u2.value : r2[n2], !Dn(f2 ? n2 : c2 + (a2 ? "." : "#") + n2, t2.forced) && void 0 !== o2) {
      if (typeof i2 == typeof o2) continue;
      An(i2, o2);
    }
    (t2.sham || o2 && o2.sham) && Cn(i2, "sham", true), Mn(r2, n2, i2, t2);
  }
})({ target: "Promise", stat: true }, { allSettled: function(t2) {
  var e2 = this, r2 = Co.f(e2), n2 = r2.resolve, o2 = r2.reject, i2 = Mo((function() {
    var r3 = Lo(e2.resolve), o3 = [], i3 = 0, u2 = 1;
    Ro(t2, (function(t3) {
      var c2 = i3++, f2 = false;
      u2++, _o(r3, e2, t3).then((function(t4) {
        f2 || (f2 = true, o3[c2] = { status: "fulfilled", value: t4 }, --u2 || n2(o3));
      }), (function(t4) {
        f2 || (f2 = true, o3[c2] = { status: "rejected", reason: t4 }, --u2 || n2(o3));
      }));
    })), --u2 || n2(o3);
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
      for (var o3 = r3.slice(0, r3.lastIndexOf("/") + 1) + t2, i3 = [], u3 = -1, c3 = 0; c3 < o3.length; c3++) -1 !== u3 ? "/" === o3[c3] && (i3.push(o3.slice(u3, c3 + 1)), u3 = -1) : "." === o3[c3] ? "." !== o3[c3 + 1] || "/" !== o3[c3 + 2] && c3 + 2 !== o3.length ? "/" === o3[c3 + 1] || c3 + 1 === o3.length ? c3 += 1 : u3 = c3 : (i3.pop(), c3 += 2) : u3 = c3;
      return -1 !== u3 && i3.push(o3.slice(u3)), e3.slice(0, e3.length - r3.length) + i3.join("");
    }
  }
  function n2(t2, e3) {
    return r2(t2, e3) || (-1 !== t2.indexOf(":") ? t2 : r2("./" + t2, e3));
  }
  function o2(t2, e3, n3, o3, i3) {
    for (var u3 in t2) {
      var c3 = r2(u3, n3) || u3, s3 = t2[u3];
      if ("string" == typeof s3) {
        var l3 = a2(o3, r2(s3, n3) || s3, i3);
        l3 ? e3[c3] = l3 : f2("W1", u3, s3);
      }
    }
  }
  function i2(t2, e3, r3) {
    var i3;
    for (i3 in t2.imports && o2(t2.imports, r3.imports, e3, r3, null), t2.scopes || {}) {
      var u3 = n2(i3, e3);
      o2(t2.scopes[i3], r3.scopes[u3] || (r3.scopes[u3] = {}), e3, r3, u3);
    }
    for (i3 in t2.depcache || {}) r3.depcache[n2(i3, e3)] = t2.depcache[i3];
    for (i3 in t2.integrity || {}) r3.integrity[n2(i3, e3)] = t2.integrity[i3];
  }
  function u2(t2, e3) {
    if (e3[t2]) return t2;
    var r3 = t2.length;
    do {
      var n3 = t2.slice(0, r3 + 1);
      if (n3 in e3) return n3;
    } while (-1 !== (r3 = t2.lastIndexOf("/", r3 - 1)));
  }
  function c2(t2, e3) {
    var r3 = u2(t2, e3);
    if (r3) {
      var n3 = e3[r3];
      if (null === n3) return;
      if (!(t2.length > r3.length && "/" !== n3[n3.length - 1])) return n3 + t2.slice(r3.length);
      f2("W2", r3, n3);
    }
  }
  function f2(t2, r3, n3) {
    console.warn(e2(t2, [n3, r3].join(", ")));
  }
  function a2(t2, e3, r3) {
    for (var n3 = t2.scopes, o3 = r3 && u2(r3, n3); o3; ) {
      var i3 = c2(e3, n3[o3]);
      if (i3) return i3;
      o3 = u2(o3.slice(0, o3.lastIndexOf("/")), n3);
    }
    return c2(e3, t2.imports) || -1 !== e3.indexOf(":") && e3;
  }
  function s2() {
    this[x2] = {};
  }
  function l2(t2, r3, n3) {
    var o3 = t2[x2][r3];
    if (o3) return o3;
    var i3 = [], u3 = /* @__PURE__ */ Object.create(null);
    P2 && Object.defineProperty(u3, P2, { value: "Module" });
    var c3 = Promise.resolve().then((function() {
      return t2.instantiate(r3, n3);
    })).then((function(n4) {
      if (!n4) throw Error(e2(2, r3));
      var c4 = n4[1]((function(t3, e3) {
        o3.h = true;
        var r4 = false;
        if ("string" == typeof t3) t3 in u3 && u3[t3] === e3 || (u3[t3] = e3, r4 = true);
        else {
          for (var n5 in t3) e3 = t3[n5], n5 in u3 && u3[n5] === e3 || (u3[n5] = e3, r4 = true);
          t3 && t3.__esModule && (u3.__esModule = t3.__esModule);
        }
        if (r4) for (var c5 = 0; c5 < i3.length; c5++) {
          var f4 = i3[c5];
          f4 && f4(u3);
        }
        return e3;
      }), 2 === n4[1].length ? { import: function(e3) {
        return t2.import(e3, r3);
      }, meta: t2.createContext(r3) } : void 0);
      return o3.e = c4.execute || function() {
      }, [n4[0], c4.setters || []];
    }), (function(t3) {
      throw o3.e = null, o3.er = t3, t3;
    })), f3 = c3.then((function(e3) {
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
    return o3 = t2[x2][r3] = { id: r3, i: i3, n: u3, I: c3, L: f3, h: false, d: void 0, e: void 0, er: void 0, E: void 0, C: void 0, p: void 0 };
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
  function h2(t2, e3) {
    return e3.C = p2(t2, e3, e3, {}).then((function() {
      return v2(t2, e3, {});
    })).then((function() {
      return e3.n;
    }));
  }
  function v2(t2, e3, r3) {
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
          var i4 = v2(t2, n4, r3);
          i4 && (o3 = o3 || []).push(i4);
        } catch (c3) {
          throw e3.er = c3, c3;
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
          C2 = C2.then((function() {
            return r3;
          })).then((function(r4) {
            !(function(t3, r5, n3) {
              var o3 = {};
              try {
                o3 = JSON.parse(r5);
              } catch (c3) {
                console.warn(Error(e2("W5")));
              }
              i2(o3, n3, t3);
            })(M2, r4, t2.src || y2);
          }));
        }
      }
    }));
  }
  var y2, g2 = "undefined" != typeof Symbol, m2 = "undefined" != typeof self, b2 = "undefined" != typeof document, w2 = m2 ? self : t;
  if (b2) {
    var S2 = document.querySelector("base[href]");
    S2 && (y2 = S2.href);
  }
  if (!y2 && "undefined" != typeof location) {
    var O2 = (y2 = location.href.split("#")[0].split("?")[0]).lastIndexOf("/");
    -1 !== O2 && (y2 = y2.slice(0, O2 + 1));
  }
  var j2, E2 = /\\/g, P2 = g2 && Symbol.toStringTag, x2 = g2 ? Symbol() : "@", T2 = s2.prototype;
  T2.import = function(t2, e3) {
    var r3 = this;
    return Promise.resolve(r3.prepareImport()).then((function() {
      return r3.resolve(t2, e3);
    })).then((function(t3) {
      var e4 = l2(r3, t3);
      return e4.C || h2(r3, e4);
    }));
  }, T2.createContext = function(t2) {
    var e3 = this;
    return { url: t2, resolve: function(r3, n3) {
      return Promise.resolve(e3.resolve(r3, n3 || t2));
    } };
  }, T2.register = function(t2, e3) {
    j2 = [t2, e3];
  }, T2.getRegister = function() {
    var t2 = j2;
    return j2 = void 0, t2;
  };
  var I2 = Object.freeze(/* @__PURE__ */ Object.create(null));
  w2.System = new s2();
  var _2, L2, C2 = Promise.resolve(), M2 = { imports: {}, scopes: {}, depcache: {}, integrity: {} }, R2 = b2;
  if (T2.prepareImport = function(t2) {
    return (R2 || t2) && (d2(), R2 = false), C2;
  }, b2 && (d2(), window.addEventListener("DOMContentLoaded", d2)), T2.addImportMap = function(t2, e3) {
    i2(t2, e3 || y2, M2);
  }, b2) {
    window.addEventListener("error", (function(t2) {
      D2 = t2.filename, F2 = t2.error;
    }));
    var A2 = location.origin;
  }
  T2.createScript = function(t2) {
    var e3 = document.createElement("script");
    e3.async = true, t2.indexOf(A2 + "/") && (e3.crossOrigin = "anonymous");
    var r3 = M2.integrity[t2];
    return r3 && (e3.integrity = r3), e3.src = t2, e3;
  };
  var D2, F2, k2 = {}, z2 = T2.register;
  T2.register = function(t2, e3) {
    if (b2 && "loading" === document.readyState && "string" != typeof t2) {
      var r3 = document.querySelectorAll("script[src]"), n3 = r3[r3.length - 1];
      if (n3) {
        _2 = t2;
        var o3 = this;
        L2 = setTimeout((function() {
          k2[n3.src] = [t2, e3], o3.import(n3.src);
        }));
      }
    } else _2 = void 0;
    return z2.call(this, t2, e3);
  }, T2.instantiate = function(t2, r3) {
    var n3 = k2[t2];
    if (n3) return delete k2[t2], n3;
    var o3 = this;
    return Promise.resolve(T2.createScript(t2)).then((function(n4) {
      return new Promise((function(i3, u3) {
        n4.addEventListener("error", (function() {
          u3(Error(e2(3, [t2, r3].join(", "))));
        })), n4.addEventListener("load", (function() {
          if (document.head.removeChild(n4), D2 === t2) u3(F2);
          else {
            var e3 = o3.getRegister(t2);
            e3 && e3[0] === _2 && clearTimeout(L2), i3(e3);
          }
        })), document.head.appendChild(n4);
      }));
    }));
  }, T2.shouldFetch = function() {
    return false;
  }, "undefined" != typeof fetch && (T2.fetch = fetch);
  var N2 = T2.instantiate, W2 = /^(text|application)\/(x-)?javascript(;|$)/;
  T2.instantiate = function(t2, r3) {
    var n3 = this;
    return this.shouldFetch(t2) ? this.fetch(t2, { credentials: "same-origin", integrity: M2.integrity[t2] }).then((function(o3) {
      if (!o3.ok) throw Error(e2(7, [o3.status, o3.statusText, t2, r3].join(", ")));
      var i3 = o3.headers.get("content-type");
      if (!i3 || !W2.test(i3)) throw Error(e2(4, i3));
      return o3.text().then((function(e3) {
        return e3.indexOf("//# sourceURL=") < 0 && (e3 += "\n//# sourceURL=" + t2), (0, eval)(e3), n3.getRegister(t2);
      }));
    })) : N2.apply(this, arguments);
  }, T2.resolve = function(t2, n3) {
    return a2(M2, r2(t2, n3 = n3 || y2) || t2, n3) || (function(t3, r3) {
      throw Error(e2(8, [t3, r3].join(", ")));
    })(t2, n3);
  };
  var U2 = T2.instantiate;
  T2.instantiate = function(t2, e3) {
    var r3 = M2.depcache[t2];
    if (r3) for (var n3 = 0; n3 < r3.length; n3++) l2(this, this.resolve(r3[n3], t2), t2);
    return U2.call(this, t2, e3);
  }, m2 && "function" == typeof importScripts && (T2.instantiate = function(t2) {
    var e3 = this;
    return Promise.resolve().then((function() {
      return importScripts(t2), e3.getRegister(t2);
    }));
  });
})();
