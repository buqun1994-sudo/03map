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

/*! For license information please see identityWidget-e48dc0b32509f79e9025.js.LICENSE.txt */
!(function() {
  var e = { 18: function(e2, t2, n2) {
    "use strict";
    var r = n2(54237), o = n2(91791), i = TypeError;
    e2.exports = function(e3) {
      if (r(e3)) return e3;
      throw new i(o(e3) + " is not a function");
    };
  }, 335: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = n2(14579), i = n2(85927), a = n2(24686), l = r("".charAt), u = r("".charCodeAt), c = r("".slice), s = function(e3) {
      return function(t3, n3) {
        var r2, s2, f = i(a(t3)), d = o(n3), p = f.length;
        return d < 0 || d >= p ? e3 ? "" : void 0 : (r2 = u(f, d)) < 55296 || r2 > 56319 || d + 1 === p || (s2 = u(f, d + 1)) < 56320 || s2 > 57343 ? e3 ? l(f, d) : r2 : e3 ? c(f, d, d + 2) : s2 - 56320 + (r2 - 55296 << 10) + 65536;
      };
    };
    e2.exports = { codeAt: s(false), charAt: s(true) };
  }, 904: function(e2, t2, n2) {
    "use strict";
    var r = n2(1549), o = n2(65933), i = n2(47797), a = n2(17029), l = n2(54489).f, u = n2(59128), c = n2(4841), s = n2(17219), f = n2(77604), d = "Array Iterator", p = a.set, h = a.getterFor(d);
    e2.exports = u(Array, "Array", function(e3, t3) {
      p(this, { type: d, target: r(e3), index: 0, kind: t3 });
    }, function() {
      var e3 = h(this), t3 = e3.target, n3 = e3.index++;
      if (!t3 || n3 >= t3.length) return e3.target = null, c(void 0, true);
      switch (e3.kind) {
        case "keys":
          return c(n3, false);
        case "values":
          return c(t3[n3], false);
      }
      return c([n3, t3[n3]], false);
    }, "values");
    var v = i.Arguments = i.Array;
    if (o("keys"), o("values"), o("entries"), !s && f && "values" !== v.name) try {
      l(v, "name", { value: "values" });
    } catch (e3) {
    }
  }, 1387: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(17219), i = n2(61324).CONSTRUCTOR, a = n2(44910), l = n2(64703), u = n2(54237), c = n2(49184), s = a && a.prototype;
    if (r({ target: "Promise", proto: true, forced: i, real: true }, { catch: function(e3) {
      return this.then(void 0, e3);
    } }), !o && u(a)) {
      var f = l("Promise").prototype.catch;
      s.catch !== f && c(s, "catch", f, { unsafe: true });
    }
  }, 1549: function(e2, t2, n2) {
    "use strict";
    var r = n2(19287), o = n2(24686);
    e2.exports = function(e3) {
      return r(o(e3));
    };
  }, 1585: function(e2, t2, n2) {
    "use strict";
    var r = n2(82704), o = Function.prototype, i = o.apply, a = o.call;
    e2.exports = "object" == typeof Reflect && Reflect.apply || (r ? a.bind(i) : function() {
      return a.apply(i, arguments);
    });
  }, 2191: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(74511), i = n2(19912), a = function(e3) {
      return o.slice(0, e3.length) === e3;
    };
    e2.exports = a("Bun/") ? "BUN" : a("Cloudflare-Workers") ? "CLOUDFLARE" : a("Deno/") ? "DENO" : a("Node.js/") ? "NODE" : r.Bun && "string" == typeof Bun.version ? "BUN" : r.Deno && "object" == typeof Deno.version ? "DENO" : "process" === i(r.process) ? "NODE" : r.window && r.document ? "BROWSER" : "REST";
  }, 2220: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(83941), i = n2(34676), a = n2(18), l = n2(64159), u = n2(86543), c = n2(90043), s = n2(71597)("forEach", TypeError);
    r({ target: "Iterator", proto: true, real: true, forced: s }, { forEach: function(e3) {
      l(this);
      try {
        a(e3);
      } catch (e4) {
        c(this, "throw", e4);
      }
      if (s) return o(s, this, e3);
      var t3 = u(this), n3 = 0;
      i(t3, function(t4) {
        e3(t4, n3++);
      }, { IS_RECORD: true });
    } });
  }, 2452: function(e2, t2, n2) {
    "use strict";
    var r = n2(24939)("iterator"), o = false;
    try {
      var i = 0, a = { next: function() {
        return { done: !!i++ };
      }, return: function() {
        o = true;
      } };
      a[r] = function() {
        return this;
      }, Array.from(a, function() {
        throw 2;
      });
    } catch (e3) {
    }
    e2.exports = function(e3, t3) {
      try {
        if (!t3 && !o) return false;
      } catch (e4) {
        return false;
      }
      var n3 = false;
      try {
        var i2 = {};
        i2[r] = function() {
          return { next: function() {
            return { done: n3 = true };
          } };
        }, e3(i2);
      } catch (e4) {
      }
      return n3;
    };
  }, 2909: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(60983), i = n2(2452), a = n2(77948).NATIVE_ARRAY_BUFFER_VIEWS, l = r.ArrayBuffer, u = r.Int8Array;
    e2.exports = !a || !o(function() {
      u(1);
    }) || !o(function() {
      new u(-1);
    }) || !i(function(e3) {
      new u(), new u(null), new u(1.5), new u(e3);
    }, true) || o(function() {
      return 1 !== new u(new l(2), 1, void 0).length;
    });
  }, 2958: function(e2, t2, n2) {
    "use strict";
    n2(904), n2(63441);
    var r = n2(18654), o = n2(25624), i = n2(10965), a = n2(64703), l = n2(83941), u = n2(22440), c = n2(77604), s = n2(56768), f = n2(49184), d = n2(46146), p = n2(75199), h = n2(97655), v = n2(12338), m = n2(17029), y = n2(17535), g = n2(54237), b = n2(67961), w = n2(75800), E = n2(36691), S = n2(64159), k = n2(50810), x = n2(85927), C = n2(31168), O = n2(60332), P = n2(34585), T = n2(88523), N = n2(4841), A = n2(77188), R = n2(24939), _ = n2(62608), j = R("iterator"), L = "URLSearchParams", D = L + "Iterator", I = m.set, z = m.getterFor(L), F = m.getterFor(D), M = i("fetch"), U = i("Request"), B = i("Headers"), H = U && U.prototype, W = B && B.prototype, q = o.TypeError, $ = o.encodeURIComponent, V = String.fromCharCode, G = a("String", "fromCodePoint"), K = parseInt, Q = u("".charAt), Y = u([].join), X = u([].push), J = u("".replace), Z = u([].shift), ee = u([].splice), te = u("".split), ne = u("".slice), re = u(/./.exec), oe = /\+/g, ie = /^[0-9a-f]+$/i, ae = function(e3, t3) {
      var n3 = ne(e3, t3, t3 + 2);
      return re(ie, n3) ? K(n3, 16) : NaN;
    }, le = function(e3) {
      for (var t3 = 0, n3 = 128; n3 > 0 && 0 !== (e3 & n3); n3 >>= 1) t3++;
      return t3;
    }, ue = function(e3) {
      var t3 = null;
      switch (e3.length) {
        case 1:
          t3 = e3[0];
          break;
        case 2:
          t3 = (31 & e3[0]) << 6 | 63 & e3[1];
          break;
        case 3:
          t3 = (15 & e3[0]) << 12 | (63 & e3[1]) << 6 | 63 & e3[2];
          break;
        case 4:
          t3 = (7 & e3[0]) << 18 | (63 & e3[1]) << 12 | (63 & e3[2]) << 6 | 63 & e3[3];
      }
      return t3 > 1114111 ? null : t3;
    }, ce = function(e3) {
      for (var t3 = (e3 = J(e3, oe, " ")).length, n3 = "", r2 = 0; r2 < t3; ) {
        var o2 = Q(e3, r2);
        if ("%" === o2) {
          if ("%" === Q(e3, r2 + 1) || r2 + 3 > t3) {
            n3 += "%", r2++;
            continue;
          }
          var i2 = ae(e3, r2 + 1);
          if (i2 != i2) {
            n3 += o2, r2++;
            continue;
          }
          r2 += 2;
          var a2 = le(i2);
          if (0 === a2) o2 = V(i2);
          else {
            if (1 === a2 || a2 > 4) {
              n3 += "�", r2++;
              continue;
            }
            for (var l2 = [i2], u2 = 1; u2 < a2 && !(3 + ++r2 > t3 || "%" !== Q(e3, r2)); ) {
              var c2 = ae(e3, r2 + 1);
              if (c2 != c2) {
                r2 += 3;
                break;
              }
              if (c2 > 191 || c2 < 128) break;
              X(l2, c2), r2 += 2, u2++;
            }
            if (l2.length !== a2) {
              n3 += "�";
              continue;
            }
            var s2 = ue(l2);
            null === s2 ? n3 += "�" : o2 = G(s2);
          }
        }
        n3 += o2, r2++;
      }
      return n3;
    }, se = /[!'()~]|%20/g, fe = { "!": "%21", "'": "%27", "(": "%28", ")": "%29", "~": "%7E", "%20": "+" }, de = function(e3) {
      return fe[e3];
    }, pe = function(e3) {
      return J($(e3), se, de);
    }, he = v(function(e3, t3) {
      I(this, { type: D, target: z(e3).entries, index: 0, kind: t3 });
    }, L, function() {
      var e3 = F(this), t3 = e3.target, n3 = e3.index++;
      if (!t3 || n3 >= t3.length) return e3.target = null, N(void 0, true);
      var r2 = t3[n3];
      switch (e3.kind) {
        case "keys":
          return N(r2.key, false);
        case "values":
          return N(r2.value, false);
      }
      return N([r2.key, r2.value], false);
    }, true), ve = function(e3) {
      this.entries = [], this.url = null, void 0 !== e3 && (k(e3) ? this.parseObject(e3) : this.parseQuery("string" == typeof e3 ? "?" === Q(e3, 0) ? ne(e3, 1) : e3 : x(e3)));
    };
    ve.prototype = { type: L, bindURL: function(e3) {
      this.url = e3, this.update();
    }, parseObject: function(e3) {
      var t3, n3, r2, o2, i2, a2, u2, c2 = this.entries, s2 = T(e3);
      if (s2) for (n3 = (t3 = P(e3, s2)).next; !(r2 = l(n3, t3)).done; ) {
        if (i2 = (o2 = P(S(r2.value))).next, (a2 = l(i2, o2)).done || (u2 = l(i2, o2)).done || !l(i2, o2).done) throw new q("Expected sequence with length 2");
        X(c2, { key: x(a2.value), value: x(u2.value) });
      }
      else for (var f2 in e3) b(e3, f2) && X(c2, { key: f2, value: x(e3[f2]) });
    }, parseQuery: function(e3) {
      if (e3) for (var t3, n3, r2 = this.entries, o2 = te(e3, "&"), i2 = 0; i2 < o2.length; ) (t3 = o2[i2++]).length && (n3 = te(t3, "="), X(r2, { key: ce(Z(n3)), value: ce(Y(n3, "=")) }));
    }, serialize: function() {
      for (var e3, t3 = this.entries, n3 = [], r2 = 0; r2 < t3.length; ) e3 = t3[r2++], X(n3, pe(e3.key) + "=" + pe(e3.value));
      return Y(n3, "&");
    }, update: function() {
      this.entries.length = 0, this.parseQuery(this.url.query);
    }, updateURL: function() {
      this.url && this.url.update();
    } };
    var me = function() {
      y(this, ye);
      var e3 = I(this, new ve(arguments.length > 0 ? arguments[0] : void 0));
      c || (this.size = e3.entries.length);
    }, ye = me.prototype;
    if (p(ye, { append: function(e3, t3) {
      var n3 = z(this);
      A(arguments.length, 2), X(n3.entries, { key: x(e3), value: x(t3) }), c || this.size++, n3.updateURL();
    }, delete: function(e3) {
      for (var t3 = z(this), n3 = A(arguments.length, 1), r2 = t3.entries, o2 = x(e3), i2 = n3 < 2 ? void 0 : arguments[1], a2 = void 0 === i2 ? i2 : x(i2), l2 = 0; l2 < r2.length; ) {
        var u2 = r2[l2];
        if (u2.key !== o2 || void 0 !== a2 && u2.value !== a2) l2++;
        else if (ee(r2, l2, 1), void 0 !== a2) break;
      }
      c || (this.size = r2.length), t3.updateURL();
    }, get: function(e3) {
      var t3 = z(this).entries;
      A(arguments.length, 1);
      for (var n3 = x(e3), r2 = 0; r2 < t3.length; r2++) if (t3[r2].key === n3) return t3[r2].value;
      return null;
    }, getAll: function(e3) {
      var t3 = z(this).entries;
      A(arguments.length, 1);
      for (var n3 = x(e3), r2 = [], o2 = 0; o2 < t3.length; o2++) t3[o2].key === n3 && X(r2, t3[o2].value);
      return r2;
    }, has: function(e3) {
      for (var t3 = z(this).entries, n3 = A(arguments.length, 1), r2 = x(e3), o2 = n3 < 2 ? void 0 : arguments[1], i2 = void 0 === o2 ? o2 : x(o2), a2 = 0; a2 < t3.length; ) {
        var l2 = t3[a2++];
        if (l2.key === r2 && (void 0 === i2 || l2.value === i2)) return true;
      }
      return false;
    }, set: function(e3, t3) {
      var n3 = z(this);
      A(arguments.length, 1);
      for (var r2, o2 = n3.entries, i2 = false, a2 = x(e3), l2 = x(t3), u2 = 0; u2 < o2.length; u2++) (r2 = o2[u2]).key === a2 && (i2 ? ee(o2, u2--, 1) : (i2 = true, r2.value = l2));
      i2 || X(o2, { key: a2, value: l2 }), c || (this.size = o2.length), n3.updateURL();
    }, sort: function() {
      var e3 = z(this);
      _(e3.entries, function(e4, t3) {
        return e4.key > t3.key ? 1 : -1;
      }), e3.updateURL();
    }, forEach: function(e3) {
      for (var t3, n3 = z(this).entries, r2 = w(e3, arguments.length > 1 ? arguments[1] : void 0), o2 = 0; o2 < n3.length; ) r2((t3 = n3[o2++]).value, t3.key, this);
    }, keys: function() {
      return new he(this, "keys");
    }, values: function() {
      return new he(this, "values");
    }, entries: function() {
      return new he(this, "entries");
    } }, { enumerable: true }), f(ye, j, ye.entries, { name: "entries" }), f(ye, "toString", function() {
      return z(this).serialize();
    }, { enumerable: true }), c && d(ye, "size", { get: function() {
      return z(this).entries.length;
    }, configurable: true, enumerable: true }), h(me, L), r({ global: true, constructor: true, forced: !s }, { URLSearchParams: me }), !s && g(B)) {
      var ge = u(W.has), be = u(W.set), we = function(e3) {
        if (k(e3)) {
          var t3, n3 = e3.body;
          if (E(n3) === L) return t3 = e3.headers ? new B(e3.headers) : new B(), ge(t3, "content-type") || be(t3, "content-type", "application/x-www-form-urlencoded;charset=UTF-8"), C(e3, { body: O(0, x(n3)), headers: O(0, t3) });
        }
        return e3;
      };
      if (g(M) && r({ global: true, enumerable: true, dontCallGetSet: true, forced: true }, { fetch: function(e3) {
        return M(e3, arguments.length > 1 ? we(arguments[1]) : {});
      } }), g(U)) {
        var Ee = function(e3) {
          return y(this, H), new U(e3, arguments.length > 1 ? we(arguments[1]) : {});
        };
        H.constructor = Ee, Ee.prototype = H, r({ global: true, constructor: true, dontCallGetSet: true, forced: true }, { Request: Ee });
      }
    }
    e2.exports = { URLSearchParams: me, getState: z };
  }, 3875: function(e2, t2, n2) {
    "use strict";
    var r = n2(49123), o = n2(77577), i = n2(11323), a = Error.captureStackTrace;
    e2.exports = function(e3, t3, n3, l) {
      i && (a ? a(e3, t3) : r(e3, "stack", o(n3, l)));
    };
  }, 3962: function(e2, t2, n2) {
    "use strict";
    n2(25545);
    var r = n2(18654), o = n2(62298);
    r({ target: "String", proto: true, name: "trimEnd", forced: "".trimEnd !== o }, { trimEnd: o });
  }, 4328: function(e2, t2, n2) {
    "use strict";
    n2(41558);
  }, 4820: function(e2, t2, n2) {
    "use strict";
    var r = n2(14053), o = n2(91791), i = TypeError;
    e2.exports = function(e3) {
      if (r(e3)) return e3;
      throw new i(o(e3) + " is not a constructor");
    };
  }, 4841: function(e2) {
    "use strict";
    e2.exports = function(e3, t2) {
      return { value: e3, done: t2 };
    };
  }, 5386: function(e2, t2, n2) {
    "use strict";
    var r = n2(50810), o = n2(17029).get;
    e2.exports = function(e3) {
      if (!r(e3)) return false;
      var t3 = o(e3);
      return !!t3 && "RawJSON" === t3.type;
    };
  }, 5892: function() {
    window.addEventListener("load", () => {
      var e2, t2, n2, r;
      e2 = false, t2 = false, n2 = () => {
        document.documentElement.classList.toggle("form-mouseuser", e2), document.documentElement.classList.toggle("form-keyboarduser", t2);
      }, r = () => {
        e2 || (e2 = true, t2 = false, n2());
      }, document.addEventListener("mousedown", r), document.addEventListener("keydown", (r2) => {
        if (!t2 && ["Tab", "ArrowLeft", "ArrowUp", "ArrowRight", "ArrowDown"].indexOf(r2.key) > -1) {
          e2 = false, t2 = true, n2();
          var o = document.querySelector(".focused");
          o && o.classList.remove("focused");
        }
      }), r();
    });
  }, 6244: function(e2, t2, n2) {
    "use strict";
    var r = n2(77948), o = n2(23182), i = n2(14579), a = r.aTypedArray;
    (0, r.exportTypedArrayMethod)("at", function(e3) {
      var t3 = a(this), n3 = o(t3), r2 = i(e3), l = r2 >= 0 ? r2 : n3 + r2;
      return l < 0 || l >= n3 ? void 0 : t3[l];
    });
  }, 6665: function(e2, t2, n2) {
    "use strict";
    n2(31927)("Uint8", function(e3) {
      return function(t3, n3, r) {
        return e3(this, t3, n3, r);
      };
    });
  }, 6902: function(e2, t2, n2) {
    "use strict";
    var r = n2(10961), o = TypeError;
    e2.exports = function(e3) {
      var t3 = r(e3, "number");
      if ("number" == typeof t3) throw new o("Can't convert number to bigint");
      return BigInt(t3);
    };
  }, 6940: function(e2, t2, n2) {
    "use strict";
    var r = n2(74511);
    e2.exports = /web0s(?!.*chrome)/i.test(r);
  }, 7171: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = n2(60983), i = n2(54237), a = n2(67961), l = n2(77604), u = n2(38006).CONFIGURABLE, c = n2(51346), s = n2(17029), f = s.enforce, d = s.get, p = String, h = Object.defineProperty, v = r("".slice), m = r("".replace), y = r([].join), g = l && !o(function() {
      return 8 !== h(function() {
      }, "length", { value: 8 }).length;
    }), b = String(String).split("String"), w = e2.exports = function(e3, t3, n3) {
      "Symbol(" === v(p(t3), 0, 7) && (t3 = "[" + m(p(t3), /^Symbol\(([^)]*)\).*$/, "$1") + "]"), n3 && n3.getter && (t3 = "get " + t3), n3 && n3.setter && (t3 = "set " + t3), (!a(e3, "name") || u && e3.name !== t3) && (l ? h(e3, "name", { value: t3, configurable: true }) : e3.name = t3), g && n3 && a(n3, "arity") && e3.length !== n3.arity && h(e3, "length", { value: n3.arity });
      try {
        n3 && a(n3, "constructor") && n3.constructor ? l && h(e3, "prototype", { writable: false }) : e3.prototype && (e3.prototype = void 0);
      } catch (e4) {
      }
      var r2 = f(e3);
      return a(r2, "source") || (r2.source = y(b, "string" == typeof t3 ? t3 : "")), e3;
    };
    Function.prototype.toString = w(function() {
      return i(this) && d(this).source || c(this);
    }, "toString");
  }, 7379: function(e2, t2) {
    var n2;
    !(function() {
      "use strict";
      var r = {}.hasOwnProperty;
      function o() {
        for (var e3 = [], t3 = 0; t3 < arguments.length; t3++) {
          var n3 = arguments[t3];
          if (n3) {
            var i = typeof n3;
            if ("string" === i || "number" === i) e3.push(n3);
            else if (Array.isArray(n3)) {
              if (n3.length) {
                var a = o.apply(null, n3);
                a && e3.push(a);
              }
            } else if ("object" === i) {
              if (n3.toString !== Object.prototype.toString && !n3.toString.toString().includes("[native code]")) {
                e3.push(n3.toString());
                continue;
              }
              for (var l in n3) r.call(n3, l) && n3[l] && e3.push(l);
            }
          }
        }
        return e3.join(" ");
      }
      e2.exports ? (o.default = o, e2.exports = o) : void 0 === (n2 = function() {
        return o;
      }.apply(t2, [])) || (e2.exports = n2);
    })();
  }, 8254: function(e2, t2, n2) {
    "use strict";
    var r = n2(14579), o = RangeError;
    e2.exports = function(e3) {
      var t3 = r(e3);
      if (t3 < 0) throw new o("The argument can't be less than 0");
      return t3;
    };
  }, 8935: function(e2, t2, n2) {
    "use strict";
    var r = n2(77604), o = n2(26912), i = TypeError, a = Object.getOwnPropertyDescriptor, l = r && !(function() {
      if (void 0 !== this) return true;
      try {
        Object.defineProperty([], "length", { writable: false }).length = 1;
      } catch (e3) {
        return e3 instanceof TypeError;
      }
    })();
    e2.exports = l ? function(e3, t3) {
      if (o(e3) && !a(e3, "length").writable) throw new i("Cannot set read only .length");
      return e3.length = t3;
    } : function(e3, t3) {
      return e3.length = t3;
    };
  }, 8969: function(e2, t2, n2) {
    "use strict";
    var r = n2(2191);
    e2.exports = "NODE" === r;
  }, 9155: function(e2, t2, n2) {
    "use strict";
    var r = n2(64159);
    e2.exports = function() {
      var e3 = r(this), t3 = "";
      return e3.hasIndices && (t3 += "d"), e3.global && (t3 += "g"), e3.ignoreCase && (t3 += "i"), e3.multiline && (t3 += "m"), e3.dotAll && (t3 += "s"), e3.unicode && (t3 += "u"), e3.unicodeSets && (t3 += "v"), e3.sticky && (t3 += "y"), t3;
    };
  }, 9672: function(e2, t2, n2) {
    "use strict";
    n2(16855);
  }, 9679: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(50810), i = r.document, a = o(i) && o(i.createElement);
    e2.exports = function(e3) {
      return a ? i.createElement(e3) : {};
    };
  }, 9685: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(1585), i = n2(77948), a = n2(60983), l = n2(90936), u = r.Int8Array, c = i.aTypedArray, s = i.exportTypedArrayMethod, f = [].toLocaleString, d = !!u && a(function() {
      f.call(new u(1));
    });
    s("toLocaleString", function() {
      return o(f, d ? l(c(this)) : c(this), l(arguments));
    }, a(function() {
      return [1, 2].toLocaleString() !== new u([1, 2]).toLocaleString();
    }) || !a(function() {
      u.prototype.toLocaleString.call([1, 2]);
    }));
  }, 10163: function(e2, t2, n2) {
    "use strict";
    var r = n2(85927);
    e2.exports = function(e3, t3) {
      return void 0 === e3 ? arguments.length < 2 ? "" : t3 : r(e3);
    };
  }, 10486: function(e2, t2, n2) {
    "use strict";
    var r = n2(83941), o = n2(54237), i = n2(50810), a = TypeError;
    e2.exports = function(e3, t3) {
      var n3, l;
      if ("string" === t3 && o(n3 = e3.toString) && !i(l = r(n3, e3))) return l;
      if (o(n3 = e3.valueOf) && !i(l = r(n3, e3))) return l;
      if ("string" !== t3 && o(n3 = e3.toString) && !i(l = r(n3, e3))) return l;
      throw new a("Can't convert object to primitive value");
    };
  }, 10961: function(e2, t2, n2) {
    "use strict";
    var r = n2(83941), o = n2(50810), i = n2(87805), a = n2(67398), l = n2(10486), u = n2(24939), c = TypeError, s = u("toPrimitive");
    e2.exports = function(e3, t3) {
      if (!o(e3) || i(e3)) return e3;
      var n3, u2 = a(e3, s);
      if (u2) {
        if (void 0 === t3 && (t3 = "default"), n3 = r(u2, e3, t3), !o(n3) || i(n3)) return n3;
        throw new c("Can't convert object to primitive value");
      }
      return void 0 === t3 && (t3 = "number"), l(e3, t3);
    };
  }, 10965: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(77604), i = Object.getOwnPropertyDescriptor;
    e2.exports = function(e3) {
      if (!o) return r[e3];
      var t3 = i(r, e3);
      return t3 && t3.value;
    };
  }, 11244: function(e2, t2, n2) {
    "use strict";
    var r = n2(77948), o = n2(56013), i = n2(6902), a = n2(36691), l = n2(83941), u = n2(22440), c = n2(60983), s = r.aTypedArray, f = r.exportTypedArrayMethod, d = u("".slice);
    f("fill", function(e3) {
      var t3 = arguments.length;
      s(this);
      var n3 = "Big" === d(a(this), 0, 3) ? i(e3) : +e3;
      return l(o, this, n3, t3 > 1 ? arguments[1] : void 0, t3 > 2 ? arguments[2] : void 0);
    }, c(function() {
      var e3 = 0;
      return new Int8Array(2).fill({ valueOf: function() {
        return e3++;
      } }), 1 !== e3;
    }));
  }, 11268: function(e2, t2, n2) {
    "use strict";
    n2(73375);
    var r = n2(83941), o = n2(49184), i = n2(58003), a = n2(60983), l = n2(24939), u = n2(49123), c = l("species"), s = RegExp.prototype;
    e2.exports = function(e3, t3, n3, f) {
      var d = l(e3), p = !a(function() {
        var t4 = {};
        return t4[d] = function() {
          return 7;
        }, 7 !== ""[e3](t4);
      }), h = p && !a(function() {
        var t4 = false, n4 = /a/;
        if ("split" === e3) {
          var r2 = {};
          r2[c] = function() {
            return n4;
          }, (n4 = { constructor: r2, flags: "" })[d] = /./[d];
        }
        return n4.exec = function() {
          return t4 = true, null;
        }, n4[d](""), !t4;
      });
      if (!p || !h || n3) {
        var v = /./[d], m = t3(d, ""[e3], function(e4, t4, n4, o2, a2) {
          var l2 = t4.exec;
          return l2 === i || l2 === s.exec ? p && !a2 ? { done: true, value: r(v, t4, n4, o2) } : { done: true, value: r(e4, n4, t4, o2) } : { done: false };
        });
        o(String.prototype, e3, m[0]), o(s, d, m[1]);
      }
      f && u(s[d], "sham", true);
    };
  }, 11323: function(e2, t2, n2) {
    "use strict";
    var r = n2(60983), o = n2(60332);
    e2.exports = !r(function() {
      var e3 = new Error("a");
      return !("stack" in e3) || (Object.defineProperty(e3, "stack", o(1, 7)), 7 !== e3.stack);
    });
  }, 12338: function(e2, t2, n2) {
    "use strict";
    var r = n2(38849).IteratorPrototype, o = n2(31168), i = n2(60332), a = n2(97655), l = n2(47797), u = function() {
      return this;
    };
    e2.exports = function(e3, t3, n3, c) {
      var s = t3 + " Iterator";
      return e3.prototype = o(r, { next: i(+!c, n3) }), a(e3, s, false, true), l[s] = u, e3;
    };
  }, 12345: function(e2, t2, n2) {
    "use strict";
    var r = n2(83941), o = n2(22440), i = n2(11268), a = n2(64159), l = n2(50810), u = n2(81478), c = n2(85927), s = n2(24686), f = n2(67398), d = n2(64461), p = n2(51186), h = n2(32786), v = o("".indexOf);
    i("match", function(e3, t3, n3) {
      return [function(t4) {
        var n4 = s(this), o2 = l(t4) ? f(t4, e3) : void 0;
        return o2 ? r(o2, t4, n4) : new RegExp(t4)[e3](c(n4));
      }, function(e4) {
        var r2 = a(this), o2 = c(e4), i2 = n3(t3, r2, o2);
        if (i2.done) return i2.value;
        var l2 = c(p(r2));
        if (-1 === v(l2, "g")) return h(r2, o2);
        var s2 = -1 !== v(l2, "u");
        r2.lastIndex = 0;
        for (var f2, m = [], y = 0; null !== (f2 = h(r2, o2)); ) {
          var g = c(f2[0]);
          m[y] = g, "" === g && (r2.lastIndex = d(o2, u(r2.lastIndex), s2)), y++;
        }
        return 0 === y ? null : m;
      }];
    });
  }, 12391: function(e2) {
    "use strict";
    e2.exports = function(e3) {
      try {
        return { error: false, value: e3() };
      } catch (e4) {
        return { error: true, value: e4 };
      }
    };
  }, 13005: function(e2) {
    "use strict";
    e2.exports = function(e3) {
      return null == e3;
    };
  }, 13071: function(e2, t2, n2) {
    "use strict";
    var r = n2(14537), o = n2(70584), i = r("keys");
    e2.exports = function(e3) {
      return i[e3] || (i[e3] = o(e3));
    };
  }, 13811: function(e2, t2, n2) {
    "use strict";
    var r = n2(18), o = TypeError, i = function(e3) {
      var t3, n3;
      this.promise = new e3(function(e4, r2) {
        if (void 0 !== t3 || void 0 !== n3) throw new o("Bad Promise constructor");
        t3 = e4, n3 = r2;
      }), this.resolve = r(t3), this.reject = r(n3);
    };
    e2.exports.f = function(e3) {
      return new i(e3);
    };
  }, 13995: function(e2, t2, n2) {
    "use strict";
    var r = n2(74511);
    e2.exports = /MSIE|Trident/.test(r);
  }, 14021: function(e2, t2, n2) {
    "use strict";
    var r = n2(74511).match(/firefox\/(\d+)/i);
    e2.exports = !!r && +r[1];
  }, 14053: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = n2(60983), i = n2(54237), a = n2(36691), l = n2(64703), u = n2(51346), c = function() {
    }, s = l("Reflect", "construct"), f = /^\s*(?:class|function)\b/, d = r(f.exec), p = !f.test(c), h = function(e3) {
      if (!i(e3)) return false;
      try {
        return s(c, [], e3), true;
      } catch (e4) {
        return false;
      }
    }, v = function(e3) {
      if (!i(e3)) return false;
      switch (a(e3)) {
        case "AsyncFunction":
        case "GeneratorFunction":
        case "AsyncGeneratorFunction":
          return false;
      }
      try {
        return p || !!d(f, u(e3));
      } catch (e4) {
        return true;
      }
    };
    v.sham = true, e2.exports = !s || o(function() {
      var e3;
      return h(h.call) || !h(Object) || !h(function() {
        e3 = true;
      }) || e3;
    }) ? v : h;
  }, 14166: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(94203), i = n2(18), a = n2(99373), l = n2(23182), u = n2(29349);
    r({ target: "Array", proto: true }, { flatMap: function(e3) {
      var t3, n3 = a(this), r2 = l(n3);
      return i(e3), t3 = u(n3, 0), o(t3, n3, n3, r2, 0, 1, e3, arguments.length > 1 ? arguments[1] : void 0), t3;
    } });
  }, 14537: function(e2, t2, n2) {
    "use strict";
    var r = n2(54581);
    e2.exports = function(e3, t3) {
      return r[e3] || (r[e3] = t3 || {});
    };
  }, 14579: function(e2, t2, n2) {
    "use strict";
    var r = n2(36045);
    e2.exports = function(e3) {
      var t3 = +e3;
      return t3 != t3 || 0 === t3 ? 0 : r(t3);
    };
  }, 15093: function(e2, t2, n2) {
    "use strict";
    n2(2220);
  }, 15255: function(e2, t2, n2) {
    "use strict";
    e2.exports = n2(44295);
  }, 15957: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(95741);
    r({ target: "Object", stat: true, arity: 2, forced: Object.assign !== o }, { assign: o });
  }, 16555: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(22440), i = n2(47991), a = n2(24686), l = n2(85927), u = n2(94532), c = o("".indexOf);
    r({ target: "String", proto: true, forced: !u("includes") }, { includes: function(e3) {
      return !!~c(l(a(this)), l(i(e3)), arguments.length > 1 ? arguments[1] : void 0);
    } });
  }, 16855: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(25624), i = n2(17535), a = n2(64159), l = n2(54237), u = n2(25931), c = n2(46146), s = n2(35800), f = n2(60983), d = n2(67961), p = n2(24939), h = n2(38849).IteratorPrototype, v = n2(77604), m = n2(17219), y = "constructor", g = "Iterator", b = p("toStringTag"), w = TypeError, E = o[g], S = m || !l(E) || E.prototype !== h || !f(function() {
      E({});
    }), k = function() {
      if (i(this, h), u(this) === h) throw new w("Abstract class Iterator not directly constructable");
    }, x = function(e3, t3) {
      v ? c(h, e3, { configurable: true, get: function() {
        return t3;
      }, set: function(t4) {
        if (a(this), this === h) throw new w("You can't redefine this property");
        d(this, e3) ? this[e3] = t4 : s(this, e3, t4);
      } }) : h[e3] = t3;
    };
    d(h, b) || x(b, g), !S && d(h, y) && h[y] !== Object || x(y, k), k.prototype = h, r({ global: true, constructor: true, forced: S }, { Iterator: k });
  }, 16976: function(e2, t2, n2) {
    "use strict";
    n2(69521);
  }, 17029: function(e2, t2, n2) {
    "use strict";
    var r, o, i, a = n2(62646), l = n2(25624), u = n2(50810), c = n2(49123), s = n2(67961), f = n2(54581), d = n2(13071), p = n2(90765), h = "Object already initialized", v = l.TypeError, m = l.WeakMap;
    if (a || f.state) {
      var y = f.state || (f.state = new m());
      y.get = y.get, y.has = y.has, y.set = y.set, r = function(e3, t3) {
        if (y.has(e3)) throw new v(h);
        return t3.facade = e3, y.set(e3, t3), t3;
      }, o = function(e3) {
        return y.get(e3) || {};
      }, i = function(e3) {
        return y.has(e3);
      };
    } else {
      var g = d("state");
      p[g] = true, r = function(e3, t3) {
        if (s(e3, g)) throw new v(h);
        return t3.facade = e3, c(e3, g, t3), t3;
      }, o = function(e3) {
        return s(e3, g) ? e3[g] : {};
      }, i = function(e3) {
        return s(e3, g);
      };
    }
    e2.exports = { set: r, get: o, has: i, enforce: function(e3) {
      return i(e3) ? o(e3) : r(e3, {});
    }, getterFor: function(e3) {
      return function(t3) {
        var n3;
        if (!u(t3) || (n3 = o(t3)).type !== e3) throw new v("Incompatible receiver, " + e3 + " required");
        return n3;
      };
    } };
  }, 17219: function(e2) {
    "use strict";
    e2.exports = false;
  }, 17271: function(e2, t2, n2) {
    "use strict";
    var r = n2(71527), o = n2(60983), i = n2(25624).String;
    e2.exports = !!Object.getOwnPropertySymbols && !o(function() {
      var e3 = Symbol("symbol detection");
      return !i(e3) || !(Object(e3) instanceof Symbol) || !Symbol.sham && r && r < 41;
    });
  }, 17535: function(e2, t2, n2) {
    "use strict";
    var r = n2(29793), o = TypeError;
    e2.exports = function(e3, t3) {
      if (r(t3, e3)) return e3;
      throw new o("Incorrect invocation");
    };
  }, 17765: function(e2, t2, n2) {
    "use strict";
    var r = n2(64703);
    e2.exports = r("document", "documentElement");
  }, 17987: function(e2, t2, n2) {
    "use strict";
    var r = n2(23182), o = n2(77948), i = o.aTypedArray, a = o.exportTypedArrayMethod, l = o.getTypedArrayConstructor;
    a("toReversed", function() {
      for (var e3 = i(this), t3 = r(e3), n3 = new (l(e3))(t3), o2 = 0; o2 < t3; o2++) n3[o2] = e3[t3 - o2 - 1];
      return n3;
    });
  }, 18356: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(46349).start;
    r({ target: "String", proto: true, forced: n2(31583) }, { padStart: function(e3) {
      return o(this, e3, arguments.length > 1 ? arguments[1] : void 0);
    } });
  }, 18408: function(e2, t2, n2) {
    "use strict";
    var r = n2(60684), o = n2(67087).concat("length", "prototype");
    t2.f = Object.getOwnPropertyNames || function(e3) {
      return r(e3, o);
    };
  }, 18654: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(48779).f, i = n2(49123), a = n2(49184), l = n2(95905), u = n2(68948), c = n2(44260);
    e2.exports = function(e3, t3) {
      var n3, s, f, d, p, h = e3.target, v = e3.global, m = e3.stat;
      if (n3 = v ? r : m ? r[h] || l(h, {}) : r[h] && r[h].prototype) for (s in t3) {
        if (d = t3[s], f = e3.dontCallGetSet ? (p = o(n3, s)) && p.value : n3[s], !c(v ? s : h + (m ? "." : "#") + s, e3.forced) && void 0 !== f) {
          if (typeof d == typeof f) continue;
          u(d, f);
        }
        (e3.sham || f && f.sham) && i(d, "sham", true), a(n3, s, d, e3);
      }
    };
  }, 18779: function(e2, t2, n2) {
    "use strict";
    var r = n2(75800), o = n2(83941), i = n2(4820), a = n2(99373), l = n2(23182), u = n2(34585), c = n2(88523), s = n2(44921), f = n2(54095), d = n2(77948).aTypedArrayConstructor, p = n2(6902);
    e2.exports = function(e3) {
      var t3, n3, h, v, m, y, g, b, w = i(this), E = a(e3), S = arguments.length, k = S > 1 ? arguments[1] : void 0, x = void 0 !== k, C = c(E);
      if (C && !s(C)) for (b = (g = u(E, C)).next, E = []; !(y = o(b, g)).done; ) E.push(y.value);
      for (x && S > 2 && (k = r(k, arguments[2])), n3 = l(E), h = new (d(w))(n3), v = f(h), t3 = 0; n3 > t3; t3++) m = x ? k(E[t3], t3) : E[t3], h[t3] = v ? p(m) : +m;
      return h;
    };
  }, 19096: function(e2, t2, n2) {
    "use strict";
    var r = n2(14579), o = n2(81478), i = RangeError;
    e2.exports = function(e3) {
      if (void 0 === e3) return 0;
      var t3 = r(e3), n3 = o(t3);
      if (t3 !== n3) throw new i("Wrong length or index");
      return n3;
    };
  }, 19132: function(e2, t2, n2) {
    "use strict";
    var r, o, i, a, l = n2(18654), u = n2(17219), c = n2(8969), s = n2(25624), f = n2(56215), d = n2(83941), p = n2(49184), h = n2(50543), v = n2(97655), m = n2(63081), y = n2(18), g = n2(54237), b = n2(50810), w = n2(17535), E = n2(54141), S = n2(83569).set, k = n2(86379), x = n2(38221), C = n2(12391), O = n2(97393), P = n2(17029), T = n2(44910), N = n2(61324), A = n2(13811), R = "Promise", _ = N.CONSTRUCTOR, j = N.REJECTION_EVENT, L = N.SUBCLASSING, D = P.getterFor(R), I = P.set, z = T && T.prototype, F = T, M = z, U = s.TypeError, B = s.document, H = s.process, W = A.f, q = W, $ = !!(B && B.createEvent && s.dispatchEvent), V = "unhandledrejection", G = function(e3) {
      var t3;
      return !(!b(e3) || !g(t3 = e3.then)) && t3;
    }, K = function(e3, t3) {
      var n3, r2, o2, i2 = t3.value, a2 = 1 === t3.state, l2 = a2 ? e3.ok : e3.fail, u2 = e3.resolve, c2 = e3.reject, s2 = e3.domain;
      try {
        l2 ? (a2 || (2 === t3.rejection && Z(t3), t3.rejection = 1), true === l2 ? n3 = i2 : (s2 && s2.enter(), n3 = l2(i2), s2 && (s2.exit(), o2 = true)), n3 === e3.promise ? c2(new U("Promise-chain cycle")) : (r2 = G(n3)) ? d(r2, n3, u2, c2) : u2(n3)) : c2(i2);
      } catch (e4) {
        s2 && !o2 && s2.exit(), c2(e4);
      }
    }, Q = function(e3, t3) {
      e3.notified || (e3.notified = true, k(function() {
        for (var n3, r2 = e3.reactions; n3 = r2.get(); ) K(n3, e3);
        e3.notified = false, t3 && !e3.rejection && X(e3);
      }));
    }, Y = function(e3, t3, n3) {
      var r2, o2;
      $ ? ((r2 = B.createEvent("Event")).promise = t3, r2.reason = n3, r2.initEvent(e3, false, true), s.dispatchEvent(r2)) : r2 = { promise: t3, reason: n3 }, !j && (o2 = s["on" + e3]) ? o2(r2) : e3 === V && x("Unhandled promise rejection", n3);
    }, X = function(e3) {
      d(S, s, function() {
        var t3, n3 = e3.facade, r2 = e3.value;
        if (J(e3) && (t3 = C(function() {
          c ? H.emit("unhandledRejection", r2, n3) : Y(V, n3, r2);
        }), e3.rejection = c || J(e3) ? 2 : 1, t3.error)) throw t3.value;
      });
    }, J = function(e3) {
      return 1 !== e3.rejection && !e3.parent;
    }, Z = function(e3) {
      d(S, s, function() {
        var t3 = e3.facade;
        c ? H.emit("rejectionHandled", t3) : Y("rejectionhandled", t3, e3.value);
      });
    }, ee = function(e3, t3, n3) {
      return function(r2) {
        e3(t3, r2, n3);
      };
    }, te = function(e3, t3, n3) {
      e3.done || (e3.done = true, n3 && (e3 = n3), e3.value = t3, e3.state = 2, Q(e3, true));
    }, ne = function(e3, t3, n3) {
      if (!e3.done) {
        e3.done = true, n3 && (e3 = n3);
        try {
          if (e3.facade === t3) throw new U("Promise can't be resolved itself");
          var r2 = G(t3);
          r2 ? k(function() {
            var n4 = { done: false };
            try {
              d(r2, t3, ee(ne, n4, e3), ee(te, n4, e3));
            } catch (t4) {
              te(n4, t4, e3);
            }
          }) : (e3.value = t3, e3.state = 1, Q(e3, false));
        } catch (t4) {
          te({ done: false }, t4, e3);
        }
      }
    };
    if (_ && (M = (F = function(e3) {
      w(this, M), y(e3), d(r, this);
      var t3 = D(this);
      try {
        e3(ee(ne, t3), ee(te, t3));
      } catch (e4) {
        te(t3, e4);
      }
    }).prototype, (r = function(e3) {
      I(this, { type: R, done: false, notified: false, parent: false, reactions: new O(), rejection: false, state: 0, value: null });
    }).prototype = p(M, "then", function(e3, t3) {
      var n3 = D(this), r2 = W(E(this, F));
      return n3.parent = true, r2.ok = !g(e3) || e3, r2.fail = g(t3) && t3, r2.domain = c ? H.domain : void 0, 0 === n3.state ? n3.reactions.add(r2) : k(function() {
        K(r2, n3);
      }), r2.promise;
    }), o = function() {
      var e3 = new r(), t3 = D(e3);
      this.promise = e3, this.resolve = ee(ne, t3), this.reject = ee(te, t3);
    }, A.f = W = function(e3) {
      return e3 === F || e3 === i ? new o(e3) : q(e3);
    }, !u && g(T) && z !== Object.prototype)) {
      a = z.then, L || p(z, "then", function(e3, t3) {
        var n3 = this;
        return new F(function(e4, t4) {
          d(a, n3, e4, t4);
        }).then(e3, t3);
      }, { unsafe: true });
      try {
        delete z.constructor;
      } catch (e3) {
      }
      h && h(z, M);
    }
    l({ global: true, constructor: true, wrap: true, forced: _ }, { Promise: F }), i = f.Promise, v(F, R, false, true), m(R);
  }, 19287: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = n2(60983), i = n2(19912), a = Object, l = r("".split);
    e2.exports = o(function() {
      return !a("z").propertyIsEnumerable(0);
    }) ? function(e3) {
      return "String" === i(e3) ? l(e3, "") : a(e3);
    } : a;
  }, 19378: function(e2, t2, n2) {
    "use strict";
    var r = n2(14579), o = Math.max, i = Math.min;
    e2.exports = function(e3, t3) {
      var n3 = r(e3);
      return n3 < 0 ? o(n3 + t3, 0) : i(n3, t3);
    };
  }, 19912: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = r({}.toString), i = r("".slice);
    e2.exports = function(e3) {
      return i(o(e3), 8, -1);
    };
  }, 19922: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(22440), i = n2(77604), a = n2(40699), l = n2(38006), u = n2(49123), c = n2(46146), s = n2(75199), f = n2(60983), d = n2(17535), p = n2(14579), h = n2(81478), v = n2(19096), m = n2(64201), y = n2(22738), g = n2(25931), b = n2(50543), w = n2(56013), E = n2(90936), S = n2(34327), k = n2(68948), x = n2(97655), C = n2(17029), O = l.PROPER, P = l.CONFIGURABLE, T = "ArrayBuffer", N = "DataView", A = "prototype", R = "Wrong index", _ = C.getterFor(T), j = C.getterFor(N), L = C.set, D = r[T], I = D, z = I && I[A], F = r[N], M = F && F[A], U = Object.prototype, B = r.Array, H = r.RangeError, W = o(w), q = o([].reverse), $ = y.pack, V = y.unpack, G = function(e3) {
      return [255 & e3];
    }, K = function(e3) {
      return [255 & e3, e3 >> 8 & 255];
    }, Q = function(e3) {
      return [255 & e3, e3 >> 8 & 255, e3 >> 16 & 255, e3 >> 24 & 255];
    }, Y = function(e3) {
      return e3[3] << 24 | e3[2] << 16 | e3[1] << 8 | e3[0];
    }, X = function(e3) {
      return $(m(e3), 23, 4);
    }, J = function(e3) {
      return $(e3, 52, 8);
    }, Z = function(e3, t3, n3) {
      c(e3[A], t3, { configurable: true, get: function() {
        return n3(this)[t3];
      } });
    }, ee = function(e3, t3, n3, r2) {
      var o2 = j(e3), i2 = v(n3), a2 = !!r2;
      if (i2 + t3 > o2.byteLength) throw new H(R);
      var l2 = o2.bytes, u2 = i2 + o2.byteOffset, c2 = E(l2, u2, u2 + t3);
      return a2 ? c2 : q(c2);
    }, te = function(e3, t3, n3, r2, o2, i2) {
      var a2 = j(e3), l2 = v(n3), u2 = r2(+o2), c2 = !!i2;
      if (l2 + t3 > a2.byteLength) throw new H(R);
      for (var s2 = a2.bytes, f2 = l2 + a2.byteOffset, d2 = 0; d2 < t3; d2++) s2[f2 + d2] = u2[c2 ? d2 : t3 - d2 - 1];
    };
    if (a) {
      var ne = O && D.name !== T;
      f(function() {
        D(1);
      }) && f(function() {
        new D(-1);
      }) && !f(function() {
        return new D(), new D(1.5), new D(NaN), 1 !== D.length || ne && !P;
      }) ? ne && P && u(D, "name", T) : ((I = function(e3) {
        return d(this, z), S(new D(v(e3)), this, I);
      })[A] = z, z.constructor = I, k(I, D)), b && g(M) !== U && b(M, U);
      var re = new F(new I(2)), oe = o(M.setInt8);
      re.setInt8(0, 2147483648), re.setInt8(1, 2147483649), !re.getInt8(0) && re.getInt8(1) || s(M, { setInt8: function(e3, t3) {
        oe(this, e3, t3 << 24 >> 24);
      }, setUint8: function(e3, t3) {
        oe(this, e3, t3 << 24 >> 24);
      } }, { unsafe: true });
    } else z = (I = function(e3) {
      d(this, z);
      var t3 = v(e3);
      L(this, { type: T, bytes: W(B(t3), 0), byteLength: t3 }), i || (this.byteLength = t3, this.detached = false);
    })[A], M = (F = function(e3, t3, n3) {
      d(this, M), d(e3, z);
      var r2 = _(e3), o2 = r2.byteLength, a2 = p(t3);
      if (a2 < 0 || a2 > o2) throw new H("Wrong offset");
      if (a2 + (n3 = void 0 === n3 ? o2 - a2 : h(n3)) > o2) throw new H("Wrong length");
      L(this, { type: N, buffer: e3, byteLength: n3, byteOffset: a2, bytes: r2.bytes }), i || (this.buffer = e3, this.byteLength = n3, this.byteOffset = a2);
    })[A], i && (Z(I, "byteLength", _), Z(F, "buffer", j), Z(F, "byteLength", j), Z(F, "byteOffset", j)), s(M, { getInt8: function(e3) {
      return ee(this, 1, e3)[0] << 24 >> 24;
    }, getUint8: function(e3) {
      return ee(this, 1, e3)[0];
    }, getInt16: function(e3) {
      var t3 = ee(this, 2, e3, arguments.length > 1 && arguments[1]);
      return (t3[1] << 8 | t3[0]) << 16 >> 16;
    }, getUint16: function(e3) {
      var t3 = ee(this, 2, e3, arguments.length > 1 && arguments[1]);
      return t3[1] << 8 | t3[0];
    }, getInt32: function(e3) {
      return Y(ee(this, 4, e3, arguments.length > 1 && arguments[1]));
    }, getUint32: function(e3) {
      return Y(ee(this, 4, e3, arguments.length > 1 && arguments[1])) >>> 0;
    }, getFloat32: function(e3) {
      return V(ee(this, 4, e3, arguments.length > 1 && arguments[1]), 23);
    }, getFloat64: function(e3) {
      return V(ee(this, 8, e3, arguments.length > 1 && arguments[1]), 52);
    }, setInt8: function(e3, t3) {
      te(this, 1, e3, G, t3);
    }, setUint8: function(e3, t3) {
      te(this, 1, e3, G, t3);
    }, setInt16: function(e3, t3) {
      te(this, 2, e3, K, t3, arguments.length > 2 && arguments[2]);
    }, setUint16: function(e3, t3) {
      te(this, 2, e3, K, t3, arguments.length > 2 && arguments[2]);
    }, setInt32: function(e3, t3) {
      te(this, 4, e3, Q, t3, arguments.length > 2 && arguments[2]);
    }, setUint32: function(e3, t3) {
      te(this, 4, e3, Q, t3, arguments.length > 2 && arguments[2]);
    }, setFloat32: function(e3, t3) {
      te(this, 4, e3, X, t3, arguments.length > 2 && arguments[2]);
    }, setFloat64: function(e3, t3) {
      te(this, 8, e3, J, t3, arguments.length > 2 && arguments[2]);
    } });
    x(I, T), x(F, N), e2.exports = { ArrayBuffer: I, DataView: F };
  }, 20317: function(e2, t2) {
    "use strict";
    function n2(e3, t3) {
      var n3 = e3.length;
      e3.push(t3);
      e: for (; 0 < n3; ) {
        var r2 = n3 - 1 >>> 1, o2 = e3[r2];
        if (!(0 < i(o2, t3))) break e;
        e3[r2] = t3, e3[n3] = o2, n3 = r2;
      }
    }
    function r(e3) {
      return 0 === e3.length ? null : e3[0];
    }
    function o(e3) {
      if (0 === e3.length) return null;
      var t3 = e3[0], n3 = e3.pop();
      if (n3 !== t3) {
        e3[0] = n3;
        e: for (var r2 = 0, o2 = e3.length, a2 = o2 >>> 1; r2 < a2; ) {
          var l2 = 2 * (r2 + 1) - 1, u2 = e3[l2], c2 = l2 + 1, s2 = e3[c2];
          if (0 > i(u2, n3)) c2 < o2 && 0 > i(s2, u2) ? (e3[r2] = s2, e3[c2] = n3, r2 = c2) : (e3[r2] = u2, e3[l2] = n3, r2 = l2);
          else {
            if (!(c2 < o2 && 0 > i(s2, n3))) break e;
            e3[r2] = s2, e3[c2] = n3, r2 = c2;
          }
        }
      }
      return t3;
    }
    function i(e3, t3) {
      var n3 = e3.sortIndex - t3.sortIndex;
      return 0 !== n3 ? n3 : e3.id - t3.id;
    }
    if (t2.unstable_now = void 0, "object" == typeof performance && "function" == typeof performance.now) {
      var a = performance;
      t2.unstable_now = function() {
        return a.now();
      };
    } else {
      var l = Date, u = l.now();
      t2.unstable_now = function() {
        return l.now() - u;
      };
    }
    var c = [], s = [], f = 1, d = null, p = 3, h = false, v = false, m = false, y = false, g = "function" == typeof setTimeout ? setTimeout : null, b = "function" == typeof clearTimeout ? clearTimeout : null, w = "undefined" != typeof setImmediate ? setImmediate : null;
    function E(e3) {
      for (var t3 = r(s); null !== t3; ) {
        if (null === t3.callback) o(s);
        else {
          if (!(t3.startTime <= e3)) break;
          o(s), t3.sortIndex = t3.expirationTime, n2(c, t3);
        }
        t3 = r(s);
      }
    }
    function S(e3) {
      if (m = false, E(e3), !v) if (null !== r(c)) v = true, x || (x = true, k());
      else {
        var t3 = r(s);
        null !== t3 && _(S, t3.startTime - e3);
      }
    }
    var k, x = false, C = -1, O = 5, P = -1;
    function T() {
      return !(!y && t2.unstable_now() - P < O);
    }
    function N() {
      if (y = false, x) {
        var e3 = t2.unstable_now();
        P = e3;
        var n3 = true;
        try {
          e: {
            v = false, m && (m = false, b(C), C = -1), h = true;
            var i2 = p;
            try {
              t: {
                for (E(e3), d = r(c); null !== d && !(d.expirationTime > e3 && T()); ) {
                  var a2 = d.callback;
                  if ("function" == typeof a2) {
                    d.callback = null, p = d.priorityLevel;
                    var l2 = a2(d.expirationTime <= e3);
                    if (e3 = t2.unstable_now(), "function" == typeof l2) {
                      d.callback = l2, E(e3), n3 = true;
                      break t;
                    }
                    d === r(c) && o(c), E(e3);
                  } else o(c);
                  d = r(c);
                }
                if (null !== d) n3 = true;
                else {
                  var u2 = r(s);
                  null !== u2 && _(S, u2.startTime - e3), n3 = false;
                }
              }
              break e;
            } finally {
              d = null, p = i2, h = false;
            }
            n3 = void 0;
          }
        } finally {
          n3 ? k() : x = false;
        }
      }
    }
    if ("function" == typeof w) k = function() {
      w(N);
    };
    else if ("undefined" != typeof MessageChannel) {
      var A = new MessageChannel(), R = A.port2;
      A.port1.onmessage = N, k = function() {
        R.postMessage(null);
      };
    } else k = function() {
      g(N, 0);
    };
    function _(e3, n3) {
      C = g(function() {
        e3(t2.unstable_now());
      }, n3);
    }
    t2.unstable_IdlePriority = 5, t2.unstable_ImmediatePriority = 1, t2.unstable_LowPriority = 4, t2.unstable_NormalPriority = 3, t2.unstable_Profiling = null, t2.unstable_UserBlockingPriority = 2, t2.unstable_cancelCallback = function(e3) {
      e3.callback = null;
    }, t2.unstable_forceFrameRate = function(e3) {
      0 > e3 || 125 < e3 ? console.error("forceFrameRate takes a positive int between 0 and 125, forcing frame rates higher than 125 fps is not supported") : O = 0 < e3 ? Math.floor(1e3 / e3) : 5;
    }, t2.unstable_getCurrentPriorityLevel = function() {
      return p;
    }, t2.unstable_next = function(e3) {
      switch (p) {
        case 1:
        case 2:
        case 3:
          var t3 = 3;
          break;
        default:
          t3 = p;
      }
      var n3 = p;
      p = t3;
      try {
        return e3();
      } finally {
        p = n3;
      }
    }, t2.unstable_requestPaint = function() {
      y = true;
    }, t2.unstable_runWithPriority = function(e3, t3) {
      switch (e3) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
          break;
        default:
          e3 = 3;
      }
      var n3 = p;
      p = e3;
      try {
        return t3();
      } finally {
        p = n3;
      }
    }, t2.unstable_scheduleCallback = function(e3, o2, i2) {
      var a2 = t2.unstable_now();
      switch (i2 = "object" == typeof i2 && null !== i2 && "number" == typeof (i2 = i2.delay) && 0 < i2 ? a2 + i2 : a2, e3) {
        case 1:
          var l2 = -1;
          break;
        case 2:
          l2 = 250;
          break;
        case 5:
          l2 = 1073741823;
          break;
        case 4:
          l2 = 1e4;
          break;
        default:
          l2 = 5e3;
      }
      return e3 = { id: f++, callback: o2, priorityLevel: e3, startTime: i2, expirationTime: l2 = i2 + l2, sortIndex: -1 }, i2 > a2 ? (e3.sortIndex = i2, n2(s, e3), null === r(c) && e3 === r(s) && (m ? (b(C), C = -1) : m = true, _(S, i2 - a2))) : (e3.sortIndex = l2, n2(c, e3), v || h || (v = true, x || (x = true, k()))), e3;
    }, t2.unstable_shouldYield = T, t2.unstable_wrapCallback = function(e3) {
      var t3 = p;
      return function() {
        var n3 = p;
        p = t3;
        try {
          return e3.apply(this, arguments);
        } finally {
          p = n3;
        }
      };
    };
  }, 20714: function(e2, t2, n2) {
    "use strict";
    n2(79569);
  }, 20838: function(e2, t2, n2) {
    "use strict";
    var r = n2(77948), o = n2(86439).findLastIndex, i = r.aTypedArray;
    (0, r.exportTypedArrayMethod)("findLastIndex", function(e3) {
      return o(i(this), e3, arguments.length > 1 ? arguments[1] : void 0);
    });
  }, 22061: function(e2, t2) {
    "use strict";
    t2.f = Object.getOwnPropertySymbols;
  }, 22261: function(e2, t2, n2) {
    "use strict";
    var r = n2(60983), o = n2(25624).RegExp, i = r(function() {
      var e3 = o("a", "y");
      return e3.lastIndex = 2, null !== e3.exec("abcd");
    }), a = i || r(function() {
      return !o("a", "y").sticky;
    }), l = i || r(function() {
      var e3 = o("^r", "gy");
      return e3.lastIndex = 2, null !== e3.exec("str");
    });
    e2.exports = { BROKEN_CARET: l, MISSED_STICKY: a, UNSUPPORTED_Y: i };
  }, 22440: function(e2, t2, n2) {
    "use strict";
    var r = n2(82704), o = Function.prototype, i = o.call, a = r && o.bind.bind(i, i);
    e2.exports = r ? a : function(e3) {
      return function() {
        return i.apply(e3, arguments);
      };
    };
  }, 22738: function(e2) {
    "use strict";
    var t2 = Array, n2 = Math.abs, r = Math.pow, o = Math.floor, i = Math.log, a = Math.LN2;
    e2.exports = { pack: function(e3, l, u) {
      var c, s, f, d = t2(u), p = 8 * u - l - 1, h = (1 << p) - 1, v = h >> 1, m = 23 === l ? r(2, -24) - r(2, -77) : 0, y = e3 < 0 || 0 === e3 && 1 / e3 < 0 ? 1 : 0, g = 0;
      for ((e3 = n2(e3)) != e3 || e3 === 1 / 0 ? (s = e3 != e3 ? 1 : 0, c = h) : (c = o(i(e3) / a), e3 * (f = r(2, -c)) < 1 && (c--, f *= 2), (e3 += c + v >= 1 ? m / f : m * r(2, 1 - v)) * f >= 2 && (c++, f /= 2), c + v >= h ? (s = 0, c = h) : c + v >= 1 ? (s = (e3 * f - 1) * r(2, l), c += v) : (s = e3 * r(2, v - 1) * r(2, l), c = 0)); l >= 8; ) d[g++] = 255 & s, s /= 256, l -= 8;
      for (c = c << l | s, p += l; p > 0; ) d[g++] = 255 & c, c /= 256, p -= 8;
      return d[g - 1] |= 128 * y, d;
    }, unpack: function(e3, t3) {
      var n3, o2 = e3.length, i2 = 8 * o2 - t3 - 1, a2 = (1 << i2) - 1, l = a2 >> 1, u = i2 - 7, c = o2 - 1, s = e3[c--], f = 127 & s;
      for (s >>= 7; u > 0; ) f = 256 * f + e3[c--], u -= 8;
      for (n3 = f & (1 << -u) - 1, f >>= -u, u += t3; u > 0; ) n3 = 256 * n3 + e3[c--], u -= 8;
      if (0 === f) f = 1 - l;
      else {
        if (f === a2) return n3 ? NaN : s ? -1 / 0 : 1 / 0;
        n3 += r(2, t3), f -= l;
      }
      return (s ? -1 : 1) * n3 * r(2, f - t3);
    } };
  }, 22766: function(e2, t2, n2) {
    "use strict";
    var r = n2(83941), o = n2(31168), i = n2(49123), a = n2(75199), l = n2(24939), u = n2(17029), c = n2(67398), s = n2(38849).IteratorPrototype, f = n2(4841), d = n2(90043), p = n2(34529), h = l("toStringTag"), v = "IteratorHelper", m = "WrapForValidIterator", y = "normal", g = "throw", b = u.set, w = function(e3) {
      var t3 = u.getterFor(e3 ? m : v);
      return a(o(s), { next: function() {
        var n3 = t3(this);
        if (e3) return n3.nextHandler();
        if (n3.done) return f(void 0, true);
        try {
          var r2 = n3.nextHandler();
          return n3.returnHandlerResult ? r2 : f(r2, n3.done);
        } catch (e4) {
          throw n3.done = true, e4;
        }
      }, return: function() {
        var n3 = t3(this), o2 = n3.iterator;
        if (n3.done = true, e3) {
          var i2 = c(o2, "return");
          return i2 ? r(i2, o2) : f(void 0, true);
        }
        if (n3.inner) try {
          d(n3.inner.iterator, y);
        } catch (e4) {
          return d(o2, g, e4);
        }
        if (n3.openIters) try {
          p(n3.openIters, y);
        } catch (e4) {
          return d(o2, g, e4);
        }
        return o2 && d(o2, y), f(void 0, true);
      } });
    }, E = w(true), S = w(false);
    i(S, h, "Iterator Helper"), e2.exports = function(e3, t3, n3) {
      var r2 = function(r3, o2) {
        o2 ? (o2.iterator = r3.iterator, o2.next = r3.next) : o2 = r3, o2.type = t3 ? m : v, o2.returnHandlerResult = !!n3, o2.nextHandler = e3, o2.counter = 0, o2.done = false, b(this, o2);
      };
      return r2.prototype = t3 ? E : S, r2;
    };
  }, 23182: function(e2, t2, n2) {
    "use strict";
    var r = n2(81478);
    e2.exports = function(e3) {
      return r(e3.length);
    };
  }, 24686: function(e2, t2, n2) {
    "use strict";
    var r = n2(13005), o = TypeError;
    e2.exports = function(e3) {
      if (r(e3)) throw new o("Can't call method on " + e3);
      return e3;
    };
  }, 24939: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(14537), i = n2(67961), a = n2(70584), l = n2(17271), u = n2(61432), c = r.Symbol, s = o("wks"), f = u ? c.for || c : c && c.withoutSetter || a;
    e2.exports = function(e3) {
      return i(s, e3) || (s[e3] = l && i(c, e3) ? c[e3] : f("Symbol." + e3)), s[e3];
    };
  }, 25383: function(e2, t2, n2) {
    "use strict";
    var r = n2(64159), o = n2(90043);
    e2.exports = function(e3, t3, n3, i) {
      try {
        return i ? t3(r(n3)[0], n3[1]) : t3(n3);
      } catch (t4) {
        o(e3, "throw", t4);
      }
    };
  }, 25545: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(62298);
    r({ target: "String", proto: true, name: "trimEnd", forced: "".trimRight !== o }, { trimRight: o });
  }, 25624: function(e2, t2, n2) {
    "use strict";
    var r = function(e3) {
      return e3 && e3.Math === Math && e3;
    };
    e2.exports = r("object" == typeof globalThis && globalThis) || r("object" == typeof window && window) || r("object" == typeof self && self) || r("object" == typeof n2.g && n2.g) || r("object" == typeof this && this) || /* @__PURE__ */ (function() {
      return this;
    })() || Function("return this")();
  }, 25931: function(e2, t2, n2) {
    "use strict";
    var r = n2(67961), o = n2(54237), i = n2(99373), a = n2(13071), l = n2(91739), u = a("IE_PROTO"), c = Object, s = c.prototype;
    e2.exports = l ? c.getPrototypeOf : function(e3) {
      var t3 = i(e3);
      if (r(t3, u)) return t3[u];
      var n3 = t3.constructor;
      return o(n3) && t3 instanceof n3 ? n3.prototype : t3 instanceof c ? s : null;
    };
  }, 26069: function(e2, t2, n2) {
    "use strict";
    var r = n2(14579), o = n2(85927), i = n2(24686), a = RangeError;
    e2.exports = function(e3) {
      var t3 = o(i(this)), n3 = "", l = r(e3);
      if (l < 0 || l === 1 / 0) throw new a("Wrong number of repetitions");
      for (; l > 0; (l >>>= 1) && (t3 += t3)) 1 & l && (n3 += t3);
      return n3;
    };
  }, 26912: function(e2, t2, n2) {
    "use strict";
    var r = n2(19912);
    e2.exports = Array.isArray || function(e3) {
      return "Array" === r(e3);
    };
  }, 27171: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(83941), i = n2(34676), a = n2(18), l = n2(64159), u = n2(86543), c = n2(90043), s = n2(71597)("some", TypeError);
    r({ target: "Iterator", proto: true, real: true, forced: s }, { some: function(e3) {
      l(this);
      try {
        a(e3);
      } catch (e4) {
        c(this, "throw", e4);
      }
      if (s) return o(s, this, e3);
      var t3 = u(this), n3 = 0;
      return i(t3, function(t4, r2) {
        if (e3(t4, n3++)) return r2();
      }, { IS_RECORD: true, INTERRUPTED: true }).stopped;
    } });
  }, 27258: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = n2(18);
    e2.exports = function(e3, t3, n3) {
      try {
        return r(o(Object.getOwnPropertyDescriptor(e3, t3)[n3]));
      } catch (e4) {
      }
    };
  }, 27956: function(e2, t2, n2) {
    "use strict";
    var r = {};
    r[n2(24939)("toStringTag")] = "z", e2.exports = "[object z]" === String(r);
  }, 27961: function(e2, t2, n2) {
    "use strict";
    n2(88140);
  }, 28016: function(e2) {
    "use strict";
    e2.exports = { CSSRuleList: 0, CSSStyleDeclaration: 0, CSSValueList: 0, ClientRectList: 0, DOMRectList: 0, DOMStringList: 0, DOMTokenList: 1, DataTransferItemList: 0, FileList: 0, HTMLAllCollection: 0, HTMLCollection: 0, HTMLFormElement: 0, HTMLSelectElement: 0, MediaList: 0, MimeTypeArray: 0, NamedNodeMap: 0, NodeList: 1, PaintRequestList: 0, Plugin: 0, PluginArray: 0, SVGLengthList: 0, SVGNumberList: 0, SVGPathSegList: 0, SVGPointList: 0, SVGStringList: 0, SVGTransformList: 0, SourceBufferList: 0, StyleSheetList: 0, TextTrackCueList: 0, TextTrackList: 0, TouchList: 0 };
  }, 28493: function(e2, t2) {
    "use strict";
    var n2 = {}.propertyIsEnumerable, r = Object.getOwnPropertyDescriptor, o = r && !n2.call({ 1: 2 }, 1);
    t2.f = o ? function(e3) {
      var t3 = r(this, e3);
      return !!t3 && t3.enumerable;
    } : n2;
  }, 29349: function(e2, t2, n2) {
    "use strict";
    var r = n2(99313);
    e2.exports = function(e3, t3) {
      return new (r(e3))(0 === t3 ? 0 : t3);
    };
  }, 29793: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440);
    e2.exports = r({}.isPrototypeOf);
  }, 30193: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(28016), i = n2(59384), a = n2(904), l = n2(49123), u = n2(97655), c = n2(24939)("iterator"), s = a.values, f = function(e3, t3) {
      if (e3) {
        if (e3[c] !== s) try {
          l(e3, c, s);
        } catch (t4) {
          e3[c] = s;
        }
        if (u(e3, t3, true), o[t3]) {
          for (var n3 in a) if (e3[n3] !== a[n3]) try {
            l(e3, n3, a[n3]);
          } catch (t4) {
            e3[n3] = a[n3];
          }
        }
      }
    };
    for (var d in o) f(r[d] && r[d].prototype, d);
    f(i, "DOMTokenList");
  }, 30323: function(e2, t2, n2) {
    "use strict";
    var r = n2(60983);
    e2.exports = !r(function() {
      var e3 = "9007199254740993", t3 = JSON.rawJSON(e3);
      return !JSON.isRawJSON(t3) || JSON.stringify(t3) !== e3;
    });
  }, 30325: function(e2, t2, n2) {
    "use strict";
    var r = n2(38006).PROPER, o = n2(49184), i = n2(64159), a = n2(85927), l = n2(60983), u = n2(51186), c = "toString", s = RegExp.prototype, f = s[c], d = l(function() {
      return "/a/b" !== f.call({ source: "a", flags: "b" });
    }), p = r && f.name !== c;
    (d || p) && o(s, c, function() {
      var e3 = i(this);
      return "/" + a(e3.source) + "/" + a(u(e3));
    }, { unsafe: true });
  }, 31072: function(e2, t2, n2) {
    "use strict";
    var r = n2(74511);
    e2.exports = /(?:ipad|iphone|ipod).*applewebkit/i.test(r);
  }, 31160: function(e2, t2, n2) {
    "use strict";
    var r, o = n2(18654), i = n2(61820), a = n2(48779).f, l = n2(81478), u = n2(85927), c = n2(47991), s = n2(24686), f = n2(94532), d = n2(17219), p = i("".slice), h = Math.min, v = f("startsWith");
    o({ target: "String", proto: true, forced: !(!d && !v && (r = a(String.prototype, "startsWith"), r && !r.writable) || v) }, { startsWith: function(e3) {
      var t3 = u(s(this));
      c(e3);
      var n3 = l(h(arguments.length > 1 ? arguments[1] : void 0, t3.length)), r2 = u(e3);
      return p(t3, n3, n3 + r2.length) === r2;
    } });
  }, 31168: function(e2, t2, n2) {
    "use strict";
    var r, o = n2(64159), i = n2(99145), a = n2(67087), l = n2(90765), u = n2(17765), c = n2(9679), s = n2(13071), f = "prototype", d = "script", p = s("IE_PROTO"), h = function() {
    }, v = function(e3) {
      return "<" + d + ">" + e3 + "</" + d + ">";
    }, m = function(e3) {
      e3.write(v("")), e3.close();
      var t3 = e3.parentWindow.Object;
      return e3 = null, t3;
    }, y = function() {
      try {
        r = new ActiveXObject("htmlfile");
      } catch (e4) {
      }
      var e3, t3, n3;
      y = "undefined" != typeof document ? document.domain && r ? m(r) : (t3 = c("iframe"), n3 = "java" + d + ":", t3.style.display = "none", u.appendChild(t3), t3.src = String(n3), (e3 = t3.contentWindow.document).open(), e3.write(v("document.F=Object")), e3.close(), e3.F) : m(r);
      for (var o2 = a.length; o2--; ) delete y[f][a[o2]];
      return y();
    };
    l[p] = true, e2.exports = Object.create || function(e3, t3) {
      var n3;
      return null !== e3 ? (h[f] = o(e3), n3 = new h(), h[f] = null, n3[p] = e3) : n3 = y(), void 0 === t3 ? n3 : i.f(n3, t3);
    };
  }, 31583: function(e2, t2, n2) {
    "use strict";
    var r = n2(74511);
    e2.exports = /Version\/10(?:\.\d+){1,2}(?: [\w./]+)?(?: Mobile\/\w+)? Safari\//.test(r);
  }, 31601: function(e2, t2, n2) {
    "use strict";
    var r = n2(10961), o = n2(87805);
    e2.exports = function(e3) {
      var t3 = r(e3, "string");
      return o(t3) ? t3 : t3 + "";
    };
  }, 31927: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(25624), i = n2(83941), a = n2(77604), l = n2(2909), u = n2(77948), c = n2(19922), s = n2(17535), f = n2(60332), d = n2(49123), p = n2(45327), h = n2(81478), v = n2(19096), m = n2(86685), y = n2(63479), g = n2(31601), b = n2(67961), w = n2(36691), E = n2(50810), S = n2(87805), k = n2(31168), x = n2(29793), C = n2(50543), O = n2(18408).f, P = n2(18779), T = n2(91557).forEach, N = n2(63081), A = n2(46146), R = n2(54489), _ = n2(48779), j = n2(33522), L = n2(17029), D = n2(34327), I = L.get, z = L.set, F = L.enforce, M = R.f, U = _.f, B = o.RangeError, H = c.ArrayBuffer, W = H.prototype, q = c.DataView, $ = u.NATIVE_ARRAY_BUFFER_VIEWS, V = u.TYPED_ARRAY_TAG, G = u.TypedArray, K = u.TypedArrayPrototype, Q = u.isTypedArray, Y = "BYTES_PER_ELEMENT", X = "Wrong length", J = function(e3, t3) {
      A(e3, t3, { configurable: true, get: function() {
        return I(this)[t3];
      } });
    }, Z = function(e3) {
      var t3;
      return x(W, e3) || "ArrayBuffer" === (t3 = w(e3)) || "SharedArrayBuffer" === t3;
    }, ee = function(e3, t3) {
      return Q(e3) && !S(t3) && t3 in e3 && p(+t3) && t3 >= 0;
    }, te = function(e3, t3) {
      return t3 = g(t3), ee(e3, t3) ? f(2, e3[t3]) : U(e3, t3);
    }, ne = function(e3, t3, n3) {
      return t3 = g(t3), !(ee(e3, t3) && E(n3) && b(n3, "value")) || b(n3, "get") || b(n3, "set") || n3.configurable || b(n3, "writable") && !n3.writable || b(n3, "enumerable") && !n3.enumerable ? M(e3, t3, n3) : (e3[t3] = n3.value, e3);
    };
    a ? ($ || (_.f = te, R.f = ne, J(K, "buffer"), J(K, "byteOffset"), J(K, "byteLength"), J(K, "length")), r({ target: "Object", stat: true, forced: !$ }, { getOwnPropertyDescriptor: te, defineProperty: ne }), e2.exports = function(e3, t3, n3) {
      var a2 = e3.match(/\d+/)[0] / 8, u2 = e3 + (n3 ? "Clamped" : "") + "Array", c2 = "get" + e3, f2 = "set" + e3, p2 = o[u2], g2 = p2, b2 = g2 && g2.prototype, w2 = {}, S2 = function(e4, t4) {
        M(e4, t4, { get: function() {
          return (function(e5, t5) {
            var n4 = I(e5);
            return n4.view[c2](t5 * a2 + n4.byteOffset, true);
          })(this, t4);
        }, set: function(e5) {
          return (function(e6, t5, r2) {
            var o2 = I(e6);
            o2.view[f2](t5 * a2 + o2.byteOffset, n3 ? y(r2) : r2, true);
          })(this, t4, e5);
        }, enumerable: true });
      };
      $ ? l && (g2 = t3(function(e4, t4, n4, r2) {
        return s(e4, b2), D(E(t4) ? Z(t4) ? void 0 !== r2 ? new p2(t4, m(n4, a2), r2) : void 0 !== n4 ? new p2(t4, m(n4, a2)) : new p2(t4) : Q(t4) ? j(g2, t4) : i(P, g2, t4) : new p2(v(t4)), e4, g2);
      }), C && C(g2, G), T(O(p2), function(e4) {
        e4 in g2 || d(g2, e4, p2[e4]);
      }), g2.prototype = b2) : (g2 = t3(function(e4, t4, n4, r2) {
        s(e4, b2);
        var o2, l2, u3, c3 = 0, f3 = 0;
        if (E(t4)) {
          if (!Z(t4)) return Q(t4) ? j(g2, t4) : i(P, g2, t4);
          o2 = t4, f3 = m(n4, a2);
          var d2 = t4.byteLength;
          if (void 0 === r2) {
            if (d2 % a2) throw new B(X);
            if ((l2 = d2 - f3) < 0) throw new B(X);
          } else if ((l2 = h(r2) * a2) + f3 > d2) throw new B(X);
          u3 = l2 / a2;
        } else u3 = v(t4), o2 = new H(l2 = u3 * a2);
        for (z(e4, { buffer: o2, byteOffset: f3, byteLength: l2, length: u3, view: new q(o2) }); c3 < u3; ) S2(e4, c3++);
      }), C && C(g2, G), b2 = g2.prototype = k(K)), b2.constructor !== g2 && d(b2, "constructor", g2), F(b2).TypedArrayConstructor = g2, V && d(b2, V, u2);
      var x2 = g2 !== p2;
      w2[u2] = g2, r({ global: true, constructor: true, forced: x2, sham: !$ }, w2), Y in g2 || d(g2, Y, a2), Y in b2 || d(b2, Y, a2), N(u2);
    }) : e2.exports = function() {
    };
  }, 31941: function(e2, t2, n2) {
    "use strict";
    var r = n2(73438), o = n2(97736), i = n2(77303);
    function a(e3) {
      var t3 = "https://react.dev/errors/" + e3;
      if (1 < arguments.length) {
        t3 += "?args[]=" + encodeURIComponent(arguments[1]);
        for (var n3 = 2; n3 < arguments.length; n3++) t3 += "&args[]=" + encodeURIComponent(arguments[n3]);
      }
      return "Minified React error #" + e3 + "; visit " + t3 + " for the full message or use the non-minified dev environment for full errors and additional helpful warnings.";
    }
    function l(e3) {
      return !(!e3 || 1 !== e3.nodeType && 9 !== e3.nodeType && 11 !== e3.nodeType);
    }
    function u(e3) {
      var t3 = e3, n3 = e3;
      if (e3.alternate) for (; t3.return; ) t3 = t3.return;
      else {
        e3 = t3;
        do {
          !!(4098 & (t3 = e3).flags) && (n3 = t3.return), e3 = t3.return;
        } while (e3);
      }
      return 3 === t3.tag ? n3 : null;
    }
    function c(e3) {
      if (13 === e3.tag) {
        var t3 = e3.memoizedState;
        if (null === t3 && null !== (e3 = e3.alternate) && (t3 = e3.memoizedState), null !== t3) return t3.dehydrated;
      }
      return null;
    }
    function s(e3) {
      if (31 === e3.tag) {
        var t3 = e3.memoizedState;
        if (null === t3 && null !== (e3 = e3.alternate) && (t3 = e3.memoizedState), null !== t3) return t3.dehydrated;
      }
      return null;
    }
    function f(e3) {
      if (u(e3) !== e3) throw Error(a(188));
    }
    function d(e3) {
      var t3 = e3.tag;
      if (5 === t3 || 26 === t3 || 27 === t3 || 6 === t3) return e3;
      for (e3 = e3.child; null !== e3; ) {
        if (null !== (t3 = d(e3))) return t3;
        e3 = e3.sibling;
      }
      return null;
    }
    var p = Object.assign, h = Symbol.for("react.element"), v = Symbol.for("react.transitional.element"), m = Symbol.for("react.portal"), y = Symbol.for("react.fragment"), g = Symbol.for("react.strict_mode"), b = Symbol.for("react.profiler"), w = Symbol.for("react.consumer"), E = Symbol.for("react.context"), S = Symbol.for("react.forward_ref"), k = Symbol.for("react.suspense"), x = Symbol.for("react.suspense_list"), C = Symbol.for("react.memo"), O = Symbol.for("react.lazy");
    Symbol.for("react.scope");
    var P = Symbol.for("react.activity");
    Symbol.for("react.legacy_hidden"), Symbol.for("react.tracing_marker");
    var T = Symbol.for("react.memo_cache_sentinel");
    Symbol.for("react.view_transition");
    var N = Symbol.iterator;
    function A(e3) {
      return null === e3 || "object" != typeof e3 ? null : "function" == typeof (e3 = N && e3[N] || e3["@@iterator"]) ? e3 : null;
    }
    var R = Symbol.for("react.client.reference");
    function _(e3) {
      if (null == e3) return null;
      if ("function" == typeof e3) return e3.$$typeof === R ? null : e3.displayName || e3.name || null;
      if ("string" == typeof e3) return e3;
      switch (e3) {
        case y:
          return "Fragment";
        case b:
          return "Profiler";
        case g:
          return "StrictMode";
        case k:
          return "Suspense";
        case x:
          return "SuspenseList";
        case P:
          return "Activity";
      }
      if ("object" == typeof e3) switch (e3.$$typeof) {
        case m:
          return "Portal";
        case E:
          return e3.displayName || "Context";
        case w:
          return (e3._context.displayName || "Context") + ".Consumer";
        case S:
          var t3 = e3.render;
          return (e3 = e3.displayName) || (e3 = "" !== (e3 = t3.displayName || t3.name || "") ? "ForwardRef(" + e3 + ")" : "ForwardRef"), e3;
        case C:
          return null !== (t3 = e3.displayName || null) ? t3 : _(e3.type) || "Memo";
        case O:
          t3 = e3._payload, e3 = e3._init;
          try {
            return _(e3(t3));
          } catch (e4) {
          }
      }
      return null;
    }
    var j = Array.isArray, L = o.__CLIENT_INTERNALS_DO_NOT_USE_OR_WARN_USERS_THEY_CANNOT_UPGRADE, D = i.__DOM_INTERNALS_DO_NOT_USE_OR_WARN_USERS_THEY_CANNOT_UPGRADE, I = { pending: false, data: null, method: null, action: null }, z = [], F = -1;
    function M(e3) {
      return { current: e3 };
    }
    function U(e3) {
      0 > F || (e3.current = z[F], z[F] = null, F--);
    }
    function B(e3, t3) {
      F++, z[F] = e3.current, e3.current = t3;
    }
    var H, W, q = M(null), $ = M(null), V = M(null), G = M(null);
    function K(e3, t3) {
      switch (B(V, t3), B($, e3), B(q, null), t3.nodeType) {
        case 9:
        case 11:
          e3 = (e3 = t3.documentElement) && (e3 = e3.namespaceURI) ? gf(e3) : 0;
          break;
        default:
          if (e3 = t3.tagName, t3 = t3.namespaceURI) e3 = bf(t3 = gf(t3), e3);
          else switch (e3) {
            case "svg":
              e3 = 1;
              break;
            case "math":
              e3 = 2;
              break;
            default:
              e3 = 0;
          }
      }
      U(q), B(q, e3);
    }
    function Q() {
      U(q), U($), U(V);
    }
    function Y(e3) {
      null !== e3.memoizedState && B(G, e3);
      var t3 = q.current, n3 = bf(t3, e3.type);
      t3 !== n3 && (B($, e3), B(q, n3));
    }
    function X(e3) {
      $.current === e3 && (U(q), U($)), G.current === e3 && (U(G), fd._currentValue = I);
    }
    function J(e3) {
      if (void 0 === H) try {
        throw Error();
      } catch (e4) {
        var t3 = e4.stack.trim().match(/\n( *(at )?)/);
        H = t3 && t3[1] || "", W = -1 < e4.stack.indexOf("\n    at") ? " (<anonymous>)" : -1 < e4.stack.indexOf("@") ? "@unknown:0:0" : "";
      }
      return "\n" + H + e3 + W;
    }
    var Z = false;
    function ee(e3, t3) {
      if (!e3 || Z) return "";
      Z = true;
      var n3 = Error.prepareStackTrace;
      Error.prepareStackTrace = void 0;
      try {
        var r2 = { DetermineComponentFrameRoot: function() {
          try {
            if (t3) {
              var n4 = function() {
                throw Error();
              };
              if (Object.defineProperty(n4.prototype, "props", { set: function() {
                throw Error();
              } }), "object" == typeof Reflect && Reflect.construct) {
                try {
                  Reflect.construct(n4, []);
                } catch (e4) {
                  var r3 = e4;
                }
                Reflect.construct(e3, [], n4);
              } else {
                try {
                  n4.call();
                } catch (e4) {
                  r3 = e4;
                }
                e3.call(n4.prototype);
              }
            } else {
              try {
                throw Error();
              } catch (e4) {
                r3 = e4;
              }
              (n4 = e3()) && "function" == typeof n4.catch && n4.catch(function() {
              });
            }
          } catch (e4) {
            if (e4 && r3 && "string" == typeof e4.stack) return [e4.stack, r3.stack];
          }
          return [null, null];
        } };
        r2.DetermineComponentFrameRoot.displayName = "DetermineComponentFrameRoot";
        var o2 = Object.getOwnPropertyDescriptor(r2.DetermineComponentFrameRoot, "name");
        o2 && o2.configurable && Object.defineProperty(r2.DetermineComponentFrameRoot, "name", { value: "DetermineComponentFrameRoot" });
        var i2 = r2.DetermineComponentFrameRoot(), a2 = i2[0], l2 = i2[1];
        if (a2 && l2) {
          var u2 = a2.split("\n"), c2 = l2.split("\n");
          for (o2 = r2 = 0; r2 < u2.length && !u2[r2].includes("DetermineComponentFrameRoot"); ) r2++;
          for (; o2 < c2.length && !c2[o2].includes("DetermineComponentFrameRoot"); ) o2++;
          if (r2 === u2.length || o2 === c2.length) for (r2 = u2.length - 1, o2 = c2.length - 1; 1 <= r2 && 0 <= o2 && u2[r2] !== c2[o2]; ) o2--;
          for (; 1 <= r2 && 0 <= o2; r2--, o2--) if (u2[r2] !== c2[o2]) {
            if (1 !== r2 || 1 !== o2) do {
              if (r2--, 0 > --o2 || u2[r2] !== c2[o2]) {
                var s2 = "\n" + u2[r2].replace(" at new ", " at ");
                return e3.displayName && s2.includes("<anonymous>") && (s2 = s2.replace("<anonymous>", e3.displayName)), s2;
              }
            } while (1 <= r2 && 0 <= o2);
            break;
          }
        }
      } finally {
        Z = false, Error.prepareStackTrace = n3;
      }
      return (n3 = e3 ? e3.displayName || e3.name : "") ? J(n3) : "";
    }
    function te(e3, t3) {
      switch (e3.tag) {
        case 26:
        case 27:
        case 5:
          return J(e3.type);
        case 16:
          return J("Lazy");
        case 13:
          return e3.child !== t3 && null !== t3 ? J("Suspense Fallback") : J("Suspense");
        case 19:
          return J("SuspenseList");
        case 0:
        case 15:
          return ee(e3.type, false);
        case 11:
          return ee(e3.type.render, false);
        case 1:
          return ee(e3.type, true);
        case 31:
          return J("Activity");
        default:
          return "";
      }
    }
    function ne(e3) {
      try {
        var t3 = "", n3 = null;
        do {
          t3 += te(e3, n3), n3 = e3, e3 = e3.return;
        } while (e3);
        return t3;
      } catch (e4) {
        return "\nError generating stack: " + e4.message + "\n" + e4.stack;
      }
    }
    var re = Object.prototype.hasOwnProperty, oe = r.unstable_scheduleCallback, ie = r.unstable_cancelCallback, ae = r.unstable_shouldYield, le = r.unstable_requestPaint, ue = r.unstable_now, ce = r.unstable_getCurrentPriorityLevel, se = r.unstable_ImmediatePriority, fe = r.unstable_UserBlockingPriority, de = r.unstable_NormalPriority, pe = r.unstable_LowPriority, he = r.unstable_IdlePriority, ve = r.log, me = r.unstable_setDisableYieldValue, ye = null, ge = null;
    function be(e3) {
      if ("function" == typeof ve && me(e3), ge && "function" == typeof ge.setStrictMode) try {
        ge.setStrictMode(ye, e3);
      } catch (e4) {
      }
    }
    var we = Math.clz32 ? Math.clz32 : function(e3) {
      return 0 == (e3 >>>= 0) ? 32 : 31 - (Ee(e3) / Se | 0) | 0;
    }, Ee = Math.log, Se = Math.LN2, ke = 256, xe = 262144, Ce = 4194304;
    function Oe(e3) {
      var t3 = 42 & e3;
      if (0 !== t3) return t3;
      switch (e3 & -e3) {
        case 1:
          return 1;
        case 2:
          return 2;
        case 4:
          return 4;
        case 8:
          return 8;
        case 16:
          return 16;
        case 32:
          return 32;
        case 64:
          return 64;
        case 128:
          return 128;
        case 256:
        case 512:
        case 1024:
        case 2048:
        case 4096:
        case 8192:
        case 16384:
        case 32768:
        case 65536:
        case 131072:
          return 261888 & e3;
        case 262144:
        case 524288:
        case 1048576:
        case 2097152:
          return 3932160 & e3;
        case 4194304:
        case 8388608:
        case 16777216:
        case 33554432:
          return 62914560 & e3;
        case 67108864:
          return 67108864;
        case 134217728:
          return 134217728;
        case 268435456:
          return 268435456;
        case 536870912:
          return 536870912;
        case 1073741824:
          return 0;
        default:
          return e3;
      }
    }
    function Pe(e3, t3, n3) {
      var r2 = e3.pendingLanes;
      if (0 === r2) return 0;
      var o2 = 0, i2 = e3.suspendedLanes, a2 = e3.pingedLanes;
      e3 = e3.warmLanes;
      var l2 = 134217727 & r2;
      return 0 !== l2 ? 0 !== (r2 = l2 & ~i2) ? o2 = Oe(r2) : 0 !== (a2 &= l2) ? o2 = Oe(a2) : n3 || 0 !== (n3 = l2 & ~e3) && (o2 = Oe(n3)) : 0 !== (l2 = r2 & ~i2) ? o2 = Oe(l2) : 0 !== a2 ? o2 = Oe(a2) : n3 || 0 !== (n3 = r2 & ~e3) && (o2 = Oe(n3)), 0 === o2 ? 0 : 0 !== t3 && t3 !== o2 && 0 === (t3 & i2) && ((i2 = o2 & -o2) >= (n3 = t3 & -t3) || 32 === i2 && 4194048 & n3) ? t3 : o2;
    }
    function Te(e3, t3) {
      return 0 === (e3.pendingLanes & ~(e3.suspendedLanes & ~e3.pingedLanes) & t3);
    }
    function Ne(e3, t3) {
      switch (e3) {
        case 1:
        case 2:
        case 4:
        case 8:
        case 64:
          return t3 + 250;
        case 16:
        case 32:
        case 128:
        case 256:
        case 512:
        case 1024:
        case 2048:
        case 4096:
        case 8192:
        case 16384:
        case 32768:
        case 65536:
        case 131072:
        case 262144:
        case 524288:
        case 1048576:
        case 2097152:
          return t3 + 5e3;
        default:
          return -1;
      }
    }
    function Ae() {
      var e3 = Ce;
      return !(62914560 & (Ce <<= 1)) && (Ce = 4194304), e3;
    }
    function Re(e3) {
      for (var t3 = [], n3 = 0; 31 > n3; n3++) t3.push(e3);
      return t3;
    }
    function _e(e3, t3) {
      e3.pendingLanes |= t3, 268435456 !== t3 && (e3.suspendedLanes = 0, e3.pingedLanes = 0, e3.warmLanes = 0);
    }
    function je(e3, t3, n3) {
      e3.pendingLanes |= t3, e3.suspendedLanes &= ~t3;
      var r2 = 31 - we(t3);
      e3.entangledLanes |= t3, e3.entanglements[r2] = 1073741824 | e3.entanglements[r2] | 261930 & n3;
    }
    function Le(e3, t3) {
      var n3 = e3.entangledLanes |= t3;
      for (e3 = e3.entanglements; n3; ) {
        var r2 = 31 - we(n3), o2 = 1 << r2;
        o2 & t3 | e3[r2] & t3 && (e3[r2] |= t3), n3 &= ~o2;
      }
    }
    function De(e3, t3) {
      var n3 = t3 & -t3;
      return 0 !== ((n3 = 42 & n3 ? 1 : Ie(n3)) & (e3.suspendedLanes | t3)) ? 0 : n3;
    }
    function Ie(e3) {
      switch (e3) {
        case 2:
          e3 = 1;
          break;
        case 8:
          e3 = 4;
          break;
        case 32:
          e3 = 16;
          break;
        case 256:
        case 512:
        case 1024:
        case 2048:
        case 4096:
        case 8192:
        case 16384:
        case 32768:
        case 65536:
        case 131072:
        case 262144:
        case 524288:
        case 1048576:
        case 2097152:
        case 4194304:
        case 8388608:
        case 16777216:
        case 33554432:
          e3 = 128;
          break;
        case 268435456:
          e3 = 134217728;
          break;
        default:
          e3 = 0;
      }
      return e3;
    }
    function ze(e3) {
      return 2 < (e3 &= -e3) ? 8 < e3 ? 134217727 & e3 ? 32 : 268435456 : 8 : 2;
    }
    function Fe() {
      var e3 = D.p;
      return 0 !== e3 ? e3 : void 0 === (e3 = window.event) ? 32 : Pd(e3.type);
    }
    function Me(e3, t3) {
      var n3 = D.p;
      try {
        return D.p = e3, t3();
      } finally {
        D.p = n3;
      }
    }
    var Ue = Math.random().toString(36).slice(2), Be = "__reactFiber$" + Ue, He = "__reactProps$" + Ue, We = "__reactContainer$" + Ue, qe = "__reactEvents$" + Ue, $e = "__reactListeners$" + Ue, Ve = "__reactHandles$" + Ue, Ge = "__reactResources$" + Ue, Ke = "__reactMarker$" + Ue;
    function Qe(e3) {
      delete e3[Be], delete e3[He], delete e3[qe], delete e3[$e], delete e3[Ve];
    }
    function Ye(e3) {
      var t3 = e3[Be];
      if (t3) return t3;
      for (var n3 = e3.parentNode; n3; ) {
        if (t3 = n3[We] || n3[Be]) {
          if (n3 = t3.alternate, null !== t3.child || null !== n3 && null !== n3.child) for (e3 = zf(e3); null !== e3; ) {
            if (n3 = e3[Be]) return n3;
            e3 = zf(e3);
          }
          return t3;
        }
        n3 = (e3 = n3).parentNode;
      }
      return null;
    }
    function Xe(e3) {
      if (e3 = e3[Be] || e3[We]) {
        var t3 = e3.tag;
        if (5 === t3 || 6 === t3 || 13 === t3 || 31 === t3 || 26 === t3 || 27 === t3 || 3 === t3) return e3;
      }
      return null;
    }
    function Je(e3) {
      var t3 = e3.tag;
      if (5 === t3 || 26 === t3 || 27 === t3 || 6 === t3) return e3.stateNode;
      throw Error(a(33));
    }
    function Ze(e3) {
      var t3 = e3[Ge];
      return t3 || (t3 = e3[Ge] = { hoistableStyles: /* @__PURE__ */ new Map(), hoistableScripts: /* @__PURE__ */ new Map() }), t3;
    }
    function et(e3) {
      e3[Ke] = true;
    }
    var tt = /* @__PURE__ */ new Set(), nt = {};
    function rt(e3, t3) {
      ot(e3, t3), ot(e3 + "Capture", t3);
    }
    function ot(e3, t3) {
      for (nt[e3] = t3, e3 = 0; e3 < t3.length; e3++) tt.add(t3[e3]);
    }
    var it = RegExp("^[:A-Z_a-z\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02FF\\u0370-\\u037D\\u037F-\\u1FFF\\u200C-\\u200D\\u2070-\\u218F\\u2C00-\\u2FEF\\u3001-\\uD7FF\\uF900-\\uFDCF\\uFDF0-\\uFFFD][:A-Z_a-z\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02FF\\u0370-\\u037D\\u037F-\\u1FFF\\u200C-\\u200D\\u2070-\\u218F\\u2C00-\\u2FEF\\u3001-\\uD7FF\\uF900-\\uFDCF\\uFDF0-\\uFFFD\\-.0-9\\u00B7\\u0300-\\u036F\\u203F-\\u2040]*$"), at = {}, lt = {};
    function ut(e3, t3, n3) {
      if (o2 = t3, re.call(lt, o2) || !re.call(at, o2) && (it.test(o2) ? lt[o2] = true : (at[o2] = true, 0))) if (null === n3) e3.removeAttribute(t3);
      else {
        switch (typeof n3) {
          case "undefined":
          case "function":
          case "symbol":
            return void e3.removeAttribute(t3);
          case "boolean":
            var r2 = t3.toLowerCase().slice(0, 5);
            if ("data-" !== r2 && "aria-" !== r2) return void e3.removeAttribute(t3);
        }
        e3.setAttribute(t3, "" + n3);
      }
      var o2;
    }
    function ct(e3, t3, n3) {
      if (null === n3) e3.removeAttribute(t3);
      else {
        switch (typeof n3) {
          case "undefined":
          case "function":
          case "symbol":
          case "boolean":
            return void e3.removeAttribute(t3);
        }
        e3.setAttribute(t3, "" + n3);
      }
    }
    function st(e3, t3, n3, r2) {
      if (null === r2) e3.removeAttribute(n3);
      else {
        switch (typeof r2) {
          case "undefined":
          case "function":
          case "symbol":
          case "boolean":
            return void e3.removeAttribute(n3);
        }
        e3.setAttributeNS(t3, n3, "" + r2);
      }
    }
    function ft(e3) {
      switch (typeof e3) {
        case "bigint":
        case "boolean":
        case "number":
        case "string":
        case "undefined":
        case "object":
          return e3;
        default:
          return "";
      }
    }
    function dt(e3) {
      var t3 = e3.type;
      return (e3 = e3.nodeName) && "input" === e3.toLowerCase() && ("checkbox" === t3 || "radio" === t3);
    }
    function pt(e3) {
      if (!e3._valueTracker) {
        var t3 = dt(e3) ? "checked" : "value";
        e3._valueTracker = (function(e4, t4, n3) {
          var r2 = Object.getOwnPropertyDescriptor(e4.constructor.prototype, t4);
          if (!e4.hasOwnProperty(t4) && void 0 !== r2 && "function" == typeof r2.get && "function" == typeof r2.set) {
            var o2 = r2.get, i2 = r2.set;
            return Object.defineProperty(e4, t4, { configurable: true, get: function() {
              return o2.call(this);
            }, set: function(e5) {
              n3 = "" + e5, i2.call(this, e5);
            } }), Object.defineProperty(e4, t4, { enumerable: r2.enumerable }), { getValue: function() {
              return n3;
            }, setValue: function(e5) {
              n3 = "" + e5;
            }, stopTracking: function() {
              e4._valueTracker = null, delete e4[t4];
            } };
          }
        })(e3, t3, "" + e3[t3]);
      }
    }
    function ht(e3) {
      if (!e3) return false;
      var t3 = e3._valueTracker;
      if (!t3) return true;
      var n3 = t3.getValue(), r2 = "";
      return e3 && (r2 = dt(e3) ? e3.checked ? "true" : "false" : e3.value), (e3 = r2) !== n3 && (t3.setValue(e3), true);
    }
    function vt(e3) {
      if (void 0 === (e3 = e3 || ("undefined" != typeof document ? document : void 0))) return null;
      try {
        return e3.activeElement || e3.body;
      } catch (t3) {
        return e3.body;
      }
    }
    var mt = /[\n"\\]/g;
    function yt(e3) {
      return e3.replace(mt, function(e4) {
        return "\\" + e4.charCodeAt(0).toString(16) + " ";
      });
    }
    function gt(e3, t3, n3, r2, o2, i2, a2, l2) {
      e3.name = "", null != a2 && "function" != typeof a2 && "symbol" != typeof a2 && "boolean" != typeof a2 ? e3.type = a2 : e3.removeAttribute("type"), null != t3 ? "number" === a2 ? (0 === t3 && "" === e3.value || e3.value != t3) && (e3.value = "" + ft(t3)) : e3.value !== "" + ft(t3) && (e3.value = "" + ft(t3)) : "submit" !== a2 && "reset" !== a2 || e3.removeAttribute("value"), null != t3 ? wt(e3, a2, ft(t3)) : null != n3 ? wt(e3, a2, ft(n3)) : null != r2 && e3.removeAttribute("value"), null == o2 && null != i2 && (e3.defaultChecked = !!i2), null != o2 && (e3.checked = o2 && "function" != typeof o2 && "symbol" != typeof o2), null != l2 && "function" != typeof l2 && "symbol" != typeof l2 && "boolean" != typeof l2 ? e3.name = "" + ft(l2) : e3.removeAttribute("name");
    }
    function bt(e3, t3, n3, r2, o2, i2, a2, l2) {
      if (null != i2 && "function" != typeof i2 && "symbol" != typeof i2 && "boolean" != typeof i2 && (e3.type = i2), null != t3 || null != n3) {
        if (("submit" === i2 || "reset" === i2) && null == t3) return void pt(e3);
        n3 = null != n3 ? "" + ft(n3) : "", t3 = null != t3 ? "" + ft(t3) : n3, l2 || t3 === e3.value || (e3.value = t3), e3.defaultValue = t3;
      }
      r2 = "function" != typeof (r2 = null != r2 ? r2 : o2) && "symbol" != typeof r2 && !!r2, e3.checked = l2 ? e3.checked : !!r2, e3.defaultChecked = !!r2, null != a2 && "function" != typeof a2 && "symbol" != typeof a2 && "boolean" != typeof a2 && (e3.name = a2), pt(e3);
    }
    function wt(e3, t3, n3) {
      "number" === t3 && vt(e3.ownerDocument) === e3 || e3.defaultValue === "" + n3 || (e3.defaultValue = "" + n3);
    }
    function Et(e3, t3, n3, r2) {
      if (e3 = e3.options, t3) {
        t3 = {};
        for (var o2 = 0; o2 < n3.length; o2++) t3["$" + n3[o2]] = true;
        for (n3 = 0; n3 < e3.length; n3++) o2 = t3.hasOwnProperty("$" + e3[n3].value), e3[n3].selected !== o2 && (e3[n3].selected = o2), o2 && r2 && (e3[n3].defaultSelected = true);
      } else {
        for (n3 = "" + ft(n3), t3 = null, o2 = 0; o2 < e3.length; o2++) {
          if (e3[o2].value === n3) return e3[o2].selected = true, void (r2 && (e3[o2].defaultSelected = true));
          null !== t3 || e3[o2].disabled || (t3 = e3[o2]);
        }
        null !== t3 && (t3.selected = true);
      }
    }
    function St(e3, t3, n3) {
      null == t3 || ((t3 = "" + ft(t3)) !== e3.value && (e3.value = t3), null != n3) ? e3.defaultValue = null != n3 ? "" + ft(n3) : "" : e3.defaultValue !== t3 && (e3.defaultValue = t3);
    }
    function kt(e3, t3, n3, r2) {
      if (null == t3) {
        if (null != r2) {
          if (null != n3) throw Error(a(92));
          if (j(r2)) {
            if (1 < r2.length) throw Error(a(93));
            r2 = r2[0];
          }
          n3 = r2;
        }
        null == n3 && (n3 = ""), t3 = n3;
      }
      n3 = ft(t3), e3.defaultValue = n3, (r2 = e3.textContent) === n3 && "" !== r2 && null !== r2 && (e3.value = r2), pt(e3);
    }
    function xt(e3, t3) {
      if (t3) {
        var n3 = e3.firstChild;
        if (n3 && n3 === e3.lastChild && 3 === n3.nodeType) return void (n3.nodeValue = t3);
      }
      e3.textContent = t3;
    }
    var Ct = new Set("animationIterationCount aspectRatio borderImageOutset borderImageSlice borderImageWidth boxFlex boxFlexGroup boxOrdinalGroup columnCount columns flex flexGrow flexPositive flexShrink flexNegative flexOrder gridArea gridRow gridRowEnd gridRowSpan gridRowStart gridColumn gridColumnEnd gridColumnSpan gridColumnStart fontWeight lineClamp lineHeight opacity order orphans scale tabSize widows zIndex zoom fillOpacity floodOpacity stopOpacity strokeDasharray strokeDashoffset strokeMiterlimit strokeOpacity strokeWidth MozAnimationIterationCount MozBoxFlex MozBoxFlexGroup MozLineClamp msAnimationIterationCount msFlex msZoom msFlexGrow msFlexNegative msFlexOrder msFlexPositive msFlexShrink msGridColumn msGridColumnSpan msGridRow msGridRowSpan WebkitAnimationIterationCount WebkitBoxFlex WebKitBoxFlexGroup WebkitBoxOrdinalGroup WebkitColumnCount WebkitColumns WebkitFlex WebkitFlexGrow WebkitFlexPositive WebkitFlexShrink WebkitLineClamp".split(" "));
    function Ot(e3, t3, n3) {
      var r2 = 0 === t3.indexOf("--");
      null == n3 || "boolean" == typeof n3 || "" === n3 ? r2 ? e3.setProperty(t3, "") : "float" === t3 ? e3.cssFloat = "" : e3[t3] = "" : r2 ? e3.setProperty(t3, n3) : "number" != typeof n3 || 0 === n3 || Ct.has(t3) ? "float" === t3 ? e3.cssFloat = n3 : e3[t3] = ("" + n3).trim() : e3[t3] = n3 + "px";
    }
    function Pt(e3, t3, n3) {
      if (null != t3 && "object" != typeof t3) throw Error(a(62));
      if (e3 = e3.style, null != n3) {
        for (var r2 in n3) !n3.hasOwnProperty(r2) || null != t3 && t3.hasOwnProperty(r2) || (0 === r2.indexOf("--") ? e3.setProperty(r2, "") : "float" === r2 ? e3.cssFloat = "" : e3[r2] = "");
        for (var o2 in t3) r2 = t3[o2], t3.hasOwnProperty(o2) && n3[o2] !== r2 && Ot(e3, o2, r2);
      } else for (var i2 in t3) t3.hasOwnProperty(i2) && Ot(e3, i2, t3[i2]);
    }
    function Tt(e3) {
      if (-1 === e3.indexOf("-")) return false;
      switch (e3) {
        case "annotation-xml":
        case "color-profile":
        case "font-face":
        case "font-face-src":
        case "font-face-uri":
        case "font-face-format":
        case "font-face-name":
        case "missing-glyph":
          return false;
        default:
          return true;
      }
    }
    var Nt = /* @__PURE__ */ new Map([["acceptCharset", "accept-charset"], ["htmlFor", "for"], ["httpEquiv", "http-equiv"], ["crossOrigin", "crossorigin"], ["accentHeight", "accent-height"], ["alignmentBaseline", "alignment-baseline"], ["arabicForm", "arabic-form"], ["baselineShift", "baseline-shift"], ["capHeight", "cap-height"], ["clipPath", "clip-path"], ["clipRule", "clip-rule"], ["colorInterpolation", "color-interpolation"], ["colorInterpolationFilters", "color-interpolation-filters"], ["colorProfile", "color-profile"], ["colorRendering", "color-rendering"], ["dominantBaseline", "dominant-baseline"], ["enableBackground", "enable-background"], ["fillOpacity", "fill-opacity"], ["fillRule", "fill-rule"], ["floodColor", "flood-color"], ["floodOpacity", "flood-opacity"], ["fontFamily", "font-family"], ["fontSize", "font-size"], ["fontSizeAdjust", "font-size-adjust"], ["fontStretch", "font-stretch"], ["fontStyle", "font-style"], ["fontVariant", "font-variant"], ["fontWeight", "font-weight"], ["glyphName", "glyph-name"], ["glyphOrientationHorizontal", "glyph-orientation-horizontal"], ["glyphOrientationVertical", "glyph-orientation-vertical"], ["horizAdvX", "horiz-adv-x"], ["horizOriginX", "horiz-origin-x"], ["imageRendering", "image-rendering"], ["letterSpacing", "letter-spacing"], ["lightingColor", "lighting-color"], ["markerEnd", "marker-end"], ["markerMid", "marker-mid"], ["markerStart", "marker-start"], ["overlinePosition", "overline-position"], ["overlineThickness", "overline-thickness"], ["paintOrder", "paint-order"], ["panose-1", "panose-1"], ["pointerEvents", "pointer-events"], ["renderingIntent", "rendering-intent"], ["shapeRendering", "shape-rendering"], ["stopColor", "stop-color"], ["stopOpacity", "stop-opacity"], ["strikethroughPosition", "strikethrough-position"], ["strikethroughThickness", "strikethrough-thickness"], ["strokeDasharray", "stroke-dasharray"], ["strokeDashoffset", "stroke-dashoffset"], ["strokeLinecap", "stroke-linecap"], ["strokeLinejoin", "stroke-linejoin"], ["strokeMiterlimit", "stroke-miterlimit"], ["strokeOpacity", "stroke-opacity"], ["strokeWidth", "stroke-width"], ["textAnchor", "text-anchor"], ["textDecoration", "text-decoration"], ["textRendering", "text-rendering"], ["transformOrigin", "transform-origin"], ["underlinePosition", "underline-position"], ["underlineThickness", "underline-thickness"], ["unicodeBidi", "unicode-bidi"], ["unicodeRange", "unicode-range"], ["unitsPerEm", "units-per-em"], ["vAlphabetic", "v-alphabetic"], ["vHanging", "v-hanging"], ["vIdeographic", "v-ideographic"], ["vMathematical", "v-mathematical"], ["vectorEffect", "vector-effect"], ["vertAdvY", "vert-adv-y"], ["vertOriginX", "vert-origin-x"], ["vertOriginY", "vert-origin-y"], ["wordSpacing", "word-spacing"], ["writingMode", "writing-mode"], ["xmlnsXlink", "xmlns:xlink"], ["xHeight", "x-height"]]), At = /^[\u0000-\u001F ]*j[\r\n\t]*a[\r\n\t]*v[\r\n\t]*a[\r\n\t]*s[\r\n\t]*c[\r\n\t]*r[\r\n\t]*i[\r\n\t]*p[\r\n\t]*t[\r\n\t]*:/i;
    function Rt(e3) {
      return At.test("" + e3) ? "javascript:throw new Error('React has blocked a javascript: URL as a security precaution.')" : e3;
    }
    function _t() {
    }
    var jt = null;
    function Lt(e3) {
      return (e3 = e3.target || e3.srcElement || window).correspondingUseElement && (e3 = e3.correspondingUseElement), 3 === e3.nodeType ? e3.parentNode : e3;
    }
    var Dt = null, It = null;
    function zt(e3) {
      var t3 = Xe(e3);
      if (t3 && (e3 = t3.stateNode)) {
        var n3 = e3[He] || null;
        e: switch (e3 = t3.stateNode, t3.type) {
          case "input":
            if (gt(e3, n3.value, n3.defaultValue, n3.defaultValue, n3.checked, n3.defaultChecked, n3.type, n3.name), t3 = n3.name, "radio" === n3.type && null != t3) {
              for (n3 = e3; n3.parentNode; ) n3 = n3.parentNode;
              for (n3 = n3.querySelectorAll('input[name="' + yt("" + t3) + '"][type="radio"]'), t3 = 0; t3 < n3.length; t3++) {
                var r2 = n3[t3];
                if (r2 !== e3 && r2.form === e3.form) {
                  var o2 = r2[He] || null;
                  if (!o2) throw Error(a(90));
                  gt(r2, o2.value, o2.defaultValue, o2.defaultValue, o2.checked, o2.defaultChecked, o2.type, o2.name);
                }
              }
              for (t3 = 0; t3 < n3.length; t3++) (r2 = n3[t3]).form === e3.form && ht(r2);
            }
            break e;
          case "textarea":
            St(e3, n3.value, n3.defaultValue);
            break e;
          case "select":
            null != (t3 = n3.value) && Et(e3, !!n3.multiple, t3, false);
        }
      }
    }
    var Ft = false;
    function Mt(e3, t3, n3) {
      if (Ft) return e3(t3, n3);
      Ft = true;
      try {
        return e3(t3);
      } finally {
        if (Ft = false, (null !== Dt || null !== It) && (Zc(), Dt && (t3 = Dt, e3 = It, It = Dt = null, zt(t3), e3))) for (t3 = 0; t3 < e3.length; t3++) zt(e3[t3]);
      }
    }
    function Ut(e3, t3) {
      var n3 = e3.stateNode;
      if (null === n3) return null;
      var r2 = n3[He] || null;
      if (null === r2) return null;
      n3 = r2[t3];
      e: switch (t3) {
        case "onClick":
        case "onClickCapture":
        case "onDoubleClick":
        case "onDoubleClickCapture":
        case "onMouseDown":
        case "onMouseDownCapture":
        case "onMouseMove":
        case "onMouseMoveCapture":
        case "onMouseUp":
        case "onMouseUpCapture":
        case "onMouseEnter":
          (r2 = !r2.disabled) || (r2 = !("button" === (e3 = e3.type) || "input" === e3 || "select" === e3 || "textarea" === e3)), e3 = !r2;
          break e;
        default:
          e3 = false;
      }
      if (e3) return null;
      if (n3 && "function" != typeof n3) throw Error(a(231, t3, typeof n3));
      return n3;
    }
    var Bt = !("undefined" == typeof window || void 0 === window.document || void 0 === window.document.createElement), Ht = false;
    if (Bt) try {
      var Wt = {};
      Object.defineProperty(Wt, "passive", { get: function() {
        Ht = true;
      } }), window.addEventListener("test", Wt, Wt), window.removeEventListener("test", Wt, Wt);
    } catch (e3) {
      Ht = false;
    }
    var qt = null, $t = null, Vt = null;
    function Gt() {
      if (Vt) return Vt;
      var e3, t3, n3 = $t, r2 = n3.length, o2 = "value" in qt ? qt.value : qt.textContent, i2 = o2.length;
      for (e3 = 0; e3 < r2 && n3[e3] === o2[e3]; e3++) ;
      var a2 = r2 - e3;
      for (t3 = 1; t3 <= a2 && n3[r2 - t3] === o2[i2 - t3]; t3++) ;
      return Vt = o2.slice(e3, 1 < t3 ? 1 - t3 : void 0);
    }
    function Kt(e3) {
      var t3 = e3.keyCode;
      return "charCode" in e3 ? 0 === (e3 = e3.charCode) && 13 === t3 && (e3 = 13) : e3 = t3, 10 === e3 && (e3 = 13), 32 <= e3 || 13 === e3 ? e3 : 0;
    }
    function Qt() {
      return true;
    }
    function Yt() {
      return false;
    }
    function Xt(e3) {
      function t3(t4, n3, r2, o2, i2) {
        for (var a2 in this._reactName = t4, this._targetInst = r2, this.type = n3, this.nativeEvent = o2, this.target = i2, this.currentTarget = null, e3) e3.hasOwnProperty(a2) && (t4 = e3[a2], this[a2] = t4 ? t4(o2) : o2[a2]);
        return this.isDefaultPrevented = (null != o2.defaultPrevented ? o2.defaultPrevented : false === o2.returnValue) ? Qt : Yt, this.isPropagationStopped = Yt, this;
      }
      return p(t3.prototype, { preventDefault: function() {
        this.defaultPrevented = true;
        var e4 = this.nativeEvent;
        e4 && (e4.preventDefault ? e4.preventDefault() : "unknown" != typeof e4.returnValue && (e4.returnValue = false), this.isDefaultPrevented = Qt);
      }, stopPropagation: function() {
        var e4 = this.nativeEvent;
        e4 && (e4.stopPropagation ? e4.stopPropagation() : "unknown" != typeof e4.cancelBubble && (e4.cancelBubble = true), this.isPropagationStopped = Qt);
      }, persist: function() {
      }, isPersistent: Qt }), t3;
    }
    var Jt, Zt, en, tn = { eventPhase: 0, bubbles: 0, cancelable: 0, timeStamp: function(e3) {
      return e3.timeStamp || Date.now();
    }, defaultPrevented: 0, isTrusted: 0 }, nn = Xt(tn), rn = p({}, tn, { view: 0, detail: 0 }), on = Xt(rn), an = p({}, rn, { screenX: 0, screenY: 0, clientX: 0, clientY: 0, pageX: 0, pageY: 0, ctrlKey: 0, shiftKey: 0, altKey: 0, metaKey: 0, getModifierState: yn, button: 0, buttons: 0, relatedTarget: function(e3) {
      return void 0 === e3.relatedTarget ? e3.fromElement === e3.srcElement ? e3.toElement : e3.fromElement : e3.relatedTarget;
    }, movementX: function(e3) {
      return "movementX" in e3 ? e3.movementX : (e3 !== en && (en && "mousemove" === e3.type ? (Jt = e3.screenX - en.screenX, Zt = e3.screenY - en.screenY) : Zt = Jt = 0, en = e3), Jt);
    }, movementY: function(e3) {
      return "movementY" in e3 ? e3.movementY : Zt;
    } }), ln = Xt(an), un = Xt(p({}, an, { dataTransfer: 0 })), cn = Xt(p({}, rn, { relatedTarget: 0 })), sn = Xt(p({}, tn, { animationName: 0, elapsedTime: 0, pseudoElement: 0 })), fn = Xt(p({}, tn, { clipboardData: function(e3) {
      return "clipboardData" in e3 ? e3.clipboardData : window.clipboardData;
    } })), dn = Xt(p({}, tn, { data: 0 })), pn = { Esc: "Escape", Spacebar: " ", Left: "ArrowLeft", Up: "ArrowUp", Right: "ArrowRight", Down: "ArrowDown", Del: "Delete", Win: "OS", Menu: "ContextMenu", Apps: "ContextMenu", Scroll: "ScrollLock", MozPrintableKey: "Unidentified" }, hn = { 8: "Backspace", 9: "Tab", 12: "Clear", 13: "Enter", 16: "Shift", 17: "Control", 18: "Alt", 19: "Pause", 20: "CapsLock", 27: "Escape", 32: " ", 33: "PageUp", 34: "PageDown", 35: "End", 36: "Home", 37: "ArrowLeft", 38: "ArrowUp", 39: "ArrowRight", 40: "ArrowDown", 45: "Insert", 46: "Delete", 112: "F1", 113: "F2", 114: "F3", 115: "F4", 116: "F5", 117: "F6", 118: "F7", 119: "F8", 120: "F9", 121: "F10", 122: "F11", 123: "F12", 144: "NumLock", 145: "ScrollLock", 224: "Meta" }, vn = { Alt: "altKey", Control: "ctrlKey", Meta: "metaKey", Shift: "shiftKey" };
    function mn(e3) {
      var t3 = this.nativeEvent;
      return t3.getModifierState ? t3.getModifierState(e3) : !!(e3 = vn[e3]) && !!t3[e3];
    }
    function yn() {
      return mn;
    }
    var gn = Xt(p({}, rn, { key: function(e3) {
      if (e3.key) {
        var t3 = pn[e3.key] || e3.key;
        if ("Unidentified" !== t3) return t3;
      }
      return "keypress" === e3.type ? 13 === (e3 = Kt(e3)) ? "Enter" : String.fromCharCode(e3) : "keydown" === e3.type || "keyup" === e3.type ? hn[e3.keyCode] || "Unidentified" : "";
    }, code: 0, location: 0, ctrlKey: 0, shiftKey: 0, altKey: 0, metaKey: 0, repeat: 0, locale: 0, getModifierState: yn, charCode: function(e3) {
      return "keypress" === e3.type ? Kt(e3) : 0;
    }, keyCode: function(e3) {
      return "keydown" === e3.type || "keyup" === e3.type ? e3.keyCode : 0;
    }, which: function(e3) {
      return "keypress" === e3.type ? Kt(e3) : "keydown" === e3.type || "keyup" === e3.type ? e3.keyCode : 0;
    } })), bn = Xt(p({}, an, { pointerId: 0, width: 0, height: 0, pressure: 0, tangentialPressure: 0, tiltX: 0, tiltY: 0, twist: 0, pointerType: 0, isPrimary: 0 })), wn = Xt(p({}, rn, { touches: 0, targetTouches: 0, changedTouches: 0, altKey: 0, metaKey: 0, ctrlKey: 0, shiftKey: 0, getModifierState: yn })), En = Xt(p({}, tn, { propertyName: 0, elapsedTime: 0, pseudoElement: 0 })), Sn = Xt(p({}, an, { deltaX: function(e3) {
      return "deltaX" in e3 ? e3.deltaX : "wheelDeltaX" in e3 ? -e3.wheelDeltaX : 0;
    }, deltaY: function(e3) {
      return "deltaY" in e3 ? e3.deltaY : "wheelDeltaY" in e3 ? -e3.wheelDeltaY : "wheelDelta" in e3 ? -e3.wheelDelta : 0;
    }, deltaZ: 0, deltaMode: 0 })), kn = Xt(p({}, tn, { newState: 0, oldState: 0 })), xn = [9, 13, 27, 32], Cn = Bt && "CompositionEvent" in window, On = null;
    Bt && "documentMode" in document && (On = document.documentMode);
    var Pn = Bt && "TextEvent" in window && !On, Tn = Bt && (!Cn || On && 8 < On && 11 >= On), Nn = String.fromCharCode(32), An = false;
    function Rn(e3, t3) {
      switch (e3) {
        case "keyup":
          return -1 !== xn.indexOf(t3.keyCode);
        case "keydown":
          return 229 !== t3.keyCode;
        case "keypress":
        case "mousedown":
        case "focusout":
          return true;
        default:
          return false;
      }
    }
    function _n(e3) {
      return "object" == typeof (e3 = e3.detail) && "data" in e3 ? e3.data : null;
    }
    var jn = false, Ln = { color: true, date: true, datetime: true, "datetime-local": true, email: true, month: true, number: true, password: true, range: true, search: true, tel: true, text: true, time: true, url: true, week: true };
    function Dn(e3) {
      var t3 = e3 && e3.nodeName && e3.nodeName.toLowerCase();
      return "input" === t3 ? !!Ln[e3.type] : "textarea" === t3;
    }
    function In(e3, t3, n3, r2) {
      Dt ? It ? It.push(r2) : It = [r2] : Dt = r2, 0 < (t3 = rf(t3, "onChange")).length && (n3 = new nn("onChange", "change", null, n3, r2), e3.push({ event: n3, listeners: t3 }));
    }
    var zn = null, Fn = null;
    function Mn(e3) {
      Qs(e3, 0);
    }
    function Un(e3) {
      if (ht(Je(e3))) return e3;
    }
    function Bn(e3, t3) {
      if ("change" === e3) return t3;
    }
    var Hn = false;
    if (Bt) {
      var Wn;
      if (Bt) {
        var qn = "oninput" in document;
        if (!qn) {
          var $n = document.createElement("div");
          $n.setAttribute("oninput", "return;"), qn = "function" == typeof $n.oninput;
        }
        Wn = qn;
      } else Wn = false;
      Hn = Wn && (!document.documentMode || 9 < document.documentMode);
    }
    function Vn() {
      zn && (zn.detachEvent("onpropertychange", Gn), Fn = zn = null);
    }
    function Gn(e3) {
      if ("value" === e3.propertyName && Un(Fn)) {
        var t3 = [];
        In(t3, Fn, e3, Lt(e3)), Mt(Mn, t3);
      }
    }
    function Kn(e3, t3, n3) {
      "focusin" === e3 ? (Vn(), Fn = n3, (zn = t3).attachEvent("onpropertychange", Gn)) : "focusout" === e3 && Vn();
    }
    function Qn(e3) {
      if ("selectionchange" === e3 || "keyup" === e3 || "keydown" === e3) return Un(Fn);
    }
    function Yn(e3, t3) {
      if ("click" === e3) return Un(t3);
    }
    function Xn(e3, t3) {
      if ("input" === e3 || "change" === e3) return Un(t3);
    }
    var Jn = "function" == typeof Object.is ? Object.is : function(e3, t3) {
      return e3 === t3 && (0 !== e3 || 1 / e3 == 1 / t3) || e3 != e3 && t3 != t3;
    };
    function Zn(e3, t3) {
      if (Jn(e3, t3)) return true;
      if ("object" != typeof e3 || null === e3 || "object" != typeof t3 || null === t3) return false;
      var n3 = Object.keys(e3), r2 = Object.keys(t3);
      if (n3.length !== r2.length) return false;
      for (r2 = 0; r2 < n3.length; r2++) {
        var o2 = n3[r2];
        if (!re.call(t3, o2) || !Jn(e3[o2], t3[o2])) return false;
      }
      return true;
    }
    function er(e3) {
      for (; e3 && e3.firstChild; ) e3 = e3.firstChild;
      return e3;
    }
    function tr(e3, t3) {
      var n3, r2 = er(e3);
      for (e3 = 0; r2; ) {
        if (3 === r2.nodeType) {
          if (n3 = e3 + r2.textContent.length, e3 <= t3 && n3 >= t3) return { node: r2, offset: t3 - e3 };
          e3 = n3;
        }
        e: {
          for (; r2; ) {
            if (r2.nextSibling) {
              r2 = r2.nextSibling;
              break e;
            }
            r2 = r2.parentNode;
          }
          r2 = void 0;
        }
        r2 = er(r2);
      }
    }
    function nr(e3, t3) {
      return !(!e3 || !t3) && (e3 === t3 || (!e3 || 3 !== e3.nodeType) && (t3 && 3 === t3.nodeType ? nr(e3, t3.parentNode) : "contains" in e3 ? e3.contains(t3) : !!e3.compareDocumentPosition && !!(16 & e3.compareDocumentPosition(t3))));
    }
    function rr(e3) {
      for (var t3 = vt((e3 = null != e3 && null != e3.ownerDocument && null != e3.ownerDocument.defaultView ? e3.ownerDocument.defaultView : window).document); t3 instanceof e3.HTMLIFrameElement; ) {
        try {
          var n3 = "string" == typeof t3.contentWindow.location.href;
        } catch (e4) {
          n3 = false;
        }
        if (!n3) break;
        t3 = vt((e3 = t3.contentWindow).document);
      }
      return t3;
    }
    function or(e3) {
      var t3 = e3 && e3.nodeName && e3.nodeName.toLowerCase();
      return t3 && ("input" === t3 && ("text" === e3.type || "search" === e3.type || "tel" === e3.type || "url" === e3.type || "password" === e3.type) || "textarea" === t3 || "true" === e3.contentEditable);
    }
    var ir = Bt && "documentMode" in document && 11 >= document.documentMode, ar = null, lr = null, ur = null, cr = false;
    function sr(e3, t3, n3) {
      var r2 = n3.window === n3 ? n3.document : 9 === n3.nodeType ? n3 : n3.ownerDocument;
      cr || null == ar || ar !== vt(r2) || (r2 = "selectionStart" in (r2 = ar) && or(r2) ? { start: r2.selectionStart, end: r2.selectionEnd } : { anchorNode: (r2 = (r2.ownerDocument && r2.ownerDocument.defaultView || window).getSelection()).anchorNode, anchorOffset: r2.anchorOffset, focusNode: r2.focusNode, focusOffset: r2.focusOffset }, ur && Zn(ur, r2) || (ur = r2, 0 < (r2 = rf(lr, "onSelect")).length && (t3 = new nn("onSelect", "select", null, t3, n3), e3.push({ event: t3, listeners: r2 }), t3.target = ar)));
    }
    function fr(e3, t3) {
      var n3 = {};
      return n3[e3.toLowerCase()] = t3.toLowerCase(), n3["Webkit" + e3] = "webkit" + t3, n3["Moz" + e3] = "moz" + t3, n3;
    }
    var dr = { animationend: fr("Animation", "AnimationEnd"), animationiteration: fr("Animation", "AnimationIteration"), animationstart: fr("Animation", "AnimationStart"), transitionrun: fr("Transition", "TransitionRun"), transitionstart: fr("Transition", "TransitionStart"), transitioncancel: fr("Transition", "TransitionCancel"), transitionend: fr("Transition", "TransitionEnd") }, pr = {}, hr = {};
    function vr(e3) {
      if (pr[e3]) return pr[e3];
      if (!dr[e3]) return e3;
      var t3, n3 = dr[e3];
      for (t3 in n3) if (n3.hasOwnProperty(t3) && t3 in hr) return pr[e3] = n3[t3];
      return e3;
    }
    Bt && (hr = document.createElement("div").style, "AnimationEvent" in window || (delete dr.animationend.animation, delete dr.animationiteration.animation, delete dr.animationstart.animation), "TransitionEvent" in window || delete dr.transitionend.transition);
    var mr = vr("animationend"), yr = vr("animationiteration"), gr = vr("animationstart"), br = vr("transitionrun"), wr = vr("transitionstart"), Er = vr("transitioncancel"), Sr = vr("transitionend"), kr = /* @__PURE__ */ new Map(), xr = "abort auxClick beforeToggle cancel canPlay canPlayThrough click close contextMenu copy cut drag dragEnd dragEnter dragExit dragLeave dragOver dragStart drop durationChange emptied encrypted ended error gotPointerCapture input invalid keyDown keyPress keyUp load loadedData loadedMetadata loadStart lostPointerCapture mouseDown mouseMove mouseOut mouseOver mouseUp paste pause play playing pointerCancel pointerDown pointerMove pointerOut pointerOver pointerUp progress rateChange reset resize seeked seeking stalled submit suspend timeUpdate touchCancel touchEnd touchStart volumeChange scroll toggle touchMove waiting wheel".split(" ");
    function Cr(e3, t3) {
      kr.set(e3, t3), rt(t3, [e3]);
    }
    xr.push("scrollEnd");
    var Or = "function" == typeof reportError ? reportError : function(e3) {
      if ("object" == typeof window && "function" == typeof window.ErrorEvent) {
        var t3 = new window.ErrorEvent("error", { bubbles: true, cancelable: true, message: "object" == typeof e3 && null !== e3 && "string" == typeof e3.message ? String(e3.message) : String(e3), error: e3 });
        if (!window.dispatchEvent(t3)) return;
      } else if ("object" == typeof process && "function" == typeof process.emit) return void process.emit("uncaughtException", e3);
      console.error(e3);
    }, Pr = [], Tr = 0, Nr = 0;
    function Ar() {
      for (var e3 = Tr, t3 = Nr = Tr = 0; t3 < e3; ) {
        var n3 = Pr[t3];
        Pr[t3++] = null;
        var r2 = Pr[t3];
        Pr[t3++] = null;
        var o2 = Pr[t3];
        Pr[t3++] = null;
        var i2 = Pr[t3];
        if (Pr[t3++] = null, null !== r2 && null !== o2) {
          var a2 = r2.pending;
          null === a2 ? o2.next = o2 : (o2.next = a2.next, a2.next = o2), r2.pending = o2;
        }
        0 !== i2 && Lr(n3, o2, i2);
      }
    }
    function Rr(e3, t3, n3, r2) {
      Pr[Tr++] = e3, Pr[Tr++] = t3, Pr[Tr++] = n3, Pr[Tr++] = r2, Nr |= r2, e3.lanes |= r2, null !== (e3 = e3.alternate) && (e3.lanes |= r2);
    }
    function _r(e3, t3, n3, r2) {
      return Rr(e3, t3, n3, r2), Dr(e3);
    }
    function jr(e3, t3) {
      return Rr(e3, null, null, t3), Dr(e3);
    }
    function Lr(e3, t3, n3) {
      e3.lanes |= n3;
      var r2 = e3.alternate;
      null !== r2 && (r2.lanes |= n3);
      for (var o2 = false, i2 = e3.return; null !== i2; ) i2.childLanes |= n3, null !== (r2 = i2.alternate) && (r2.childLanes |= n3), 22 === i2.tag && (null === (e3 = i2.stateNode) || 1 & e3._visibility || (o2 = true)), e3 = i2, i2 = i2.return;
      return 3 === e3.tag ? (i2 = e3.stateNode, o2 && null !== t3 && (o2 = 31 - we(n3), null === (r2 = (e3 = i2.hiddenUpdates)[o2]) ? e3[o2] = [t3] : r2.push(t3), t3.lane = 536870912 | n3), i2) : null;
    }
    function Dr(e3) {
      if (50 < qc) throw qc = 0, $c = null, Error(a(185));
      for (var t3 = e3.return; null !== t3; ) t3 = (e3 = t3).return;
      return 3 === e3.tag ? e3.stateNode : null;
    }
    var Ir = {};
    function zr(e3, t3, n3, r2) {
      this.tag = e3, this.key = n3, this.sibling = this.child = this.return = this.stateNode = this.type = this.elementType = null, this.index = 0, this.refCleanup = this.ref = null, this.pendingProps = t3, this.dependencies = this.memoizedState = this.updateQueue = this.memoizedProps = null, this.mode = r2, this.subtreeFlags = this.flags = 0, this.deletions = null, this.childLanes = this.lanes = 0, this.alternate = null;
    }
    function Fr(e3, t3, n3, r2) {
      return new zr(e3, t3, n3, r2);
    }
    function Mr(e3) {
      return !(!(e3 = e3.prototype) || !e3.isReactComponent);
    }
    function Ur(e3, t3) {
      var n3 = e3.alternate;
      return null === n3 ? ((n3 = Fr(e3.tag, t3, e3.key, e3.mode)).elementType = e3.elementType, n3.type = e3.type, n3.stateNode = e3.stateNode, n3.alternate = e3, e3.alternate = n3) : (n3.pendingProps = t3, n3.type = e3.type, n3.flags = 0, n3.subtreeFlags = 0, n3.deletions = null), n3.flags = 65011712 & e3.flags, n3.childLanes = e3.childLanes, n3.lanes = e3.lanes, n3.child = e3.child, n3.memoizedProps = e3.memoizedProps, n3.memoizedState = e3.memoizedState, n3.updateQueue = e3.updateQueue, t3 = e3.dependencies, n3.dependencies = null === t3 ? null : { lanes: t3.lanes, firstContext: t3.firstContext }, n3.sibling = e3.sibling, n3.index = e3.index, n3.ref = e3.ref, n3.refCleanup = e3.refCleanup, n3;
    }
    function Br(e3, t3) {
      e3.flags &= 65011714;
      var n3 = e3.alternate;
      return null === n3 ? (e3.childLanes = 0, e3.lanes = t3, e3.child = null, e3.subtreeFlags = 0, e3.memoizedProps = null, e3.memoizedState = null, e3.updateQueue = null, e3.dependencies = null, e3.stateNode = null) : (e3.childLanes = n3.childLanes, e3.lanes = n3.lanes, e3.child = n3.child, e3.subtreeFlags = 0, e3.deletions = null, e3.memoizedProps = n3.memoizedProps, e3.memoizedState = n3.memoizedState, e3.updateQueue = n3.updateQueue, e3.type = n3.type, t3 = n3.dependencies, e3.dependencies = null === t3 ? null : { lanes: t3.lanes, firstContext: t3.firstContext }), e3;
    }
    function Hr(e3, t3, n3, r2, o2, i2) {
      var l2 = 0;
      if (r2 = e3, "function" == typeof e3) Mr(e3) && (l2 = 1);
      else if ("string" == typeof e3) l2 = (function(e4, t4, n4) {
        if (1 === n4 || null != t4.itemProp) return false;
        switch (e4) {
          case "meta":
          case "title":
            return true;
          case "style":
            if ("string" != typeof t4.precedence || "string" != typeof t4.href || "" === t4.href) break;
            return true;
          case "link":
            if ("string" != typeof t4.rel || "string" != typeof t4.href || "" === t4.href || t4.onLoad || t4.onError) break;
            return "stylesheet" !== t4.rel || (e4 = t4.disabled, "string" == typeof t4.precedence && null == e4);
          case "script":
            if (t4.async && "function" != typeof t4.async && "symbol" != typeof t4.async && !t4.onLoad && !t4.onError && t4.src && "string" == typeof t4.src) return true;
        }
        return false;
      })(e3, n3, q.current) ? 26 : "html" === e3 || "head" === e3 || "body" === e3 ? 27 : 5;
      else e: switch (e3) {
        case P:
          return (e3 = Fr(31, n3, t3, o2)).elementType = P, e3.lanes = i2, e3;
        case y:
          return Wr(n3.children, o2, i2, t3);
        case g:
          l2 = 8, o2 |= 24;
          break;
        case b:
          return (e3 = Fr(12, n3, t3, 2 | o2)).elementType = b, e3.lanes = i2, e3;
        case k:
          return (e3 = Fr(13, n3, t3, o2)).elementType = k, e3.lanes = i2, e3;
        case x:
          return (e3 = Fr(19, n3, t3, o2)).elementType = x, e3.lanes = i2, e3;
        default:
          if ("object" == typeof e3 && null !== e3) switch (e3.$$typeof) {
            case E:
              l2 = 10;
              break e;
            case w:
              l2 = 9;
              break e;
            case S:
              l2 = 11;
              break e;
            case C:
              l2 = 14;
              break e;
            case O:
              l2 = 16, r2 = null;
              break e;
          }
          l2 = 29, n3 = Error(a(130, null === e3 ? "null" : typeof e3, "")), r2 = null;
      }
      return (t3 = Fr(l2, n3, t3, o2)).elementType = e3, t3.type = r2, t3.lanes = i2, t3;
    }
    function Wr(e3, t3, n3, r2) {
      return (e3 = Fr(7, e3, r2, t3)).lanes = n3, e3;
    }
    function qr(e3, t3, n3) {
      return (e3 = Fr(6, e3, null, t3)).lanes = n3, e3;
    }
    function $r(e3) {
      var t3 = Fr(18, null, null, 0);
      return t3.stateNode = e3, t3;
    }
    function Vr(e3, t3, n3) {
      return (t3 = Fr(4, null !== e3.children ? e3.children : [], e3.key, t3)).lanes = n3, t3.stateNode = { containerInfo: e3.containerInfo, pendingChildren: null, implementation: e3.implementation }, t3;
    }
    var Gr = /* @__PURE__ */ new WeakMap();
    function Kr(e3, t3) {
      if ("object" == typeof e3 && null !== e3) {
        var n3 = Gr.get(e3);
        return void 0 !== n3 ? n3 : (t3 = { value: e3, source: t3, stack: ne(t3) }, Gr.set(e3, t3), t3);
      }
      return { value: e3, source: t3, stack: ne(t3) };
    }
    var Qr = [], Yr = 0, Xr = null, Jr = 0, Zr = [], eo = 0, to = null, no = 1, ro = "";
    function oo(e3, t3) {
      Qr[Yr++] = Jr, Qr[Yr++] = Xr, Xr = e3, Jr = t3;
    }
    function io(e3, t3, n3) {
      Zr[eo++] = no, Zr[eo++] = ro, Zr[eo++] = to, to = e3;
      var r2 = no;
      e3 = ro;
      var o2 = 32 - we(r2) - 1;
      r2 &= ~(1 << o2), n3 += 1;
      var i2 = 32 - we(t3) + o2;
      if (30 < i2) {
        var a2 = o2 - o2 % 5;
        i2 = (r2 & (1 << a2) - 1).toString(32), r2 >>= a2, o2 -= a2, no = 1 << 32 - we(t3) + o2 | n3 << o2 | r2, ro = i2 + e3;
      } else no = 1 << i2 | n3 << o2 | r2, ro = e3;
    }
    function ao(e3) {
      null !== e3.return && (oo(e3, 1), io(e3, 1, 0));
    }
    function lo(e3) {
      for (; e3 === Xr; ) Xr = Qr[--Yr], Qr[Yr] = null, Jr = Qr[--Yr], Qr[Yr] = null;
      for (; e3 === to; ) to = Zr[--eo], Zr[eo] = null, ro = Zr[--eo], Zr[eo] = null, no = Zr[--eo], Zr[eo] = null;
    }
    function uo(e3, t3) {
      Zr[eo++] = no, Zr[eo++] = ro, Zr[eo++] = to, no = t3.id, ro = t3.overflow, to = e3;
    }
    var co = null, so = null, fo = false, po = null, ho = false, vo = Error(a(519));
    function mo(e3) {
      throw So(Kr(Error(a(418, 1 < arguments.length && void 0 !== arguments[1] && arguments[1] ? "text" : "HTML", "")), e3)), vo;
    }
    function yo(e3) {
      var t3 = e3.stateNode, n3 = e3.type, r2 = e3.memoizedProps;
      switch (t3[Be] = e3, t3[He] = r2, n3) {
        case "dialog":
          Ys("cancel", t3), Ys("close", t3);
          break;
        case "iframe":
        case "object":
        case "embed":
          Ys("load", t3);
          break;
        case "video":
        case "audio":
          for (n3 = 0; n3 < Gs.length; n3++) Ys(Gs[n3], t3);
          break;
        case "source":
          Ys("error", t3);
          break;
        case "img":
        case "image":
        case "link":
          Ys("error", t3), Ys("load", t3);
          break;
        case "details":
          Ys("toggle", t3);
          break;
        case "input":
          Ys("invalid", t3), bt(t3, r2.value, r2.defaultValue, r2.checked, r2.defaultChecked, r2.type, r2.name, true);
          break;
        case "select":
          Ys("invalid", t3);
          break;
        case "textarea":
          Ys("invalid", t3), kt(t3, r2.value, r2.defaultValue, r2.children);
      }
      "string" != typeof (n3 = r2.children) && "number" != typeof n3 && "bigint" != typeof n3 || t3.textContent === "" + n3 || true === r2.suppressHydrationWarning || sf(t3.textContent, n3) ? (null != r2.popover && (Ys("beforetoggle", t3), Ys("toggle", t3)), null != r2.onScroll && Ys("scroll", t3), null != r2.onScrollEnd && Ys("scrollend", t3), null != r2.onClick && (t3.onclick = _t), t3 = true) : t3 = false, t3 || mo(e3, true);
    }
    function go(e3) {
      for (co = e3.return; co; ) switch (co.tag) {
        case 5:
        case 31:
        case 13:
          return void (ho = false);
        case 27:
        case 3:
          return void (ho = true);
        default:
          co = co.return;
      }
    }
    function bo(e3) {
      if (e3 !== co) return false;
      if (!fo) return go(e3), fo = true, false;
      var t3, n3 = e3.tag;
      if ((t3 = 3 !== n3 && 27 !== n3) && ((t3 = 5 === n3) && (t3 = !("form" !== (t3 = e3.type) && "button" !== t3) || wf(e3.type, e3.memoizedProps)), t3 = !t3), t3 && so && mo(e3), go(e3), 13 === n3) {
        if (!(e3 = null !== (e3 = e3.memoizedState) ? e3.dehydrated : null)) throw Error(a(317));
        so = If(e3);
      } else if (31 === n3) {
        if (!(e3 = null !== (e3 = e3.memoizedState) ? e3.dehydrated : null)) throw Error(a(317));
        so = If(e3);
      } else 27 === n3 ? (n3 = so, Pf(e3.type) ? (e3 = Df, Df = null, so = e3) : so = n3) : so = co ? Lf(e3.stateNode.nextSibling) : null;
      return true;
    }
    function wo() {
      so = co = null, fo = false;
    }
    function Eo() {
      var e3 = po;
      return null !== e3 && (null === Ac ? Ac = e3 : Ac.push.apply(Ac, e3), po = null), e3;
    }
    function So(e3) {
      null === po ? po = [e3] : po.push(e3);
    }
    var ko = M(null), xo = null, Co = null;
    function Oo(e3, t3, n3) {
      B(ko, t3._currentValue), t3._currentValue = n3;
    }
    function Po(e3) {
      e3._currentValue = ko.current, U(ko);
    }
    function To(e3, t3, n3) {
      for (; null !== e3; ) {
        var r2 = e3.alternate;
        if ((e3.childLanes & t3) !== t3 ? (e3.childLanes |= t3, null !== r2 && (r2.childLanes |= t3)) : null !== r2 && (r2.childLanes & t3) !== t3 && (r2.childLanes |= t3), e3 === n3) break;
        e3 = e3.return;
      }
    }
    function No(e3, t3, n3, r2) {
      var o2 = e3.child;
      for (null !== o2 && (o2.return = e3); null !== o2; ) {
        var i2 = o2.dependencies;
        if (null !== i2) {
          var l2 = o2.child;
          i2 = i2.firstContext;
          e: for (; null !== i2; ) {
            var u2 = i2;
            i2 = o2;
            for (var c2 = 0; c2 < t3.length; c2++) if (u2.context === t3[c2]) {
              i2.lanes |= n3, null !== (u2 = i2.alternate) && (u2.lanes |= n3), To(i2.return, n3, e3), r2 || (l2 = null);
              break e;
            }
            i2 = u2.next;
          }
        } else if (18 === o2.tag) {
          if (null === (l2 = o2.return)) throw Error(a(341));
          l2.lanes |= n3, null !== (i2 = l2.alternate) && (i2.lanes |= n3), To(l2, n3, e3), l2 = null;
        } else l2 = o2.child;
        if (null !== l2) l2.return = o2;
        else for (l2 = o2; null !== l2; ) {
          if (l2 === e3) {
            l2 = null;
            break;
          }
          if (null !== (o2 = l2.sibling)) {
            o2.return = l2.return, l2 = o2;
            break;
          }
          l2 = l2.return;
        }
        o2 = l2;
      }
    }
    function Ao(e3, t3, n3, r2) {
      e3 = null;
      for (var o2 = t3, i2 = false; null !== o2; ) {
        if (!i2) {
          if (524288 & o2.flags) i2 = true;
          else if (262144 & o2.flags) break;
        }
        if (10 === o2.tag) {
          var l2 = o2.alternate;
          if (null === l2) throw Error(a(387));
          if (null !== (l2 = l2.memoizedProps)) {
            var u2 = o2.type;
            Jn(o2.pendingProps.value, l2.value) || (null !== e3 ? e3.push(u2) : e3 = [u2]);
          }
        } else if (o2 === G.current) {
          if (null === (l2 = o2.alternate)) throw Error(a(387));
          l2.memoizedState.memoizedState !== o2.memoizedState.memoizedState && (null !== e3 ? e3.push(fd) : e3 = [fd]);
        }
        o2 = o2.return;
      }
      null !== e3 && No(t3, e3, n3, r2), t3.flags |= 262144;
    }
    function Ro(e3) {
      for (e3 = e3.firstContext; null !== e3; ) {
        if (!Jn(e3.context._currentValue, e3.memoizedValue)) return true;
        e3 = e3.next;
      }
      return false;
    }
    function _o(e3) {
      xo = e3, Co = null, null !== (e3 = e3.dependencies) && (e3.firstContext = null);
    }
    function jo(e3) {
      return Do(xo, e3);
    }
    function Lo(e3, t3) {
      return null === xo && _o(e3), Do(e3, t3);
    }
    function Do(e3, t3) {
      var n3 = t3._currentValue;
      if (t3 = { context: t3, memoizedValue: n3, next: null }, null === Co) {
        if (null === e3) throw Error(a(308));
        Co = t3, e3.dependencies = { lanes: 0, firstContext: t3 }, e3.flags |= 524288;
      } else Co = Co.next = t3;
      return n3;
    }
    var Io = "undefined" != typeof AbortController ? AbortController : function() {
      var e3 = [], t3 = this.signal = { aborted: false, addEventListener: function(t4, n3) {
        e3.push(n3);
      } };
      this.abort = function() {
        t3.aborted = true, e3.forEach(function(e4) {
          return e4();
        });
      };
    }, zo = r.unstable_scheduleCallback, Fo = r.unstable_NormalPriority, Mo = { $$typeof: E, Consumer: null, Provider: null, _currentValue: null, _currentValue2: null, _threadCount: 0 };
    function Uo() {
      return { controller: new Io(), data: /* @__PURE__ */ new Map(), refCount: 0 };
    }
    function Bo(e3) {
      e3.refCount--, 0 === e3.refCount && zo(Fo, function() {
        e3.controller.abort();
      });
    }
    var Ho = null, Wo = 0, qo = 0, $o = null;
    function Vo() {
      if (0 === --Wo && null !== Ho) {
        null !== $o && ($o.status = "fulfilled");
        var e3 = Ho;
        Ho = null, qo = 0, $o = null;
        for (var t3 = 0; t3 < e3.length; t3++) (0, e3[t3])();
      }
    }
    var Go = L.S;
    L.S = function(e3, t3) {
      jc = ue(), "object" == typeof t3 && null !== t3 && "function" == typeof t3.then && (function(e4, t4) {
        if (null === Ho) {
          var n3 = Ho = [];
          Wo = 0, qo = Hs(), $o = { status: "pending", value: void 0, then: function(e5) {
            n3.push(e5);
          } };
        }
        Wo++, t4.then(Vo, Vo);
      })(0, t3), null !== Go && Go(e3, t3);
    };
    var Ko = M(null);
    function Qo() {
      var e3 = Ko.current;
      return null !== e3 ? e3 : hc.pooledCache;
    }
    function Yo(e3, t3) {
      B(Ko, null === t3 ? Ko.current : t3.pool);
    }
    function Xo() {
      var e3 = Qo();
      return null === e3 ? null : { parent: Mo._currentValue, pool: e3 };
    }
    var Jo = Error(a(460)), Zo = Error(a(474)), ei = Error(a(542)), ti = { then: function() {
    } };
    function ni(e3) {
      return "fulfilled" === (e3 = e3.status) || "rejected" === e3;
    }
    function ri(e3, t3, n3) {
      switch (void 0 === (n3 = e3[n3]) ? e3.push(t3) : n3 !== t3 && (t3.then(_t, _t), t3 = n3), t3.status) {
        case "fulfilled":
          return t3.value;
        case "rejected":
          throw li(e3 = t3.reason), e3;
        default:
          if ("string" == typeof t3.status) t3.then(_t, _t);
          else {
            if (null !== (e3 = hc) && 100 < e3.shellSuspendCounter) throw Error(a(482));
            (e3 = t3).status = "pending", e3.then(function(e4) {
              if ("pending" === t3.status) {
                var n4 = t3;
                n4.status = "fulfilled", n4.value = e4;
              }
            }, function(e4) {
              if ("pending" === t3.status) {
                var n4 = t3;
                n4.status = "rejected", n4.reason = e4;
              }
            });
          }
          switch (t3.status) {
            case "fulfilled":
              return t3.value;
            case "rejected":
              throw li(e3 = t3.reason), e3;
          }
          throw ii = t3, Jo;
      }
    }
    function oi(e3) {
      try {
        return (0, e3._init)(e3._payload);
      } catch (e4) {
        if (null !== e4 && "object" == typeof e4 && "function" == typeof e4.then) throw ii = e4, Jo;
        throw e4;
      }
    }
    var ii = null;
    function ai() {
      if (null === ii) throw Error(a(459));
      var e3 = ii;
      return ii = null, e3;
    }
    function li(e3) {
      if (e3 === Jo || e3 === ei) throw Error(a(483));
    }
    var ui = null, ci = 0;
    function si(e3) {
      var t3 = ci;
      return ci += 1, null === ui && (ui = []), ri(ui, e3, t3);
    }
    function fi(e3, t3) {
      t3 = t3.props.ref, e3.ref = void 0 !== t3 ? t3 : null;
    }
    function di(e3, t3) {
      if (t3.$$typeof === h) throw Error(a(525));
      throw e3 = Object.prototype.toString.call(t3), Error(a(31, "[object Object]" === e3 ? "object with keys {" + Object.keys(t3).join(", ") + "}" : e3));
    }
    function pi(e3) {
      function t3(t4, n4) {
        if (e3) {
          var r3 = t4.deletions;
          null === r3 ? (t4.deletions = [n4], t4.flags |= 16) : r3.push(n4);
        }
      }
      function n3(n4, r3) {
        if (!e3) return null;
        for (; null !== r3; ) t3(n4, r3), r3 = r3.sibling;
        return null;
      }
      function r2(e4) {
        for (var t4 = /* @__PURE__ */ new Map(); null !== e4; ) null !== e4.key ? t4.set(e4.key, e4) : t4.set(e4.index, e4), e4 = e4.sibling;
        return t4;
      }
      function o2(e4, t4) {
        return (e4 = Ur(e4, t4)).index = 0, e4.sibling = null, e4;
      }
      function i2(t4, n4, r3) {
        return t4.index = r3, e3 ? null !== (r3 = t4.alternate) ? (r3 = r3.index) < n4 ? (t4.flags |= 67108866, n4) : r3 : (t4.flags |= 67108866, n4) : (t4.flags |= 1048576, n4);
      }
      function l2(t4) {
        return e3 && null === t4.alternate && (t4.flags |= 67108866), t4;
      }
      function u2(e4, t4, n4, r3) {
        return null === t4 || 6 !== t4.tag ? ((t4 = qr(n4, e4.mode, r3)).return = e4, t4) : ((t4 = o2(t4, n4)).return = e4, t4);
      }
      function c2(e4, t4, n4, r3) {
        var i3 = n4.type;
        return i3 === y ? f2(e4, t4, n4.props.children, r3, n4.key) : null !== t4 && (t4.elementType === i3 || "object" == typeof i3 && null !== i3 && i3.$$typeof === O && oi(i3) === t4.type) ? (fi(t4 = o2(t4, n4.props), n4), t4.return = e4, t4) : (fi(t4 = Hr(n4.type, n4.key, n4.props, null, e4.mode, r3), n4), t4.return = e4, t4);
      }
      function s2(e4, t4, n4, r3) {
        return null === t4 || 4 !== t4.tag || t4.stateNode.containerInfo !== n4.containerInfo || t4.stateNode.implementation !== n4.implementation ? ((t4 = Vr(n4, e4.mode, r3)).return = e4, t4) : ((t4 = o2(t4, n4.children || [])).return = e4, t4);
      }
      function f2(e4, t4, n4, r3, i3) {
        return null === t4 || 7 !== t4.tag ? ((t4 = Wr(n4, e4.mode, r3, i3)).return = e4, t4) : ((t4 = o2(t4, n4)).return = e4, t4);
      }
      function d2(e4, t4, n4) {
        if ("string" == typeof t4 && "" !== t4 || "number" == typeof t4 || "bigint" == typeof t4) return (t4 = qr("" + t4, e4.mode, n4)).return = e4, t4;
        if ("object" == typeof t4 && null !== t4) {
          switch (t4.$$typeof) {
            case v:
              return fi(n4 = Hr(t4.type, t4.key, t4.props, null, e4.mode, n4), t4), n4.return = e4, n4;
            case m:
              return (t4 = Vr(t4, e4.mode, n4)).return = e4, t4;
            case O:
              return d2(e4, t4 = oi(t4), n4);
          }
          if (j(t4) || A(t4)) return (t4 = Wr(t4, e4.mode, n4, null)).return = e4, t4;
          if ("function" == typeof t4.then) return d2(e4, si(t4), n4);
          if (t4.$$typeof === E) return d2(e4, Lo(e4, t4), n4);
          di(e4, t4);
        }
        return null;
      }
      function p2(e4, t4, n4, r3) {
        var o3 = null !== t4 ? t4.key : null;
        if ("string" == typeof n4 && "" !== n4 || "number" == typeof n4 || "bigint" == typeof n4) return null !== o3 ? null : u2(e4, t4, "" + n4, r3);
        if ("object" == typeof n4 && null !== n4) {
          switch (n4.$$typeof) {
            case v:
              return n4.key === o3 ? c2(e4, t4, n4, r3) : null;
            case m:
              return n4.key === o3 ? s2(e4, t4, n4, r3) : null;
            case O:
              return p2(e4, t4, n4 = oi(n4), r3);
          }
          if (j(n4) || A(n4)) return null !== o3 ? null : f2(e4, t4, n4, r3, null);
          if ("function" == typeof n4.then) return p2(e4, t4, si(n4), r3);
          if (n4.$$typeof === E) return p2(e4, t4, Lo(e4, n4), r3);
          di(e4, n4);
        }
        return null;
      }
      function h2(e4, t4, n4, r3, o3) {
        if ("string" == typeof r3 && "" !== r3 || "number" == typeof r3 || "bigint" == typeof r3) return u2(t4, e4 = e4.get(n4) || null, "" + r3, o3);
        if ("object" == typeof r3 && null !== r3) {
          switch (r3.$$typeof) {
            case v:
              return c2(t4, e4 = e4.get(null === r3.key ? n4 : r3.key) || null, r3, o3);
            case m:
              return s2(t4, e4 = e4.get(null === r3.key ? n4 : r3.key) || null, r3, o3);
            case O:
              return h2(e4, t4, n4, r3 = oi(r3), o3);
          }
          if (j(r3) || A(r3)) return f2(t4, e4 = e4.get(n4) || null, r3, o3, null);
          if ("function" == typeof r3.then) return h2(e4, t4, n4, si(r3), o3);
          if (r3.$$typeof === E) return h2(e4, t4, n4, Lo(t4, r3), o3);
          di(t4, r3);
        }
        return null;
      }
      function g2(u3, c3, s3, f3) {
        if ("object" == typeof s3 && null !== s3 && s3.type === y && null === s3.key && (s3 = s3.props.children), "object" == typeof s3 && null !== s3) {
          switch (s3.$$typeof) {
            case v:
              e: {
                for (var b2 = s3.key; null !== c3; ) {
                  if (c3.key === b2) {
                    if ((b2 = s3.type) === y) {
                      if (7 === c3.tag) {
                        n3(u3, c3.sibling), (f3 = o2(c3, s3.props.children)).return = u3, u3 = f3;
                        break e;
                      }
                    } else if (c3.elementType === b2 || "object" == typeof b2 && null !== b2 && b2.$$typeof === O && oi(b2) === c3.type) {
                      n3(u3, c3.sibling), fi(f3 = o2(c3, s3.props), s3), f3.return = u3, u3 = f3;
                      break e;
                    }
                    n3(u3, c3);
                    break;
                  }
                  t3(u3, c3), c3 = c3.sibling;
                }
                s3.type === y ? ((f3 = Wr(s3.props.children, u3.mode, f3, s3.key)).return = u3, u3 = f3) : (fi(f3 = Hr(s3.type, s3.key, s3.props, null, u3.mode, f3), s3), f3.return = u3, u3 = f3);
              }
              return l2(u3);
            case m:
              e: {
                for (b2 = s3.key; null !== c3; ) {
                  if (c3.key === b2) {
                    if (4 === c3.tag && c3.stateNode.containerInfo === s3.containerInfo && c3.stateNode.implementation === s3.implementation) {
                      n3(u3, c3.sibling), (f3 = o2(c3, s3.children || [])).return = u3, u3 = f3;
                      break e;
                    }
                    n3(u3, c3);
                    break;
                  }
                  t3(u3, c3), c3 = c3.sibling;
                }
                (f3 = Vr(s3, u3.mode, f3)).return = u3, u3 = f3;
              }
              return l2(u3);
            case O:
              return g2(u3, c3, s3 = oi(s3), f3);
          }
          if (j(s3)) return (function(o3, a2, l3, u4) {
            for (var c4 = null, s4 = null, f4 = a2, v2 = a2 = 0, m2 = null; null !== f4 && v2 < l3.length; v2++) {
              f4.index > v2 ? (m2 = f4, f4 = null) : m2 = f4.sibling;
              var y2 = p2(o3, f4, l3[v2], u4);
              if (null === y2) {
                null === f4 && (f4 = m2);
                break;
              }
              e3 && f4 && null === y2.alternate && t3(o3, f4), a2 = i2(y2, a2, v2), null === s4 ? c4 = y2 : s4.sibling = y2, s4 = y2, f4 = m2;
            }
            if (v2 === l3.length) return n3(o3, f4), fo && oo(o3, v2), c4;
            if (null === f4) {
              for (; v2 < l3.length; v2++) null !== (f4 = d2(o3, l3[v2], u4)) && (a2 = i2(f4, a2, v2), null === s4 ? c4 = f4 : s4.sibling = f4, s4 = f4);
              return fo && oo(o3, v2), c4;
            }
            for (f4 = r2(f4); v2 < l3.length; v2++) null !== (m2 = h2(f4, o3, v2, l3[v2], u4)) && (e3 && null !== m2.alternate && f4.delete(null === m2.key ? v2 : m2.key), a2 = i2(m2, a2, v2), null === s4 ? c4 = m2 : s4.sibling = m2, s4 = m2);
            return e3 && f4.forEach(function(e4) {
              return t3(o3, e4);
            }), fo && oo(o3, v2), c4;
          })(u3, c3, s3, f3);
          if (A(s3)) {
            if ("function" != typeof (b2 = A(s3))) throw Error(a(150));
            return (function(o3, l3, u4, c4) {
              if (null == u4) throw Error(a(151));
              for (var s4 = null, f4 = null, v2 = l3, m2 = l3 = 0, y2 = null, g3 = u4.next(); null !== v2 && !g3.done; m2++, g3 = u4.next()) {
                v2.index > m2 ? (y2 = v2, v2 = null) : y2 = v2.sibling;
                var b3 = p2(o3, v2, g3.value, c4);
                if (null === b3) {
                  null === v2 && (v2 = y2);
                  break;
                }
                e3 && v2 && null === b3.alternate && t3(o3, v2), l3 = i2(b3, l3, m2), null === f4 ? s4 = b3 : f4.sibling = b3, f4 = b3, v2 = y2;
              }
              if (g3.done) return n3(o3, v2), fo && oo(o3, m2), s4;
              if (null === v2) {
                for (; !g3.done; m2++, g3 = u4.next()) null !== (g3 = d2(o3, g3.value, c4)) && (l3 = i2(g3, l3, m2), null === f4 ? s4 = g3 : f4.sibling = g3, f4 = g3);
                return fo && oo(o3, m2), s4;
              }
              for (v2 = r2(v2); !g3.done; m2++, g3 = u4.next()) null !== (g3 = h2(v2, o3, m2, g3.value, c4)) && (e3 && null !== g3.alternate && v2.delete(null === g3.key ? m2 : g3.key), l3 = i2(g3, l3, m2), null === f4 ? s4 = g3 : f4.sibling = g3, f4 = g3);
              return e3 && v2.forEach(function(e4) {
                return t3(o3, e4);
              }), fo && oo(o3, m2), s4;
            })(u3, c3, s3 = b2.call(s3), f3);
          }
          if ("function" == typeof s3.then) return g2(u3, c3, si(s3), f3);
          if (s3.$$typeof === E) return g2(u3, c3, Lo(u3, s3), f3);
          di(u3, s3);
        }
        return "string" == typeof s3 && "" !== s3 || "number" == typeof s3 || "bigint" == typeof s3 ? (s3 = "" + s3, null !== c3 && 6 === c3.tag ? (n3(u3, c3.sibling), (f3 = o2(c3, s3)).return = u3, u3 = f3) : (n3(u3, c3), (f3 = qr(s3, u3.mode, f3)).return = u3, u3 = f3), l2(u3)) : n3(u3, c3);
      }
      return function(e4, t4, n4, r3) {
        try {
          ci = 0;
          var o3 = g2(e4, t4, n4, r3);
          return ui = null, o3;
        } catch (t5) {
          if (t5 === Jo || t5 === ei) throw t5;
          var i3 = Fr(29, t5, null, e4.mode);
          return i3.lanes = r3, i3.return = e4, i3;
        }
      };
    }
    var hi = pi(true), vi = pi(false), mi = false;
    function yi(e3) {
      e3.updateQueue = { baseState: e3.memoizedState, firstBaseUpdate: null, lastBaseUpdate: null, shared: { pending: null, lanes: 0, hiddenCallbacks: null }, callbacks: null };
    }
    function gi(e3, t3) {
      e3 = e3.updateQueue, t3.updateQueue === e3 && (t3.updateQueue = { baseState: e3.baseState, firstBaseUpdate: e3.firstBaseUpdate, lastBaseUpdate: e3.lastBaseUpdate, shared: e3.shared, callbacks: null });
    }
    function bi(e3) {
      return { lane: e3, tag: 0, payload: null, callback: null, next: null };
    }
    function wi(e3, t3, n3) {
      var r2 = e3.updateQueue;
      if (null === r2) return null;
      if (r2 = r2.shared, 2 & pc) {
        var o2 = r2.pending;
        return null === o2 ? t3.next = t3 : (t3.next = o2.next, o2.next = t3), r2.pending = t3, t3 = Dr(e3), Lr(e3, null, n3), t3;
      }
      return Rr(e3, r2, t3, n3), Dr(e3);
    }
    function Ei(e3, t3, n3) {
      if (null !== (t3 = t3.updateQueue) && (t3 = t3.shared, 4194048 & n3)) {
        var r2 = t3.lanes;
        n3 |= r2 &= e3.pendingLanes, t3.lanes = n3, Le(e3, n3);
      }
    }
    function Si(e3, t3) {
      var n3 = e3.updateQueue, r2 = e3.alternate;
      if (null !== r2 && n3 === (r2 = r2.updateQueue)) {
        var o2 = null, i2 = null;
        if (null !== (n3 = n3.firstBaseUpdate)) {
          do {
            var a2 = { lane: n3.lane, tag: n3.tag, payload: n3.payload, callback: null, next: null };
            null === i2 ? o2 = i2 = a2 : i2 = i2.next = a2, n3 = n3.next;
          } while (null !== n3);
          null === i2 ? o2 = i2 = t3 : i2 = i2.next = t3;
        } else o2 = i2 = t3;
        return n3 = { baseState: r2.baseState, firstBaseUpdate: o2, lastBaseUpdate: i2, shared: r2.shared, callbacks: r2.callbacks }, void (e3.updateQueue = n3);
      }
      null === (e3 = n3.lastBaseUpdate) ? n3.firstBaseUpdate = t3 : e3.next = t3, n3.lastBaseUpdate = t3;
    }
    var ki = false;
    function xi() {
      if (ki && null !== $o) throw $o;
    }
    function Ci(e3, t3, n3, r2) {
      ki = false;
      var o2 = e3.updateQueue;
      mi = false;
      var i2 = o2.firstBaseUpdate, a2 = o2.lastBaseUpdate, l2 = o2.shared.pending;
      if (null !== l2) {
        o2.shared.pending = null;
        var u2 = l2, c2 = u2.next;
        u2.next = null, null === a2 ? i2 = c2 : a2.next = c2, a2 = u2;
        var s2 = e3.alternate;
        null !== s2 && (l2 = (s2 = s2.updateQueue).lastBaseUpdate) !== a2 && (null === l2 ? s2.firstBaseUpdate = c2 : l2.next = c2, s2.lastBaseUpdate = u2);
      }
      if (null !== i2) {
        var f2 = o2.baseState;
        for (a2 = 0, s2 = c2 = u2 = null, l2 = i2; ; ) {
          var d2 = -536870913 & l2.lane, h2 = d2 !== l2.lane;
          if (h2 ? (mc & d2) === d2 : (r2 & d2) === d2) {
            0 !== d2 && d2 === qo && (ki = true), null !== s2 && (s2 = s2.next = { lane: 0, tag: l2.tag, payload: l2.payload, callback: null, next: null });
            e: {
              var v2 = e3, m2 = l2;
              d2 = t3;
              var y2 = n3;
              switch (m2.tag) {
                case 1:
                  if ("function" == typeof (v2 = m2.payload)) {
                    f2 = v2.call(y2, f2, d2);
                    break e;
                  }
                  f2 = v2;
                  break e;
                case 3:
                  v2.flags = -65537 & v2.flags | 128;
                case 0:
                  if (null == (d2 = "function" == typeof (v2 = m2.payload) ? v2.call(y2, f2, d2) : v2)) break e;
                  f2 = p({}, f2, d2);
                  break e;
                case 2:
                  mi = true;
              }
            }
            null !== (d2 = l2.callback) && (e3.flags |= 64, h2 && (e3.flags |= 8192), null === (h2 = o2.callbacks) ? o2.callbacks = [d2] : h2.push(d2));
          } else h2 = { lane: d2, tag: l2.tag, payload: l2.payload, callback: l2.callback, next: null }, null === s2 ? (c2 = s2 = h2, u2 = f2) : s2 = s2.next = h2, a2 |= d2;
          if (null === (l2 = l2.next)) {
            if (null === (l2 = o2.shared.pending)) break;
            l2 = (h2 = l2).next, h2.next = null, o2.lastBaseUpdate = h2, o2.shared.pending = null;
          }
        }
        null === s2 && (u2 = f2), o2.baseState = u2, o2.firstBaseUpdate = c2, o2.lastBaseUpdate = s2, null === i2 && (o2.shared.lanes = 0), xc |= a2, e3.lanes = a2, e3.memoizedState = f2;
      }
    }
    function Oi(e3, t3) {
      if ("function" != typeof e3) throw Error(a(191, e3));
      e3.call(t3);
    }
    function Pi(e3, t3) {
      var n3 = e3.callbacks;
      if (null !== n3) for (e3.callbacks = null, e3 = 0; e3 < n3.length; e3++) Oi(n3[e3], t3);
    }
    var Ti = M(null), Ni = M(0);
    function Ai(e3, t3) {
      B(Ni, e3 = Sc), B(Ti, t3), Sc = e3 | t3.baseLanes;
    }
    function Ri() {
      B(Ni, Sc), B(Ti, Ti.current);
    }
    function _i() {
      Sc = Ni.current, U(Ti), U(Ni);
    }
    var ji = M(null), Li = null;
    function Di(e3) {
      var t3 = e3.alternate;
      B(Ui, 1 & Ui.current), B(ji, e3), null === Li && (null === t3 || null !== Ti.current || null !== t3.memoizedState) && (Li = e3);
    }
    function Ii(e3) {
      B(Ui, Ui.current), B(ji, e3), null === Li && (Li = e3);
    }
    function zi(e3) {
      22 === e3.tag ? (B(Ui, Ui.current), B(ji, e3), null === Li && (Li = e3)) : Fi();
    }
    function Fi() {
      B(Ui, Ui.current), B(ji, ji.current);
    }
    function Mi(e3) {
      U(ji), Li === e3 && (Li = null), U(Ui);
    }
    var Ui = M(0);
    function Bi(e3) {
      for (var t3 = e3; null !== t3; ) {
        if (13 === t3.tag) {
          var n3 = t3.memoizedState;
          if (null !== n3 && (null === (n3 = n3.dehydrated) || _f(n3) || jf(n3))) return t3;
        } else if (19 !== t3.tag || "forwards" !== t3.memoizedProps.revealOrder && "backwards" !== t3.memoizedProps.revealOrder && "unstable_legacy-backwards" !== t3.memoizedProps.revealOrder && "together" !== t3.memoizedProps.revealOrder) {
          if (null !== t3.child) {
            t3.child.return = t3, t3 = t3.child;
            continue;
          }
        } else if (128 & t3.flags) return t3;
        if (t3 === e3) break;
        for (; null === t3.sibling; ) {
          if (null === t3.return || t3.return === e3) return null;
          t3 = t3.return;
        }
        t3.sibling.return = t3.return, t3 = t3.sibling;
      }
      return null;
    }
    var Hi = 0, Wi = null, qi = null, $i = null, Vi = false, Gi = false, Ki = false, Qi = 0, Yi = 0, Xi = null, Ji = 0;
    function Zi() {
      throw Error(a(321));
    }
    function ea(e3, t3) {
      if (null === t3) return false;
      for (var n3 = 0; n3 < t3.length && n3 < e3.length; n3++) if (!Jn(e3[n3], t3[n3])) return false;
      return true;
    }
    function ta(e3, t3, n3, r2, o2, i2) {
      return Hi = i2, Wi = t3, t3.memoizedState = null, t3.updateQueue = null, t3.lanes = 0, L.H = null === e3 || null === e3.memoizedState ? ml : yl, Ki = false, i2 = n3(r2, o2), Ki = false, Gi && (i2 = ra(t3, n3, r2, o2)), na(e3), i2;
    }
    function na(e3) {
      L.H = vl;
      var t3 = null !== qi && null !== qi.next;
      if (Hi = 0, $i = qi = Wi = null, Vi = false, Yi = 0, Xi = null, t3) throw Error(a(300));
      null === e3 || jl || null !== (e3 = e3.dependencies) && Ro(e3) && (jl = true);
    }
    function ra(e3, t3, n3, r2) {
      Wi = e3;
      var o2 = 0;
      do {
        if (Gi && (Xi = null), Yi = 0, Gi = false, 25 <= o2) throw Error(a(301));
        if (o2 += 1, $i = qi = null, null != e3.updateQueue) {
          var i2 = e3.updateQueue;
          i2.lastEffect = null, i2.events = null, i2.stores = null, null != i2.memoCache && (i2.memoCache.index = 0);
        }
        L.H = gl, i2 = t3(n3, r2);
      } while (Gi);
      return i2;
    }
    function oa() {
      var e3 = L.H, t3 = e3.useState()[0];
      return t3 = "function" == typeof t3.then ? sa(t3) : t3, e3 = e3.useState()[0], (null !== qi ? qi.memoizedState : null) !== e3 && (Wi.flags |= 1024), t3;
    }
    function ia() {
      var e3 = 0 !== Qi;
      return Qi = 0, e3;
    }
    function aa(e3, t3, n3) {
      t3.updateQueue = e3.updateQueue, t3.flags &= -2053, e3.lanes &= ~n3;
    }
    function la(e3) {
      if (Vi) {
        for (e3 = e3.memoizedState; null !== e3; ) {
          var t3 = e3.queue;
          null !== t3 && (t3.pending = null), e3 = e3.next;
        }
        Vi = false;
      }
      Hi = 0, $i = qi = Wi = null, Gi = false, Yi = Qi = 0, Xi = null;
    }
    function ua() {
      var e3 = { memoizedState: null, baseState: null, baseQueue: null, queue: null, next: null };
      return null === $i ? Wi.memoizedState = $i = e3 : $i = $i.next = e3, $i;
    }
    function ca() {
      if (null === qi) {
        var e3 = Wi.alternate;
        e3 = null !== e3 ? e3.memoizedState : null;
      } else e3 = qi.next;
      var t3 = null === $i ? Wi.memoizedState : $i.next;
      if (null !== t3) $i = t3, qi = e3;
      else {
        if (null === e3) {
          if (null === Wi.alternate) throw Error(a(467));
          throw Error(a(310));
        }
        e3 = { memoizedState: (qi = e3).memoizedState, baseState: qi.baseState, baseQueue: qi.baseQueue, queue: qi.queue, next: null }, null === $i ? Wi.memoizedState = $i = e3 : $i = $i.next = e3;
      }
      return $i;
    }
    function sa(e3) {
      var t3 = Yi;
      return Yi += 1, null === Xi && (Xi = []), e3 = ri(Xi, e3, t3), t3 = Wi, null === (null === $i ? t3.memoizedState : $i.next) && (t3 = t3.alternate, L.H = null === t3 || null === t3.memoizedState ? ml : yl), e3;
    }
    function fa(e3) {
      if (null !== e3 && "object" == typeof e3) {
        if ("function" == typeof e3.then) return sa(e3);
        if (e3.$$typeof === E) return jo(e3);
      }
      throw Error(a(438, String(e3)));
    }
    function da(e3) {
      var t3 = null, n3 = Wi.updateQueue;
      if (null !== n3 && (t3 = n3.memoCache), null == t3) {
        var r2 = Wi.alternate;
        null !== r2 && null !== (r2 = r2.updateQueue) && null != (r2 = r2.memoCache) && (t3 = { data: r2.data.map(function(e4) {
          return e4.slice();
        }), index: 0 });
      }
      if (null == t3 && (t3 = { data: [], index: 0 }), null === n3 && (n3 = { lastEffect: null, events: null, stores: null, memoCache: null }, Wi.updateQueue = n3), n3.memoCache = t3, void 0 === (n3 = t3.data[t3.index])) for (n3 = t3.data[t3.index] = Array(e3), r2 = 0; r2 < e3; r2++) n3[r2] = T;
      return t3.index++, n3;
    }
    function pa(e3, t3) {
      return "function" == typeof t3 ? t3(e3) : t3;
    }
    function ha(e3) {
      return va(ca(), qi, e3);
    }
    function va(e3, t3, n3) {
      var r2 = e3.queue;
      if (null === r2) throw Error(a(311));
      r2.lastRenderedReducer = n3;
      var o2 = e3.baseQueue, i2 = r2.pending;
      if (null !== i2) {
        if (null !== o2) {
          var l2 = o2.next;
          o2.next = i2.next, i2.next = l2;
        }
        t3.baseQueue = o2 = i2, r2.pending = null;
      }
      if (i2 = e3.baseState, null === o2) e3.memoizedState = i2;
      else {
        var u2 = l2 = null, c2 = null, s2 = t3 = o2.next, f2 = false;
        do {
          var d2 = -536870913 & s2.lane;
          if (d2 !== s2.lane ? (mc & d2) === d2 : (Hi & d2) === d2) {
            var p2 = s2.revertLane;
            if (0 === p2) null !== c2 && (c2 = c2.next = { lane: 0, revertLane: 0, gesture: null, action: s2.action, hasEagerState: s2.hasEagerState, eagerState: s2.eagerState, next: null }), d2 === qo && (f2 = true);
            else {
              if ((Hi & p2) === p2) {
                s2 = s2.next, p2 === qo && (f2 = true);
                continue;
              }
              d2 = { lane: 0, revertLane: s2.revertLane, gesture: null, action: s2.action, hasEagerState: s2.hasEagerState, eagerState: s2.eagerState, next: null }, null === c2 ? (u2 = c2 = d2, l2 = i2) : c2 = c2.next = d2, Wi.lanes |= p2, xc |= p2;
            }
            d2 = s2.action, Ki && n3(i2, d2), i2 = s2.hasEagerState ? s2.eagerState : n3(i2, d2);
          } else p2 = { lane: d2, revertLane: s2.revertLane, gesture: s2.gesture, action: s2.action, hasEagerState: s2.hasEagerState, eagerState: s2.eagerState, next: null }, null === c2 ? (u2 = c2 = p2, l2 = i2) : c2 = c2.next = p2, Wi.lanes |= d2, xc |= d2;
          s2 = s2.next;
        } while (null !== s2 && s2 !== t3);
        if (null === c2 ? l2 = i2 : c2.next = u2, !Jn(i2, e3.memoizedState) && (jl = true, f2 && null !== (n3 = $o))) throw n3;
        e3.memoizedState = i2, e3.baseState = l2, e3.baseQueue = c2, r2.lastRenderedState = i2;
      }
      return null === o2 && (r2.lanes = 0), [e3.memoizedState, r2.dispatch];
    }
    function ma(e3) {
      var t3 = ca(), n3 = t3.queue;
      if (null === n3) throw Error(a(311));
      n3.lastRenderedReducer = e3;
      var r2 = n3.dispatch, o2 = n3.pending, i2 = t3.memoizedState;
      if (null !== o2) {
        n3.pending = null;
        var l2 = o2 = o2.next;
        do {
          i2 = e3(i2, l2.action), l2 = l2.next;
        } while (l2 !== o2);
        Jn(i2, t3.memoizedState) || (jl = true), t3.memoizedState = i2, null === t3.baseQueue && (t3.baseState = i2), n3.lastRenderedState = i2;
      }
      return [i2, r2];
    }
    function ya(e3, t3, n3) {
      var r2 = Wi, o2 = ca(), i2 = fo;
      if (i2) {
        if (void 0 === n3) throw Error(a(407));
        n3 = n3();
      } else n3 = t3();
      var l2 = !Jn((qi || o2).memoizedState, n3);
      if (l2 && (o2.memoizedState = n3, jl = true), o2 = o2.queue, Ha(wa.bind(null, r2, o2, e3), [e3]), o2.getSnapshot !== t3 || l2 || null !== $i && 1 & $i.memoizedState.tag) {
        if (r2.flags |= 2048, za(9, { destroy: void 0 }, ba.bind(null, r2, o2, n3, t3), null), null === hc) throw Error(a(349));
        i2 || 127 & Hi || ga(r2, t3, n3);
      }
      return n3;
    }
    function ga(e3, t3, n3) {
      e3.flags |= 16384, e3 = { getSnapshot: t3, value: n3 }, null === (t3 = Wi.updateQueue) ? (t3 = { lastEffect: null, events: null, stores: null, memoCache: null }, Wi.updateQueue = t3, t3.stores = [e3]) : null === (n3 = t3.stores) ? t3.stores = [e3] : n3.push(e3);
    }
    function ba(e3, t3, n3, r2) {
      t3.value = n3, t3.getSnapshot = r2, Ea(t3) && Sa(e3);
    }
    function wa(e3, t3, n3) {
      return n3(function() {
        Ea(t3) && Sa(e3);
      });
    }
    function Ea(e3) {
      var t3 = e3.getSnapshot;
      e3 = e3.value;
      try {
        var n3 = t3();
        return !Jn(e3, n3);
      } catch (e4) {
        return true;
      }
    }
    function Sa(e3) {
      var t3 = jr(e3, 2);
      null !== t3 && Kc(t3, 0, 2);
    }
    function ka(e3) {
      var t3 = ua();
      if ("function" == typeof e3) {
        var n3 = e3;
        if (e3 = n3(), Ki) {
          be(true);
          try {
            n3();
          } finally {
            be(false);
          }
        }
      }
      return t3.memoizedState = t3.baseState = e3, t3.queue = { pending: null, lanes: 0, dispatch: null, lastRenderedReducer: pa, lastRenderedState: e3 }, t3;
    }
    function xa(e3, t3, n3, r2) {
      return e3.baseState = n3, va(e3, qi, "function" == typeof r2 ? r2 : pa);
    }
    function Ca(e3, t3, n3, r2, o2) {
      if (dl(e3)) throw Error(a(485));
      if (null !== (e3 = t3.action)) {
        var i2 = { payload: o2, action: e3, next: null, isTransition: true, status: "pending", value: null, reason: null, listeners: [], then: function(e4) {
          i2.listeners.push(e4);
        } };
        null !== L.T ? n3(true) : i2.isTransition = false, r2(i2), null === (n3 = t3.pending) ? (i2.next = t3.pending = i2, Oa(t3, i2)) : (i2.next = n3.next, t3.pending = n3.next = i2);
      }
    }
    function Oa(e3, t3) {
      var n3 = t3.action, r2 = t3.payload, o2 = e3.state;
      if (t3.isTransition) {
        var i2 = L.T, a2 = {};
        L.T = a2;
        try {
          var l2 = n3(o2, r2), u2 = L.S;
          null !== u2 && u2(a2, l2), Pa(e3, t3, l2);
        } catch (n4) {
          Na(e3, t3, n4);
        } finally {
          null !== i2 && null !== a2.types && (i2.types = a2.types), L.T = i2;
        }
      } else try {
        Pa(e3, t3, i2 = n3(o2, r2));
      } catch (n4) {
        Na(e3, t3, n4);
      }
    }
    function Pa(e3, t3, n3) {
      null !== n3 && "object" == typeof n3 && "function" == typeof n3.then ? n3.then(function(n4) {
        Ta(e3, t3, n4);
      }, function(n4) {
        return Na(e3, t3, n4);
      }) : Ta(e3, t3, n3);
    }
    function Ta(e3, t3, n3) {
      t3.status = "fulfilled", t3.value = n3, Aa(t3), e3.state = n3, null !== (t3 = e3.pending) && ((n3 = t3.next) === t3 ? e3.pending = null : (n3 = n3.next, t3.next = n3, Oa(e3, n3)));
    }
    function Na(e3, t3, n3) {
      var r2 = e3.pending;
      if (e3.pending = null, null !== r2) {
        r2 = r2.next;
        do {
          t3.status = "rejected", t3.reason = n3, Aa(t3), t3 = t3.next;
        } while (t3 !== r2);
      }
      e3.action = null;
    }
    function Aa(e3) {
      e3 = e3.listeners;
      for (var t3 = 0; t3 < e3.length; t3++) (0, e3[t3])();
    }
    function Ra(e3, t3) {
      return t3;
    }
    function _a(e3, t3) {
      if (fo) {
        var n3 = hc.formState;
        if (null !== n3) {
          e: {
            var r2 = Wi;
            if (fo) {
              if (so) {
                t: {
                  for (var o2 = so, i2 = ho; 8 !== o2.nodeType; ) {
                    if (!i2) {
                      o2 = null;
                      break t;
                    }
                    if (null === (o2 = Lf(o2.nextSibling))) {
                      o2 = null;
                      break t;
                    }
                  }
                  o2 = "F!" === (i2 = o2.data) || "F" === i2 ? o2 : null;
                }
                if (o2) {
                  so = Lf(o2.nextSibling), r2 = "F!" === o2.data;
                  break e;
                }
              }
              mo(r2);
            }
            r2 = false;
          }
          r2 && (t3 = n3[0]);
        }
      }
      return (n3 = ua()).memoizedState = n3.baseState = t3, r2 = { pending: null, lanes: 0, dispatch: null, lastRenderedReducer: Ra, lastRenderedState: t3 }, n3.queue = r2, n3 = cl.bind(null, Wi, r2), r2.dispatch = n3, r2 = ka(false), i2 = fl.bind(null, Wi, false, r2.queue), o2 = { state: t3, dispatch: null, action: e3, pending: null }, (r2 = ua()).queue = o2, n3 = Ca.bind(null, Wi, o2, i2, n3), o2.dispatch = n3, r2.memoizedState = e3, [t3, n3, false];
    }
    function ja(e3) {
      return La(ca(), qi, e3);
    }
    function La(e3, t3, n3) {
      if (t3 = va(e3, t3, Ra)[0], e3 = ha(pa)[0], "object" == typeof t3 && null !== t3 && "function" == typeof t3.then) try {
        var r2 = sa(t3);
      } catch (e4) {
        if (e4 === Jo) throw ei;
        throw e4;
      }
      else r2 = t3;
      var o2 = (t3 = ca()).queue, i2 = o2.dispatch;
      return n3 !== t3.memoizedState && (Wi.flags |= 2048, za(9, { destroy: void 0 }, Da.bind(null, o2, n3), null)), [r2, i2, e3];
    }
    function Da(e3, t3) {
      e3.action = t3;
    }
    function Ia(e3) {
      var t3 = ca(), n3 = qi;
      if (null !== n3) return La(t3, n3, e3);
      ca(), t3 = t3.memoizedState;
      var r2 = (n3 = ca()).queue.dispatch;
      return n3.memoizedState = e3, [t3, r2, false];
    }
    function za(e3, t3, n3, r2) {
      return e3 = { tag: e3, create: n3, deps: r2, inst: t3, next: null }, null === (t3 = Wi.updateQueue) && (t3 = { lastEffect: null, events: null, stores: null, memoCache: null }, Wi.updateQueue = t3), null === (n3 = t3.lastEffect) ? t3.lastEffect = e3.next = e3 : (r2 = n3.next, n3.next = e3, e3.next = r2, t3.lastEffect = e3), e3;
    }
    function Fa() {
      return ca().memoizedState;
    }
    function Ma(e3, t3, n3, r2) {
      var o2 = ua();
      Wi.flags |= e3, o2.memoizedState = za(1 | t3, { destroy: void 0 }, n3, void 0 === r2 ? null : r2);
    }
    function Ua(e3, t3, n3, r2) {
      var o2 = ca();
      r2 = void 0 === r2 ? null : r2;
      var i2 = o2.memoizedState.inst;
      null !== qi && null !== r2 && ea(r2, qi.memoizedState.deps) ? o2.memoizedState = za(t3, i2, n3, r2) : (Wi.flags |= e3, o2.memoizedState = za(1 | t3, i2, n3, r2));
    }
    function Ba(e3, t3) {
      Ma(8390656, 8, e3, t3);
    }
    function Ha(e3, t3) {
      Ua(2048, 8, e3, t3);
    }
    function Wa(e3) {
      var t3 = ca().memoizedState;
      return (function(e4) {
        Wi.flags |= 4;
        var t4 = Wi.updateQueue;
        if (null === t4) t4 = { lastEffect: null, events: null, stores: null, memoCache: null }, Wi.updateQueue = t4, t4.events = [e4];
        else {
          var n3 = t4.events;
          null === n3 ? t4.events = [e4] : n3.push(e4);
        }
      })({ ref: t3, nextImpl: e3 }), function() {
        if (2 & pc) throw Error(a(440));
        return t3.impl.apply(void 0, arguments);
      };
    }
    function qa(e3, t3) {
      return Ua(4, 2, e3, t3);
    }
    function $a(e3, t3) {
      return Ua(4, 4, e3, t3);
    }
    function Va(e3, t3) {
      if ("function" == typeof t3) {
        e3 = e3();
        var n3 = t3(e3);
        return function() {
          "function" == typeof n3 ? n3() : t3(null);
        };
      }
      if (null != t3) return e3 = e3(), t3.current = e3, function() {
        t3.current = null;
      };
    }
    function Ga(e3, t3, n3) {
      n3 = null != n3 ? n3.concat([e3]) : null, Ua(4, 4, Va.bind(null, t3, e3), n3);
    }
    function Ka() {
    }
    function Qa(e3, t3) {
      var n3 = ca();
      t3 = void 0 === t3 ? null : t3;
      var r2 = n3.memoizedState;
      return null !== t3 && ea(t3, r2[1]) ? r2[0] : (n3.memoizedState = [e3, t3], e3);
    }
    function Ya(e3, t3) {
      var n3 = ca();
      t3 = void 0 === t3 ? null : t3;
      var r2 = n3.memoizedState;
      if (null !== t3 && ea(t3, r2[1])) return r2[0];
      if (r2 = e3(), Ki) {
        be(true);
        try {
          e3();
        } finally {
          be(false);
        }
      }
      return n3.memoizedState = [r2, t3], r2;
    }
    function Xa(e3, t3, n3) {
      return void 0 === n3 || 1073741824 & Hi && !(261930 & mc) ? e3.memoizedState = t3 : (e3.memoizedState = n3, e3 = Gc(), Wi.lanes |= e3, xc |= e3, n3);
    }
    function Ja(e3, t3, n3, r2) {
      return Jn(n3, t3) ? n3 : null !== Ti.current ? (e3 = Xa(e3, n3, r2), Jn(e3, t3) || (jl = true), e3) : 42 & Hi && (!(1073741824 & Hi) || 261930 & mc) ? (e3 = Gc(), Wi.lanes |= e3, xc |= e3, t3) : (jl = true, e3.memoizedState = n3);
    }
    function Za(e3, t3, n3, r2, o2) {
      var i2 = D.p;
      D.p = 0 !== i2 && 8 > i2 ? i2 : 8;
      var a2, l2, u2, c2 = L.T, s2 = {};
      L.T = s2, fl(e3, false, t3, n3);
      try {
        var f2 = o2(), d2 = L.S;
        null !== d2 && d2(s2, f2), null !== f2 && "object" == typeof f2 && "function" == typeof f2.then ? sl(e3, t3, (a2 = r2, l2 = [], u2 = { status: "pending", value: null, reason: null, then: function(e4) {
          l2.push(e4);
        } }, f2.then(function() {
          u2.status = "fulfilled", u2.value = a2;
          for (var e4 = 0; e4 < l2.length; e4++) (0, l2[e4])(a2);
        }, function(e4) {
          for (u2.status = "rejected", u2.reason = e4, e4 = 0; e4 < l2.length; e4++) (0, l2[e4])(void 0);
        }), u2), Vc()) : sl(e3, t3, r2, Vc());
      } catch (n4) {
        sl(e3, t3, { then: function() {
        }, status: "rejected", reason: n4 }, Vc());
      } finally {
        D.p = i2, null !== c2 && null !== s2.types && (c2.types = s2.types), L.T = c2;
      }
    }
    function el() {
    }
    function tl(e3, t3, n3, r2) {
      if (5 !== e3.tag) throw Error(a(476));
      var o2 = nl(e3).queue;
      Za(e3, o2, t3, I, null === n3 ? el : function() {
        return rl(e3), n3(r2);
      });
    }
    function nl(e3) {
      var t3 = e3.memoizedState;
      if (null !== t3) return t3;
      var n3 = {};
      return (t3 = { memoizedState: I, baseState: I, baseQueue: null, queue: { pending: null, lanes: 0, dispatch: null, lastRenderedReducer: pa, lastRenderedState: I }, next: null }).next = { memoizedState: n3, baseState: n3, baseQueue: null, queue: { pending: null, lanes: 0, dispatch: null, lastRenderedReducer: pa, lastRenderedState: n3 }, next: null }, e3.memoizedState = t3, null !== (e3 = e3.alternate) && (e3.memoizedState = t3), t3;
    }
    function rl(e3) {
      var t3 = nl(e3);
      null === t3.next && (t3 = e3.alternate.memoizedState), sl(e3, t3.next.queue, {}, Vc());
    }
    function ol() {
      return jo(fd);
    }
    function il() {
      return ca().memoizedState;
    }
    function al() {
      return ca().memoizedState;
    }
    function ll(e3) {
      for (var t3 = e3.return; null !== t3; ) {
        switch (t3.tag) {
          case 24:
          case 3:
            var n3 = Vc(), r2 = wi(t3, e3 = bi(n3), n3);
            return null !== r2 && (Kc(r2, 0, n3), Ei(r2, t3, n3)), t3 = { cache: Uo() }, void (e3.payload = t3);
        }
        t3 = t3.return;
      }
    }
    function ul(e3, t3, n3) {
      var r2 = Vc();
      n3 = { lane: r2, revertLane: 0, gesture: null, action: n3, hasEagerState: false, eagerState: null, next: null }, dl(e3) ? pl(t3, n3) : null !== (n3 = _r(e3, t3, n3, r2)) && (Kc(n3, 0, r2), hl(n3, t3, r2));
    }
    function cl(e3, t3, n3) {
      sl(e3, t3, n3, Vc());
    }
    function sl(e3, t3, n3, r2) {
      var o2 = { lane: r2, revertLane: 0, gesture: null, action: n3, hasEagerState: false, eagerState: null, next: null };
      if (dl(e3)) pl(t3, o2);
      else {
        var i2 = e3.alternate;
        if (0 === e3.lanes && (null === i2 || 0 === i2.lanes) && null !== (i2 = t3.lastRenderedReducer)) try {
          var a2 = t3.lastRenderedState, l2 = i2(a2, n3);
          if (o2.hasEagerState = true, o2.eagerState = l2, Jn(l2, a2)) return Rr(e3, t3, o2, 0), null === hc && Ar(), false;
        } catch (e4) {
        }
        if (null !== (n3 = _r(e3, t3, o2, r2))) return Kc(n3, 0, r2), hl(n3, t3, r2), true;
      }
      return false;
    }
    function fl(e3, t3, n3, r2) {
      if (r2 = { lane: 2, revertLane: Hs(), gesture: null, action: r2, hasEagerState: false, eagerState: null, next: null }, dl(e3)) {
        if (t3) throw Error(a(479));
      } else null !== (t3 = _r(e3, n3, r2, 2)) && Kc(t3, 0, 2);
    }
    function dl(e3) {
      var t3 = e3.alternate;
      return e3 === Wi || null !== t3 && t3 === Wi;
    }
    function pl(e3, t3) {
      Gi = Vi = true;
      var n3 = e3.pending;
      null === n3 ? t3.next = t3 : (t3.next = n3.next, n3.next = t3), e3.pending = t3;
    }
    function hl(e3, t3, n3) {
      if (4194048 & n3) {
        var r2 = t3.lanes;
        n3 |= r2 &= e3.pendingLanes, t3.lanes = n3, Le(e3, n3);
      }
    }
    var vl = { readContext: jo, use: fa, useCallback: Zi, useContext: Zi, useEffect: Zi, useImperativeHandle: Zi, useLayoutEffect: Zi, useInsertionEffect: Zi, useMemo: Zi, useReducer: Zi, useRef: Zi, useState: Zi, useDebugValue: Zi, useDeferredValue: Zi, useTransition: Zi, useSyncExternalStore: Zi, useId: Zi, useHostTransitionStatus: Zi, useFormState: Zi, useActionState: Zi, useOptimistic: Zi, useMemoCache: Zi, useCacheRefresh: Zi };
    vl.useEffectEvent = Zi;
    var ml = { readContext: jo, use: fa, useCallback: function(e3, t3) {
      return ua().memoizedState = [e3, void 0 === t3 ? null : t3], e3;
    }, useContext: jo, useEffect: Ba, useImperativeHandle: function(e3, t3, n3) {
      n3 = null != n3 ? n3.concat([e3]) : null, Ma(4194308, 4, Va.bind(null, t3, e3), n3);
    }, useLayoutEffect: function(e3, t3) {
      return Ma(4194308, 4, e3, t3);
    }, useInsertionEffect: function(e3, t3) {
      Ma(4, 2, e3, t3);
    }, useMemo: function(e3, t3) {
      var n3 = ua();
      t3 = void 0 === t3 ? null : t3;
      var r2 = e3();
      if (Ki) {
        be(true);
        try {
          e3();
        } finally {
          be(false);
        }
      }
      return n3.memoizedState = [r2, t3], r2;
    }, useReducer: function(e3, t3, n3) {
      var r2 = ua();
      if (void 0 !== n3) {
        var o2 = n3(t3);
        if (Ki) {
          be(true);
          try {
            n3(t3);
          } finally {
            be(false);
          }
        }
      } else o2 = t3;
      return r2.memoizedState = r2.baseState = o2, e3 = { pending: null, lanes: 0, dispatch: null, lastRenderedReducer: e3, lastRenderedState: o2 }, r2.queue = e3, e3 = e3.dispatch = ul.bind(null, Wi, e3), [r2.memoizedState, e3];
    }, useRef: function(e3) {
      return e3 = { current: e3 }, ua().memoizedState = e3;
    }, useState: function(e3) {
      var t3 = (e3 = ka(e3)).queue, n3 = cl.bind(null, Wi, t3);
      return t3.dispatch = n3, [e3.memoizedState, n3];
    }, useDebugValue: Ka, useDeferredValue: function(e3, t3) {
      return Xa(ua(), e3, t3);
    }, useTransition: function() {
      var e3 = ka(false);
      return e3 = Za.bind(null, Wi, e3.queue, true, false), ua().memoizedState = e3, [false, e3];
    }, useSyncExternalStore: function(e3, t3, n3) {
      var r2 = Wi, o2 = ua();
      if (fo) {
        if (void 0 === n3) throw Error(a(407));
        n3 = n3();
      } else {
        if (n3 = t3(), null === hc) throw Error(a(349));
        127 & mc || ga(r2, t3, n3);
      }
      o2.memoizedState = n3;
      var i2 = { value: n3, getSnapshot: t3 };
      return o2.queue = i2, Ba(wa.bind(null, r2, i2, e3), [e3]), r2.flags |= 2048, za(9, { destroy: void 0 }, ba.bind(null, r2, i2, n3, t3), null), n3;
    }, useId: function() {
      var e3 = ua(), t3 = hc.identifierPrefix;
      if (fo) {
        var n3 = ro;
        t3 = "_" + t3 + "R_" + (n3 = (no & ~(1 << 32 - we(no) - 1)).toString(32) + n3), 0 < (n3 = Qi++) && (t3 += "H" + n3.toString(32)), t3 += "_";
      } else t3 = "_" + t3 + "r_" + (n3 = Ji++).toString(32) + "_";
      return e3.memoizedState = t3;
    }, useHostTransitionStatus: ol, useFormState: _a, useActionState: _a, useOptimistic: function(e3) {
      var t3 = ua();
      t3.memoizedState = t3.baseState = e3;
      var n3 = { pending: null, lanes: 0, dispatch: null, lastRenderedReducer: null, lastRenderedState: null };
      return t3.queue = n3, t3 = fl.bind(null, Wi, true, n3), n3.dispatch = t3, [e3, t3];
    }, useMemoCache: da, useCacheRefresh: function() {
      return ua().memoizedState = ll.bind(null, Wi);
    }, useEffectEvent: function(e3) {
      var t3 = ua(), n3 = { impl: e3 };
      return t3.memoizedState = n3, function() {
        if (2 & pc) throw Error(a(440));
        return n3.impl.apply(void 0, arguments);
      };
    } }, yl = { readContext: jo, use: fa, useCallback: Qa, useContext: jo, useEffect: Ha, useImperativeHandle: Ga, useInsertionEffect: qa, useLayoutEffect: $a, useMemo: Ya, useReducer: ha, useRef: Fa, useState: function() {
      return ha(pa);
    }, useDebugValue: Ka, useDeferredValue: function(e3, t3) {
      return Ja(ca(), qi.memoizedState, e3, t3);
    }, useTransition: function() {
      var e3 = ha(pa)[0], t3 = ca().memoizedState;
      return ["boolean" == typeof e3 ? e3 : sa(e3), t3];
    }, useSyncExternalStore: ya, useId: il, useHostTransitionStatus: ol, useFormState: ja, useActionState: ja, useOptimistic: function(e3, t3) {
      return xa(ca(), 0, e3, t3);
    }, useMemoCache: da, useCacheRefresh: al };
    yl.useEffectEvent = Wa;
    var gl = { readContext: jo, use: fa, useCallback: Qa, useContext: jo, useEffect: Ha, useImperativeHandle: Ga, useInsertionEffect: qa, useLayoutEffect: $a, useMemo: Ya, useReducer: ma, useRef: Fa, useState: function() {
      return ma(pa);
    }, useDebugValue: Ka, useDeferredValue: function(e3, t3) {
      var n3 = ca();
      return null === qi ? Xa(n3, e3, t3) : Ja(n3, qi.memoizedState, e3, t3);
    }, useTransition: function() {
      var e3 = ma(pa)[0], t3 = ca().memoizedState;
      return ["boolean" == typeof e3 ? e3 : sa(e3), t3];
    }, useSyncExternalStore: ya, useId: il, useHostTransitionStatus: ol, useFormState: Ia, useActionState: Ia, useOptimistic: function(e3, t3) {
      var n3 = ca();
      return null !== qi ? xa(n3, 0, e3, t3) : (n3.baseState = e3, [e3, n3.queue.dispatch]);
    }, useMemoCache: da, useCacheRefresh: al };
    function bl(e3, t3, n3, r2) {
      n3 = null == (n3 = n3(r2, t3 = e3.memoizedState)) ? t3 : p({}, t3, n3), e3.memoizedState = n3, 0 === e3.lanes && (e3.updateQueue.baseState = n3);
    }
    gl.useEffectEvent = Wa;
    var wl = { enqueueSetState: function(e3, t3, n3) {
      e3 = e3._reactInternals;
      var r2 = Vc(), o2 = bi(r2);
      o2.payload = t3, null != n3 && (o2.callback = n3), null !== (t3 = wi(e3, o2, r2)) && (Kc(t3, 0, r2), Ei(t3, e3, r2));
    }, enqueueReplaceState: function(e3, t3, n3) {
      e3 = e3._reactInternals;
      var r2 = Vc(), o2 = bi(r2);
      o2.tag = 1, o2.payload = t3, null != n3 && (o2.callback = n3), null !== (t3 = wi(e3, o2, r2)) && (Kc(t3, 0, r2), Ei(t3, e3, r2));
    }, enqueueForceUpdate: function(e3, t3) {
      e3 = e3._reactInternals;
      var n3 = Vc(), r2 = bi(n3);
      r2.tag = 2, null != t3 && (r2.callback = t3), null !== (t3 = wi(e3, r2, n3)) && (Kc(t3, 0, n3), Ei(t3, e3, n3));
    } };
    function El(e3, t3, n3, r2, o2, i2, a2) {
      return "function" == typeof (e3 = e3.stateNode).shouldComponentUpdate ? e3.shouldComponentUpdate(r2, i2, a2) : !(t3.prototype && t3.prototype.isPureReactComponent && Zn(n3, r2) && Zn(o2, i2));
    }
    function Sl(e3, t3, n3, r2) {
      e3 = t3.state, "function" == typeof t3.componentWillReceiveProps && t3.componentWillReceiveProps(n3, r2), "function" == typeof t3.UNSAFE_componentWillReceiveProps && t3.UNSAFE_componentWillReceiveProps(n3, r2), t3.state !== e3 && wl.enqueueReplaceState(t3, t3.state, null);
    }
    function kl(e3, t3) {
      var n3 = t3;
      if ("ref" in t3) for (var r2 in n3 = {}, t3) "ref" !== r2 && (n3[r2] = t3[r2]);
      if (e3 = e3.defaultProps) for (var o2 in n3 === t3 && (n3 = p({}, n3)), e3) void 0 === n3[o2] && (n3[o2] = e3[o2]);
      return n3;
    }
    function xl(e3) {
      Or(e3);
    }
    function Cl(e3) {
      console.error(e3);
    }
    function Ol(e3) {
      Or(e3);
    }
    function Pl(e3, t3) {
      try {
        (0, e3.onUncaughtError)(t3.value, { componentStack: t3.stack });
      } catch (e4) {
        setTimeout(function() {
          throw e4;
        });
      }
    }
    function Tl(e3, t3, n3) {
      try {
        (0, e3.onCaughtError)(n3.value, { componentStack: n3.stack, errorBoundary: 1 === t3.tag ? t3.stateNode : null });
      } catch (e4) {
        setTimeout(function() {
          throw e4;
        });
      }
    }
    function Nl(e3, t3, n3) {
      return (n3 = bi(n3)).tag = 3, n3.payload = { element: null }, n3.callback = function() {
        Pl(e3, t3);
      }, n3;
    }
    function Al(e3) {
      return (e3 = bi(e3)).tag = 3, e3;
    }
    function Rl(e3, t3, n3, r2) {
      var o2 = n3.type.getDerivedStateFromError;
      if ("function" == typeof o2) {
        var i2 = r2.value;
        e3.payload = function() {
          return o2(i2);
        }, e3.callback = function() {
          Tl(t3, n3, r2);
        };
      }
      var a2 = n3.stateNode;
      null !== a2 && "function" == typeof a2.componentDidCatch && (e3.callback = function() {
        Tl(t3, n3, r2), "function" != typeof o2 && (null === Ic ? Ic = /* @__PURE__ */ new Set([this]) : Ic.add(this));
        var e4 = r2.stack;
        this.componentDidCatch(r2.value, { componentStack: null !== e4 ? e4 : "" });
      });
    }
    var _l = Error(a(461)), jl = false;
    function Ll(e3, t3, n3, r2) {
      t3.child = null === e3 ? vi(t3, null, n3, r2) : hi(t3, e3.child, n3, r2);
    }
    function Dl(e3, t3, n3, r2, o2) {
      n3 = n3.render;
      var i2 = t3.ref;
      if ("ref" in r2) {
        var a2 = {};
        for (var l2 in r2) "ref" !== l2 && (a2[l2] = r2[l2]);
      } else a2 = r2;
      return _o(t3), r2 = ta(e3, t3, n3, a2, i2, o2), l2 = ia(), null === e3 || jl ? (fo && l2 && ao(t3), t3.flags |= 1, Ll(e3, t3, r2, o2), t3.child) : (aa(e3, t3, o2), ou(e3, t3, o2));
    }
    function Il(e3, t3, n3, r2, o2) {
      if (null === e3) {
        var i2 = n3.type;
        return "function" != typeof i2 || Mr(i2) || void 0 !== i2.defaultProps || null !== n3.compare ? ((e3 = Hr(n3.type, null, r2, t3, t3.mode, o2)).ref = t3.ref, e3.return = t3, t3.child = e3) : (t3.tag = 15, t3.type = i2, zl(e3, t3, i2, r2, o2));
      }
      if (i2 = e3.child, !iu(e3, o2)) {
        var a2 = i2.memoizedProps;
        if ((n3 = null !== (n3 = n3.compare) ? n3 : Zn)(a2, r2) && e3.ref === t3.ref) return ou(e3, t3, o2);
      }
      return t3.flags |= 1, (e3 = Ur(i2, r2)).ref = t3.ref, e3.return = t3, t3.child = e3;
    }
    function zl(e3, t3, n3, r2, o2) {
      if (null !== e3) {
        var i2 = e3.memoizedProps;
        if (Zn(i2, r2) && e3.ref === t3.ref) {
          if (jl = false, t3.pendingProps = r2 = i2, !iu(e3, o2)) return t3.lanes = e3.lanes, ou(e3, t3, o2);
          131072 & e3.flags && (jl = true);
        }
      }
      return ql(e3, t3, n3, r2, o2);
    }
    function Fl(e3, t3, n3, r2) {
      var o2 = r2.children, i2 = null !== e3 ? e3.memoizedState : null;
      if (null === e3 && null === t3.stateNode && (t3.stateNode = { _visibility: 1, _pendingMarkers: null, _retryCache: null, _transitions: null }), "hidden" === r2.mode) {
        if (128 & t3.flags) {
          if (i2 = null !== i2 ? i2.baseLanes | n3 : n3, null !== e3) {
            for (r2 = t3.child = e3.child, o2 = 0; null !== r2; ) o2 = o2 | r2.lanes | r2.childLanes, r2 = r2.sibling;
            r2 = o2 & ~i2;
          } else r2 = 0, t3.child = null;
          return Ul(e3, t3, i2, n3, r2);
        }
        if (!(536870912 & n3)) return r2 = t3.lanes = 536870912, Ul(e3, t3, null !== i2 ? i2.baseLanes | n3 : n3, n3, r2);
        t3.memoizedState = { baseLanes: 0, cachePool: null }, null !== e3 && Yo(0, null !== i2 ? i2.cachePool : null), null !== i2 ? Ai(t3, i2) : Ri(), zi(t3);
      } else null !== i2 ? (Yo(0, i2.cachePool), Ai(t3, i2), Fi(), t3.memoizedState = null) : (null !== e3 && Yo(0, null), Ri(), Fi());
      return Ll(e3, t3, o2, n3), t3.child;
    }
    function Ml(e3, t3) {
      return null !== e3 && 22 === e3.tag || null !== t3.stateNode || (t3.stateNode = { _visibility: 1, _pendingMarkers: null, _retryCache: null, _transitions: null }), t3.sibling;
    }
    function Ul(e3, t3, n3, r2, o2) {
      var i2 = Qo();
      return i2 = null === i2 ? null : { parent: Mo._currentValue, pool: i2 }, t3.memoizedState = { baseLanes: n3, cachePool: i2 }, null !== e3 && Yo(0, null), Ri(), zi(t3), null !== e3 && Ao(e3, t3, r2, true), t3.childLanes = o2, null;
    }
    function Bl(e3, t3) {
      return (t3 = Zl({ mode: t3.mode, children: t3.children }, e3.mode)).ref = e3.ref, e3.child = t3, t3.return = e3, t3;
    }
    function Hl(e3, t3, n3) {
      return hi(t3, e3.child, null, n3), (e3 = Bl(t3, t3.pendingProps)).flags |= 2, Mi(t3), t3.memoizedState = null, e3;
    }
    function Wl(e3, t3) {
      var n3 = t3.ref;
      if (null === n3) null !== e3 && null !== e3.ref && (t3.flags |= 4194816);
      else {
        if ("function" != typeof n3 && "object" != typeof n3) throw Error(a(284));
        null !== e3 && e3.ref === n3 || (t3.flags |= 4194816);
      }
    }
    function ql(e3, t3, n3, r2, o2) {
      return _o(t3), n3 = ta(e3, t3, n3, r2, void 0, o2), r2 = ia(), null === e3 || jl ? (fo && r2 && ao(t3), t3.flags |= 1, Ll(e3, t3, n3, o2), t3.child) : (aa(e3, t3, o2), ou(e3, t3, o2));
    }
    function $l(e3, t3, n3, r2, o2, i2) {
      return _o(t3), t3.updateQueue = null, n3 = ra(t3, r2, n3, o2), na(e3), r2 = ia(), null === e3 || jl ? (fo && r2 && ao(t3), t3.flags |= 1, Ll(e3, t3, n3, i2), t3.child) : (aa(e3, t3, i2), ou(e3, t3, i2));
    }
    function Vl(e3, t3, n3, r2, o2) {
      if (_o(t3), null === t3.stateNode) {
        var i2 = Ir, a2 = n3.contextType;
        "object" == typeof a2 && null !== a2 && (i2 = jo(a2)), i2 = new n3(r2, i2), t3.memoizedState = null !== i2.state && void 0 !== i2.state ? i2.state : null, i2.updater = wl, t3.stateNode = i2, i2._reactInternals = t3, (i2 = t3.stateNode).props = r2, i2.state = t3.memoizedState, i2.refs = {}, yi(t3), a2 = n3.contextType, i2.context = "object" == typeof a2 && null !== a2 ? jo(a2) : Ir, i2.state = t3.memoizedState, "function" == typeof (a2 = n3.getDerivedStateFromProps) && (bl(t3, n3, a2, r2), i2.state = t3.memoizedState), "function" == typeof n3.getDerivedStateFromProps || "function" == typeof i2.getSnapshotBeforeUpdate || "function" != typeof i2.UNSAFE_componentWillMount && "function" != typeof i2.componentWillMount || (a2 = i2.state, "function" == typeof i2.componentWillMount && i2.componentWillMount(), "function" == typeof i2.UNSAFE_componentWillMount && i2.UNSAFE_componentWillMount(), a2 !== i2.state && wl.enqueueReplaceState(i2, i2.state, null), Ci(t3, r2, i2, o2), xi(), i2.state = t3.memoizedState), "function" == typeof i2.componentDidMount && (t3.flags |= 4194308), r2 = true;
      } else if (null === e3) {
        i2 = t3.stateNode;
        var l2 = t3.memoizedProps, u2 = kl(n3, l2);
        i2.props = u2;
        var c2 = i2.context, s2 = n3.contextType;
        a2 = Ir, "object" == typeof s2 && null !== s2 && (a2 = jo(s2));
        var f2 = n3.getDerivedStateFromProps;
        s2 = "function" == typeof f2 || "function" == typeof i2.getSnapshotBeforeUpdate, l2 = t3.pendingProps !== l2, s2 || "function" != typeof i2.UNSAFE_componentWillReceiveProps && "function" != typeof i2.componentWillReceiveProps || (l2 || c2 !== a2) && Sl(t3, i2, r2, a2), mi = false;
        var d2 = t3.memoizedState;
        i2.state = d2, Ci(t3, r2, i2, o2), xi(), c2 = t3.memoizedState, l2 || d2 !== c2 || mi ? ("function" == typeof f2 && (bl(t3, n3, f2, r2), c2 = t3.memoizedState), (u2 = mi || El(t3, n3, u2, r2, d2, c2, a2)) ? (s2 || "function" != typeof i2.UNSAFE_componentWillMount && "function" != typeof i2.componentWillMount || ("function" == typeof i2.componentWillMount && i2.componentWillMount(), "function" == typeof i2.UNSAFE_componentWillMount && i2.UNSAFE_componentWillMount()), "function" == typeof i2.componentDidMount && (t3.flags |= 4194308)) : ("function" == typeof i2.componentDidMount && (t3.flags |= 4194308), t3.memoizedProps = r2, t3.memoizedState = c2), i2.props = r2, i2.state = c2, i2.context = a2, r2 = u2) : ("function" == typeof i2.componentDidMount && (t3.flags |= 4194308), r2 = false);
      } else {
        i2 = t3.stateNode, gi(e3, t3), s2 = kl(n3, a2 = t3.memoizedProps), i2.props = s2, f2 = t3.pendingProps, d2 = i2.context, c2 = n3.contextType, u2 = Ir, "object" == typeof c2 && null !== c2 && (u2 = jo(c2)), (c2 = "function" == typeof (l2 = n3.getDerivedStateFromProps) || "function" == typeof i2.getSnapshotBeforeUpdate) || "function" != typeof i2.UNSAFE_componentWillReceiveProps && "function" != typeof i2.componentWillReceiveProps || (a2 !== f2 || d2 !== u2) && Sl(t3, i2, r2, u2), mi = false, d2 = t3.memoizedState, i2.state = d2, Ci(t3, r2, i2, o2), xi();
        var p2 = t3.memoizedState;
        a2 !== f2 || d2 !== p2 || mi || null !== e3 && null !== e3.dependencies && Ro(e3.dependencies) ? ("function" == typeof l2 && (bl(t3, n3, l2, r2), p2 = t3.memoizedState), (s2 = mi || El(t3, n3, s2, r2, d2, p2, u2) || null !== e3 && null !== e3.dependencies && Ro(e3.dependencies)) ? (c2 || "function" != typeof i2.UNSAFE_componentWillUpdate && "function" != typeof i2.componentWillUpdate || ("function" == typeof i2.componentWillUpdate && i2.componentWillUpdate(r2, p2, u2), "function" == typeof i2.UNSAFE_componentWillUpdate && i2.UNSAFE_componentWillUpdate(r2, p2, u2)), "function" == typeof i2.componentDidUpdate && (t3.flags |= 4), "function" == typeof i2.getSnapshotBeforeUpdate && (t3.flags |= 1024)) : ("function" != typeof i2.componentDidUpdate || a2 === e3.memoizedProps && d2 === e3.memoizedState || (t3.flags |= 4), "function" != typeof i2.getSnapshotBeforeUpdate || a2 === e3.memoizedProps && d2 === e3.memoizedState || (t3.flags |= 1024), t3.memoizedProps = r2, t3.memoizedState = p2), i2.props = r2, i2.state = p2, i2.context = u2, r2 = s2) : ("function" != typeof i2.componentDidUpdate || a2 === e3.memoizedProps && d2 === e3.memoizedState || (t3.flags |= 4), "function" != typeof i2.getSnapshotBeforeUpdate || a2 === e3.memoizedProps && d2 === e3.memoizedState || (t3.flags |= 1024), r2 = false);
      }
      return i2 = r2, Wl(e3, t3), r2 = !!(128 & t3.flags), i2 || r2 ? (i2 = t3.stateNode, n3 = r2 && "function" != typeof n3.getDerivedStateFromError ? null : i2.render(), t3.flags |= 1, null !== e3 && r2 ? (t3.child = hi(t3, e3.child, null, o2), t3.child = hi(t3, null, n3, o2)) : Ll(e3, t3, n3, o2), t3.memoizedState = i2.state, e3 = t3.child) : e3 = ou(e3, t3, o2), e3;
    }
    function Gl(e3, t3, n3, r2) {
      return wo(), t3.flags |= 256, Ll(e3, t3, n3, r2), t3.child;
    }
    var Kl = { dehydrated: null, treeContext: null, retryLane: 0, hydrationErrors: null };
    function Ql(e3) {
      return { baseLanes: e3, cachePool: Xo() };
    }
    function Yl(e3, t3, n3) {
      return e3 = null !== e3 ? e3.childLanes & ~n3 : 0, t3 && (e3 |= Pc), e3;
    }
    function Xl(e3, t3, n3) {
      var r2, o2 = t3.pendingProps, i2 = false, l2 = !!(128 & t3.flags);
      if ((r2 = l2) || (r2 = (null === e3 || null !== e3.memoizedState) && !!(2 & Ui.current)), r2 && (i2 = true, t3.flags &= -129), r2 = !!(32 & t3.flags), t3.flags &= -33, null === e3) {
        if (fo) {
          if (i2 ? Di(t3) : Fi(), (e3 = so) ? null !== (e3 = null !== (e3 = Rf(e3, ho)) && "&" !== e3.data ? e3 : null) && (t3.memoizedState = { dehydrated: e3, treeContext: null !== to ? { id: no, overflow: ro } : null, retryLane: 536870912, hydrationErrors: null }, (n3 = $r(e3)).return = t3, t3.child = n3, co = t3, so = null) : e3 = null, null === e3) throw mo(t3);
          return jf(e3) ? t3.lanes = 32 : t3.lanes = 536870912, null;
        }
        var u2 = o2.children;
        return o2 = o2.fallback, i2 ? (Fi(), u2 = Zl({ mode: "hidden", children: u2 }, i2 = t3.mode), o2 = Wr(o2, i2, n3, null), u2.return = t3, o2.return = t3, u2.sibling = o2, t3.child = u2, (o2 = t3.child).memoizedState = Ql(n3), o2.childLanes = Yl(e3, r2, n3), t3.memoizedState = Kl, Ml(null, o2)) : (Di(t3), Jl(t3, u2));
      }
      var c2 = e3.memoizedState;
      if (null !== c2 && null !== (u2 = c2.dehydrated)) {
        if (l2) 256 & t3.flags ? (Di(t3), t3.flags &= -257, t3 = eu(e3, t3, n3)) : null !== t3.memoizedState ? (Fi(), t3.child = e3.child, t3.flags |= 128, t3 = null) : (Fi(), u2 = o2.fallback, i2 = t3.mode, o2 = Zl({ mode: "visible", children: o2.children }, i2), (u2 = Wr(u2, i2, n3, null)).flags |= 2, o2.return = t3, u2.return = t3, o2.sibling = u2, t3.child = o2, hi(t3, e3.child, null, n3), (o2 = t3.child).memoizedState = Ql(n3), o2.childLanes = Yl(e3, r2, n3), t3.memoizedState = Kl, t3 = Ml(null, o2));
        else if (Di(t3), jf(u2)) {
          if (r2 = u2.nextSibling && u2.nextSibling.dataset) var s2 = r2.dgst;
          r2 = s2, (o2 = Error(a(419))).stack = "", o2.digest = r2, So({ value: o2, source: null, stack: null }), t3 = eu(e3, t3, n3);
        } else if (jl || Ao(e3, t3, n3, false), r2 = 0 !== (n3 & e3.childLanes), jl || r2) {
          if (null !== (r2 = hc) && 0 !== (o2 = De(r2, n3)) && o2 !== c2.retryLane) throw c2.retryLane = o2, jr(e3, o2), Kc(r2, 0, o2), _l;
          _f(u2) || as(), t3 = eu(e3, t3, n3);
        } else _f(u2) ? (t3.flags |= 192, t3.child = e3.child, t3 = null) : (e3 = c2.treeContext, so = Lf(u2.nextSibling), co = t3, fo = true, po = null, ho = false, null !== e3 && uo(t3, e3), (t3 = Jl(t3, o2.children)).flags |= 4096);
        return t3;
      }
      return i2 ? (Fi(), u2 = o2.fallback, i2 = t3.mode, s2 = (c2 = e3.child).sibling, (o2 = Ur(c2, { mode: "hidden", children: o2.children })).subtreeFlags = 65011712 & c2.subtreeFlags, null !== s2 ? u2 = Ur(s2, u2) : (u2 = Wr(u2, i2, n3, null)).flags |= 2, u2.return = t3, o2.return = t3, o2.sibling = u2, t3.child = o2, Ml(null, o2), o2 = t3.child, null === (u2 = e3.child.memoizedState) ? u2 = Ql(n3) : (null !== (i2 = u2.cachePool) ? (c2 = Mo._currentValue, i2 = i2.parent !== c2 ? { parent: c2, pool: c2 } : i2) : i2 = Xo(), u2 = { baseLanes: u2.baseLanes | n3, cachePool: i2 }), o2.memoizedState = u2, o2.childLanes = Yl(e3, r2, n3), t3.memoizedState = Kl, Ml(e3.child, o2)) : (Di(t3), e3 = (n3 = e3.child).sibling, (n3 = Ur(n3, { mode: "visible", children: o2.children })).return = t3, n3.sibling = null, null !== e3 && (null === (r2 = t3.deletions) ? (t3.deletions = [e3], t3.flags |= 16) : r2.push(e3)), t3.child = n3, t3.memoizedState = null, n3);
    }
    function Jl(e3, t3) {
      return (t3 = Zl({ mode: "visible", children: t3 }, e3.mode)).return = e3, e3.child = t3;
    }
    function Zl(e3, t3) {
      return (e3 = Fr(22, e3, null, t3)).lanes = 0, e3;
    }
    function eu(e3, t3, n3) {
      return hi(t3, e3.child, null, n3), (e3 = Jl(t3, t3.pendingProps.children)).flags |= 2, t3.memoizedState = null, e3;
    }
    function tu(e3, t3, n3) {
      e3.lanes |= t3;
      var r2 = e3.alternate;
      null !== r2 && (r2.lanes |= t3), To(e3.return, t3, n3);
    }
    function nu(e3, t3, n3, r2, o2, i2) {
      var a2 = e3.memoizedState;
      null === a2 ? e3.memoizedState = { isBackwards: t3, rendering: null, renderingStartTime: 0, last: r2, tail: n3, tailMode: o2, treeForkCount: i2 } : (a2.isBackwards = t3, a2.rendering = null, a2.renderingStartTime = 0, a2.last = r2, a2.tail = n3, a2.tailMode = o2, a2.treeForkCount = i2);
    }
    function ru(e3, t3, n3) {
      var r2 = t3.pendingProps, o2 = r2.revealOrder, i2 = r2.tail;
      r2 = r2.children;
      var a2 = Ui.current, l2 = !!(2 & a2);
      if (l2 ? (a2 = 1 & a2 | 2, t3.flags |= 128) : a2 &= 1, B(Ui, a2), Ll(e3, t3, r2, n3), r2 = fo ? Jr : 0, !l2 && null !== e3 && 128 & e3.flags) e: for (e3 = t3.child; null !== e3; ) {
        if (13 === e3.tag) null !== e3.memoizedState && tu(e3, n3, t3);
        else if (19 === e3.tag) tu(e3, n3, t3);
        else if (null !== e3.child) {
          e3.child.return = e3, e3 = e3.child;
          continue;
        }
        if (e3 === t3) break e;
        for (; null === e3.sibling; ) {
          if (null === e3.return || e3.return === t3) break e;
          e3 = e3.return;
        }
        e3.sibling.return = e3.return, e3 = e3.sibling;
      }
      switch (o2) {
        case "forwards":
          for (n3 = t3.child, o2 = null; null !== n3; ) null !== (e3 = n3.alternate) && null === Bi(e3) && (o2 = n3), n3 = n3.sibling;
          null === (n3 = o2) ? (o2 = t3.child, t3.child = null) : (o2 = n3.sibling, n3.sibling = null), nu(t3, false, o2, n3, i2, r2);
          break;
        case "backwards":
        case "unstable_legacy-backwards":
          for (n3 = null, o2 = t3.child, t3.child = null; null !== o2; ) {
            if (null !== (e3 = o2.alternate) && null === Bi(e3)) {
              t3.child = o2;
              break;
            }
            e3 = o2.sibling, o2.sibling = n3, n3 = o2, o2 = e3;
          }
          nu(t3, true, n3, null, i2, r2);
          break;
        case "together":
          nu(t3, false, null, null, void 0, r2);
          break;
        default:
          t3.memoizedState = null;
      }
      return t3.child;
    }
    function ou(e3, t3, n3) {
      if (null !== e3 && (t3.dependencies = e3.dependencies), xc |= t3.lanes, 0 === (n3 & t3.childLanes)) {
        if (null === e3) return null;
        if (Ao(e3, t3, n3, false), 0 === (n3 & t3.childLanes)) return null;
      }
      if (null !== e3 && t3.child !== e3.child) throw Error(a(153));
      if (null !== t3.child) {
        for (n3 = Ur(e3 = t3.child, e3.pendingProps), t3.child = n3, n3.return = t3; null !== e3.sibling; ) e3 = e3.sibling, (n3 = n3.sibling = Ur(e3, e3.pendingProps)).return = t3;
        n3.sibling = null;
      }
      return t3.child;
    }
    function iu(e3, t3) {
      return 0 !== (e3.lanes & t3) || !(null === (e3 = e3.dependencies) || !Ro(e3));
    }
    function au(e3, t3, n3) {
      if (null !== e3) if (e3.memoizedProps !== t3.pendingProps) jl = true;
      else {
        if (!(iu(e3, n3) || 128 & t3.flags)) return jl = false, (function(e4, t4, n4) {
          switch (t4.tag) {
            case 3:
              K(t4, t4.stateNode.containerInfo), Oo(0, Mo, e4.memoizedState.cache), wo();
              break;
            case 27:
            case 5:
              Y(t4);
              break;
            case 4:
              K(t4, t4.stateNode.containerInfo);
              break;
            case 10:
              Oo(0, t4.type, t4.memoizedProps.value);
              break;
            case 31:
              if (null !== t4.memoizedState) return t4.flags |= 128, Ii(t4), null;
              break;
            case 13:
              var r3 = t4.memoizedState;
              if (null !== r3) return null !== r3.dehydrated ? (Di(t4), t4.flags |= 128, null) : 0 !== (n4 & t4.child.childLanes) ? Xl(e4, t4, n4) : (Di(t4), null !== (e4 = ou(e4, t4, n4)) ? e4.sibling : null);
              Di(t4);
              break;
            case 19:
              var o3 = !!(128 & e4.flags);
              if ((r3 = 0 !== (n4 & t4.childLanes)) || (Ao(e4, t4, n4, false), r3 = 0 !== (n4 & t4.childLanes)), o3) {
                if (r3) return ru(e4, t4, n4);
                t4.flags |= 128;
              }
              if (null !== (o3 = t4.memoizedState) && (o3.rendering = null, o3.tail = null, o3.lastEffect = null), B(Ui, Ui.current), r3) break;
              return null;
            case 22:
              return t4.lanes = 0, Fl(e4, t4, n4, t4.pendingProps);
            case 24:
              Oo(0, Mo, e4.memoizedState.cache);
          }
          return ou(e4, t4, n4);
        })(e3, t3, n3);
        jl = !!(131072 & e3.flags);
      }
      else jl = false, fo && 1048576 & t3.flags && io(t3, Jr, t3.index);
      switch (t3.lanes = 0, t3.tag) {
        case 16:
          e: {
            var r2 = t3.pendingProps;
            if (e3 = oi(t3.elementType), t3.type = e3, "function" != typeof e3) {
              if (null != e3) {
                var o2 = e3.$$typeof;
                if (o2 === S) {
                  t3.tag = 11, t3 = Dl(null, t3, e3, r2, n3);
                  break e;
                }
                if (o2 === C) {
                  t3.tag = 14, t3 = Il(null, t3, e3, r2, n3);
                  break e;
                }
              }
              throw t3 = _(e3) || e3, Error(a(306, t3, ""));
            }
            Mr(e3) ? (r2 = kl(e3, r2), t3.tag = 1, t3 = Vl(null, t3, e3, r2, n3)) : (t3.tag = 0, t3 = ql(null, t3, e3, r2, n3));
          }
          return t3;
        case 0:
          return ql(e3, t3, t3.type, t3.pendingProps, n3);
        case 1:
          return Vl(e3, t3, r2 = t3.type, o2 = kl(r2, t3.pendingProps), n3);
        case 3:
          e: {
            if (K(t3, t3.stateNode.containerInfo), null === e3) throw Error(a(387));
            r2 = t3.pendingProps;
            var i2 = t3.memoizedState;
            o2 = i2.element, gi(e3, t3), Ci(t3, r2, null, n3);
            var l2 = t3.memoizedState;
            if (r2 = l2.cache, Oo(0, Mo, r2), r2 !== i2.cache && No(t3, [Mo], n3, true), xi(), r2 = l2.element, i2.isDehydrated) {
              if (i2 = { element: r2, isDehydrated: false, cache: l2.cache }, t3.updateQueue.baseState = i2, t3.memoizedState = i2, 256 & t3.flags) {
                t3 = Gl(e3, t3, r2, n3);
                break e;
              }
              if (r2 !== o2) {
                So(o2 = Kr(Error(a(424)), t3)), t3 = Gl(e3, t3, r2, n3);
                break e;
              }
              for (e3 = 9 === (e3 = t3.stateNode.containerInfo).nodeType ? e3.body : "HTML" === e3.nodeName ? e3.ownerDocument.body : e3, so = Lf(e3.firstChild), co = t3, fo = true, po = null, ho = true, n3 = vi(t3, null, r2, n3), t3.child = n3; n3; ) n3.flags = -3 & n3.flags | 4096, n3 = n3.sibling;
            } else {
              if (wo(), r2 === o2) {
                t3 = ou(e3, t3, n3);
                break e;
              }
              Ll(e3, t3, r2, n3);
            }
            t3 = t3.child;
          }
          return t3;
        case 26:
          return Wl(e3, t3), null === e3 ? (n3 = Vf(t3.type, null, t3.pendingProps, null)) ? t3.memoizedState = n3 : fo || (n3 = t3.type, e3 = t3.pendingProps, (r2 = yf(V.current).createElement(n3))[Be] = t3, r2[He] = e3, pf(r2, n3, e3), et(r2), t3.stateNode = r2) : t3.memoizedState = Vf(t3.type, e3.memoizedProps, t3.pendingProps, e3.memoizedState), null;
        case 27:
          return Y(t3), null === e3 && fo && (r2 = t3.stateNode = Ff(t3.type, t3.pendingProps, V.current), co = t3, ho = true, o2 = so, Pf(t3.type) ? (Df = o2, so = Lf(r2.firstChild)) : so = o2), Ll(e3, t3, t3.pendingProps.children, n3), Wl(e3, t3), null === e3 && (t3.flags |= 4194304), t3.child;
        case 5:
          return null === e3 && fo && ((o2 = r2 = so) && (null !== (r2 = (function(e4, t4, n4, r3) {
            for (; 1 === e4.nodeType; ) {
              var o3 = n4;
              if (e4.nodeName.toLowerCase() !== t4.toLowerCase()) {
                if (!r3 && ("INPUT" !== e4.nodeName || "hidden" !== e4.type)) break;
              } else if (r3) {
                if (!e4[Ke]) switch (t4) {
                  case "meta":
                    if (!e4.hasAttribute("itemprop")) break;
                    return e4;
                  case "link":
                    if ("stylesheet" === (i3 = e4.getAttribute("rel")) && e4.hasAttribute("data-precedence")) break;
                    if (i3 !== o3.rel || e4.getAttribute("href") !== (null == o3.href || "" === o3.href ? null : o3.href) || e4.getAttribute("crossorigin") !== (null == o3.crossOrigin ? null : o3.crossOrigin) || e4.getAttribute("title") !== (null == o3.title ? null : o3.title)) break;
                    return e4;
                  case "style":
                    if (e4.hasAttribute("data-precedence")) break;
                    return e4;
                  case "script":
                    if (((i3 = e4.getAttribute("src")) !== (null == o3.src ? null : o3.src) || e4.getAttribute("type") !== (null == o3.type ? null : o3.type) || e4.getAttribute("crossorigin") !== (null == o3.crossOrigin ? null : o3.crossOrigin)) && i3 && e4.hasAttribute("async") && !e4.hasAttribute("itemprop")) break;
                    return e4;
                  default:
                    return e4;
                }
              } else {
                if ("input" !== t4 || "hidden" !== e4.type) return e4;
                var i3 = null == o3.name ? null : "" + o3.name;
                if ("hidden" === o3.type && e4.getAttribute("name") === i3) return e4;
              }
              if (null === (e4 = Lf(e4.nextSibling))) break;
            }
            return null;
          })(r2, t3.type, t3.pendingProps, ho)) ? (t3.stateNode = r2, co = t3, so = Lf(r2.firstChild), ho = false, o2 = true) : o2 = false), o2 || mo(t3)), Y(t3), o2 = t3.type, i2 = t3.pendingProps, l2 = null !== e3 ? e3.memoizedProps : null, r2 = i2.children, wf(o2, i2) ? r2 = null : null !== l2 && wf(o2, l2) && (t3.flags |= 32), null !== t3.memoizedState && (o2 = ta(e3, t3, oa, null, null, n3), fd._currentValue = o2), Wl(e3, t3), Ll(e3, t3, r2, n3), t3.child;
        case 6:
          return null === e3 && fo && ((e3 = n3 = so) && (null !== (n3 = (function(e4, t4, n4) {
            if ("" === t4) return null;
            for (; 3 !== e4.nodeType; ) {
              if ((1 !== e4.nodeType || "INPUT" !== e4.nodeName || "hidden" !== e4.type) && !n4) return null;
              if (null === (e4 = Lf(e4.nextSibling))) return null;
            }
            return e4;
          })(n3, t3.pendingProps, ho)) ? (t3.stateNode = n3, co = t3, so = null, e3 = true) : e3 = false), e3 || mo(t3)), null;
        case 13:
          return Xl(e3, t3, n3);
        case 4:
          return K(t3, t3.stateNode.containerInfo), r2 = t3.pendingProps, null === e3 ? t3.child = hi(t3, null, r2, n3) : Ll(e3, t3, r2, n3), t3.child;
        case 11:
          return Dl(e3, t3, t3.type, t3.pendingProps, n3);
        case 7:
          return Ll(e3, t3, t3.pendingProps, n3), t3.child;
        case 8:
        case 12:
          return Ll(e3, t3, t3.pendingProps.children, n3), t3.child;
        case 10:
          return r2 = t3.pendingProps, Oo(0, t3.type, r2.value), Ll(e3, t3, r2.children, n3), t3.child;
        case 9:
          return o2 = t3.type._context, r2 = t3.pendingProps.children, _o(t3), r2 = r2(o2 = jo(o2)), t3.flags |= 1, Ll(e3, t3, r2, n3), t3.child;
        case 14:
          return Il(e3, t3, t3.type, t3.pendingProps, n3);
        case 15:
          return zl(e3, t3, t3.type, t3.pendingProps, n3);
        case 19:
          return ru(e3, t3, n3);
        case 31:
          return (function(e4, t4, n4) {
            var r3 = t4.pendingProps, o3 = !!(128 & t4.flags);
            if (t4.flags &= -129, null === e4) {
              if (fo) {
                if ("hidden" === r3.mode) return e4 = Bl(t4, r3), t4.lanes = 536870912, Ml(null, e4);
                if (Ii(t4), (e4 = so) ? null !== (e4 = null !== (e4 = Rf(e4, ho)) && "&" === e4.data ? e4 : null) && (t4.memoizedState = { dehydrated: e4, treeContext: null !== to ? { id: no, overflow: ro } : null, retryLane: 536870912, hydrationErrors: null }, (n4 = $r(e4)).return = t4, t4.child = n4, co = t4, so = null) : e4 = null, null === e4) throw mo(t4);
                return t4.lanes = 536870912, null;
              }
              return Bl(t4, r3);
            }
            var i3 = e4.memoizedState;
            if (null !== i3) {
              var l3 = i3.dehydrated;
              if (Ii(t4), o3) if (256 & t4.flags) t4.flags &= -257, t4 = Hl(e4, t4, n4);
              else {
                if (null === t4.memoizedState) throw Error(a(558));
                t4.child = e4.child, t4.flags |= 128, t4 = null;
              }
              else if (jl || Ao(e4, t4, n4, false), o3 = 0 !== (n4 & e4.childLanes), jl || o3) {
                if (null !== (r3 = hc) && 0 !== (l3 = De(r3, n4)) && l3 !== i3.retryLane) throw i3.retryLane = l3, jr(e4, l3), Kc(r3, 0, l3), _l;
                as(), t4 = Hl(e4, t4, n4);
              } else e4 = i3.treeContext, so = Lf(l3.nextSibling), co = t4, fo = true, po = null, ho = false, null !== e4 && uo(t4, e4), (t4 = Bl(t4, r3)).flags |= 4096;
              return t4;
            }
            return (e4 = Ur(e4.child, { mode: r3.mode, children: r3.children })).ref = t4.ref, t4.child = e4, e4.return = t4, e4;
          })(e3, t3, n3);
        case 22:
          return Fl(e3, t3, n3, t3.pendingProps);
        case 24:
          return _o(t3), r2 = jo(Mo), null === e3 ? (null === (o2 = Qo()) && (o2 = hc, i2 = Uo(), o2.pooledCache = i2, i2.refCount++, null !== i2 && (o2.pooledCacheLanes |= n3), o2 = i2), t3.memoizedState = { parent: r2, cache: o2 }, yi(t3), Oo(0, Mo, o2)) : (0 !== (e3.lanes & n3) && (gi(e3, t3), Ci(t3, null, null, n3), xi()), o2 = e3.memoizedState, i2 = t3.memoizedState, o2.parent !== r2 ? (o2 = { parent: r2, cache: r2 }, t3.memoizedState = o2, 0 === t3.lanes && (t3.memoizedState = t3.updateQueue.baseState = o2), Oo(0, Mo, r2)) : (r2 = i2.cache, Oo(0, Mo, r2), r2 !== o2.cache && No(t3, [Mo], n3, true))), Ll(e3, t3, t3.pendingProps.children, n3), t3.child;
        case 29:
          throw t3.pendingProps;
      }
      throw Error(a(156, t3.tag));
    }
    function lu(e3) {
      e3.flags |= 4;
    }
    function uu(e3, t3, n3, r2, o2) {
      if ((t3 = !!(32 & e3.mode)) && (t3 = false), t3) {
        if (e3.flags |= 16777216, (335544128 & o2) === o2) if (e3.stateNode.complete) e3.flags |= 8192;
        else {
          if (!rs()) throw ii = ti, Zo;
          e3.flags |= 8192;
        }
      } else e3.flags &= -16777217;
    }
    function cu(e3, t3) {
      if ("stylesheet" !== t3.type || 4 & t3.state.loading) e3.flags &= -16777217;
      else if (e3.flags |= 16777216, !id(t3)) {
        if (!rs()) throw ii = ti, Zo;
        e3.flags |= 8192;
      }
    }
    function su(e3, t3) {
      null !== t3 && (e3.flags |= 4), 16384 & e3.flags && (t3 = 22 !== e3.tag ? Ae() : 536870912, e3.lanes |= t3, Tc |= t3);
    }
    function fu(e3, t3) {
      if (!fo) switch (e3.tailMode) {
        case "hidden":
          t3 = e3.tail;
          for (var n3 = null; null !== t3; ) null !== t3.alternate && (n3 = t3), t3 = t3.sibling;
          null === n3 ? e3.tail = null : n3.sibling = null;
          break;
        case "collapsed":
          n3 = e3.tail;
          for (var r2 = null; null !== n3; ) null !== n3.alternate && (r2 = n3), n3 = n3.sibling;
          null === r2 ? t3 || null === e3.tail ? e3.tail = null : e3.tail.sibling = null : r2.sibling = null;
      }
    }
    function du(e3) {
      var t3 = null !== e3.alternate && e3.alternate.child === e3.child, n3 = 0, r2 = 0;
      if (t3) for (var o2 = e3.child; null !== o2; ) n3 |= o2.lanes | o2.childLanes, r2 |= 65011712 & o2.subtreeFlags, r2 |= 65011712 & o2.flags, o2.return = e3, o2 = o2.sibling;
      else for (o2 = e3.child; null !== o2; ) n3 |= o2.lanes | o2.childLanes, r2 |= o2.subtreeFlags, r2 |= o2.flags, o2.return = e3, o2 = o2.sibling;
      return e3.subtreeFlags |= r2, e3.childLanes = n3, t3;
    }
    function pu(e3, t3, n3) {
      var r2 = t3.pendingProps;
      switch (lo(t3), t3.tag) {
        case 16:
        case 15:
        case 0:
        case 11:
        case 7:
        case 8:
        case 12:
        case 9:
        case 14:
        case 1:
          return du(t3), null;
        case 3:
          return n3 = t3.stateNode, r2 = null, null !== e3 && (r2 = e3.memoizedState.cache), t3.memoizedState.cache !== r2 && (t3.flags |= 2048), Po(Mo), Q(), n3.pendingContext && (n3.context = n3.pendingContext, n3.pendingContext = null), null !== e3 && null !== e3.child || (bo(t3) ? lu(t3) : null === e3 || e3.memoizedState.isDehydrated && !(256 & t3.flags) || (t3.flags |= 1024, Eo())), du(t3), null;
        case 26:
          var o2 = t3.type, i2 = t3.memoizedState;
          return null === e3 ? (lu(t3), null !== i2 ? (du(t3), cu(t3, i2)) : (du(t3), uu(t3, o2, 0, 0, n3))) : i2 ? i2 !== e3.memoizedState ? (lu(t3), du(t3), cu(t3, i2)) : (du(t3), t3.flags &= -16777217) : ((e3 = e3.memoizedProps) !== r2 && lu(t3), du(t3), uu(t3, o2, 0, 0, n3)), null;
        case 27:
          if (X(t3), n3 = V.current, o2 = t3.type, null !== e3 && null != t3.stateNode) e3.memoizedProps !== r2 && lu(t3);
          else {
            if (!r2) {
              if (null === t3.stateNode) throw Error(a(166));
              return du(t3), null;
            }
            e3 = q.current, bo(t3) ? yo(t3) : (e3 = Ff(o2, r2, n3), t3.stateNode = e3, lu(t3));
          }
          return du(t3), null;
        case 5:
          if (X(t3), o2 = t3.type, null !== e3 && null != t3.stateNode) e3.memoizedProps !== r2 && lu(t3);
          else {
            if (!r2) {
              if (null === t3.stateNode) throw Error(a(166));
              return du(t3), null;
            }
            if (i2 = q.current, bo(t3)) yo(t3);
            else {
              var l2 = yf(V.current);
              switch (i2) {
                case 1:
                  i2 = l2.createElementNS("http://www.w3.org/2000/svg", o2);
                  break;
                case 2:
                  i2 = l2.createElementNS("http://www.w3.org/1998/Math/MathML", o2);
                  break;
                default:
                  switch (o2) {
                    case "svg":
                      i2 = l2.createElementNS("http://www.w3.org/2000/svg", o2);
                      break;
                    case "math":
                      i2 = l2.createElementNS("http://www.w3.org/1998/Math/MathML", o2);
                      break;
                    case "script":
                      (i2 = l2.createElement("div")).innerHTML = "<script><\/script>", i2 = i2.removeChild(i2.firstChild);
                      break;
                    case "select":
                      i2 = "string" == typeof r2.is ? l2.createElement("select", { is: r2.is }) : l2.createElement("select"), r2.multiple ? i2.multiple = true : r2.size && (i2.size = r2.size);
                      break;
                    default:
                      i2 = "string" == typeof r2.is ? l2.createElement(o2, { is: r2.is }) : l2.createElement(o2);
                  }
              }
              i2[Be] = t3, i2[He] = r2;
              e: for (l2 = t3.child; null !== l2; ) {
                if (5 === l2.tag || 6 === l2.tag) i2.appendChild(l2.stateNode);
                else if (4 !== l2.tag && 27 !== l2.tag && null !== l2.child) {
                  l2.child.return = l2, l2 = l2.child;
                  continue;
                }
                if (l2 === t3) break e;
                for (; null === l2.sibling; ) {
                  if (null === l2.return || l2.return === t3) break e;
                  l2 = l2.return;
                }
                l2.sibling.return = l2.return, l2 = l2.sibling;
              }
              t3.stateNode = i2;
              e: switch (pf(i2, o2, r2), o2) {
                case "button":
                case "input":
                case "select":
                case "textarea":
                  r2 = !!r2.autoFocus;
                  break e;
                case "img":
                  r2 = true;
                  break e;
                default:
                  r2 = false;
              }
              r2 && lu(t3);
            }
          }
          return du(t3), uu(t3, t3.type, null === e3 || e3.memoizedProps, t3.pendingProps, n3), null;
        case 6:
          if (e3 && null != t3.stateNode) e3.memoizedProps !== r2 && lu(t3);
          else {
            if ("string" != typeof r2 && null === t3.stateNode) throw Error(a(166));
            if (e3 = V.current, bo(t3)) {
              if (e3 = t3.stateNode, n3 = t3.memoizedProps, r2 = null, null !== (o2 = co)) switch (o2.tag) {
                case 27:
                case 5:
                  r2 = o2.memoizedProps;
              }
              e3[Be] = t3, (e3 = !!(e3.nodeValue === n3 || null !== r2 && true === r2.suppressHydrationWarning || sf(e3.nodeValue, n3))) || mo(t3, true);
            } else (e3 = yf(e3).createTextNode(r2))[Be] = t3, t3.stateNode = e3;
          }
          return du(t3), null;
        case 31:
          if (n3 = t3.memoizedState, null === e3 || null !== e3.memoizedState) {
            if (r2 = bo(t3), null !== n3) {
              if (null === e3) {
                if (!r2) throw Error(a(318));
                if (!(e3 = null !== (e3 = t3.memoizedState) ? e3.dehydrated : null)) throw Error(a(557));
                e3[Be] = t3;
              } else wo(), !(128 & t3.flags) && (t3.memoizedState = null), t3.flags |= 4;
              du(t3), e3 = false;
            } else n3 = Eo(), null !== e3 && null !== e3.memoizedState && (e3.memoizedState.hydrationErrors = n3), e3 = true;
            if (!e3) return 256 & t3.flags ? (Mi(t3), t3) : (Mi(t3), null);
            if (128 & t3.flags) throw Error(a(558));
          }
          return du(t3), null;
        case 13:
          if (r2 = t3.memoizedState, null === e3 || null !== e3.memoizedState && null !== e3.memoizedState.dehydrated) {
            if (o2 = bo(t3), null !== r2 && null !== r2.dehydrated) {
              if (null === e3) {
                if (!o2) throw Error(a(318));
                if (!(o2 = null !== (o2 = t3.memoizedState) ? o2.dehydrated : null)) throw Error(a(317));
                o2[Be] = t3;
              } else wo(), !(128 & t3.flags) && (t3.memoizedState = null), t3.flags |= 4;
              du(t3), o2 = false;
            } else o2 = Eo(), null !== e3 && null !== e3.memoizedState && (e3.memoizedState.hydrationErrors = o2), o2 = true;
            if (!o2) return 256 & t3.flags ? (Mi(t3), t3) : (Mi(t3), null);
          }
          return Mi(t3), 128 & t3.flags ? (t3.lanes = n3, t3) : (n3 = null !== r2, e3 = null !== e3 && null !== e3.memoizedState, n3 && (o2 = null, null !== (r2 = t3.child).alternate && null !== r2.alternate.memoizedState && null !== r2.alternate.memoizedState.cachePool && (o2 = r2.alternate.memoizedState.cachePool.pool), i2 = null, null !== r2.memoizedState && null !== r2.memoizedState.cachePool && (i2 = r2.memoizedState.cachePool.pool), i2 !== o2 && (r2.flags |= 2048)), n3 !== e3 && n3 && (t3.child.flags |= 8192), su(t3, t3.updateQueue), du(t3), null);
        case 4:
          return Q(), null === e3 && Zs(t3.stateNode.containerInfo), du(t3), null;
        case 10:
          return Po(t3.type), du(t3), null;
        case 19:
          if (U(Ui), null === (r2 = t3.memoizedState)) return du(t3), null;
          if (o2 = !!(128 & t3.flags), null === (i2 = r2.rendering)) if (o2) fu(r2, false);
          else {
            if (0 !== kc || null !== e3 && 128 & e3.flags) for (e3 = t3.child; null !== e3; ) {
              if (null !== (i2 = Bi(e3))) {
                for (t3.flags |= 128, fu(r2, false), e3 = i2.updateQueue, t3.updateQueue = e3, su(t3, e3), t3.subtreeFlags = 0, e3 = n3, n3 = t3.child; null !== n3; ) Br(n3, e3), n3 = n3.sibling;
                return B(Ui, 1 & Ui.current | 2), fo && oo(t3, r2.treeForkCount), t3.child;
              }
              e3 = e3.sibling;
            }
            null !== r2.tail && ue() > Lc && (t3.flags |= 128, o2 = true, fu(r2, false), t3.lanes = 4194304);
          }
          else {
            if (!o2) if (null !== (e3 = Bi(i2))) {
              if (t3.flags |= 128, o2 = true, e3 = e3.updateQueue, t3.updateQueue = e3, su(t3, e3), fu(r2, true), null === r2.tail && "hidden" === r2.tailMode && !i2.alternate && !fo) return du(t3), null;
            } else 2 * ue() - r2.renderingStartTime > Lc && 536870912 !== n3 && (t3.flags |= 128, o2 = true, fu(r2, false), t3.lanes = 4194304);
            r2.isBackwards ? (i2.sibling = t3.child, t3.child = i2) : (null !== (e3 = r2.last) ? e3.sibling = i2 : t3.child = i2, r2.last = i2);
          }
          return null !== r2.tail ? (e3 = r2.tail, r2.rendering = e3, r2.tail = e3.sibling, r2.renderingStartTime = ue(), e3.sibling = null, n3 = Ui.current, B(Ui, o2 ? 1 & n3 | 2 : 1 & n3), fo && oo(t3, r2.treeForkCount), e3) : (du(t3), null);
        case 22:
        case 23:
          return Mi(t3), _i(), r2 = null !== t3.memoizedState, null !== e3 ? null !== e3.memoizedState !== r2 && (t3.flags |= 8192) : r2 && (t3.flags |= 8192), r2 ? !!(536870912 & n3) && !(128 & t3.flags) && (du(t3), 6 & t3.subtreeFlags && (t3.flags |= 8192)) : du(t3), null !== (n3 = t3.updateQueue) && su(t3, n3.retryQueue), n3 = null, null !== e3 && null !== e3.memoizedState && null !== e3.memoizedState.cachePool && (n3 = e3.memoizedState.cachePool.pool), r2 = null, null !== t3.memoizedState && null !== t3.memoizedState.cachePool && (r2 = t3.memoizedState.cachePool.pool), r2 !== n3 && (t3.flags |= 2048), null !== e3 && U(Ko), null;
        case 24:
          return n3 = null, null !== e3 && (n3 = e3.memoizedState.cache), t3.memoizedState.cache !== n3 && (t3.flags |= 2048), Po(Mo), du(t3), null;
        case 25:
        case 30:
          return null;
      }
      throw Error(a(156, t3.tag));
    }
    function hu(e3, t3) {
      switch (lo(t3), t3.tag) {
        case 1:
          return 65536 & (e3 = t3.flags) ? (t3.flags = -65537 & e3 | 128, t3) : null;
        case 3:
          return Po(Mo), Q(), 65536 & (e3 = t3.flags) && !(128 & e3) ? (t3.flags = -65537 & e3 | 128, t3) : null;
        case 26:
        case 27:
        case 5:
          return X(t3), null;
        case 31:
          if (null !== t3.memoizedState) {
            if (Mi(t3), null === t3.alternate) throw Error(a(340));
            wo();
          }
          return 65536 & (e3 = t3.flags) ? (t3.flags = -65537 & e3 | 128, t3) : null;
        case 13:
          if (Mi(t3), null !== (e3 = t3.memoizedState) && null !== e3.dehydrated) {
            if (null === t3.alternate) throw Error(a(340));
            wo();
          }
          return 65536 & (e3 = t3.flags) ? (t3.flags = -65537 & e3 | 128, t3) : null;
        case 19:
          return U(Ui), null;
        case 4:
          return Q(), null;
        case 10:
          return Po(t3.type), null;
        case 22:
        case 23:
          return Mi(t3), _i(), null !== e3 && U(Ko), 65536 & (e3 = t3.flags) ? (t3.flags = -65537 & e3 | 128, t3) : null;
        case 24:
          return Po(Mo), null;
        default:
          return null;
      }
    }
    function vu(e3, t3) {
      switch (lo(t3), t3.tag) {
        case 3:
          Po(Mo), Q();
          break;
        case 26:
        case 27:
        case 5:
          X(t3);
          break;
        case 4:
          Q();
          break;
        case 31:
          null !== t3.memoizedState && Mi(t3);
          break;
        case 13:
          Mi(t3);
          break;
        case 19:
          U(Ui);
          break;
        case 10:
          Po(t3.type);
          break;
        case 22:
        case 23:
          Mi(t3), _i(), null !== e3 && U(Ko);
          break;
        case 24:
          Po(Mo);
      }
    }
    function mu(e3, t3) {
      try {
        var n3 = t3.updateQueue, r2 = null !== n3 ? n3.lastEffect : null;
        if (null !== r2) {
          var o2 = r2.next;
          n3 = o2;
          do {
            if ((n3.tag & e3) === e3) {
              r2 = void 0;
              var i2 = n3.create, a2 = n3.inst;
              r2 = i2(), a2.destroy = r2;
            }
            n3 = n3.next;
          } while (n3 !== o2);
        }
      } catch (e4) {
        ks(t3, t3.return, e4);
      }
    }
    function yu(e3, t3, n3) {
      try {
        var r2 = t3.updateQueue, o2 = null !== r2 ? r2.lastEffect : null;
        if (null !== o2) {
          var i2 = o2.next;
          r2 = i2;
          do {
            if ((r2.tag & e3) === e3) {
              var a2 = r2.inst, l2 = a2.destroy;
              if (void 0 !== l2) {
                a2.destroy = void 0, o2 = t3;
                var u2 = n3, c2 = l2;
                try {
                  c2();
                } catch (e4) {
                  ks(o2, u2, e4);
                }
              }
            }
            r2 = r2.next;
          } while (r2 !== i2);
        }
      } catch (e4) {
        ks(t3, t3.return, e4);
      }
    }
    function gu(e3) {
      var t3 = e3.updateQueue;
      if (null !== t3) {
        var n3 = e3.stateNode;
        try {
          Pi(t3, n3);
        } catch (t4) {
          ks(e3, e3.return, t4);
        }
      }
    }
    function bu(e3, t3, n3) {
      n3.props = kl(e3.type, e3.memoizedProps), n3.state = e3.memoizedState;
      try {
        n3.componentWillUnmount();
      } catch (n4) {
        ks(e3, t3, n4);
      }
    }
    function wu(e3, t3) {
      try {
        var n3 = e3.ref;
        if (null !== n3) {
          switch (e3.tag) {
            case 26:
            case 27:
            case 5:
              var r2 = e3.stateNode;
              break;
            default:
              r2 = e3.stateNode;
          }
          "function" == typeof n3 ? e3.refCleanup = n3(r2) : n3.current = r2;
        }
      } catch (n4) {
        ks(e3, t3, n4);
      }
    }
    function Eu(e3, t3) {
      var n3 = e3.ref, r2 = e3.refCleanup;
      if (null !== n3) if ("function" == typeof r2) try {
        r2();
      } catch (n4) {
        ks(e3, t3, n4);
      } finally {
        e3.refCleanup = null, null != (e3 = e3.alternate) && (e3.refCleanup = null);
      }
      else if ("function" == typeof n3) try {
        n3(null);
      } catch (n4) {
        ks(e3, t3, n4);
      }
      else n3.current = null;
    }
    function Su(e3) {
      var t3 = e3.type, n3 = e3.memoizedProps, r2 = e3.stateNode;
      try {
        e: switch (t3) {
          case "button":
          case "input":
          case "select":
          case "textarea":
            n3.autoFocus && r2.focus();
            break e;
          case "img":
            n3.src ? r2.src = n3.src : n3.srcSet && (r2.srcset = n3.srcSet);
        }
      } catch (t4) {
        ks(e3, e3.return, t4);
      }
    }
    function ku(e3, t3, n3) {
      try {
        var r2 = e3.stateNode;
        !(function(e4, t4, n4, r3) {
          switch (t4) {
            case "div":
            case "span":
            case "svg":
            case "path":
            case "a":
            case "g":
            case "p":
            case "li":
              break;
            case "input":
              var o2 = null, i2 = null, l2 = null, u2 = null, c2 = null, s2 = null, f2 = null;
              for (h2 in n4) {
                var d2 = n4[h2];
                if (n4.hasOwnProperty(h2) && null != d2) switch (h2) {
                  case "checked":
                  case "value":
                    break;
                  case "defaultValue":
                    c2 = d2;
                  default:
                    r3.hasOwnProperty(h2) || ff(e4, t4, h2, null, r3, d2);
                }
              }
              for (var p2 in r3) {
                var h2 = r3[p2];
                if (d2 = n4[p2], r3.hasOwnProperty(p2) && (null != h2 || null != d2)) switch (p2) {
                  case "type":
                    i2 = h2;
                    break;
                  case "name":
                    o2 = h2;
                    break;
                  case "checked":
                    s2 = h2;
                    break;
                  case "defaultChecked":
                    f2 = h2;
                    break;
                  case "value":
                    l2 = h2;
                    break;
                  case "defaultValue":
                    u2 = h2;
                    break;
                  case "children":
                  case "dangerouslySetInnerHTML":
                    if (null != h2) throw Error(a(137, t4));
                    break;
                  default:
                    h2 !== d2 && ff(e4, t4, p2, h2, r3, d2);
                }
              }
              return void gt(e4, l2, u2, c2, s2, f2, i2, o2);
            case "select":
              for (i2 in h2 = l2 = u2 = p2 = null, n4) if (c2 = n4[i2], n4.hasOwnProperty(i2) && null != c2) switch (i2) {
                case "value":
                  break;
                case "multiple":
                  h2 = c2;
                default:
                  r3.hasOwnProperty(i2) || ff(e4, t4, i2, null, r3, c2);
              }
              for (o2 in r3) if (i2 = r3[o2], c2 = n4[o2], r3.hasOwnProperty(o2) && (null != i2 || null != c2)) switch (o2) {
                case "value":
                  p2 = i2;
                  break;
                case "defaultValue":
                  u2 = i2;
                  break;
                case "multiple":
                  l2 = i2;
                default:
                  i2 !== c2 && ff(e4, t4, o2, i2, r3, c2);
              }
              return t4 = u2, n4 = l2, r3 = h2, void (null != p2 ? Et(e4, !!n4, p2, false) : !!r3 != !!n4 && (null != t4 ? Et(e4, !!n4, t4, true) : Et(e4, !!n4, n4 ? [] : "", false)));
            case "textarea":
              for (u2 in h2 = p2 = null, n4) if (o2 = n4[u2], n4.hasOwnProperty(u2) && null != o2 && !r3.hasOwnProperty(u2)) switch (u2) {
                case "value":
                case "children":
                  break;
                default:
                  ff(e4, t4, u2, null, r3, o2);
              }
              for (l2 in r3) if (o2 = r3[l2], i2 = n4[l2], r3.hasOwnProperty(l2) && (null != o2 || null != i2)) switch (l2) {
                case "value":
                  p2 = o2;
                  break;
                case "defaultValue":
                  h2 = o2;
                  break;
                case "children":
                  break;
                case "dangerouslySetInnerHTML":
                  if (null != o2) throw Error(a(91));
                  break;
                default:
                  o2 !== i2 && ff(e4, t4, l2, o2, r3, i2);
              }
              return void St(e4, p2, h2);
            case "option":
              for (var v2 in n4) p2 = n4[v2], n4.hasOwnProperty(v2) && null != p2 && !r3.hasOwnProperty(v2) && ("selected" === v2 ? e4.selected = false : ff(e4, t4, v2, null, r3, p2));
              for (c2 in r3) p2 = r3[c2], h2 = n4[c2], !r3.hasOwnProperty(c2) || p2 === h2 || null == p2 && null == h2 || ("selected" === c2 ? e4.selected = p2 && "function" != typeof p2 && "symbol" != typeof p2 : ff(e4, t4, c2, p2, r3, h2));
              return;
            case "img":
            case "link":
            case "area":
            case "base":
            case "br":
            case "col":
            case "embed":
            case "hr":
            case "keygen":
            case "meta":
            case "param":
            case "source":
            case "track":
            case "wbr":
            case "menuitem":
              for (var m2 in n4) p2 = n4[m2], n4.hasOwnProperty(m2) && null != p2 && !r3.hasOwnProperty(m2) && ff(e4, t4, m2, null, r3, p2);
              for (s2 in r3) if (p2 = r3[s2], h2 = n4[s2], r3.hasOwnProperty(s2) && p2 !== h2 && (null != p2 || null != h2)) switch (s2) {
                case "children":
                case "dangerouslySetInnerHTML":
                  if (null != p2) throw Error(a(137, t4));
                  break;
                default:
                  ff(e4, t4, s2, p2, r3, h2);
              }
              return;
            default:
              if (Tt(t4)) {
                for (var y2 in n4) p2 = n4[y2], n4.hasOwnProperty(y2) && void 0 !== p2 && !r3.hasOwnProperty(y2) && df(e4, t4, y2, void 0, r3, p2);
                for (f2 in r3) p2 = r3[f2], h2 = n4[f2], !r3.hasOwnProperty(f2) || p2 === h2 || void 0 === p2 && void 0 === h2 || df(e4, t4, f2, p2, r3, h2);
                return;
              }
          }
          for (var g2 in n4) p2 = n4[g2], n4.hasOwnProperty(g2) && null != p2 && !r3.hasOwnProperty(g2) && ff(e4, t4, g2, null, r3, p2);
          for (d2 in r3) p2 = r3[d2], h2 = n4[d2], !r3.hasOwnProperty(d2) || p2 === h2 || null == p2 && null == h2 || ff(e4, t4, d2, p2, r3, h2);
        })(r2, e3.type, n3, t3), r2[He] = t3;
      } catch (t4) {
        ks(e3, e3.return, t4);
      }
    }
    function xu(e3) {
      return 5 === e3.tag || 3 === e3.tag || 26 === e3.tag || 27 === e3.tag && Pf(e3.type) || 4 === e3.tag;
    }
    function Cu(e3) {
      e: for (; ; ) {
        for (; null === e3.sibling; ) {
          if (null === e3.return || xu(e3.return)) return null;
          e3 = e3.return;
        }
        for (e3.sibling.return = e3.return, e3 = e3.sibling; 5 !== e3.tag && 6 !== e3.tag && 18 !== e3.tag; ) {
          if (27 === e3.tag && Pf(e3.type)) continue e;
          if (2 & e3.flags) continue e;
          if (null === e3.child || 4 === e3.tag) continue e;
          e3.child.return = e3, e3 = e3.child;
        }
        if (!(2 & e3.flags)) return e3.stateNode;
      }
    }
    function Ou(e3, t3, n3) {
      var r2 = e3.tag;
      if (5 === r2 || 6 === r2) e3 = e3.stateNode, t3 ? (9 === n3.nodeType ? n3.body : "HTML" === n3.nodeName ? n3.ownerDocument.body : n3).insertBefore(e3, t3) : ((t3 = 9 === n3.nodeType ? n3.body : "HTML" === n3.nodeName ? n3.ownerDocument.body : n3).appendChild(e3), null != (n3 = n3._reactRootContainer) || null !== t3.onclick || (t3.onclick = _t));
      else if (4 !== r2 && (27 === r2 && Pf(e3.type) && (n3 = e3.stateNode, t3 = null), null !== (e3 = e3.child))) for (Ou(e3, t3, n3), e3 = e3.sibling; null !== e3; ) Ou(e3, t3, n3), e3 = e3.sibling;
    }
    function Pu(e3, t3, n3) {
      var r2 = e3.tag;
      if (5 === r2 || 6 === r2) e3 = e3.stateNode, t3 ? n3.insertBefore(e3, t3) : n3.appendChild(e3);
      else if (4 !== r2 && (27 === r2 && Pf(e3.type) && (n3 = e3.stateNode), null !== (e3 = e3.child))) for (Pu(e3, t3, n3), e3 = e3.sibling; null !== e3; ) Pu(e3, t3, n3), e3 = e3.sibling;
    }
    function Tu(e3) {
      var t3 = e3.stateNode, n3 = e3.memoizedProps;
      try {
        for (var r2 = e3.type, o2 = t3.attributes; o2.length; ) t3.removeAttributeNode(o2[0]);
        pf(t3, r2, n3), t3[Be] = e3, t3[He] = n3;
      } catch (t4) {
        ks(e3, e3.return, t4);
      }
    }
    var Nu = false, Au = false, Ru = false, _u = "function" == typeof WeakSet ? WeakSet : Set, ju = null;
    function Lu(e3, t3, n3) {
      var r2 = n3.flags;
      switch (n3.tag) {
        case 0:
        case 11:
        case 15:
          Ku(e3, n3), 4 & r2 && mu(5, n3);
          break;
        case 1:
          if (Ku(e3, n3), 4 & r2) if (e3 = n3.stateNode, null === t3) try {
            e3.componentDidMount();
          } catch (e4) {
            ks(n3, n3.return, e4);
          }
          else {
            var o2 = kl(n3.type, t3.memoizedProps);
            t3 = t3.memoizedState;
            try {
              e3.componentDidUpdate(o2, t3, e3.__reactInternalSnapshotBeforeUpdate);
            } catch (e4) {
              ks(n3, n3.return, e4);
            }
          }
          64 & r2 && gu(n3), 512 & r2 && wu(n3, n3.return);
          break;
        case 3:
          if (Ku(e3, n3), 64 & r2 && null !== (e3 = n3.updateQueue)) {
            if (t3 = null, null !== n3.child) switch (n3.child.tag) {
              case 27:
              case 5:
              case 1:
                t3 = n3.child.stateNode;
            }
            try {
              Pi(e3, t3);
            } catch (e4) {
              ks(n3, n3.return, e4);
            }
          }
          break;
        case 27:
          null === t3 && 4 & r2 && Tu(n3);
        case 26:
        case 5:
          Ku(e3, n3), null === t3 && 4 & r2 && Su(n3), 512 & r2 && wu(n3, n3.return);
          break;
        case 12:
          Ku(e3, n3);
          break;
        case 31:
          Ku(e3, n3), 4 & r2 && Uu(e3, n3);
          break;
        case 13:
          Ku(e3, n3), 4 & r2 && Bu(e3, n3), 64 & r2 && null !== (e3 = n3.memoizedState) && null !== (e3 = e3.dehydrated) && (function(e4, t4) {
            var n4 = e4.ownerDocument;
            if ("$~" === e4.data) e4._reactRetry = t4;
            else if ("$?" !== e4.data || "loading" !== n4.readyState) t4();
            else {
              var r3 = function() {
                t4(), n4.removeEventListener("DOMContentLoaded", r3);
              };
              n4.addEventListener("DOMContentLoaded", r3), e4._reactRetry = r3;
            }
          })(e3, n3 = Ps.bind(null, n3));
          break;
        case 22:
          if (!(r2 = null !== n3.memoizedState || Nu)) {
            t3 = null !== t3 && null !== t3.memoizedState || Au, o2 = Nu;
            var i2 = Au;
            Nu = r2, (Au = t3) && !i2 ? Yu(e3, n3, !!(8772 & n3.subtreeFlags)) : Ku(e3, n3), Nu = o2, Au = i2;
          }
          break;
        case 30:
          break;
        default:
          Ku(e3, n3);
      }
    }
    function Du(e3) {
      var t3 = e3.alternate;
      null !== t3 && (e3.alternate = null, Du(t3)), e3.child = null, e3.deletions = null, e3.sibling = null, 5 === e3.tag && null !== (t3 = e3.stateNode) && Qe(t3), e3.stateNode = null, e3.return = null, e3.dependencies = null, e3.memoizedProps = null, e3.memoizedState = null, e3.pendingProps = null, e3.stateNode = null, e3.updateQueue = null;
    }
    var Iu = null, zu = false;
    function Fu(e3, t3, n3) {
      for (n3 = n3.child; null !== n3; ) Mu(e3, t3, n3), n3 = n3.sibling;
    }
    function Mu(e3, t3, n3) {
      if (ge && "function" == typeof ge.onCommitFiberUnmount) try {
        ge.onCommitFiberUnmount(ye, n3);
      } catch (e4) {
      }
      switch (n3.tag) {
        case 26:
          Au || Eu(n3, t3), Fu(e3, t3, n3), n3.memoizedState ? n3.memoizedState.count-- : n3.stateNode && (n3 = n3.stateNode).parentNode.removeChild(n3);
          break;
        case 27:
          Au || Eu(n3, t3);
          var r2 = Iu, o2 = zu;
          Pf(n3.type) && (Iu = n3.stateNode, zu = false), Fu(e3, t3, n3), Mf(n3.stateNode), Iu = r2, zu = o2;
          break;
        case 5:
          Au || Eu(n3, t3);
        case 6:
          if (r2 = Iu, o2 = zu, Iu = null, Fu(e3, t3, n3), zu = o2, null !== (Iu = r2)) if (zu) try {
            (9 === Iu.nodeType ? Iu.body : "HTML" === Iu.nodeName ? Iu.ownerDocument.body : Iu).removeChild(n3.stateNode);
          } catch (e4) {
            ks(n3, t3, e4);
          }
          else try {
            Iu.removeChild(n3.stateNode);
          } catch (e4) {
            ks(n3, t3, e4);
          }
          break;
        case 18:
          null !== Iu && (zu ? (Tf(9 === (e3 = Iu).nodeType ? e3.body : "HTML" === e3.nodeName ? e3.ownerDocument.body : e3, n3.stateNode), $d(e3)) : Tf(Iu, n3.stateNode));
          break;
        case 4:
          r2 = Iu, o2 = zu, Iu = n3.stateNode.containerInfo, zu = true, Fu(e3, t3, n3), Iu = r2, zu = o2;
          break;
        case 0:
        case 11:
        case 14:
        case 15:
          yu(2, n3, t3), Au || yu(4, n3, t3), Fu(e3, t3, n3);
          break;
        case 1:
          Au || (Eu(n3, t3), "function" == typeof (r2 = n3.stateNode).componentWillUnmount && bu(n3, t3, r2)), Fu(e3, t3, n3);
          break;
        case 21:
          Fu(e3, t3, n3);
          break;
        case 22:
          Au = (r2 = Au) || null !== n3.memoizedState, Fu(e3, t3, n3), Au = r2;
          break;
        default:
          Fu(e3, t3, n3);
      }
    }
    function Uu(e3, t3) {
      if (null === t3.memoizedState && null !== (e3 = t3.alternate) && null !== (e3 = e3.memoizedState)) {
        e3 = e3.dehydrated;
        try {
          $d(e3);
        } catch (e4) {
          ks(t3, t3.return, e4);
        }
      }
    }
    function Bu(e3, t3) {
      if (null === t3.memoizedState && null !== (e3 = t3.alternate) && null !== (e3 = e3.memoizedState) && null !== (e3 = e3.dehydrated)) try {
        $d(e3);
      } catch (e4) {
        ks(t3, t3.return, e4);
      }
    }
    function Hu(e3, t3) {
      var n3 = (function(e4) {
        switch (e4.tag) {
          case 31:
          case 13:
          case 19:
            var t4 = e4.stateNode;
            return null === t4 && (t4 = e4.stateNode = new _u()), t4;
          case 22:
            return null === (t4 = (e4 = e4.stateNode)._retryCache) && (t4 = e4._retryCache = new _u()), t4;
          default:
            throw Error(a(435, e4.tag));
        }
      })(e3);
      t3.forEach(function(t4) {
        if (!n3.has(t4)) {
          n3.add(t4);
          var r2 = Ts.bind(null, e3, t4);
          t4.then(r2, r2);
        }
      });
    }
    function Wu(e3, t3) {
      var n3 = t3.deletions;
      if (null !== n3) for (var r2 = 0; r2 < n3.length; r2++) {
        var o2 = n3[r2], i2 = e3, l2 = t3, u2 = l2;
        e: for (; null !== u2; ) {
          switch (u2.tag) {
            case 27:
              if (Pf(u2.type)) {
                Iu = u2.stateNode, zu = false;
                break e;
              }
              break;
            case 5:
              Iu = u2.stateNode, zu = false;
              break e;
            case 3:
            case 4:
              Iu = u2.stateNode.containerInfo, zu = true;
              break e;
          }
          u2 = u2.return;
        }
        if (null === Iu) throw Error(a(160));
        Mu(i2, l2, o2), Iu = null, zu = false, null !== (i2 = o2.alternate) && (i2.return = null), o2.return = null;
      }
      if (13886 & t3.subtreeFlags) for (t3 = t3.child; null !== t3; ) $u(t3, e3), t3 = t3.sibling;
    }
    var qu = null;
    function $u(e3, t3) {
      var n3 = e3.alternate, r2 = e3.flags;
      switch (e3.tag) {
        case 0:
        case 11:
        case 14:
        case 15:
          Wu(t3, e3), Vu(e3), 4 & r2 && (yu(3, e3, e3.return), mu(3, e3), yu(5, e3, e3.return));
          break;
        case 1:
          Wu(t3, e3), Vu(e3), 512 & r2 && (Au || null === n3 || Eu(n3, n3.return)), 64 & r2 && Nu && null !== (e3 = e3.updateQueue) && null !== (r2 = e3.callbacks) && (n3 = e3.shared.hiddenCallbacks, e3.shared.hiddenCallbacks = null === n3 ? r2 : n3.concat(r2));
          break;
        case 26:
          var o2 = qu;
          if (Wu(t3, e3), Vu(e3), 512 & r2 && (Au || null === n3 || Eu(n3, n3.return)), 4 & r2) {
            var i2 = null !== n3 ? n3.memoizedState : null;
            if (r2 = e3.memoizedState, null === n3) if (null === r2) if (null === e3.stateNode) {
              e: {
                r2 = e3.type, n3 = e3.memoizedProps, o2 = o2.ownerDocument || o2;
                t: switch (r2) {
                  case "title":
                    (!(i2 = o2.getElementsByTagName("title")[0]) || i2[Ke] || i2[Be] || "http://www.w3.org/2000/svg" === i2.namespaceURI || i2.hasAttribute("itemprop")) && (i2 = o2.createElement(r2), o2.head.insertBefore(i2, o2.querySelector("head > title"))), pf(i2, r2, n3), i2[Be] = e3, et(i2), r2 = i2;
                    break e;
                  case "link":
                    var l2 = rd("link", "href", o2).get(r2 + (n3.href || ""));
                    if (l2) {
                      for (var u2 = 0; u2 < l2.length; u2++) if ((i2 = l2[u2]).getAttribute("href") === (null == n3.href || "" === n3.href ? null : n3.href) && i2.getAttribute("rel") === (null == n3.rel ? null : n3.rel) && i2.getAttribute("title") === (null == n3.title ? null : n3.title) && i2.getAttribute("crossorigin") === (null == n3.crossOrigin ? null : n3.crossOrigin)) {
                        l2.splice(u2, 1);
                        break t;
                      }
                    }
                    pf(i2 = o2.createElement(r2), r2, n3), o2.head.appendChild(i2);
                    break;
                  case "meta":
                    if (l2 = rd("meta", "content", o2).get(r2 + (n3.content || ""))) {
                      for (u2 = 0; u2 < l2.length; u2++) if ((i2 = l2[u2]).getAttribute("content") === (null == n3.content ? null : "" + n3.content) && i2.getAttribute("name") === (null == n3.name ? null : n3.name) && i2.getAttribute("property") === (null == n3.property ? null : n3.property) && i2.getAttribute("http-equiv") === (null == n3.httpEquiv ? null : n3.httpEquiv) && i2.getAttribute("charset") === (null == n3.charSet ? null : n3.charSet)) {
                        l2.splice(u2, 1);
                        break t;
                      }
                    }
                    pf(i2 = o2.createElement(r2), r2, n3), o2.head.appendChild(i2);
                    break;
                  default:
                    throw Error(a(468, r2));
                }
                i2[Be] = e3, et(i2), r2 = i2;
              }
              e3.stateNode = r2;
            } else od(o2, e3.type, e3.stateNode);
            else e3.stateNode = Jf(o2, r2, e3.memoizedProps);
            else i2 !== r2 ? (null === i2 ? null !== n3.stateNode && (n3 = n3.stateNode).parentNode.removeChild(n3) : i2.count--, null === r2 ? od(o2, e3.type, e3.stateNode) : Jf(o2, r2, e3.memoizedProps)) : null === r2 && null !== e3.stateNode && ku(e3, e3.memoizedProps, n3.memoizedProps);
          }
          break;
        case 27:
          Wu(t3, e3), Vu(e3), 512 & r2 && (Au || null === n3 || Eu(n3, n3.return)), null !== n3 && 4 & r2 && ku(e3, e3.memoizedProps, n3.memoizedProps);
          break;
        case 5:
          if (Wu(t3, e3), Vu(e3), 512 & r2 && (Au || null === n3 || Eu(n3, n3.return)), 32 & e3.flags) {
            o2 = e3.stateNode;
            try {
              xt(o2, "");
            } catch (t4) {
              ks(e3, e3.return, t4);
            }
          }
          4 & r2 && null != e3.stateNode && ku(e3, o2 = e3.memoizedProps, null !== n3 ? n3.memoizedProps : o2), 1024 & r2 && (Ru = true);
          break;
        case 6:
          if (Wu(t3, e3), Vu(e3), 4 & r2) {
            if (null === e3.stateNode) throw Error(a(162));
            r2 = e3.memoizedProps, n3 = e3.stateNode;
            try {
              n3.nodeValue = r2;
            } catch (t4) {
              ks(e3, e3.return, t4);
            }
          }
          break;
        case 3:
          if (nd = null, o2 = qu, qu = Hf(t3.containerInfo), Wu(t3, e3), qu = o2, Vu(e3), 4 & r2 && null !== n3 && n3.memoizedState.isDehydrated) try {
            $d(t3.containerInfo);
          } catch (t4) {
            ks(e3, e3.return, t4);
          }
          Ru && (Ru = false, Gu(e3));
          break;
        case 4:
          r2 = qu, qu = Hf(e3.stateNode.containerInfo), Wu(t3, e3), Vu(e3), qu = r2;
          break;
        case 12:
        default:
          Wu(t3, e3), Vu(e3);
          break;
        case 31:
        case 19:
          Wu(t3, e3), Vu(e3), 4 & r2 && null !== (r2 = e3.updateQueue) && (e3.updateQueue = null, Hu(e3, r2));
          break;
        case 13:
          Wu(t3, e3), Vu(e3), 8192 & e3.child.flags && null !== e3.memoizedState != (null !== n3 && null !== n3.memoizedState) && (_c = ue()), 4 & r2 && null !== (r2 = e3.updateQueue) && (e3.updateQueue = null, Hu(e3, r2));
          break;
        case 22:
          o2 = null !== e3.memoizedState;
          var c2 = null !== n3 && null !== n3.memoizedState, s2 = Nu, f2 = Au;
          if (Nu = s2 || o2, Au = f2 || c2, Wu(t3, e3), Au = f2, Nu = s2, Vu(e3), 8192 & r2) e: for (t3 = e3.stateNode, t3._visibility = o2 ? -2 & t3._visibility : 1 | t3._visibility, o2 && (null === n3 || c2 || Nu || Au || Qu(e3)), n3 = null, t3 = e3; ; ) {
            if (5 === t3.tag || 26 === t3.tag) {
              if (null === n3) {
                c2 = n3 = t3;
                try {
                  if (i2 = c2.stateNode, o2) "function" == typeof (l2 = i2.style).setProperty ? l2.setProperty("display", "none", "important") : l2.display = "none";
                  else {
                    u2 = c2.stateNode;
                    var d2 = c2.memoizedProps.style, p2 = null != d2 && d2.hasOwnProperty("display") ? d2.display : null;
                    u2.style.display = null == p2 || "boolean" == typeof p2 ? "" : ("" + p2).trim();
                  }
                } catch (e4) {
                  ks(c2, c2.return, e4);
                }
              }
            } else if (6 === t3.tag) {
              if (null === n3) {
                c2 = t3;
                try {
                  c2.stateNode.nodeValue = o2 ? "" : c2.memoizedProps;
                } catch (e4) {
                  ks(c2, c2.return, e4);
                }
              }
            } else if (18 === t3.tag) {
              if (null === n3) {
                c2 = t3;
                try {
                  var h2 = c2.stateNode;
                  o2 ? Nf(h2, true) : Nf(c2.stateNode, false);
                } catch (e4) {
                  ks(c2, c2.return, e4);
                }
              }
            } else if ((22 !== t3.tag && 23 !== t3.tag || null === t3.memoizedState || t3 === e3) && null !== t3.child) {
              t3.child.return = t3, t3 = t3.child;
              continue;
            }
            if (t3 === e3) break e;
            for (; null === t3.sibling; ) {
              if (null === t3.return || t3.return === e3) break e;
              n3 === t3 && (n3 = null), t3 = t3.return;
            }
            n3 === t3 && (n3 = null), t3.sibling.return = t3.return, t3 = t3.sibling;
          }
          4 & r2 && null !== (r2 = e3.updateQueue) && null !== (n3 = r2.retryQueue) && (r2.retryQueue = null, Hu(e3, n3));
        case 30:
        case 21:
      }
    }
    function Vu(e3) {
      var t3 = e3.flags;
      if (2 & t3) {
        try {
          for (var n3, r2 = e3.return; null !== r2; ) {
            if (xu(r2)) {
              n3 = r2;
              break;
            }
            r2 = r2.return;
          }
          if (null == n3) throw Error(a(160));
          switch (n3.tag) {
            case 27:
              var o2 = n3.stateNode;
              Pu(e3, Cu(e3), o2);
              break;
            case 5:
              var i2 = n3.stateNode;
              32 & n3.flags && (xt(i2, ""), n3.flags &= -33), Pu(e3, Cu(e3), i2);
              break;
            case 3:
            case 4:
              var l2 = n3.stateNode.containerInfo;
              Ou(e3, Cu(e3), l2);
              break;
            default:
              throw Error(a(161));
          }
        } catch (t4) {
          ks(e3, e3.return, t4);
        }
        e3.flags &= -3;
      }
      4096 & t3 && (e3.flags &= -4097);
    }
    function Gu(e3) {
      if (1024 & e3.subtreeFlags) for (e3 = e3.child; null !== e3; ) {
        var t3 = e3;
        Gu(t3), 5 === t3.tag && 1024 & t3.flags && t3.stateNode.reset(), e3 = e3.sibling;
      }
    }
    function Ku(e3, t3) {
      if (8772 & t3.subtreeFlags) for (t3 = t3.child; null !== t3; ) Lu(e3, t3.alternate, t3), t3 = t3.sibling;
    }
    function Qu(e3) {
      for (e3 = e3.child; null !== e3; ) {
        var t3 = e3;
        switch (t3.tag) {
          case 0:
          case 11:
          case 14:
          case 15:
            yu(4, t3, t3.return), Qu(t3);
            break;
          case 1:
            Eu(t3, t3.return);
            var n3 = t3.stateNode;
            "function" == typeof n3.componentWillUnmount && bu(t3, t3.return, n3), Qu(t3);
            break;
          case 27:
            Mf(t3.stateNode);
          case 26:
          case 5:
            Eu(t3, t3.return), Qu(t3);
            break;
          case 22:
            null === t3.memoizedState && Qu(t3);
            break;
          default:
            Qu(t3);
        }
        e3 = e3.sibling;
      }
    }
    function Yu(e3, t3, n3) {
      for (n3 = n3 && !!(8772 & t3.subtreeFlags), t3 = t3.child; null !== t3; ) {
        var r2 = t3.alternate, o2 = e3, i2 = t3, a2 = i2.flags;
        switch (i2.tag) {
          case 0:
          case 11:
          case 15:
            Yu(o2, i2, n3), mu(4, i2);
            break;
          case 1:
            if (Yu(o2, i2, n3), "function" == typeof (o2 = (r2 = i2).stateNode).componentDidMount) try {
              o2.componentDidMount();
            } catch (e4) {
              ks(r2, r2.return, e4);
            }
            if (null !== (o2 = (r2 = i2).updateQueue)) {
              var l2 = r2.stateNode;
              try {
                var u2 = o2.shared.hiddenCallbacks;
                if (null !== u2) for (o2.shared.hiddenCallbacks = null, o2 = 0; o2 < u2.length; o2++) Oi(u2[o2], l2);
              } catch (e4) {
                ks(r2, r2.return, e4);
              }
            }
            n3 && 64 & a2 && gu(i2), wu(i2, i2.return);
            break;
          case 27:
            Tu(i2);
          case 26:
          case 5:
            Yu(o2, i2, n3), n3 && null === r2 && 4 & a2 && Su(i2), wu(i2, i2.return);
            break;
          case 12:
            Yu(o2, i2, n3);
            break;
          case 31:
            Yu(o2, i2, n3), n3 && 4 & a2 && Uu(o2, i2);
            break;
          case 13:
            Yu(o2, i2, n3), n3 && 4 & a2 && Bu(o2, i2);
            break;
          case 22:
            null === i2.memoizedState && Yu(o2, i2, n3), wu(i2, i2.return);
            break;
          case 30:
            break;
          default:
            Yu(o2, i2, n3);
        }
        t3 = t3.sibling;
      }
    }
    function Xu(e3, t3) {
      var n3 = null;
      null !== e3 && null !== e3.memoizedState && null !== e3.memoizedState.cachePool && (n3 = e3.memoizedState.cachePool.pool), e3 = null, null !== t3.memoizedState && null !== t3.memoizedState.cachePool && (e3 = t3.memoizedState.cachePool.pool), e3 !== n3 && (null != e3 && e3.refCount++, null != n3 && Bo(n3));
    }
    function Ju(e3, t3) {
      e3 = null, null !== t3.alternate && (e3 = t3.alternate.memoizedState.cache), (t3 = t3.memoizedState.cache) !== e3 && (t3.refCount++, null != e3 && Bo(e3));
    }
    function Zu(e3, t3, n3, r2) {
      if (10256 & t3.subtreeFlags) for (t3 = t3.child; null !== t3; ) ec(e3, t3, n3, r2), t3 = t3.sibling;
    }
    function ec(e3, t3, n3, r2) {
      var o2 = t3.flags;
      switch (t3.tag) {
        case 0:
        case 11:
        case 15:
          Zu(e3, t3, n3, r2), 2048 & o2 && mu(9, t3);
          break;
        case 1:
        case 31:
        case 13:
        default:
          Zu(e3, t3, n3, r2);
          break;
        case 3:
          Zu(e3, t3, n3, r2), 2048 & o2 && (e3 = null, null !== t3.alternate && (e3 = t3.alternate.memoizedState.cache), (t3 = t3.memoizedState.cache) !== e3 && (t3.refCount++, null != e3 && Bo(e3)));
          break;
        case 12:
          if (2048 & o2) {
            Zu(e3, t3, n3, r2), e3 = t3.stateNode;
            try {
              var i2 = t3.memoizedProps, a2 = i2.id, l2 = i2.onPostCommit;
              "function" == typeof l2 && l2(a2, null === t3.alternate ? "mount" : "update", e3.passiveEffectDuration, -0);
            } catch (e4) {
              ks(t3, t3.return, e4);
            }
          } else Zu(e3, t3, n3, r2);
          break;
        case 23:
          break;
        case 22:
          i2 = t3.stateNode, a2 = t3.alternate, null !== t3.memoizedState ? 2 & i2._visibility ? Zu(e3, t3, n3, r2) : nc(e3, t3) : 2 & i2._visibility ? Zu(e3, t3, n3, r2) : (i2._visibility |= 2, tc(e3, t3, n3, r2, !!(10256 & t3.subtreeFlags) || false)), 2048 & o2 && Xu(a2, t3);
          break;
        case 24:
          Zu(e3, t3, n3, r2), 2048 & o2 && Ju(t3.alternate, t3);
      }
    }
    function tc(e3, t3, n3, r2, o2) {
      for (o2 = o2 && (!!(10256 & t3.subtreeFlags) || false), t3 = t3.child; null !== t3; ) {
        var i2 = e3, a2 = t3, l2 = n3, u2 = r2, c2 = a2.flags;
        switch (a2.tag) {
          case 0:
          case 11:
          case 15:
            tc(i2, a2, l2, u2, o2), mu(8, a2);
            break;
          case 23:
            break;
          case 22:
            var s2 = a2.stateNode;
            null !== a2.memoizedState ? 2 & s2._visibility ? tc(i2, a2, l2, u2, o2) : nc(i2, a2) : (s2._visibility |= 2, tc(i2, a2, l2, u2, o2)), o2 && 2048 & c2 && Xu(a2.alternate, a2);
            break;
          case 24:
            tc(i2, a2, l2, u2, o2), o2 && 2048 & c2 && Ju(a2.alternate, a2);
            break;
          default:
            tc(i2, a2, l2, u2, o2);
        }
        t3 = t3.sibling;
      }
    }
    function nc(e3, t3) {
      if (10256 & t3.subtreeFlags) for (t3 = t3.child; null !== t3; ) {
        var n3 = e3, r2 = t3, o2 = r2.flags;
        switch (r2.tag) {
          case 22:
            nc(n3, r2), 2048 & o2 && Xu(r2.alternate, r2);
            break;
          case 24:
            nc(n3, r2), 2048 & o2 && Ju(r2.alternate, r2);
            break;
          default:
            nc(n3, r2);
        }
        t3 = t3.sibling;
      }
    }
    var rc = 8192;
    function oc(e3, t3, n3) {
      if (e3.subtreeFlags & rc) for (e3 = e3.child; null !== e3; ) ic(e3, t3, n3), e3 = e3.sibling;
    }
    function ic(e3, t3, n3) {
      switch (e3.tag) {
        case 26:
          oc(e3, t3, n3), e3.flags & rc && null !== e3.memoizedState && (function(e4, t4, n4, r3) {
            if (!("stylesheet" !== n4.type || "string" == typeof r3.media && false === matchMedia(r3.media).matches || 4 & n4.state.loading)) {
              if (null === n4.instance) {
                var o2 = Gf(r3.href), i2 = t4.querySelector(Kf(o2));
                if (i2) return null !== (t4 = i2._p) && "object" == typeof t4 && "function" == typeof t4.then && (e4.count++, e4 = ld.bind(e4), t4.then(e4, e4)), n4.state.loading |= 4, n4.instance = i2, void et(i2);
                i2 = t4.ownerDocument || t4, r3 = Qf(r3), (o2 = Uf.get(o2)) && ed(r3, o2), et(i2 = i2.createElement("link"));
                var a2 = i2;
                a2._p = new Promise(function(e5, t5) {
                  a2.onload = e5, a2.onerror = t5;
                }), pf(i2, "link", r3), n4.instance = i2;
              }
              null === e4.stylesheets && (e4.stylesheets = /* @__PURE__ */ new Map()), e4.stylesheets.set(n4, t4), (t4 = n4.state.preload) && !(3 & n4.state.loading) && (e4.count++, n4 = ld.bind(e4), t4.addEventListener("load", n4), t4.addEventListener("error", n4));
            }
          })(n3, qu, e3.memoizedState, e3.memoizedProps);
          break;
        case 5:
        default:
          oc(e3, t3, n3);
          break;
        case 3:
        case 4:
          var r2 = qu;
          qu = Hf(e3.stateNode.containerInfo), oc(e3, t3, n3), qu = r2;
          break;
        case 22:
          null === e3.memoizedState && (null !== (r2 = e3.alternate) && null !== r2.memoizedState ? (r2 = rc, rc = 16777216, oc(e3, t3, n3), rc = r2) : oc(e3, t3, n3));
      }
    }
    function ac(e3) {
      var t3 = e3.alternate;
      if (null !== t3 && null !== (e3 = t3.child)) {
        t3.child = null;
        do {
          t3 = e3.sibling, e3.sibling = null, e3 = t3;
        } while (null !== e3);
      }
    }
    function lc(e3) {
      var t3 = e3.deletions;
      if (16 & e3.flags) {
        if (null !== t3) for (var n3 = 0; n3 < t3.length; n3++) {
          var r2 = t3[n3];
          ju = r2, sc(r2, e3);
        }
        ac(e3);
      }
      if (10256 & e3.subtreeFlags) for (e3 = e3.child; null !== e3; ) uc(e3), e3 = e3.sibling;
    }
    function uc(e3) {
      switch (e3.tag) {
        case 0:
        case 11:
        case 15:
          lc(e3), 2048 & e3.flags && yu(9, e3, e3.return);
          break;
        case 3:
        case 12:
        default:
          lc(e3);
          break;
        case 22:
          var t3 = e3.stateNode;
          null !== e3.memoizedState && 2 & t3._visibility && (null === e3.return || 13 !== e3.return.tag) ? (t3._visibility &= -3, cc(e3)) : lc(e3);
      }
    }
    function cc(e3) {
      var t3 = e3.deletions;
      if (16 & e3.flags) {
        if (null !== t3) for (var n3 = 0; n3 < t3.length; n3++) {
          var r2 = t3[n3];
          ju = r2, sc(r2, e3);
        }
        ac(e3);
      }
      for (e3 = e3.child; null !== e3; ) {
        switch ((t3 = e3).tag) {
          case 0:
          case 11:
          case 15:
            yu(8, t3, t3.return), cc(t3);
            break;
          case 22:
            2 & (n3 = t3.stateNode)._visibility && (n3._visibility &= -3, cc(t3));
            break;
          default:
            cc(t3);
        }
        e3 = e3.sibling;
      }
    }
    function sc(e3, t3) {
      for (; null !== ju; ) {
        var n3 = ju;
        switch (n3.tag) {
          case 0:
          case 11:
          case 15:
            yu(8, n3, t3);
            break;
          case 23:
          case 22:
            if (null !== n3.memoizedState && null !== n3.memoizedState.cachePool) {
              var r2 = n3.memoizedState.cachePool.pool;
              null != r2 && r2.refCount++;
            }
            break;
          case 24:
            Bo(n3.memoizedState.cache);
        }
        if (null !== (r2 = n3.child)) r2.return = n3, ju = r2;
        else e: for (n3 = e3; null !== ju; ) {
          var o2 = (r2 = ju).sibling, i2 = r2.return;
          if (Du(r2), r2 === n3) {
            ju = null;
            break e;
          }
          if (null !== o2) {
            o2.return = i2, ju = o2;
            break e;
          }
          ju = i2;
        }
      }
    }
    var fc = { getCacheForType: function(e3) {
      var t3 = jo(Mo), n3 = t3.data.get(e3);
      return void 0 === n3 && (n3 = e3(), t3.data.set(e3, n3)), n3;
    }, cacheSignal: function() {
      return jo(Mo).controller.signal;
    } }, dc = "function" == typeof WeakMap ? WeakMap : Map, pc = 0, hc = null, vc = null, mc = 0, yc = 0, gc = null, bc = false, wc = false, Ec = false, Sc = 0, kc = 0, xc = 0, Cc = 0, Oc = 0, Pc = 0, Tc = 0, Nc = null, Ac = null, Rc = false, _c = 0, jc = 0, Lc = 1 / 0, Dc = null, Ic = null, zc = 0, Fc = null, Mc = null, Uc = 0, Bc = 0, Hc = null, Wc = null, qc = 0, $c = null;
    function Vc() {
      return 2 & pc && 0 !== mc ? mc & -mc : null !== L.T ? Hs() : Fe();
    }
    function Gc() {
      if (0 === Pc) if (536870912 & mc && !fo) Pc = 536870912;
      else {
        var e3 = xe;
        !(3932160 & (xe <<= 1)) && (xe = 262144), Pc = e3;
      }
      return null !== (e3 = ji.current) && (e3.flags |= 32), Pc;
    }
    function Kc(e3, t3, n3) {
      (e3 !== hc || 2 !== yc && 9 !== yc) && null === e3.cancelPendingCommit || (ts(e3, 0), Jc(e3, mc, Pc, false)), _e(e3, n3), 2 & pc && e3 === hc || (e3 === hc && (!(2 & pc) && (Cc |= n3), 4 === kc && Jc(e3, mc, Pc, false)), Ds(e3));
    }
    function Qc(e3, t3, n3) {
      if (6 & pc) throw Error(a(327));
      for (var r2 = !n3 && !(127 & t3) && 0 === (t3 & e3.expiredLanes) || Te(e3, t3), o2 = r2 ? (function(e4, t4) {
        var n4 = pc;
        pc |= 2;
        var r3 = os(), o3 = is();
        hc !== e4 || mc !== t4 ? (Dc = null, Lc = ue() + 500, ts(e4, t4)) : wc = Te(e4, t4);
        e: for (; ; ) try {
          if (0 !== yc && null !== vc) {
            t4 = vc;
            var i3 = gc;
            t: switch (yc) {
              case 1:
                yc = 0, gc = null, ds(e4, t4, i3, 1);
                break;
              case 2:
              case 9:
                if (ni(i3)) {
                  yc = 0, gc = null, fs(t4);
                  break;
                }
                t4 = function() {
                  2 !== yc && 9 !== yc || hc !== e4 || (yc = 7), Ds(e4);
                }, i3.then(t4, t4);
                break e;
              case 3:
                yc = 7;
                break e;
              case 4:
                yc = 5;
                break e;
              case 7:
                ni(i3) ? (yc = 0, gc = null, fs(t4)) : (yc = 0, gc = null, ds(e4, t4, i3, 7));
                break;
              case 5:
                var l3 = null;
                switch (vc.tag) {
                  case 26:
                    l3 = vc.memoizedState;
                  case 5:
                  case 27:
                    var u3 = vc;
                    if (l3 ? id(l3) : u3.stateNode.complete) {
                      yc = 0, gc = null;
                      var c3 = u3.sibling;
                      if (null !== c3) vc = c3;
                      else {
                        var s2 = u3.return;
                        null !== s2 ? (vc = s2, ps(s2)) : vc = null;
                      }
                      break t;
                    }
                }
                yc = 0, gc = null, ds(e4, t4, i3, 5);
                break;
              case 6:
                yc = 0, gc = null, ds(e4, t4, i3, 6);
                break;
              case 8:
                es(), kc = 6;
                break e;
              default:
                throw Error(a(462));
            }
          }
          cs();
          break;
        } catch (t5) {
          ns(e4, t5);
        }
        return Co = xo = null, L.H = r3, L.A = o3, pc = n4, null !== vc ? 0 : (hc = null, mc = 0, Ar(), kc);
      })(e3, t3) : ls(e3, t3, true), i2 = r2; ; ) {
        if (0 === o2) {
          wc && !r2 && Jc(e3, t3, 0, false);
          break;
        }
        if (n3 = e3.current.alternate, !i2 || Xc(n3)) {
          if (2 === o2) {
            if (i2 = t3, e3.errorRecoveryDisabledLanes & i2) var l2 = 0;
            else l2 = 0 != (l2 = -536870913 & e3.pendingLanes) ? l2 : 536870912 & l2 ? 536870912 : 0;
            if (0 !== l2) {
              t3 = l2;
              e: {
                var u2 = e3;
                o2 = Nc;
                var c2 = u2.current.memoizedState.isDehydrated;
                if (c2 && (ts(u2, l2).flags |= 256), 2 !== (l2 = ls(u2, l2, false))) {
                  if (Ec && !c2) {
                    u2.errorRecoveryDisabledLanes |= i2, Cc |= i2, o2 = 4;
                    break e;
                  }
                  i2 = Ac, Ac = o2, null !== i2 && (null === Ac ? Ac = i2 : Ac.push.apply(Ac, i2));
                }
                o2 = l2;
              }
              if (i2 = false, 2 !== o2) continue;
            }
          }
          if (1 === o2) {
            ts(e3, 0), Jc(e3, t3, 0, true);
            break;
          }
          e: {
            switch (r2 = e3, i2 = o2) {
              case 0:
              case 1:
                throw Error(a(345));
              case 4:
                if ((4194048 & t3) !== t3) break;
              case 6:
                Jc(r2, t3, Pc, !bc);
                break e;
              case 2:
                Ac = null;
                break;
              case 3:
              case 5:
                break;
              default:
                throw Error(a(329));
            }
            if ((62914560 & t3) === t3 && 10 < (o2 = _c + 300 - ue())) {
              if (Jc(r2, t3, Pc, !bc), 0 !== Pe(r2, 0, true)) break e;
              Uc = t3, r2.timeoutHandle = Sf(Yc.bind(null, r2, n3, Ac, Dc, Rc, t3, Pc, Cc, Tc, bc, i2, "Throttled", -0, 0), o2);
            } else Yc(r2, n3, Ac, Dc, Rc, t3, Pc, Cc, Tc, bc, i2, null, -0, 0);
          }
          break;
        }
        o2 = ls(e3, t3, false), i2 = false;
      }
      Ds(e3);
    }
    function Yc(e3, t3, n3, r2, o2, i2, a2, l2, u2, c2, s2, f2, d2, p2) {
      if (e3.timeoutHandle = -1, 8192 & (f2 = t3.subtreeFlags) || !(16785408 & ~f2)) {
        ic(t3, i2, f2 = { stylesheets: null, count: 0, imgCount: 0, imgBytes: 0, suspenseyImages: [], waitingForImages: true, waitingForViewTransition: false, unsuspend: _t });
        var h2 = (62914560 & i2) === i2 ? _c - ue() : (4194048 & i2) === i2 ? jc - ue() : 0;
        if (null !== (h2 = (function(e4, t4) {
          return e4.stylesheets && 0 === e4.count && cd(e4, e4.stylesheets), 0 < e4.count || 0 < e4.imgCount ? function(n4) {
            var r3 = setTimeout(function() {
              if (e4.stylesheets && cd(e4, e4.stylesheets), e4.unsuspend) {
                var t5 = e4.unsuspend;
                e4.unsuspend = null, t5();
              }
            }, 6e4 + t4);
            0 < e4.imgBytes && 0 === ad && (ad = 62500 * (function() {
              if ("function" == typeof performance.getEntriesByType) {
                for (var e5 = 0, t5 = 0, n5 = performance.getEntriesByType("resource"), r4 = 0; r4 < n5.length; r4++) {
                  var o4 = n5[r4], i3 = o4.transferSize, a3 = o4.initiatorType, l3 = o4.duration;
                  if (i3 && l3 && hf(a3)) {
                    for (a3 = 0, l3 = o4.responseEnd, r4 += 1; r4 < n5.length; r4++) {
                      var u3 = n5[r4], c3 = u3.startTime;
                      if (c3 > l3) break;
                      var s3 = u3.transferSize, f3 = u3.initiatorType;
                      s3 && hf(f3) && (a3 += s3 * ((u3 = u3.responseEnd) < l3 ? 1 : (l3 - c3) / (u3 - c3)));
                    }
                    if (--r4, t5 += 8 * (i3 + a3) / (o4.duration / 1e3), 10 < ++e5) break;
                  }
                }
                if (0 < e5) return t5 / e5 / 1e6;
              }
              return navigator.connection && "number" == typeof (e5 = navigator.connection.downlink) ? e5 : 5;
            })());
            var o3 = setTimeout(function() {
              if (e4.waitingForImages = false, 0 === e4.count && (e4.stylesheets && cd(e4, e4.stylesheets), e4.unsuspend)) {
                var t5 = e4.unsuspend;
                e4.unsuspend = null, t5();
              }
            }, (e4.imgBytes > ad ? 50 : 800) + t4);
            return e4.unsuspend = n4, function() {
              e4.unsuspend = null, clearTimeout(r3), clearTimeout(o3);
            };
          } : null;
        })(f2, h2))) return Uc = i2, e3.cancelPendingCommit = h2(vs.bind(null, e3, t3, i2, n3, r2, o2, a2, l2, u2, s2, f2, null, d2, p2)), void Jc(e3, i2, a2, !c2);
      }
      vs(e3, t3, i2, n3, r2, o2, a2, l2, u2);
    }
    function Xc(e3) {
      for (var t3 = e3; ; ) {
        var n3 = t3.tag;
        if ((0 === n3 || 11 === n3 || 15 === n3) && 16384 & t3.flags && null !== (n3 = t3.updateQueue) && null !== (n3 = n3.stores)) for (var r2 = 0; r2 < n3.length; r2++) {
          var o2 = n3[r2], i2 = o2.getSnapshot;
          o2 = o2.value;
          try {
            if (!Jn(i2(), o2)) return false;
          } catch (e4) {
            return false;
          }
        }
        if (n3 = t3.child, 16384 & t3.subtreeFlags && null !== n3) n3.return = t3, t3 = n3;
        else {
          if (t3 === e3) break;
          for (; null === t3.sibling; ) {
            if (null === t3.return || t3.return === e3) return true;
            t3 = t3.return;
          }
          t3.sibling.return = t3.return, t3 = t3.sibling;
        }
      }
      return true;
    }
    function Jc(e3, t3, n3, r2) {
      t3 &= ~Oc, t3 &= ~Cc, e3.suspendedLanes |= t3, e3.pingedLanes &= ~t3, r2 && (e3.warmLanes |= t3), r2 = e3.expirationTimes;
      for (var o2 = t3; 0 < o2; ) {
        var i2 = 31 - we(o2), a2 = 1 << i2;
        r2[i2] = -1, o2 &= ~a2;
      }
      0 !== n3 && je(e3, n3, t3);
    }
    function Zc() {
      return !!(6 & pc) || (Is(0, false), false);
    }
    function es() {
      if (null !== vc) {
        if (0 === yc) var e3 = vc.return;
        else Co = xo = null, la(e3 = vc), ui = null, ci = 0, e3 = vc;
        for (; null !== e3; ) vu(e3.alternate, e3), e3 = e3.return;
        vc = null;
      }
    }
    function ts(e3, t3) {
      var n3 = e3.timeoutHandle;
      -1 !== n3 && (e3.timeoutHandle = -1, kf(n3)), null !== (n3 = e3.cancelPendingCommit) && (e3.cancelPendingCommit = null, n3()), Uc = 0, es(), hc = e3, vc = n3 = Ur(e3.current, null), mc = t3, yc = 0, gc = null, bc = false, wc = Te(e3, t3), Ec = false, Tc = Pc = Oc = Cc = xc = kc = 0, Ac = Nc = null, Rc = false, 8 & t3 && (t3 |= 32 & t3);
      var r2 = e3.entangledLanes;
      if (0 !== r2) for (e3 = e3.entanglements, r2 &= t3; 0 < r2; ) {
        var o2 = 31 - we(r2), i2 = 1 << o2;
        t3 |= e3[o2], r2 &= ~i2;
      }
      return Sc = t3, Ar(), n3;
    }
    function ns(e3, t3) {
      Wi = null, L.H = vl, t3 === Jo || t3 === ei ? (t3 = ai(), yc = 3) : t3 === Zo ? (t3 = ai(), yc = 4) : yc = t3 === _l ? 8 : null !== t3 && "object" == typeof t3 && "function" == typeof t3.then ? 6 : 1, gc = t3, null === vc && (kc = 1, Pl(e3, Kr(t3, e3.current)));
    }
    function rs() {
      var e3 = ji.current;
      return null === e3 || ((4194048 & mc) === mc ? null === Li : !!((62914560 & mc) === mc || 536870912 & mc) && e3 === Li);
    }
    function os() {
      var e3 = L.H;
      return L.H = vl, null === e3 ? vl : e3;
    }
    function is() {
      var e3 = L.A;
      return L.A = fc, e3;
    }
    function as() {
      kc = 4, bc || (4194048 & mc) !== mc && null !== ji.current || (wc = true), !(134217727 & xc) && !(134217727 & Cc) || null === hc || Jc(hc, mc, Pc, false);
    }
    function ls(e3, t3, n3) {
      var r2 = pc;
      pc |= 2;
      var o2 = os(), i2 = is();
      hc === e3 && mc === t3 || (Dc = null, ts(e3, t3)), t3 = false;
      var a2 = kc;
      e: for (; ; ) try {
        if (0 !== yc && null !== vc) {
          var l2 = vc, u2 = gc;
          switch (yc) {
            case 8:
              es(), a2 = 6;
              break e;
            case 3:
            case 2:
            case 9:
            case 6:
              null === ji.current && (t3 = true);
              var c2 = yc;
              if (yc = 0, gc = null, ds(e3, l2, u2, c2), n3 && wc) {
                a2 = 0;
                break e;
              }
              break;
            default:
              c2 = yc, yc = 0, gc = null, ds(e3, l2, u2, c2);
          }
        }
        us(), a2 = kc;
        break;
      } catch (t4) {
        ns(e3, t4);
      }
      return t3 && e3.shellSuspendCounter++, Co = xo = null, pc = r2, L.H = o2, L.A = i2, null === vc && (hc = null, mc = 0, Ar()), a2;
    }
    function us() {
      for (; null !== vc; ) ss(vc);
    }
    function cs() {
      for (; null !== vc && !ae(); ) ss(vc);
    }
    function ss(e3) {
      var t3 = au(e3.alternate, e3, Sc);
      e3.memoizedProps = e3.pendingProps, null === t3 ? ps(e3) : vc = t3;
    }
    function fs(e3) {
      var t3 = e3, n3 = t3.alternate;
      switch (t3.tag) {
        case 15:
        case 0:
          t3 = $l(n3, t3, t3.pendingProps, t3.type, void 0, mc);
          break;
        case 11:
          t3 = $l(n3, t3, t3.pendingProps, t3.type.render, t3.ref, mc);
          break;
        case 5:
          la(t3);
        default:
          vu(n3, t3), t3 = au(n3, t3 = vc = Br(t3, Sc), Sc);
      }
      e3.memoizedProps = e3.pendingProps, null === t3 ? ps(e3) : vc = t3;
    }
    function ds(e3, t3, n3, r2) {
      Co = xo = null, la(t3), ui = null, ci = 0;
      var o2 = t3.return;
      try {
        if ((function(e4, t4, n4, r3, o3) {
          if (n4.flags |= 32768, null !== r3 && "object" == typeof r3 && "function" == typeof r3.then) {
            if (null !== (t4 = n4.alternate) && Ao(t4, n4, o3, true), null !== (n4 = ji.current)) {
              switch (n4.tag) {
                case 31:
                case 13:
                  return null === Li ? as() : null === n4.alternate && 0 === kc && (kc = 3), n4.flags &= -257, n4.flags |= 65536, n4.lanes = o3, r3 === ti ? n4.flags |= 16384 : (null === (t4 = n4.updateQueue) ? n4.updateQueue = /* @__PURE__ */ new Set([r3]) : t4.add(r3), xs(e4, r3, o3)), false;
                case 22:
                  return n4.flags |= 65536, r3 === ti ? n4.flags |= 16384 : (null === (t4 = n4.updateQueue) ? (t4 = { transitions: null, markerInstances: null, retryQueue: /* @__PURE__ */ new Set([r3]) }, n4.updateQueue = t4) : null === (n4 = t4.retryQueue) ? t4.retryQueue = /* @__PURE__ */ new Set([r3]) : n4.add(r3), xs(e4, r3, o3)), false;
              }
              throw Error(a(435, n4.tag));
            }
            return xs(e4, r3, o3), as(), false;
          }
          if (fo) return null !== (t4 = ji.current) ? (!(65536 & t4.flags) && (t4.flags |= 256), t4.flags |= 65536, t4.lanes = o3, r3 !== vo && So(Kr(e4 = Error(a(422), { cause: r3 }), n4))) : (r3 !== vo && So(Kr(t4 = Error(a(423), { cause: r3 }), n4)), (e4 = e4.current.alternate).flags |= 65536, o3 &= -o3, e4.lanes |= o3, r3 = Kr(r3, n4), Si(e4, o3 = Nl(e4.stateNode, r3, o3)), 4 !== kc && (kc = 2)), false;
          var i2 = Error(a(520), { cause: r3 });
          if (i2 = Kr(i2, n4), null === Nc ? Nc = [i2] : Nc.push(i2), 4 !== kc && (kc = 2), null === t4) return true;
          r3 = Kr(r3, n4), n4 = t4;
          do {
            switch (n4.tag) {
              case 3:
                return n4.flags |= 65536, e4 = o3 & -o3, n4.lanes |= e4, Si(n4, e4 = Nl(n4.stateNode, r3, e4)), false;
              case 1:
                if (t4 = n4.type, i2 = n4.stateNode, !(128 & n4.flags || "function" != typeof t4.getDerivedStateFromError && (null === i2 || "function" != typeof i2.componentDidCatch || null !== Ic && Ic.has(i2)))) return n4.flags |= 65536, o3 &= -o3, n4.lanes |= o3, Rl(o3 = Al(o3), e4, n4, r3), Si(n4, o3), false;
            }
            n4 = n4.return;
          } while (null !== n4);
          return false;
        })(e3, o2, t3, n3, mc)) return kc = 1, Pl(e3, Kr(n3, e3.current)), void (vc = null);
      } catch (t4) {
        if (null !== o2) throw vc = o2, t4;
        return kc = 1, Pl(e3, Kr(n3, e3.current)), void (vc = null);
      }
      32768 & t3.flags ? (fo || 1 === r2 ? e3 = true : wc || 536870912 & mc ? e3 = false : (bc = e3 = true, (2 === r2 || 9 === r2 || 3 === r2 || 6 === r2) && null !== (r2 = ji.current) && 13 === r2.tag && (r2.flags |= 16384)), hs(t3, e3)) : ps(t3);
    }
    function ps(e3) {
      var t3 = e3;
      do {
        if (32768 & t3.flags) return void hs(t3, bc);
        e3 = t3.return;
        var n3 = pu(t3.alternate, t3, Sc);
        if (null !== n3) return void (vc = n3);
        if (null !== (t3 = t3.sibling)) return void (vc = t3);
        vc = t3 = e3;
      } while (null !== t3);
      0 === kc && (kc = 5);
    }
    function hs(e3, t3) {
      do {
        var n3 = hu(e3.alternate, e3);
        if (null !== n3) return n3.flags &= 32767, void (vc = n3);
        if (null !== (n3 = e3.return) && (n3.flags |= 32768, n3.subtreeFlags = 0, n3.deletions = null), !t3 && null !== (e3 = e3.sibling)) return void (vc = e3);
        vc = e3 = n3;
      } while (null !== e3);
      kc = 6, vc = null;
    }
    function vs(e3, t3, n3, r2, o2, i2, l2, u2, c2) {
      e3.cancelPendingCommit = null;
      do {
        ws();
      } while (0 !== zc);
      if (6 & pc) throw Error(a(327));
      if (null !== t3) {
        if (t3 === e3.current) throw Error(a(177));
        if (i2 = t3.lanes | t3.childLanes, (function(e4, t4, n4, r3, o3, i3) {
          var a2 = e4.pendingLanes;
          e4.pendingLanes = n4, e4.suspendedLanes = 0, e4.pingedLanes = 0, e4.warmLanes = 0, e4.expiredLanes &= n4, e4.entangledLanes &= n4, e4.errorRecoveryDisabledLanes &= n4, e4.shellSuspendCounter = 0;
          var l3 = e4.entanglements, u3 = e4.expirationTimes, c3 = e4.hiddenUpdates;
          for (n4 = a2 & ~n4; 0 < n4; ) {
            var s2 = 31 - we(n4), f2 = 1 << s2;
            l3[s2] = 0, u3[s2] = -1;
            var d2 = c3[s2];
            if (null !== d2) for (c3[s2] = null, s2 = 0; s2 < d2.length; s2++) {
              var p2 = d2[s2];
              null !== p2 && (p2.lane &= -536870913);
            }
            n4 &= ~f2;
          }
          0 !== r3 && je(e4, r3, 0), 0 !== i3 && 0 === o3 && 0 !== e4.tag && (e4.suspendedLanes |= i3 & ~(a2 & ~t4));
        })(e3, n3, i2 |= Nr, l2, u2, c2), e3 === hc && (vc = hc = null, mc = 0), Mc = t3, Fc = e3, Uc = n3, Bc = i2, Hc = o2, Wc = r2, 10256 & t3.subtreeFlags || 10256 & t3.flags ? (e3.callbackNode = null, e3.callbackPriority = 0, oe(de, function() {
          return Es(), null;
        })) : (e3.callbackNode = null, e3.callbackPriority = 0), r2 = !!(13878 & t3.flags), 13878 & t3.subtreeFlags || r2) {
          r2 = L.T, L.T = null, o2 = D.p, D.p = 2, l2 = pc, pc |= 4;
          try {
            !(function(e4, t4) {
              if (e4 = e4.containerInfo, vf = wd, or(e4 = rr(e4))) {
                if ("selectionStart" in e4) var n4 = { start: e4.selectionStart, end: e4.selectionEnd };
                else e: {
                  var r3 = (n4 = (n4 = e4.ownerDocument) && n4.defaultView || window).getSelection && n4.getSelection();
                  if (r3 && 0 !== r3.rangeCount) {
                    n4 = r3.anchorNode;
                    var o3 = r3.anchorOffset, i3 = r3.focusNode;
                    r3 = r3.focusOffset;
                    try {
                      n4.nodeType, i3.nodeType;
                    } catch (e5) {
                      n4 = null;
                      break e;
                    }
                    var l3 = 0, u3 = -1, c3 = -1, s2 = 0, f2 = 0, d2 = e4, p2 = null;
                    t: for (; ; ) {
                      for (var h2; d2 !== n4 || 0 !== o3 && 3 !== d2.nodeType || (u3 = l3 + o3), d2 !== i3 || 0 !== r3 && 3 !== d2.nodeType || (c3 = l3 + r3), 3 === d2.nodeType && (l3 += d2.nodeValue.length), null !== (h2 = d2.firstChild); ) p2 = d2, d2 = h2;
                      for (; ; ) {
                        if (d2 === e4) break t;
                        if (p2 === n4 && ++s2 === o3 && (u3 = l3), p2 === i3 && ++f2 === r3 && (c3 = l3), null !== (h2 = d2.nextSibling)) break;
                        p2 = (d2 = p2).parentNode;
                      }
                      d2 = h2;
                    }
                    n4 = -1 === u3 || -1 === c3 ? null : { start: u3, end: c3 };
                  } else n4 = null;
                }
                n4 = n4 || { start: 0, end: 0 };
              } else n4 = null;
              for (mf = { focusedElem: e4, selectionRange: n4 }, wd = false, ju = t4; null !== ju; ) if (e4 = (t4 = ju).child, 1028 & t4.subtreeFlags && null !== e4) e4.return = t4, ju = e4;
              else for (; null !== ju; ) {
                switch (i3 = (t4 = ju).alternate, e4 = t4.flags, t4.tag) {
                  case 0:
                    if (4 & e4 && null !== (e4 = null !== (e4 = t4.updateQueue) ? e4.events : null)) for (n4 = 0; n4 < e4.length; n4++) (o3 = e4[n4]).ref.impl = o3.nextImpl;
                    break;
                  case 11:
                  case 15:
                  case 5:
                  case 26:
                  case 27:
                  case 6:
                  case 4:
                  case 17:
                    break;
                  case 1:
                    if (1024 & e4 && null !== i3) {
                      e4 = void 0, n4 = t4, o3 = i3.memoizedProps, i3 = i3.memoizedState, r3 = n4.stateNode;
                      try {
                        var v2 = kl(n4.type, o3);
                        e4 = r3.getSnapshotBeforeUpdate(v2, i3), r3.__reactInternalSnapshotBeforeUpdate = e4;
                      } catch (e5) {
                        ks(n4, n4.return, e5);
                      }
                    }
                    break;
                  case 3:
                    if (1024 & e4) {
                      if (9 === (n4 = (e4 = t4.stateNode.containerInfo).nodeType)) Af(e4);
                      else if (1 === n4) switch (e4.nodeName) {
                        case "HEAD":
                        case "HTML":
                        case "BODY":
                          Af(e4);
                          break;
                        default:
                          e4.textContent = "";
                      }
                    }
                    break;
                  default:
                    if (1024 & e4) throw Error(a(163));
                }
                if (null !== (e4 = t4.sibling)) {
                  e4.return = t4.return, ju = e4;
                  break;
                }
                ju = t4.return;
              }
            })(e3, t3);
          } finally {
            pc = l2, D.p = o2, L.T = r2;
          }
        }
        zc = 1, ms(), ys(), gs();
      }
    }
    function ms() {
      if (1 === zc) {
        zc = 0;
        var e3 = Fc, t3 = Mc, n3 = !!(13878 & t3.flags);
        if (13878 & t3.subtreeFlags || n3) {
          n3 = L.T, L.T = null;
          var r2 = D.p;
          D.p = 2;
          var o2 = pc;
          pc |= 4;
          try {
            $u(t3, e3);
            var i2 = mf, a2 = rr(e3.containerInfo), l2 = i2.focusedElem, u2 = i2.selectionRange;
            if (a2 !== l2 && l2 && l2.ownerDocument && nr(l2.ownerDocument.documentElement, l2)) {
              if (null !== u2 && or(l2)) {
                var c2 = u2.start, s2 = u2.end;
                if (void 0 === s2 && (s2 = c2), "selectionStart" in l2) l2.selectionStart = c2, l2.selectionEnd = Math.min(s2, l2.value.length);
                else {
                  var f2 = l2.ownerDocument || document, d2 = f2 && f2.defaultView || window;
                  if (d2.getSelection) {
                    var p2 = d2.getSelection(), h2 = l2.textContent.length, v2 = Math.min(u2.start, h2), m2 = void 0 === u2.end ? v2 : Math.min(u2.end, h2);
                    !p2.extend && v2 > m2 && (a2 = m2, m2 = v2, v2 = a2);
                    var y2 = tr(l2, v2), g2 = tr(l2, m2);
                    if (y2 && g2 && (1 !== p2.rangeCount || p2.anchorNode !== y2.node || p2.anchorOffset !== y2.offset || p2.focusNode !== g2.node || p2.focusOffset !== g2.offset)) {
                      var b2 = f2.createRange();
                      b2.setStart(y2.node, y2.offset), p2.removeAllRanges(), v2 > m2 ? (p2.addRange(b2), p2.extend(g2.node, g2.offset)) : (b2.setEnd(g2.node, g2.offset), p2.addRange(b2));
                    }
                  }
                }
              }
              for (f2 = [], p2 = l2; p2 = p2.parentNode; ) 1 === p2.nodeType && f2.push({ element: p2, left: p2.scrollLeft, top: p2.scrollTop });
              for ("function" == typeof l2.focus && l2.focus(), l2 = 0; l2 < f2.length; l2++) {
                var w2 = f2[l2];
                w2.element.scrollLeft = w2.left, w2.element.scrollTop = w2.top;
              }
            }
            wd = !!vf, mf = vf = null;
          } finally {
            pc = o2, D.p = r2, L.T = n3;
          }
        }
        e3.current = t3, zc = 2;
      }
    }
    function ys() {
      if (2 === zc) {
        zc = 0;
        var e3 = Fc, t3 = Mc, n3 = !!(8772 & t3.flags);
        if (8772 & t3.subtreeFlags || n3) {
          n3 = L.T, L.T = null;
          var r2 = D.p;
          D.p = 2;
          var o2 = pc;
          pc |= 4;
          try {
            Lu(e3, t3.alternate, t3);
          } finally {
            pc = o2, D.p = r2, L.T = n3;
          }
        }
        zc = 3;
      }
    }
    function gs() {
      if (4 === zc || 3 === zc) {
        zc = 0, le();
        var e3 = Fc, t3 = Mc, n3 = Uc, r2 = Wc;
        10256 & t3.subtreeFlags || 10256 & t3.flags ? zc = 5 : (zc = 0, Mc = Fc = null, bs(e3, e3.pendingLanes));
        var o2 = e3.pendingLanes;
        if (0 === o2 && (Ic = null), ze(n3), t3 = t3.stateNode, ge && "function" == typeof ge.onCommitFiberRoot) try {
          ge.onCommitFiberRoot(ye, t3, void 0, !(128 & ~t3.current.flags));
        } catch (e4) {
        }
        if (null !== r2) {
          t3 = L.T, o2 = D.p, D.p = 2, L.T = null;
          try {
            for (var i2 = e3.onRecoverableError, a2 = 0; a2 < r2.length; a2++) {
              var l2 = r2[a2];
              i2(l2.value, { componentStack: l2.stack });
            }
          } finally {
            L.T = t3, D.p = o2;
          }
        }
        3 & Uc && ws(), Ds(e3), o2 = e3.pendingLanes, 261930 & n3 && 42 & o2 ? e3 === $c ? qc++ : (qc = 0, $c = e3) : qc = 0, Is(0, false);
      }
    }
    function bs(e3, t3) {
      0 === (e3.pooledCacheLanes &= t3) && null != (t3 = e3.pooledCache) && (e3.pooledCache = null, Bo(t3));
    }
    function ws() {
      return ms(), ys(), gs(), Es();
    }
    function Es() {
      if (5 !== zc) return false;
      var e3 = Fc, t3 = Bc;
      Bc = 0;
      var n3 = ze(Uc), r2 = L.T, o2 = D.p;
      try {
        D.p = 32 > n3 ? 32 : n3, L.T = null, n3 = Hc, Hc = null;
        var i2 = Fc, l2 = Uc;
        if (zc = 0, Mc = Fc = null, Uc = 0, 6 & pc) throw Error(a(331));
        var u2 = pc;
        if (pc |= 4, uc(i2.current), ec(i2, i2.current, l2, n3), pc = u2, Is(0, false), ge && "function" == typeof ge.onPostCommitFiberRoot) try {
          ge.onPostCommitFiberRoot(ye, i2);
        } catch (e4) {
        }
        return true;
      } finally {
        D.p = o2, L.T = r2, bs(e3, t3);
      }
    }
    function Ss(e3, t3, n3) {
      t3 = Kr(n3, t3), null !== (e3 = wi(e3, t3 = Nl(e3.stateNode, t3, 2), 2)) && (_e(e3, 2), Ds(e3));
    }
    function ks(e3, t3, n3) {
      if (3 === e3.tag) Ss(e3, e3, n3);
      else for (; null !== t3; ) {
        if (3 === t3.tag) {
          Ss(t3, e3, n3);
          break;
        }
        if (1 === t3.tag) {
          var r2 = t3.stateNode;
          if ("function" == typeof t3.type.getDerivedStateFromError || "function" == typeof r2.componentDidCatch && (null === Ic || !Ic.has(r2))) {
            e3 = Kr(n3, e3), null !== (r2 = wi(t3, n3 = Al(2), 2)) && (Rl(n3, r2, t3, e3), _e(r2, 2), Ds(r2));
            break;
          }
        }
        t3 = t3.return;
      }
    }
    function xs(e3, t3, n3) {
      var r2 = e3.pingCache;
      if (null === r2) {
        r2 = e3.pingCache = new dc();
        var o2 = /* @__PURE__ */ new Set();
        r2.set(t3, o2);
      } else void 0 === (o2 = r2.get(t3)) && (o2 = /* @__PURE__ */ new Set(), r2.set(t3, o2));
      o2.has(n3) || (Ec = true, o2.add(n3), e3 = Cs.bind(null, e3, t3, n3), t3.then(e3, e3));
    }
    function Cs(e3, t3, n3) {
      var r2 = e3.pingCache;
      null !== r2 && r2.delete(t3), e3.pingedLanes |= e3.suspendedLanes & n3, e3.warmLanes &= ~n3, hc === e3 && (mc & n3) === n3 && (4 === kc || 3 === kc && (62914560 & mc) === mc && 300 > ue() - _c ? !(2 & pc) && ts(e3, 0) : Oc |= n3, Tc === mc && (Tc = 0)), Ds(e3);
    }
    function Os(e3, t3) {
      0 === t3 && (t3 = Ae()), null !== (e3 = jr(e3, t3)) && (_e(e3, t3), Ds(e3));
    }
    function Ps(e3) {
      var t3 = e3.memoizedState, n3 = 0;
      null !== t3 && (n3 = t3.retryLane), Os(e3, n3);
    }
    function Ts(e3, t3) {
      var n3 = 0;
      switch (e3.tag) {
        case 31:
        case 13:
          var r2 = e3.stateNode, o2 = e3.memoizedState;
          null !== o2 && (n3 = o2.retryLane);
          break;
        case 19:
          r2 = e3.stateNode;
          break;
        case 22:
          r2 = e3.stateNode._retryCache;
          break;
        default:
          throw Error(a(314));
      }
      null !== r2 && r2.delete(t3), Os(e3, n3);
    }
    var Ns = null, As = null, Rs = false, _s = false, js = false, Ls = 0;
    function Ds(e3) {
      e3 !== As && null === e3.next && (null === As ? Ns = As = e3 : As = As.next = e3), _s = true, Rs || (Rs = true, Cf(function() {
        6 & pc ? oe(se, zs) : Fs();
      }));
    }
    function Is(e3, t3) {
      if (!js && _s) {
        js = true;
        do {
          for (var n3 = false, r2 = Ns; null !== r2; ) {
            if (!t3) if (0 !== e3) {
              var o2 = r2.pendingLanes;
              if (0 === o2) var i2 = 0;
              else {
                var a2 = r2.suspendedLanes, l2 = r2.pingedLanes;
                i2 = (1 << 31 - we(42 | e3) + 1) - 1, i2 = 201326741 & (i2 &= o2 & ~(a2 & ~l2)) ? 201326741 & i2 | 1 : i2 ? 2 | i2 : 0;
              }
              0 !== i2 && (n3 = true, Bs(r2, i2));
            } else i2 = mc, !(3 & (i2 = Pe(r2, r2 === hc ? i2 : 0, null !== r2.cancelPendingCommit || -1 !== r2.timeoutHandle))) || Te(r2, i2) || (n3 = true, Bs(r2, i2));
            r2 = r2.next;
          }
        } while (n3);
        js = false;
      }
    }
    function zs() {
      Fs();
    }
    function Fs() {
      _s = Rs = false;
      var e3, t3 = 0;
      0 !== Ls && ((e3 = window.event) && "popstate" === e3.type ? e3 !== Ef && (Ef = e3, 1) : (Ef = null, 0)) && (t3 = Ls);
      for (var n3 = ue(), r2 = null, o2 = Ns; null !== o2; ) {
        var i2 = o2.next, a2 = Ms(o2, n3);
        0 === a2 ? (o2.next = null, null === r2 ? Ns = i2 : r2.next = i2, null === i2 && (As = r2)) : (r2 = o2, (0 !== t3 || 3 & a2) && (_s = true)), o2 = i2;
      }
      0 !== zc && 5 !== zc || Is(t3, false), 0 !== Ls && (Ls = 0);
    }
    function Ms(e3, t3) {
      for (var n3 = e3.suspendedLanes, r2 = e3.pingedLanes, o2 = e3.expirationTimes, i2 = -62914561 & e3.pendingLanes; 0 < i2; ) {
        var a2 = 31 - we(i2), l2 = 1 << a2, u2 = o2[a2];
        -1 === u2 ? 0 !== (l2 & n3) && 0 === (l2 & r2) || (o2[a2] = Ne(l2, t3)) : u2 <= t3 && (e3.expiredLanes |= l2), i2 &= ~l2;
      }
      if (n3 = mc, n3 = Pe(e3, e3 === (t3 = hc) ? n3 : 0, null !== e3.cancelPendingCommit || -1 !== e3.timeoutHandle), r2 = e3.callbackNode, 0 === n3 || e3 === t3 && (2 === yc || 9 === yc) || null !== e3.cancelPendingCommit) return null !== r2 && null !== r2 && ie(r2), e3.callbackNode = null, e3.callbackPriority = 0;
      if (!(3 & n3) || Te(e3, n3)) {
        if ((t3 = n3 & -n3) === e3.callbackPriority) return t3;
        switch (null !== r2 && ie(r2), ze(n3)) {
          case 2:
          case 8:
            n3 = fe;
            break;
          case 32:
          default:
            n3 = de;
            break;
          case 268435456:
            n3 = he;
        }
        return r2 = Us.bind(null, e3), n3 = oe(n3, r2), e3.callbackPriority = t3, e3.callbackNode = n3, t3;
      }
      return null !== r2 && null !== r2 && ie(r2), e3.callbackPriority = 2, e3.callbackNode = null, 2;
    }
    function Us(e3, t3) {
      if (0 !== zc && 5 !== zc) return e3.callbackNode = null, e3.callbackPriority = 0, null;
      var n3 = e3.callbackNode;
      if (ws() && e3.callbackNode !== n3) return null;
      var r2 = mc;
      return 0 === (r2 = Pe(e3, e3 === hc ? r2 : 0, null !== e3.cancelPendingCommit || -1 !== e3.timeoutHandle)) ? null : (Qc(e3, r2, t3), Ms(e3, ue()), null != e3.callbackNode && e3.callbackNode === n3 ? Us.bind(null, e3) : null);
    }
    function Bs(e3, t3) {
      if (ws()) return null;
      Qc(e3, t3, true);
    }
    function Hs() {
      if (0 === Ls) {
        var e3 = qo;
        0 === e3 && (e3 = ke, !(261888 & (ke <<= 1)) && (ke = 256)), Ls = e3;
      }
      return Ls;
    }
    function Ws(e3) {
      return null == e3 || "symbol" == typeof e3 || "boolean" == typeof e3 ? null : "function" == typeof e3 ? e3 : Rt("" + e3);
    }
    function qs(e3, t3) {
      var n3 = t3.ownerDocument.createElement("input");
      return n3.name = t3.name, n3.value = t3.value, e3.id && n3.setAttribute("form", e3.id), t3.parentNode.insertBefore(n3, t3), e3 = new FormData(e3), n3.parentNode.removeChild(n3), e3;
    }
    for (var $s = 0; $s < xr.length; $s++) {
      var Vs = xr[$s];
      Cr(Vs.toLowerCase(), "on" + (Vs[0].toUpperCase() + Vs.slice(1)));
    }
    Cr(mr, "onAnimationEnd"), Cr(yr, "onAnimationIteration"), Cr(gr, "onAnimationStart"), Cr("dblclick", "onDoubleClick"), Cr("focusin", "onFocus"), Cr("focusout", "onBlur"), Cr(br, "onTransitionRun"), Cr(wr, "onTransitionStart"), Cr(Er, "onTransitionCancel"), Cr(Sr, "onTransitionEnd"), ot("onMouseEnter", ["mouseout", "mouseover"]), ot("onMouseLeave", ["mouseout", "mouseover"]), ot("onPointerEnter", ["pointerout", "pointerover"]), ot("onPointerLeave", ["pointerout", "pointerover"]), rt("onChange", "change click focusin focusout input keydown keyup selectionchange".split(" ")), rt("onSelect", "focusout contextmenu dragend focusin keydown keyup mousedown mouseup selectionchange".split(" ")), rt("onBeforeInput", ["compositionend", "keypress", "textInput", "paste"]), rt("onCompositionEnd", "compositionend focusout keydown keypress keyup mousedown".split(" ")), rt("onCompositionStart", "compositionstart focusout keydown keypress keyup mousedown".split(" ")), rt("onCompositionUpdate", "compositionupdate focusout keydown keypress keyup mousedown".split(" "));
    var Gs = "abort canplay canplaythrough durationchange emptied encrypted ended error loadeddata loadedmetadata loadstart pause play playing progress ratechange resize seeked seeking stalled suspend timeupdate volumechange waiting".split(" "), Ks = new Set("beforetoggle cancel close invalid load scroll scrollend toggle".split(" ").concat(Gs));
    function Qs(e3, t3) {
      t3 = !!(4 & t3);
      for (var n3 = 0; n3 < e3.length; n3++) {
        var r2 = e3[n3], o2 = r2.event;
        r2 = r2.listeners;
        e: {
          var i2 = void 0;
          if (t3) for (var a2 = r2.length - 1; 0 <= a2; a2--) {
            var l2 = r2[a2], u2 = l2.instance, c2 = l2.currentTarget;
            if (l2 = l2.listener, u2 !== i2 && o2.isPropagationStopped()) break e;
            i2 = l2, o2.currentTarget = c2;
            try {
              i2(o2);
            } catch (e4) {
              Or(e4);
            }
            o2.currentTarget = null, i2 = u2;
          }
          else for (a2 = 0; a2 < r2.length; a2++) {
            if (u2 = (l2 = r2[a2]).instance, c2 = l2.currentTarget, l2 = l2.listener, u2 !== i2 && o2.isPropagationStopped()) break e;
            i2 = l2, o2.currentTarget = c2;
            try {
              i2(o2);
            } catch (e4) {
              Or(e4);
            }
            o2.currentTarget = null, i2 = u2;
          }
        }
      }
    }
    function Ys(e3, t3) {
      var n3 = t3[qe];
      void 0 === n3 && (n3 = t3[qe] = /* @__PURE__ */ new Set());
      var r2 = e3 + "__bubble";
      n3.has(r2) || (ef(t3, e3, 2, false), n3.add(r2));
    }
    function Xs(e3, t3, n3) {
      var r2 = 0;
      t3 && (r2 |= 4), ef(n3, e3, r2, t3);
    }
    var Js = "_reactListening" + Math.random().toString(36).slice(2);
    function Zs(e3) {
      if (!e3[Js]) {
        e3[Js] = true, tt.forEach(function(t4) {
          "selectionchange" !== t4 && (Ks.has(t4) || Xs(t4, false, e3), Xs(t4, true, e3));
        });
        var t3 = 9 === e3.nodeType ? e3 : e3.ownerDocument;
        null === t3 || t3[Js] || (t3[Js] = true, Xs("selectionchange", false, t3));
      }
    }
    function ef(e3, t3, n3, r2) {
      switch (Pd(t3)) {
        case 2:
          var o2 = Ed;
          break;
        case 8:
          o2 = Sd;
          break;
        default:
          o2 = kd;
      }
      n3 = o2.bind(null, t3, n3, e3), o2 = void 0, !Ht || "touchstart" !== t3 && "touchmove" !== t3 && "wheel" !== t3 || (o2 = true), r2 ? void 0 !== o2 ? e3.addEventListener(t3, n3, { capture: true, passive: o2 }) : e3.addEventListener(t3, n3, true) : void 0 !== o2 ? e3.addEventListener(t3, n3, { passive: o2 }) : e3.addEventListener(t3, n3, false);
    }
    function tf(e3, t3, n3, r2, o2) {
      var i2 = r2;
      if (!(1 & t3 || 2 & t3 || null === r2)) e: for (; ; ) {
        if (null === r2) return;
        var a2 = r2.tag;
        if (3 === a2 || 4 === a2) {
          var l2 = r2.stateNode.containerInfo;
          if (l2 === o2) break;
          if (4 === a2) for (a2 = r2.return; null !== a2; ) {
            var c2 = a2.tag;
            if ((3 === c2 || 4 === c2) && a2.stateNode.containerInfo === o2) return;
            a2 = a2.return;
          }
          for (; null !== l2; ) {
            if (null === (a2 = Ye(l2))) return;
            if (5 === (c2 = a2.tag) || 6 === c2 || 26 === c2 || 27 === c2) {
              r2 = i2 = a2;
              continue e;
            }
            l2 = l2.parentNode;
          }
        }
        r2 = r2.return;
      }
      Mt(function() {
        var r3 = i2, o3 = Lt(n3), a3 = [];
        e: {
          var l3 = kr.get(e3);
          if (void 0 !== l3) {
            var c3 = nn, s2 = e3;
            switch (e3) {
              case "keypress":
                if (0 === Kt(n3)) break e;
              case "keydown":
              case "keyup":
                c3 = gn;
                break;
              case "focusin":
                s2 = "focus", c3 = cn;
                break;
              case "focusout":
                s2 = "blur", c3 = cn;
                break;
              case "beforeblur":
              case "afterblur":
                c3 = cn;
                break;
              case "click":
                if (2 === n3.button) break e;
              case "auxclick":
              case "dblclick":
              case "mousedown":
              case "mousemove":
              case "mouseup":
              case "mouseout":
              case "mouseover":
              case "contextmenu":
                c3 = ln;
                break;
              case "drag":
              case "dragend":
              case "dragenter":
              case "dragexit":
              case "dragleave":
              case "dragover":
              case "dragstart":
              case "drop":
                c3 = un;
                break;
              case "touchcancel":
              case "touchend":
              case "touchmove":
              case "touchstart":
                c3 = wn;
                break;
              case mr:
              case yr:
              case gr:
                c3 = sn;
                break;
              case Sr:
                c3 = En;
                break;
              case "scroll":
              case "scrollend":
                c3 = on;
                break;
              case "wheel":
                c3 = Sn;
                break;
              case "copy":
              case "cut":
              case "paste":
                c3 = fn;
                break;
              case "gotpointercapture":
              case "lostpointercapture":
              case "pointercancel":
              case "pointerdown":
              case "pointermove":
              case "pointerout":
              case "pointerover":
              case "pointerup":
                c3 = bn;
                break;
              case "toggle":
              case "beforetoggle":
                c3 = kn;
            }
            var f2 = !!(4 & t3), d2 = !f2 && ("scroll" === e3 || "scrollend" === e3), p2 = f2 ? null !== l3 ? l3 + "Capture" : null : l3;
            f2 = [];
            for (var h2, v2 = r3; null !== v2; ) {
              var m2 = v2;
              if (h2 = m2.stateNode, 5 !== (m2 = m2.tag) && 26 !== m2 && 27 !== m2 || null === h2 || null === p2 || null != (m2 = Ut(v2, p2)) && f2.push(nf(v2, m2, h2)), d2) break;
              v2 = v2.return;
            }
            0 < f2.length && (l3 = new c3(l3, s2, null, n3, o3), a3.push({ event: l3, listeners: f2 }));
          }
        }
        if (!(7 & t3)) {
          if (c3 = "mouseout" === e3 || "pointerout" === e3, (!(l3 = "mouseover" === e3 || "pointerover" === e3) || n3 === jt || !(s2 = n3.relatedTarget || n3.fromElement) || !Ye(s2) && !s2[We]) && (c3 || l3) && (l3 = o3.window === o3 ? o3 : (l3 = o3.ownerDocument) ? l3.defaultView || l3.parentWindow : window, c3 ? (c3 = r3, null !== (s2 = (s2 = n3.relatedTarget || n3.toElement) ? Ye(s2) : null) && (d2 = u(s2), f2 = s2.tag, s2 !== d2 || 5 !== f2 && 27 !== f2 && 6 !== f2) && (s2 = null)) : (c3 = null, s2 = r3), c3 !== s2)) {
            if (f2 = ln, m2 = "onMouseLeave", p2 = "onMouseEnter", v2 = "mouse", "pointerout" !== e3 && "pointerover" !== e3 || (f2 = bn, m2 = "onPointerLeave", p2 = "onPointerEnter", v2 = "pointer"), d2 = null == c3 ? l3 : Je(c3), h2 = null == s2 ? l3 : Je(s2), (l3 = new f2(m2, v2 + "leave", c3, n3, o3)).target = d2, l3.relatedTarget = h2, m2 = null, Ye(o3) === r3 && ((f2 = new f2(p2, v2 + "enter", s2, n3, o3)).target = h2, f2.relatedTarget = d2, m2 = f2), d2 = m2, c3 && s2) e: {
              for (f2 = of, v2 = s2, h2 = 0, m2 = p2 = c3; m2; m2 = f2(m2)) h2++;
              m2 = 0;
              for (var y2 = v2; y2; y2 = f2(y2)) m2++;
              for (; 0 < h2 - m2; ) p2 = f2(p2), h2--;
              for (; 0 < m2 - h2; ) v2 = f2(v2), m2--;
              for (; h2--; ) {
                if (p2 === v2 || null !== v2 && p2 === v2.alternate) {
                  f2 = p2;
                  break e;
                }
                p2 = f2(p2), v2 = f2(v2);
              }
              f2 = null;
            }
            else f2 = null;
            null !== c3 && af(a3, l3, c3, f2, false), null !== s2 && null !== d2 && af(a3, d2, s2, f2, true);
          }
          if ("select" === (c3 = (l3 = r3 ? Je(r3) : window).nodeName && l3.nodeName.toLowerCase()) || "input" === c3 && "file" === l3.type) var g2 = Bn;
          else if (Dn(l3)) if (Hn) g2 = Xn;
          else {
            g2 = Qn;
            var b2 = Kn;
          }
          else !(c3 = l3.nodeName) || "input" !== c3.toLowerCase() || "checkbox" !== l3.type && "radio" !== l3.type ? r3 && Tt(r3.elementType) && (g2 = Bn) : g2 = Yn;
          switch (g2 && (g2 = g2(e3, r3)) ? In(a3, g2, n3, o3) : (b2 && b2(e3, l3, r3), "focusout" === e3 && r3 && "number" === l3.type && null != r3.memoizedProps.value && wt(l3, "number", l3.value)), b2 = r3 ? Je(r3) : window, e3) {
            case "focusin":
              (Dn(b2) || "true" === b2.contentEditable) && (ar = b2, lr = r3, ur = null);
              break;
            case "focusout":
              ur = lr = ar = null;
              break;
            case "mousedown":
              cr = true;
              break;
            case "contextmenu":
            case "mouseup":
            case "dragend":
              cr = false, sr(a3, n3, o3);
              break;
            case "selectionchange":
              if (ir) break;
            case "keydown":
            case "keyup":
              sr(a3, n3, o3);
          }
          var w2;
          if (Cn) e: {
            switch (e3) {
              case "compositionstart":
                var E2 = "onCompositionStart";
                break e;
              case "compositionend":
                E2 = "onCompositionEnd";
                break e;
              case "compositionupdate":
                E2 = "onCompositionUpdate";
                break e;
            }
            E2 = void 0;
          }
          else jn ? Rn(e3, n3) && (E2 = "onCompositionEnd") : "keydown" === e3 && 229 === n3.keyCode && (E2 = "onCompositionStart");
          E2 && (Tn && "ko" !== n3.locale && (jn || "onCompositionStart" !== E2 ? "onCompositionEnd" === E2 && jn && (w2 = Gt()) : ($t = "value" in (qt = o3) ? qt.value : qt.textContent, jn = true)), 0 < (b2 = rf(r3, E2)).length && (E2 = new dn(E2, e3, null, n3, o3), a3.push({ event: E2, listeners: b2 }), (w2 || null !== (w2 = _n(n3))) && (E2.data = w2))), (w2 = Pn ? (function(e4, t4) {
            switch (e4) {
              case "compositionend":
                return _n(t4);
              case "keypress":
                return 32 !== t4.which ? null : (An = true, Nn);
              case "textInput":
                return (e4 = t4.data) === Nn && An ? null : e4;
              default:
                return null;
            }
          })(e3, n3) : (function(e4, t4) {
            if (jn) return "compositionend" === e4 || !Cn && Rn(e4, t4) ? (e4 = Gt(), Vt = $t = qt = null, jn = false, e4) : null;
            switch (e4) {
              case "paste":
              default:
                return null;
              case "keypress":
                if (!(t4.ctrlKey || t4.altKey || t4.metaKey) || t4.ctrlKey && t4.altKey) {
                  if (t4.char && 1 < t4.char.length) return t4.char;
                  if (t4.which) return String.fromCharCode(t4.which);
                }
                return null;
              case "compositionend":
                return Tn && "ko" !== t4.locale ? null : t4.data;
            }
          })(e3, n3)) && 0 < (E2 = rf(r3, "onBeforeInput")).length && (b2 = new dn("onBeforeInput", "beforeinput", null, n3, o3), a3.push({ event: b2, listeners: E2 }), b2.data = w2), (function(e4, t4, n4, r4, o4) {
            if ("submit" === t4 && n4 && n4.stateNode === o4) {
              var i3 = Ws((o4[He] || null).action), a4 = r4.submitter;
              a4 && null !== (t4 = (t4 = a4[He] || null) ? Ws(t4.formAction) : a4.getAttribute("formAction")) && (i3 = t4, a4 = null);
              var l4 = new nn("action", "action", null, r4, o4);
              e4.push({ event: l4, listeners: [{ instance: null, listener: function() {
                if (r4.defaultPrevented) {
                  if (0 !== Ls) {
                    var e5 = a4 ? qs(o4, a4) : new FormData(o4);
                    tl(n4, { pending: true, data: e5, method: o4.method, action: i3 }, null, e5);
                  }
                } else "function" == typeof i3 && (l4.preventDefault(), e5 = a4 ? qs(o4, a4) : new FormData(o4), tl(n4, { pending: true, data: e5, method: o4.method, action: i3 }, i3, e5));
              }, currentTarget: o4 }] });
            }
          })(a3, e3, r3, n3, o3);
        }
        Qs(a3, t3);
      });
    }
    function nf(e3, t3, n3) {
      return { instance: e3, listener: t3, currentTarget: n3 };
    }
    function rf(e3, t3) {
      for (var n3 = t3 + "Capture", r2 = []; null !== e3; ) {
        var o2 = e3, i2 = o2.stateNode;
        if (5 !== (o2 = o2.tag) && 26 !== o2 && 27 !== o2 || null === i2 || (null != (o2 = Ut(e3, n3)) && r2.unshift(nf(e3, o2, i2)), null != (o2 = Ut(e3, t3)) && r2.push(nf(e3, o2, i2))), 3 === e3.tag) return r2;
        e3 = e3.return;
      }
      return [];
    }
    function of(e3) {
      if (null === e3) return null;
      do {
        e3 = e3.return;
      } while (e3 && 5 !== e3.tag && 27 !== e3.tag);
      return e3 || null;
    }
    function af(e3, t3, n3, r2, o2) {
      for (var i2 = t3._reactName, a2 = []; null !== n3 && n3 !== r2; ) {
        var l2 = n3, u2 = l2.alternate, c2 = l2.stateNode;
        if (l2 = l2.tag, null !== u2 && u2 === r2) break;
        5 !== l2 && 26 !== l2 && 27 !== l2 || null === c2 || (u2 = c2, o2 ? null != (c2 = Ut(n3, i2)) && a2.unshift(nf(n3, c2, u2)) : o2 || null != (c2 = Ut(n3, i2)) && a2.push(nf(n3, c2, u2))), n3 = n3.return;
      }
      0 !== a2.length && e3.push({ event: t3, listeners: a2 });
    }
    var lf = /\r\n?/g, uf = /\u0000|\uFFFD/g;
    function cf(e3) {
      return ("string" == typeof e3 ? e3 : "" + e3).replace(lf, "\n").replace(uf, "");
    }
    function sf(e3, t3) {
      return t3 = cf(t3), cf(e3) === t3;
    }
    function ff(e3, t3, n3, r2, o2, i2) {
      switch (n3) {
        case "children":
          "string" == typeof r2 ? "body" === t3 || "textarea" === t3 && "" === r2 || xt(e3, r2) : ("number" == typeof r2 || "bigint" == typeof r2) && "body" !== t3 && xt(e3, "" + r2);
          break;
        case "className":
          ct(e3, "class", r2);
          break;
        case "tabIndex":
          ct(e3, "tabindex", r2);
          break;
        case "dir":
        case "role":
        case "viewBox":
        case "width":
        case "height":
          ct(e3, n3, r2);
          break;
        case "style":
          Pt(e3, r2, i2);
          break;
        case "data":
          if ("object" !== t3) {
            ct(e3, "data", r2);
            break;
          }
        case "src":
        case "href":
          if ("" === r2 && ("a" !== t3 || "href" !== n3)) {
            e3.removeAttribute(n3);
            break;
          }
          if (null == r2 || "function" == typeof r2 || "symbol" == typeof r2 || "boolean" == typeof r2) {
            e3.removeAttribute(n3);
            break;
          }
          r2 = Rt("" + r2), e3.setAttribute(n3, r2);
          break;
        case "action":
        case "formAction":
          if ("function" == typeof r2) {
            e3.setAttribute(n3, "javascript:throw new Error('A React form was unexpectedly submitted. If you called form.submit() manually, consider using form.requestSubmit() instead. If you\\'re trying to use event.stopPropagation() in a submit event handler, consider also calling event.preventDefault().')");
            break;
          }
          if ("function" == typeof i2 && ("formAction" === n3 ? ("input" !== t3 && ff(e3, t3, "name", o2.name, o2, null), ff(e3, t3, "formEncType", o2.formEncType, o2, null), ff(e3, t3, "formMethod", o2.formMethod, o2, null), ff(e3, t3, "formTarget", o2.formTarget, o2, null)) : (ff(e3, t3, "encType", o2.encType, o2, null), ff(e3, t3, "method", o2.method, o2, null), ff(e3, t3, "target", o2.target, o2, null))), null == r2 || "symbol" == typeof r2 || "boolean" == typeof r2) {
            e3.removeAttribute(n3);
            break;
          }
          r2 = Rt("" + r2), e3.setAttribute(n3, r2);
          break;
        case "onClick":
          null != r2 && (e3.onclick = _t);
          break;
        case "onScroll":
          null != r2 && Ys("scroll", e3);
          break;
        case "onScrollEnd":
          null != r2 && Ys("scrollend", e3);
          break;
        case "dangerouslySetInnerHTML":
          if (null != r2) {
            if ("object" != typeof r2 || !("__html" in r2)) throw Error(a(61));
            if (null != (n3 = r2.__html)) {
              if (null != o2.children) throw Error(a(60));
              e3.innerHTML = n3;
            }
          }
          break;
        case "multiple":
          e3.multiple = r2 && "function" != typeof r2 && "symbol" != typeof r2;
          break;
        case "muted":
          e3.muted = r2 && "function" != typeof r2 && "symbol" != typeof r2;
          break;
        case "suppressContentEditableWarning":
        case "suppressHydrationWarning":
        case "defaultValue":
        case "defaultChecked":
        case "innerHTML":
        case "ref":
        case "autoFocus":
          break;
        case "xlinkHref":
          if (null == r2 || "function" == typeof r2 || "boolean" == typeof r2 || "symbol" == typeof r2) {
            e3.removeAttribute("xlink:href");
            break;
          }
          n3 = Rt("" + r2), e3.setAttributeNS("http://www.w3.org/1999/xlink", "xlink:href", n3);
          break;
        case "contentEditable":
        case "spellCheck":
        case "draggable":
        case "value":
        case "autoReverse":
        case "externalResourcesRequired":
        case "focusable":
        case "preserveAlpha":
          null != r2 && "function" != typeof r2 && "symbol" != typeof r2 ? e3.setAttribute(n3, "" + r2) : e3.removeAttribute(n3);
          break;
        case "inert":
        case "allowFullScreen":
        case "async":
        case "autoPlay":
        case "controls":
        case "default":
        case "defer":
        case "disabled":
        case "disablePictureInPicture":
        case "disableRemotePlayback":
        case "formNoValidate":
        case "hidden":
        case "loop":
        case "noModule":
        case "noValidate":
        case "open":
        case "playsInline":
        case "readOnly":
        case "required":
        case "reversed":
        case "scoped":
        case "seamless":
        case "itemScope":
          r2 && "function" != typeof r2 && "symbol" != typeof r2 ? e3.setAttribute(n3, "") : e3.removeAttribute(n3);
          break;
        case "capture":
        case "download":
          true === r2 ? e3.setAttribute(n3, "") : false !== r2 && null != r2 && "function" != typeof r2 && "symbol" != typeof r2 ? e3.setAttribute(n3, r2) : e3.removeAttribute(n3);
          break;
        case "cols":
        case "rows":
        case "size":
        case "span":
          null != r2 && "function" != typeof r2 && "symbol" != typeof r2 && !isNaN(r2) && 1 <= r2 ? e3.setAttribute(n3, r2) : e3.removeAttribute(n3);
          break;
        case "rowSpan":
        case "start":
          null == r2 || "function" == typeof r2 || "symbol" == typeof r2 || isNaN(r2) ? e3.removeAttribute(n3) : e3.setAttribute(n3, r2);
          break;
        case "popover":
          Ys("beforetoggle", e3), Ys("toggle", e3), ut(e3, "popover", r2);
          break;
        case "xlinkActuate":
          st(e3, "http://www.w3.org/1999/xlink", "xlink:actuate", r2);
          break;
        case "xlinkArcrole":
          st(e3, "http://www.w3.org/1999/xlink", "xlink:arcrole", r2);
          break;
        case "xlinkRole":
          st(e3, "http://www.w3.org/1999/xlink", "xlink:role", r2);
          break;
        case "xlinkShow":
          st(e3, "http://www.w3.org/1999/xlink", "xlink:show", r2);
          break;
        case "xlinkTitle":
          st(e3, "http://www.w3.org/1999/xlink", "xlink:title", r2);
          break;
        case "xlinkType":
          st(e3, "http://www.w3.org/1999/xlink", "xlink:type", r2);
          break;
        case "xmlBase":
          st(e3, "http://www.w3.org/XML/1998/namespace", "xml:base", r2);
          break;
        case "xmlLang":
          st(e3, "http://www.w3.org/XML/1998/namespace", "xml:lang", r2);
          break;
        case "xmlSpace":
          st(e3, "http://www.w3.org/XML/1998/namespace", "xml:space", r2);
          break;
        case "is":
          ut(e3, "is", r2);
          break;
        case "innerText":
        case "textContent":
          break;
        default:
          (!(2 < n3.length) || "o" !== n3[0] && "O" !== n3[0] || "n" !== n3[1] && "N" !== n3[1]) && ut(e3, n3 = Nt.get(n3) || n3, r2);
      }
    }
    function df(e3, t3, n3, r2, o2, i2) {
      switch (n3) {
        case "style":
          Pt(e3, r2, i2);
          break;
        case "dangerouslySetInnerHTML":
          if (null != r2) {
            if ("object" != typeof r2 || !("__html" in r2)) throw Error(a(61));
            if (null != (n3 = r2.__html)) {
              if (null != o2.children) throw Error(a(60));
              e3.innerHTML = n3;
            }
          }
          break;
        case "children":
          "string" == typeof r2 ? xt(e3, r2) : ("number" == typeof r2 || "bigint" == typeof r2) && xt(e3, "" + r2);
          break;
        case "onScroll":
          null != r2 && Ys("scroll", e3);
          break;
        case "onScrollEnd":
          null != r2 && Ys("scrollend", e3);
          break;
        case "onClick":
          null != r2 && (e3.onclick = _t);
          break;
        case "suppressContentEditableWarning":
        case "suppressHydrationWarning":
        case "innerHTML":
        case "ref":
        case "innerText":
        case "textContent":
          break;
        default:
          nt.hasOwnProperty(n3) || ("o" !== n3[0] || "n" !== n3[1] || (o2 = n3.endsWith("Capture"), t3 = n3.slice(2, o2 ? n3.length - 7 : void 0), "function" == typeof (i2 = null != (i2 = e3[He] || null) ? i2[n3] : null) && e3.removeEventListener(t3, i2, o2), "function" != typeof r2) ? n3 in e3 ? e3[n3] = r2 : true === r2 ? e3.setAttribute(n3, "") : ut(e3, n3, r2) : ("function" != typeof i2 && null !== i2 && (n3 in e3 ? e3[n3] = null : e3.hasAttribute(n3) && e3.removeAttribute(n3)), e3.addEventListener(t3, r2, o2)));
      }
    }
    function pf(e3, t3, n3) {
      switch (t3) {
        case "div":
        case "span":
        case "svg":
        case "path":
        case "a":
        case "g":
        case "p":
        case "li":
          break;
        case "img":
          Ys("error", e3), Ys("load", e3);
          var r2, o2 = false, i2 = false;
          for (r2 in n3) if (n3.hasOwnProperty(r2)) {
            var l2 = n3[r2];
            if (null != l2) switch (r2) {
              case "src":
                o2 = true;
                break;
              case "srcSet":
                i2 = true;
                break;
              case "children":
              case "dangerouslySetInnerHTML":
                throw Error(a(137, t3));
              default:
                ff(e3, t3, r2, l2, n3, null);
            }
          }
          return i2 && ff(e3, t3, "srcSet", n3.srcSet, n3, null), void (o2 && ff(e3, t3, "src", n3.src, n3, null));
        case "input":
          Ys("invalid", e3);
          var u2 = r2 = l2 = i2 = null, c2 = null, s2 = null;
          for (o2 in n3) if (n3.hasOwnProperty(o2)) {
            var f2 = n3[o2];
            if (null != f2) switch (o2) {
              case "name":
                i2 = f2;
                break;
              case "type":
                l2 = f2;
                break;
              case "checked":
                c2 = f2;
                break;
              case "defaultChecked":
                s2 = f2;
                break;
              case "value":
                r2 = f2;
                break;
              case "defaultValue":
                u2 = f2;
                break;
              case "children":
              case "dangerouslySetInnerHTML":
                if (null != f2) throw Error(a(137, t3));
                break;
              default:
                ff(e3, t3, o2, f2, n3, null);
            }
          }
          return void bt(e3, r2, u2, c2, s2, l2, i2, false);
        case "select":
          for (i2 in Ys("invalid", e3), o2 = l2 = r2 = null, n3) if (n3.hasOwnProperty(i2) && null != (u2 = n3[i2])) switch (i2) {
            case "value":
              r2 = u2;
              break;
            case "defaultValue":
              l2 = u2;
              break;
            case "multiple":
              o2 = u2;
            default:
              ff(e3, t3, i2, u2, n3, null);
          }
          return t3 = r2, n3 = l2, e3.multiple = !!o2, void (null != t3 ? Et(e3, !!o2, t3, false) : null != n3 && Et(e3, !!o2, n3, true));
        case "textarea":
          for (l2 in Ys("invalid", e3), r2 = i2 = o2 = null, n3) if (n3.hasOwnProperty(l2) && null != (u2 = n3[l2])) switch (l2) {
            case "value":
              o2 = u2;
              break;
            case "defaultValue":
              i2 = u2;
              break;
            case "children":
              r2 = u2;
              break;
            case "dangerouslySetInnerHTML":
              if (null != u2) throw Error(a(91));
              break;
            default:
              ff(e3, t3, l2, u2, n3, null);
          }
          return void kt(e3, o2, i2, r2);
        case "option":
          for (c2 in n3) n3.hasOwnProperty(c2) && null != (o2 = n3[c2]) && ("selected" === c2 ? e3.selected = o2 && "function" != typeof o2 && "symbol" != typeof o2 : ff(e3, t3, c2, o2, n3, null));
          return;
        case "dialog":
          Ys("beforetoggle", e3), Ys("toggle", e3), Ys("cancel", e3), Ys("close", e3);
          break;
        case "iframe":
        case "object":
          Ys("load", e3);
          break;
        case "video":
        case "audio":
          for (o2 = 0; o2 < Gs.length; o2++) Ys(Gs[o2], e3);
          break;
        case "image":
          Ys("error", e3), Ys("load", e3);
          break;
        case "details":
          Ys("toggle", e3);
          break;
        case "embed":
        case "source":
        case "link":
          Ys("error", e3), Ys("load", e3);
        case "area":
        case "base":
        case "br":
        case "col":
        case "hr":
        case "keygen":
        case "meta":
        case "param":
        case "track":
        case "wbr":
        case "menuitem":
          for (s2 in n3) if (n3.hasOwnProperty(s2) && null != (o2 = n3[s2])) switch (s2) {
            case "children":
            case "dangerouslySetInnerHTML":
              throw Error(a(137, t3));
            default:
              ff(e3, t3, s2, o2, n3, null);
          }
          return;
        default:
          if (Tt(t3)) {
            for (f2 in n3) n3.hasOwnProperty(f2) && void 0 !== (o2 = n3[f2]) && df(e3, t3, f2, o2, n3, void 0);
            return;
          }
      }
      for (u2 in n3) n3.hasOwnProperty(u2) && null != (o2 = n3[u2]) && ff(e3, t3, u2, o2, n3, null);
    }
    function hf(e3) {
      switch (e3) {
        case "css":
        case "script":
        case "font":
        case "img":
        case "image":
        case "input":
        case "link":
          return true;
        default:
          return false;
      }
    }
    var vf = null, mf = null;
    function yf(e3) {
      return 9 === e3.nodeType ? e3 : e3.ownerDocument;
    }
    function gf(e3) {
      switch (e3) {
        case "http://www.w3.org/2000/svg":
          return 1;
        case "http://www.w3.org/1998/Math/MathML":
          return 2;
        default:
          return 0;
      }
    }
    function bf(e3, t3) {
      if (0 === e3) switch (t3) {
        case "svg":
          return 1;
        case "math":
          return 2;
        default:
          return 0;
      }
      return 1 === e3 && "foreignObject" === t3 ? 0 : e3;
    }
    function wf(e3, t3) {
      return "textarea" === e3 || "noscript" === e3 || "string" == typeof t3.children || "number" == typeof t3.children || "bigint" == typeof t3.children || "object" == typeof t3.dangerouslySetInnerHTML && null !== t3.dangerouslySetInnerHTML && null != t3.dangerouslySetInnerHTML.__html;
    }
    var Ef = null, Sf = "function" == typeof setTimeout ? setTimeout : void 0, kf = "function" == typeof clearTimeout ? clearTimeout : void 0, xf = "function" == typeof Promise ? Promise : void 0, Cf = "function" == typeof queueMicrotask ? queueMicrotask : void 0 !== xf ? function(e3) {
      return xf.resolve(null).then(e3).catch(Of);
    } : Sf;
    function Of(e3) {
      setTimeout(function() {
        throw e3;
      });
    }
    function Pf(e3) {
      return "head" === e3;
    }
    function Tf(e3, t3) {
      var n3 = t3, r2 = 0;
      do {
        var o2 = n3.nextSibling;
        if (e3.removeChild(n3), o2 && 8 === o2.nodeType) if ("/$" === (n3 = o2.data) || "/&" === n3) {
          if (0 === r2) return e3.removeChild(o2), void $d(t3);
          r2--;
        } else if ("$" === n3 || "$?" === n3 || "$~" === n3 || "$!" === n3 || "&" === n3) r2++;
        else if ("html" === n3) Mf(e3.ownerDocument.documentElement);
        else if ("head" === n3) {
          Mf(n3 = e3.ownerDocument.head);
          for (var i2 = n3.firstChild; i2; ) {
            var a2 = i2.nextSibling, l2 = i2.nodeName;
            i2[Ke] || "SCRIPT" === l2 || "STYLE" === l2 || "LINK" === l2 && "stylesheet" === i2.rel.toLowerCase() || n3.removeChild(i2), i2 = a2;
          }
        } else "body" === n3 && Mf(e3.ownerDocument.body);
        n3 = o2;
      } while (n3);
      $d(t3);
    }
    function Nf(e3, t3) {
      var n3 = e3;
      e3 = 0;
      do {
        var r2 = n3.nextSibling;
        if (1 === n3.nodeType ? t3 ? (n3._stashedDisplay = n3.style.display, n3.style.display = "none") : (n3.style.display = n3._stashedDisplay || "", "" === n3.getAttribute("style") && n3.removeAttribute("style")) : 3 === n3.nodeType && (t3 ? (n3._stashedText = n3.nodeValue, n3.nodeValue = "") : n3.nodeValue = n3._stashedText || ""), r2 && 8 === r2.nodeType) if ("/$" === (n3 = r2.data)) {
          if (0 === e3) break;
          e3--;
        } else "$" !== n3 && "$?" !== n3 && "$~" !== n3 && "$!" !== n3 || e3++;
        n3 = r2;
      } while (n3);
    }
    function Af(e3) {
      var t3 = e3.firstChild;
      for (t3 && 10 === t3.nodeType && (t3 = t3.nextSibling); t3; ) {
        var n3 = t3;
        switch (t3 = t3.nextSibling, n3.nodeName) {
          case "HTML":
          case "HEAD":
          case "BODY":
            Af(n3), Qe(n3);
            continue;
          case "SCRIPT":
          case "STYLE":
            continue;
          case "LINK":
            if ("stylesheet" === n3.rel.toLowerCase()) continue;
        }
        e3.removeChild(n3);
      }
    }
    function Rf(e3, t3) {
      for (; 8 !== e3.nodeType; ) {
        if ((1 !== e3.nodeType || "INPUT" !== e3.nodeName || "hidden" !== e3.type) && !t3) return null;
        if (null === (e3 = Lf(e3.nextSibling))) return null;
      }
      return e3;
    }
    function _f(e3) {
      return "$?" === e3.data || "$~" === e3.data;
    }
    function jf(e3) {
      return "$!" === e3.data || "$?" === e3.data && "loading" !== e3.ownerDocument.readyState;
    }
    function Lf(e3) {
      for (; null != e3; e3 = e3.nextSibling) {
        var t3 = e3.nodeType;
        if (1 === t3 || 3 === t3) break;
        if (8 === t3) {
          if ("$" === (t3 = e3.data) || "$!" === t3 || "$?" === t3 || "$~" === t3 || "&" === t3 || "F!" === t3 || "F" === t3) break;
          if ("/$" === t3 || "/&" === t3) return null;
        }
      }
      return e3;
    }
    var Df = null;
    function If(e3) {
      e3 = e3.nextSibling;
      for (var t3 = 0; e3; ) {
        if (8 === e3.nodeType) {
          var n3 = e3.data;
          if ("/$" === n3 || "/&" === n3) {
            if (0 === t3) return Lf(e3.nextSibling);
            t3--;
          } else "$" !== n3 && "$!" !== n3 && "$?" !== n3 && "$~" !== n3 && "&" !== n3 || t3++;
        }
        e3 = e3.nextSibling;
      }
      return null;
    }
    function zf(e3) {
      e3 = e3.previousSibling;
      for (var t3 = 0; e3; ) {
        if (8 === e3.nodeType) {
          var n3 = e3.data;
          if ("$" === n3 || "$!" === n3 || "$?" === n3 || "$~" === n3 || "&" === n3) {
            if (0 === t3) return e3;
            t3--;
          } else "/$" !== n3 && "/&" !== n3 || t3++;
        }
        e3 = e3.previousSibling;
      }
      return null;
    }
    function Ff(e3, t3, n3) {
      switch (t3 = yf(n3), e3) {
        case "html":
          if (!(e3 = t3.documentElement)) throw Error(a(452));
          return e3;
        case "head":
          if (!(e3 = t3.head)) throw Error(a(453));
          return e3;
        case "body":
          if (!(e3 = t3.body)) throw Error(a(454));
          return e3;
        default:
          throw Error(a(451));
      }
    }
    function Mf(e3) {
      for (var t3 = e3.attributes; t3.length; ) e3.removeAttributeNode(t3[0]);
      Qe(e3);
    }
    var Uf = /* @__PURE__ */ new Map(), Bf = /* @__PURE__ */ new Set();
    function Hf(e3) {
      return "function" == typeof e3.getRootNode ? e3.getRootNode() : 9 === e3.nodeType ? e3 : e3.ownerDocument;
    }
    var Wf = D.d;
    D.d = { f: function() {
      var e3 = Wf.f(), t3 = Zc();
      return e3 || t3;
    }, r: function(e3) {
      var t3 = Xe(e3);
      null !== t3 && 5 === t3.tag && "form" === t3.type ? rl(t3) : Wf.r(e3);
    }, D: function(e3) {
      Wf.D(e3), $f("dns-prefetch", e3, null);
    }, C: function(e3, t3) {
      Wf.C(e3, t3), $f("preconnect", e3, t3);
    }, L: function(e3, t3, n3) {
      Wf.L(e3, t3, n3);
      var r2 = qf;
      if (r2 && e3 && t3) {
        var o2 = 'link[rel="preload"][as="' + yt(t3) + '"]';
        "image" === t3 && n3 && n3.imageSrcSet ? (o2 += '[imagesrcset="' + yt(n3.imageSrcSet) + '"]', "string" == typeof n3.imageSizes && (o2 += '[imagesizes="' + yt(n3.imageSizes) + '"]')) : o2 += '[href="' + yt(e3) + '"]';
        var i2 = o2;
        switch (t3) {
          case "style":
            i2 = Gf(e3);
            break;
          case "script":
            i2 = Yf(e3);
        }
        Uf.has(i2) || (e3 = p({ rel: "preload", href: "image" === t3 && n3 && n3.imageSrcSet ? void 0 : e3, as: t3 }, n3), Uf.set(i2, e3), null !== r2.querySelector(o2) || "style" === t3 && r2.querySelector(Kf(i2)) || "script" === t3 && r2.querySelector(Xf(i2)) || (pf(t3 = r2.createElement("link"), "link", e3), et(t3), r2.head.appendChild(t3)));
      }
    }, m: function(e3, t3) {
      Wf.m(e3, t3);
      var n3 = qf;
      if (n3 && e3) {
        var r2 = t3 && "string" == typeof t3.as ? t3.as : "script", o2 = 'link[rel="modulepreload"][as="' + yt(r2) + '"][href="' + yt(e3) + '"]', i2 = o2;
        switch (r2) {
          case "audioworklet":
          case "paintworklet":
          case "serviceworker":
          case "sharedworker":
          case "worker":
          case "script":
            i2 = Yf(e3);
        }
        if (!Uf.has(i2) && (e3 = p({ rel: "modulepreload", href: e3 }, t3), Uf.set(i2, e3), null === n3.querySelector(o2))) {
          switch (r2) {
            case "audioworklet":
            case "paintworklet":
            case "serviceworker":
            case "sharedworker":
            case "worker":
            case "script":
              if (n3.querySelector(Xf(i2))) return;
          }
          pf(r2 = n3.createElement("link"), "link", e3), et(r2), n3.head.appendChild(r2);
        }
      }
    }, X: function(e3, t3) {
      Wf.X(e3, t3);
      var n3 = qf;
      if (n3 && e3) {
        var r2 = Ze(n3).hoistableScripts, o2 = Yf(e3), i2 = r2.get(o2);
        i2 || ((i2 = n3.querySelector(Xf(o2))) || (e3 = p({ src: e3, async: true }, t3), (t3 = Uf.get(o2)) && td(e3, t3), et(i2 = n3.createElement("script")), pf(i2, "link", e3), n3.head.appendChild(i2)), i2 = { type: "script", instance: i2, count: 1, state: null }, r2.set(o2, i2));
      }
    }, S: function(e3, t3, n3) {
      Wf.S(e3, t3, n3);
      var r2 = qf;
      if (r2 && e3) {
        var o2 = Ze(r2).hoistableStyles, i2 = Gf(e3);
        t3 = t3 || "default";
        var a2 = o2.get(i2);
        if (!a2) {
          var l2 = { loading: 0, preload: null };
          if (a2 = r2.querySelector(Kf(i2))) l2.loading = 5;
          else {
            e3 = p({ rel: "stylesheet", href: e3, "data-precedence": t3 }, n3), (n3 = Uf.get(i2)) && ed(e3, n3);
            var u2 = a2 = r2.createElement("link");
            et(u2), pf(u2, "link", e3), u2._p = new Promise(function(e4, t4) {
              u2.onload = e4, u2.onerror = t4;
            }), u2.addEventListener("load", function() {
              l2.loading |= 1;
            }), u2.addEventListener("error", function() {
              l2.loading |= 2;
            }), l2.loading |= 4, Zf(a2, t3, r2);
          }
          a2 = { type: "stylesheet", instance: a2, count: 1, state: l2 }, o2.set(i2, a2);
        }
      }
    }, M: function(e3, t3) {
      Wf.M(e3, t3);
      var n3 = qf;
      if (n3 && e3) {
        var r2 = Ze(n3).hoistableScripts, o2 = Yf(e3), i2 = r2.get(o2);
        i2 || ((i2 = n3.querySelector(Xf(o2))) || (e3 = p({ src: e3, async: true, type: "module" }, t3), (t3 = Uf.get(o2)) && td(e3, t3), et(i2 = n3.createElement("script")), pf(i2, "link", e3), n3.head.appendChild(i2)), i2 = { type: "script", instance: i2, count: 1, state: null }, r2.set(o2, i2));
      }
    } };
    var qf = "undefined" == typeof document ? null : document;
    function $f(e3, t3, n3) {
      var r2 = qf;
      if (r2 && "string" == typeof t3 && t3) {
        var o2 = yt(t3);
        o2 = 'link[rel="' + e3 + '"][href="' + o2 + '"]', "string" == typeof n3 && (o2 += '[crossorigin="' + n3 + '"]'), Bf.has(o2) || (Bf.add(o2), e3 = { rel: e3, crossOrigin: n3, href: t3 }, null === r2.querySelector(o2) && (pf(t3 = r2.createElement("link"), "link", e3), et(t3), r2.head.appendChild(t3)));
      }
    }
    function Vf(e3, t3, n3, r2) {
      var o2, i2, l2, u2, c2 = (c2 = V.current) ? Hf(c2) : null;
      if (!c2) throw Error(a(446));
      switch (e3) {
        case "meta":
        case "title":
          return null;
        case "style":
          return "string" == typeof n3.precedence && "string" == typeof n3.href ? (t3 = Gf(n3.href), (r2 = (n3 = Ze(c2).hoistableStyles).get(t3)) || (r2 = { type: "style", instance: null, count: 0, state: null }, n3.set(t3, r2)), r2) : { type: "void", instance: null, count: 0, state: null };
        case "link":
          if ("stylesheet" === n3.rel && "string" == typeof n3.href && "string" == typeof n3.precedence) {
            e3 = Gf(n3.href);
            var s2 = Ze(c2).hoistableStyles, f2 = s2.get(e3);
            if (f2 || (c2 = c2.ownerDocument || c2, f2 = { type: "stylesheet", instance: null, count: 0, state: { loading: 0, preload: null } }, s2.set(e3, f2), (s2 = c2.querySelector(Kf(e3))) && !s2._p && (f2.instance = s2, f2.state.loading = 5), Uf.has(e3) || (n3 = { rel: "preload", as: "style", href: n3.href, crossOrigin: n3.crossOrigin, integrity: n3.integrity, media: n3.media, hrefLang: n3.hrefLang, referrerPolicy: n3.referrerPolicy }, Uf.set(e3, n3), s2 || (o2 = c2, i2 = e3, l2 = n3, u2 = f2.state, o2.querySelector('link[rel="preload"][as="style"][' + i2 + "]") ? u2.loading = 1 : (i2 = o2.createElement("link"), u2.preload = i2, i2.addEventListener("load", function() {
              return u2.loading |= 1;
            }), i2.addEventListener("error", function() {
              return u2.loading |= 2;
            }), pf(i2, "link", l2), et(i2), o2.head.appendChild(i2))))), t3 && null === r2) throw Error(a(528, ""));
            return f2;
          }
          if (t3 && null !== r2) throw Error(a(529, ""));
          return null;
        case "script":
          return t3 = n3.async, "string" == typeof (n3 = n3.src) && t3 && "function" != typeof t3 && "symbol" != typeof t3 ? (t3 = Yf(n3), (r2 = (n3 = Ze(c2).hoistableScripts).get(t3)) || (r2 = { type: "script", instance: null, count: 0, state: null }, n3.set(t3, r2)), r2) : { type: "void", instance: null, count: 0, state: null };
        default:
          throw Error(a(444, e3));
      }
    }
    function Gf(e3) {
      return 'href="' + yt(e3) + '"';
    }
    function Kf(e3) {
      return 'link[rel="stylesheet"][' + e3 + "]";
    }
    function Qf(e3) {
      return p({}, e3, { "data-precedence": e3.precedence, precedence: null });
    }
    function Yf(e3) {
      return '[src="' + yt(e3) + '"]';
    }
    function Xf(e3) {
      return "script[async]" + e3;
    }
    function Jf(e3, t3, n3) {
      if (t3.count++, null === t3.instance) switch (t3.type) {
        case "style":
          var r2 = e3.querySelector('style[data-href~="' + yt(n3.href) + '"]');
          if (r2) return t3.instance = r2, et(r2), r2;
          var o2 = p({}, n3, { "data-href": n3.href, "data-precedence": n3.precedence, href: null, precedence: null });
          return et(r2 = (e3.ownerDocument || e3).createElement("style")), pf(r2, "style", o2), Zf(r2, n3.precedence, e3), t3.instance = r2;
        case "stylesheet":
          o2 = Gf(n3.href);
          var i2 = e3.querySelector(Kf(o2));
          if (i2) return t3.state.loading |= 4, t3.instance = i2, et(i2), i2;
          r2 = Qf(n3), (o2 = Uf.get(o2)) && ed(r2, o2), et(i2 = (e3.ownerDocument || e3).createElement("link"));
          var l2 = i2;
          return l2._p = new Promise(function(e4, t4) {
            l2.onload = e4, l2.onerror = t4;
          }), pf(i2, "link", r2), t3.state.loading |= 4, Zf(i2, n3.precedence, e3), t3.instance = i2;
        case "script":
          return i2 = Yf(n3.src), (o2 = e3.querySelector(Xf(i2))) ? (t3.instance = o2, et(o2), o2) : (r2 = n3, (o2 = Uf.get(i2)) && td(r2 = p({}, n3), o2), et(o2 = (e3 = e3.ownerDocument || e3).createElement("script")), pf(o2, "link", r2), e3.head.appendChild(o2), t3.instance = o2);
        case "void":
          return null;
        default:
          throw Error(a(443, t3.type));
      }
      else "stylesheet" === t3.type && !(4 & t3.state.loading) && (r2 = t3.instance, t3.state.loading |= 4, Zf(r2, n3.precedence, e3));
      return t3.instance;
    }
    function Zf(e3, t3, n3) {
      for (var r2 = n3.querySelectorAll('link[rel="stylesheet"][data-precedence],style[data-precedence]'), o2 = r2.length ? r2[r2.length - 1] : null, i2 = o2, a2 = 0; a2 < r2.length; a2++) {
        var l2 = r2[a2];
        if (l2.dataset.precedence === t3) i2 = l2;
        else if (i2 !== o2) break;
      }
      i2 ? i2.parentNode.insertBefore(e3, i2.nextSibling) : (t3 = 9 === n3.nodeType ? n3.head : n3).insertBefore(e3, t3.firstChild);
    }
    function ed(e3, t3) {
      null == e3.crossOrigin && (e3.crossOrigin = t3.crossOrigin), null == e3.referrerPolicy && (e3.referrerPolicy = t3.referrerPolicy), null == e3.title && (e3.title = t3.title);
    }
    function td(e3, t3) {
      null == e3.crossOrigin && (e3.crossOrigin = t3.crossOrigin), null == e3.referrerPolicy && (e3.referrerPolicy = t3.referrerPolicy), null == e3.integrity && (e3.integrity = t3.integrity);
    }
    var nd = null;
    function rd(e3, t3, n3) {
      if (null === nd) {
        var r2 = /* @__PURE__ */ new Map(), o2 = nd = /* @__PURE__ */ new Map();
        o2.set(n3, r2);
      } else (r2 = (o2 = nd).get(n3)) || (r2 = /* @__PURE__ */ new Map(), o2.set(n3, r2));
      if (r2.has(e3)) return r2;
      for (r2.set(e3, null), n3 = n3.getElementsByTagName(e3), o2 = 0; o2 < n3.length; o2++) {
        var i2 = n3[o2];
        if (!(i2[Ke] || i2[Be] || "link" === e3 && "stylesheet" === i2.getAttribute("rel")) && "http://www.w3.org/2000/svg" !== i2.namespaceURI) {
          var a2 = i2.getAttribute(t3) || "";
          a2 = e3 + a2;
          var l2 = r2.get(a2);
          l2 ? l2.push(i2) : r2.set(a2, [i2]);
        }
      }
      return r2;
    }
    function od(e3, t3, n3) {
      (e3 = e3.ownerDocument || e3).head.insertBefore(n3, "title" === t3 ? e3.querySelector("head > title") : null);
    }
    function id(e3) {
      return !!("stylesheet" !== e3.type || 3 & e3.state.loading);
    }
    var ad = 0;
    function ld() {
      if (this.count--, 0 === this.count && (0 === this.imgCount || !this.waitingForImages)) {
        if (this.stylesheets) cd(this, this.stylesheets);
        else if (this.unsuspend) {
          var e3 = this.unsuspend;
          this.unsuspend = null, e3();
        }
      }
    }
    var ud = null;
    function cd(e3, t3) {
      e3.stylesheets = null, null !== e3.unsuspend && (e3.count++, ud = /* @__PURE__ */ new Map(), t3.forEach(sd, e3), ud = null, ld.call(e3));
    }
    function sd(e3, t3) {
      if (!(4 & t3.state.loading)) {
        var n3 = ud.get(e3);
        if (n3) var r2 = n3.get(null);
        else {
          n3 = /* @__PURE__ */ new Map(), ud.set(e3, n3);
          for (var o2 = e3.querySelectorAll("link[data-precedence],style[data-precedence]"), i2 = 0; i2 < o2.length; i2++) {
            var a2 = o2[i2];
            "LINK" !== a2.nodeName && "not all" === a2.getAttribute("media") || (n3.set(a2.dataset.precedence, a2), r2 = a2);
          }
          r2 && n3.set(null, r2);
        }
        a2 = (o2 = t3.instance).getAttribute("data-precedence"), (i2 = n3.get(a2) || r2) === r2 && n3.set(null, o2), n3.set(a2, o2), this.count++, r2 = ld.bind(this), o2.addEventListener("load", r2), o2.addEventListener("error", r2), i2 ? i2.parentNode.insertBefore(o2, i2.nextSibling) : (e3 = 9 === e3.nodeType ? e3.head : e3).insertBefore(o2, e3.firstChild), t3.state.loading |= 4;
      }
    }
    var fd = { $$typeof: E, Provider: null, Consumer: null, _currentValue: I, _currentValue2: I, _threadCount: 0 };
    function dd(e3, t3, n3, r2, o2, i2, a2, l2, u2) {
      this.tag = 1, this.containerInfo = e3, this.pingCache = this.current = this.pendingChildren = null, this.timeoutHandle = -1, this.callbackNode = this.next = this.pendingContext = this.context = this.cancelPendingCommit = null, this.callbackPriority = 0, this.expirationTimes = Re(-1), this.entangledLanes = this.shellSuspendCounter = this.errorRecoveryDisabledLanes = this.expiredLanes = this.warmLanes = this.pingedLanes = this.suspendedLanes = this.pendingLanes = 0, this.entanglements = Re(0), this.hiddenUpdates = Re(null), this.identifierPrefix = r2, this.onUncaughtError = o2, this.onCaughtError = i2, this.onRecoverableError = a2, this.pooledCache = null, this.pooledCacheLanes = 0, this.formState = u2, this.incompleteTransitions = /* @__PURE__ */ new Map();
    }
    function pd(e3, t3, n3, r2, o2, i2, a2, l2, u2, c2, s2, f2) {
      return e3 = new dd(e3, t3, n3, a2, u2, c2, s2, f2, l2), t3 = 1, true === i2 && (t3 |= 24), i2 = Fr(3, null, null, t3), e3.current = i2, i2.stateNode = e3, (t3 = Uo()).refCount++, e3.pooledCache = t3, t3.refCount++, i2.memoizedState = { element: r2, isDehydrated: n3, cache: t3 }, yi(i2), e3;
    }
    function hd(e3) {
      return e3 ? e3 = Ir : Ir;
    }
    function vd(e3, t3, n3, r2, o2, i2) {
      o2 = hd(o2), null === r2.context ? r2.context = o2 : r2.pendingContext = o2, (r2 = bi(t3)).payload = { element: n3 }, null !== (i2 = void 0 === i2 ? null : i2) && (r2.callback = i2), null !== (n3 = wi(e3, r2, t3)) && (Kc(n3, 0, t3), Ei(n3, e3, t3));
    }
    function md(e3, t3) {
      if (null !== (e3 = e3.memoizedState) && null !== e3.dehydrated) {
        var n3 = e3.retryLane;
        e3.retryLane = 0 !== n3 && n3 < t3 ? n3 : t3;
      }
    }
    function yd(e3, t3) {
      md(e3, t3), (e3 = e3.alternate) && md(e3, t3);
    }
    function gd(e3) {
      if (13 === e3.tag || 31 === e3.tag) {
        var t3 = jr(e3, 67108864);
        null !== t3 && Kc(t3, 0, 67108864), yd(e3, 67108864);
      }
    }
    function bd(e3) {
      if (13 === e3.tag || 31 === e3.tag) {
        var t3 = Vc(), n3 = jr(e3, t3 = Ie(t3));
        null !== n3 && Kc(n3, 0, t3), yd(e3, t3);
      }
    }
    var wd = true;
    function Ed(e3, t3, n3, r2) {
      var o2 = L.T;
      L.T = null;
      var i2 = D.p;
      try {
        D.p = 2, kd(e3, t3, n3, r2);
      } finally {
        D.p = i2, L.T = o2;
      }
    }
    function Sd(e3, t3, n3, r2) {
      var o2 = L.T;
      L.T = null;
      var i2 = D.p;
      try {
        D.p = 8, kd(e3, t3, n3, r2);
      } finally {
        D.p = i2, L.T = o2;
      }
    }
    function kd(e3, t3, n3, r2) {
      if (wd) {
        var o2 = xd(r2);
        if (null === o2) tf(e3, t3, r2, Cd, n3), Id(e3, r2);
        else if ((function(e4, t4, n4, r3, o3) {
          switch (t4) {
            case "focusin":
              return Nd = zd(Nd, e4, t4, n4, r3, o3), true;
            case "dragenter":
              return Ad = zd(Ad, e4, t4, n4, r3, o3), true;
            case "mouseover":
              return Rd = zd(Rd, e4, t4, n4, r3, o3), true;
            case "pointerover":
              var i3 = o3.pointerId;
              return _d.set(i3, zd(_d.get(i3) || null, e4, t4, n4, r3, o3)), true;
            case "gotpointercapture":
              return i3 = o3.pointerId, jd.set(i3, zd(jd.get(i3) || null, e4, t4, n4, r3, o3)), true;
          }
          return false;
        })(o2, e3, t3, n3, r2)) r2.stopPropagation();
        else if (Id(e3, r2), 4 & t3 && -1 < Dd.indexOf(e3)) {
          for (; null !== o2; ) {
            var i2 = Xe(o2);
            if (null !== i2) switch (i2.tag) {
              case 3:
                if ((i2 = i2.stateNode).current.memoizedState.isDehydrated) {
                  var a2 = Oe(i2.pendingLanes);
                  if (0 !== a2) {
                    var l2 = i2;
                    for (l2.pendingLanes |= 2, l2.entangledLanes |= 2; a2; ) {
                      var u2 = 1 << 31 - we(a2);
                      l2.entanglements[1] |= u2, a2 &= ~u2;
                    }
                    Ds(i2), !(6 & pc) && (Lc = ue() + 500, Is(0, false));
                  }
                }
                break;
              case 31:
              case 13:
                null !== (l2 = jr(i2, 2)) && Kc(l2, 0, 2), Zc(), yd(i2, 2);
            }
            if (null === (i2 = xd(r2)) && tf(e3, t3, r2, Cd, n3), i2 === o2) break;
            o2 = i2;
          }
          null !== o2 && r2.stopPropagation();
        } else tf(e3, t3, r2, null, n3);
      }
    }
    function xd(e3) {
      return Od(e3 = Lt(e3));
    }
    var Cd = null;
    function Od(e3) {
      if (Cd = null, null !== (e3 = Ye(e3))) {
        var t3 = u(e3);
        if (null === t3) e3 = null;
        else {
          var n3 = t3.tag;
          if (13 === n3) {
            if (null !== (e3 = c(t3))) return e3;
            e3 = null;
          } else if (31 === n3) {
            if (null !== (e3 = s(t3))) return e3;
            e3 = null;
          } else if (3 === n3) {
            if (t3.stateNode.current.memoizedState.isDehydrated) return 3 === t3.tag ? t3.stateNode.containerInfo : null;
            e3 = null;
          } else t3 !== e3 && (e3 = null);
        }
      }
      return Cd = e3, null;
    }
    function Pd(e3) {
      switch (e3) {
        case "beforetoggle":
        case "cancel":
        case "click":
        case "close":
        case "contextmenu":
        case "copy":
        case "cut":
        case "auxclick":
        case "dblclick":
        case "dragend":
        case "dragstart":
        case "drop":
        case "focusin":
        case "focusout":
        case "input":
        case "invalid":
        case "keydown":
        case "keypress":
        case "keyup":
        case "mousedown":
        case "mouseup":
        case "paste":
        case "pause":
        case "play":
        case "pointercancel":
        case "pointerdown":
        case "pointerup":
        case "ratechange":
        case "reset":
        case "resize":
        case "seeked":
        case "submit":
        case "toggle":
        case "touchcancel":
        case "touchend":
        case "touchstart":
        case "volumechange":
        case "change":
        case "selectionchange":
        case "textInput":
        case "compositionstart":
        case "compositionend":
        case "compositionupdate":
        case "beforeblur":
        case "afterblur":
        case "beforeinput":
        case "blur":
        case "fullscreenchange":
        case "focus":
        case "hashchange":
        case "popstate":
        case "select":
        case "selectstart":
          return 2;
        case "drag":
        case "dragenter":
        case "dragexit":
        case "dragleave":
        case "dragover":
        case "mousemove":
        case "mouseout":
        case "mouseover":
        case "pointermove":
        case "pointerout":
        case "pointerover":
        case "scroll":
        case "touchmove":
        case "wheel":
        case "mouseenter":
        case "mouseleave":
        case "pointerenter":
        case "pointerleave":
          return 8;
        case "message":
          switch (ce()) {
            case se:
              return 2;
            case fe:
              return 8;
            case de:
            case pe:
              return 32;
            case he:
              return 268435456;
            default:
              return 32;
          }
        default:
          return 32;
      }
    }
    var Td = false, Nd = null, Ad = null, Rd = null, _d = /* @__PURE__ */ new Map(), jd = /* @__PURE__ */ new Map(), Ld = [], Dd = "mousedown mouseup touchcancel touchend touchstart auxclick dblclick pointercancel pointerdown pointerup dragend dragstart drop compositionend compositionstart keydown keypress keyup input textInput copy cut paste click change contextmenu reset".split(" ");
    function Id(e3, t3) {
      switch (e3) {
        case "focusin":
        case "focusout":
          Nd = null;
          break;
        case "dragenter":
        case "dragleave":
          Ad = null;
          break;
        case "mouseover":
        case "mouseout":
          Rd = null;
          break;
        case "pointerover":
        case "pointerout":
          _d.delete(t3.pointerId);
          break;
        case "gotpointercapture":
        case "lostpointercapture":
          jd.delete(t3.pointerId);
      }
    }
    function zd(e3, t3, n3, r2, o2, i2) {
      return null === e3 || e3.nativeEvent !== i2 ? (e3 = { blockedOn: t3, domEventName: n3, eventSystemFlags: r2, nativeEvent: i2, targetContainers: [o2] }, null !== t3 && null !== (t3 = Xe(t3)) && gd(t3), e3) : (e3.eventSystemFlags |= r2, t3 = e3.targetContainers, null !== o2 && -1 === t3.indexOf(o2) && t3.push(o2), e3);
    }
    function Fd(e3) {
      var t3 = Ye(e3.target);
      if (null !== t3) {
        var n3 = u(t3);
        if (null !== n3) {
          if (13 === (t3 = n3.tag)) {
            if (null !== (t3 = c(n3))) return e3.blockedOn = t3, void Me(e3.priority, function() {
              bd(n3);
            });
          } else if (31 === t3) {
            if (null !== (t3 = s(n3))) return e3.blockedOn = t3, void Me(e3.priority, function() {
              bd(n3);
            });
          } else if (3 === t3 && n3.stateNode.current.memoizedState.isDehydrated) return void (e3.blockedOn = 3 === n3.tag ? n3.stateNode.containerInfo : null);
        }
      }
      e3.blockedOn = null;
    }
    function Md(e3) {
      if (null !== e3.blockedOn) return false;
      for (var t3 = e3.targetContainers; 0 < t3.length; ) {
        var n3 = xd(e3.nativeEvent);
        if (null !== n3) return null !== (t3 = Xe(n3)) && gd(t3), e3.blockedOn = n3, false;
        var r2 = new (n3 = e3.nativeEvent).constructor(n3.type, n3);
        jt = r2, n3.target.dispatchEvent(r2), jt = null, t3.shift();
      }
      return true;
    }
    function Ud(e3, t3, n3) {
      Md(e3) && n3.delete(t3);
    }
    function Bd() {
      Td = false, null !== Nd && Md(Nd) && (Nd = null), null !== Ad && Md(Ad) && (Ad = null), null !== Rd && Md(Rd) && (Rd = null), _d.forEach(Ud), jd.forEach(Ud);
    }
    function Hd(e3, t3) {
      e3.blockedOn === t3 && (e3.blockedOn = null, Td || (Td = true, r.unstable_scheduleCallback(r.unstable_NormalPriority, Bd)));
    }
    var Wd = null;
    function qd(e3) {
      Wd !== e3 && (Wd = e3, r.unstable_scheduleCallback(r.unstable_NormalPriority, function() {
        Wd === e3 && (Wd = null);
        for (var t3 = 0; t3 < e3.length; t3 += 3) {
          var n3 = e3[t3], r2 = e3[t3 + 1], o2 = e3[t3 + 2];
          if ("function" != typeof r2) {
            if (null === Od(r2 || n3)) continue;
            break;
          }
          var i2 = Xe(n3);
          null !== i2 && (e3.splice(t3, 3), t3 -= 3, tl(i2, { pending: true, data: o2, method: n3.method, action: r2 }, r2, o2));
        }
      }));
    }
    function $d(e3) {
      function t3(t4) {
        return Hd(t4, e3);
      }
      null !== Nd && Hd(Nd, e3), null !== Ad && Hd(Ad, e3), null !== Rd && Hd(Rd, e3), _d.forEach(t3), jd.forEach(t3);
      for (var n3 = 0; n3 < Ld.length; n3++) {
        var r2 = Ld[n3];
        r2.blockedOn === e3 && (r2.blockedOn = null);
      }
      for (; 0 < Ld.length && null === (n3 = Ld[0]).blockedOn; ) Fd(n3), null === n3.blockedOn && Ld.shift();
      if (null != (n3 = (e3.ownerDocument || e3).$$reactFormReplay)) for (r2 = 0; r2 < n3.length; r2 += 3) {
        var o2 = n3[r2], i2 = n3[r2 + 1], a2 = o2[He] || null;
        if ("function" == typeof i2) a2 || qd(n3);
        else if (a2) {
          var l2 = null;
          if (i2 && i2.hasAttribute("formAction")) {
            if (o2 = i2, a2 = i2[He] || null) l2 = a2.formAction;
            else if (null !== Od(o2)) continue;
          } else l2 = a2.action;
          "function" == typeof l2 ? n3[r2 + 1] = l2 : (n3.splice(r2, 3), r2 -= 3), qd(n3);
        }
      }
    }
    function Vd() {
      function e3(e4) {
        e4.canIntercept && "react-transition" === e4.info && e4.intercept({ handler: function() {
          return new Promise(function(e5) {
            return o2 = e5;
          });
        }, focusReset: "manual", scroll: "manual" });
      }
      function t3() {
        null !== o2 && (o2(), o2 = null), r2 || setTimeout(n3, 20);
      }
      function n3() {
        if (!r2 && !navigation.transition) {
          var e4 = navigation.currentEntry;
          e4 && null != e4.url && navigation.navigate(e4.url, { state: e4.getState(), info: "react-transition", history: "replace" });
        }
      }
      if ("object" == typeof navigation) {
        var r2 = false, o2 = null;
        return navigation.addEventListener("navigate", e3), navigation.addEventListener("navigatesuccess", t3), navigation.addEventListener("navigateerror", t3), setTimeout(n3, 100), function() {
          r2 = true, navigation.removeEventListener("navigate", e3), navigation.removeEventListener("navigatesuccess", t3), navigation.removeEventListener("navigateerror", t3), null !== o2 && (o2(), o2 = null);
        };
      }
    }
    function Gd(e3) {
      this._internalRoot = e3;
    }
    function Kd(e3) {
      this._internalRoot = e3;
    }
    Kd.prototype.render = Gd.prototype.render = function(e3) {
      var t3 = this._internalRoot;
      if (null === t3) throw Error(a(409));
      vd(t3.current, Vc(), e3, t3, null, null);
    }, Kd.prototype.unmount = Gd.prototype.unmount = function() {
      var e3 = this._internalRoot;
      if (null !== e3) {
        this._internalRoot = null;
        var t3 = e3.containerInfo;
        vd(e3.current, 2, null, e3, null, null), Zc(), t3[We] = null;
      }
    }, Kd.prototype.unstable_scheduleHydration = function(e3) {
      if (e3) {
        var t3 = Fe();
        e3 = { blockedOn: null, target: e3, priority: t3 };
        for (var n3 = 0; n3 < Ld.length && 0 !== t3 && t3 < Ld[n3].priority; n3++) ;
        Ld.splice(n3, 0, e3), 0 === n3 && Fd(e3);
      }
    };
    var Qd = o.version;
    if ("19.2.3" !== Qd) throw Error(a(527, Qd, "19.2.3"));
    D.findDOMNode = function(e3) {
      var t3 = e3._reactInternals;
      if (void 0 === t3) {
        if ("function" == typeof e3.render) throw Error(a(188));
        throw e3 = Object.keys(e3).join(","), Error(a(268, e3));
      }
      return e3 = (function(e4) {
        var t4 = e4.alternate;
        if (!t4) {
          if (null === (t4 = u(e4))) throw Error(a(188));
          return t4 !== e4 ? null : e4;
        }
        for (var n3 = e4, r2 = t4; ; ) {
          var o2 = n3.return;
          if (null === o2) break;
          var i2 = o2.alternate;
          if (null === i2) {
            if (null !== (r2 = o2.return)) {
              n3 = r2;
              continue;
            }
            break;
          }
          if (o2.child === i2.child) {
            for (i2 = o2.child; i2; ) {
              if (i2 === n3) return f(o2), e4;
              if (i2 === r2) return f(o2), t4;
              i2 = i2.sibling;
            }
            throw Error(a(188));
          }
          if (n3.return !== r2.return) n3 = o2, r2 = i2;
          else {
            for (var l2 = false, c2 = o2.child; c2; ) {
              if (c2 === n3) {
                l2 = true, n3 = o2, r2 = i2;
                break;
              }
              if (c2 === r2) {
                l2 = true, r2 = o2, n3 = i2;
                break;
              }
              c2 = c2.sibling;
            }
            if (!l2) {
              for (c2 = i2.child; c2; ) {
                if (c2 === n3) {
                  l2 = true, n3 = i2, r2 = o2;
                  break;
                }
                if (c2 === r2) {
                  l2 = true, r2 = i2, n3 = o2;
                  break;
                }
                c2 = c2.sibling;
              }
              if (!l2) throw Error(a(189));
            }
          }
          if (n3.alternate !== r2) throw Error(a(190));
        }
        if (3 !== n3.tag) throw Error(a(188));
        return n3.stateNode.current === n3 ? e4 : t4;
      })(t3), null === (e3 = null !== e3 ? d(e3) : null) ? null : e3.stateNode;
    };
    var Yd = { bundleType: 0, version: "19.2.3", rendererPackageName: "react-dom", currentDispatcherRef: L, reconcilerVersion: "19.2.3" };
    if ("undefined" != typeof __REACT_DEVTOOLS_GLOBAL_HOOK__) {
      var Xd = __REACT_DEVTOOLS_GLOBAL_HOOK__;
      if (!Xd.isDisabled && Xd.supportsFiber) try {
        ye = Xd.inject(Yd), ge = Xd;
      } catch (e3) {
      }
    }
    t2.createRoot = function(e3, t3) {
      if (!l(e3)) throw Error(a(299));
      var n3 = false, r2 = "", o2 = xl, i2 = Cl, u2 = Ol;
      return null != t3 && (true === t3.unstable_strictMode && (n3 = true), void 0 !== t3.identifierPrefix && (r2 = t3.identifierPrefix), void 0 !== t3.onUncaughtError && (o2 = t3.onUncaughtError), void 0 !== t3.onCaughtError && (i2 = t3.onCaughtError), void 0 !== t3.onRecoverableError && (u2 = t3.onRecoverableError)), t3 = pd(e3, 1, false, null, 0, n3, r2, null, o2, i2, u2, Vd), e3[We] = t3.current, Zs(e3), new Gd(t3);
    }, t2.hydrateRoot = function(e3, t3, n3) {
      if (!l(e3)) throw Error(a(299));
      var r2 = false, o2 = "", i2 = xl, u2 = Cl, c2 = Ol, s2 = null;
      return null != n3 && (true === n3.unstable_strictMode && (r2 = true), void 0 !== n3.identifierPrefix && (o2 = n3.identifierPrefix), void 0 !== n3.onUncaughtError && (i2 = n3.onUncaughtError), void 0 !== n3.onCaughtError && (u2 = n3.onCaughtError), void 0 !== n3.onRecoverableError && (c2 = n3.onRecoverableError), void 0 !== n3.formState && (s2 = n3.formState)), (t3 = pd(e3, 1, true, t3, 0, r2, o2, s2, i2, u2, c2, Vd)).context = hd(null), n3 = t3.current, (o2 = bi(r2 = Ie(r2 = Vc()))).callback = null, wi(n3, o2, r2), n3 = r2, t3.current.lanes = n3, _e(t3, n3), Ds(t3), e3[We] = t3.current, Zs(e3), new Kd(t3);
    }, t2.version = "19.2.3";
  }, 32029: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = 2147483647, i = /[^\0-\u007E]/, a = /[.\u3002\uFF0E\uFF61]/g, l = "Overflow: input needs wider integers to process", u = RangeError, c = r(a.exec), s = Math.floor, f = String.fromCharCode, d = r("".charCodeAt), p = r([].join), h = r([].push), v = r("".replace), m = r("".split), y = r("".toLowerCase), g = function(e3) {
      return e3 + 22 + 75 * (e3 < 26);
    }, b = function(e3, t3, n3) {
      var r2 = 0;
      for (e3 = n3 ? s(e3 / 700) : e3 >> 1, e3 += s(e3 / t3); e3 > 455; ) e3 = s(e3 / 35), r2 += 36;
      return s(r2 + 36 * e3 / (e3 + 38));
    }, w = function(e3) {
      var t3 = [];
      e3 = (function(e4) {
        for (var t4 = [], n4 = 0, r3 = e4.length; n4 < r3; ) {
          var o2 = d(e4, n4++);
          if (o2 >= 55296 && o2 <= 56319 && n4 < r3) {
            var i3 = d(e4, n4++);
            56320 == (64512 & i3) ? h(t4, ((1023 & o2) << 10) + (1023 & i3) + 65536) : (h(t4, o2), n4--);
          } else h(t4, o2);
        }
        return t4;
      })(e3);
      var n3, r2, i2 = e3.length, a2 = 128, c2 = 0, v2 = 72;
      for (n3 = 0; n3 < e3.length; n3++) (r2 = e3[n3]) < 128 && h(t3, f(r2));
      var m2 = t3.length, y2 = m2;
      for (m2 && h(t3, "-"); y2 < i2; ) {
        var w2 = o;
        for (n3 = 0; n3 < e3.length; n3++) (r2 = e3[n3]) >= a2 && r2 < w2 && (w2 = r2);
        var E = y2 + 1;
        if (w2 - a2 > s((o - c2) / E)) throw new u(l);
        for (c2 += (w2 - a2) * E, a2 = w2, n3 = 0; n3 < e3.length; n3++) {
          if ((r2 = e3[n3]) < a2 && ++c2 > o) throw new u(l);
          if (r2 === a2) {
            for (var S = c2, k = 36; ; ) {
              var x = k <= v2 ? 1 : k >= v2 + 26 ? 26 : k - v2;
              if (S < x) break;
              var C = S - x, O = 36 - x;
              h(t3, f(g(x + C % O))), S = s(C / O), k += 36;
            }
            h(t3, f(g(S))), v2 = b(c2, E, y2 === m2), c2 = 0, y2++;
          }
        }
        c2++, a2++;
      }
      return p(t3, "");
    };
    e2.exports = function(e3) {
      var t3, n3, r2 = [], o2 = m(v(y(e3), a, "."), ".");
      for (t3 = 0; t3 < o2.length; t3++) n3 = o2[t3], h(r2, c(i, n3) ? "xn--" + w(n3) : n3);
      return p(r2, ".");
    };
  }, 32041: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(34676), i = n2(35800);
    r({ target: "Object", stat: true }, { fromEntries: function(e3) {
      var t3 = {};
      return o(e3, function(e4, n3) {
        i(t3, e4, n3);
      }, { AS_ENTRIES: true }), t3;
    } });
  }, 32576: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(25624), i = n2(1585), a = n2(44289), l = "WebAssembly", u = o[l], c = 7 !== new Error("e", { cause: 7 }).cause, s = function(e3, t3) {
      var n3 = {};
      n3[e3] = a(e3, t3, c), r({ global: true, constructor: true, arity: 1, forced: c }, n3);
    }, f = function(e3, t3) {
      if (u && u[e3]) {
        var n3 = {};
        n3[e3] = a(l + "." + e3, t3, c), r({ target: l, stat: true, constructor: true, arity: 1, forced: c }, n3);
      }
    };
    s("Error", function(e3) {
      return function(t3) {
        return i(e3, this, arguments);
      };
    }), s("EvalError", function(e3) {
      return function(t3) {
        return i(e3, this, arguments);
      };
    }), s("RangeError", function(e3) {
      return function(t3) {
        return i(e3, this, arguments);
      };
    }), s("ReferenceError", function(e3) {
      return function(t3) {
        return i(e3, this, arguments);
      };
    }), s("SyntaxError", function(e3) {
      return function(t3) {
        return i(e3, this, arguments);
      };
    }), s("TypeError", function(e3) {
      return function(t3) {
        return i(e3, this, arguments);
      };
    }), s("URIError", function(e3) {
      return function(t3) {
        return i(e3, this, arguments);
      };
    }), f("CompileError", function(e3) {
      return function(t3) {
        return i(e3, this, arguments);
      };
    }), f("LinkError", function(e3) {
      return function(t3) {
        return i(e3, this, arguments);
      };
    }), f("RuntimeError", function(e3) {
      return function(t3) {
        return i(e3, this, arguments);
      };
    });
  }, 32786: function(e2, t2, n2) {
    "use strict";
    var r = n2(83941), o = n2(64159), i = n2(54237), a = n2(19912), l = n2(58003), u = TypeError;
    e2.exports = function(e3, t3) {
      var n3 = e3.exec;
      if (i(n3)) {
        var c = r(n3, e3, t3);
        return null !== c && o(c), c;
      }
      if ("RegExp" === a(e3)) return r(l, e3, t3);
      throw new u("RegExp#exec called on incompatible receiver");
    };
  }, 33522: function(e2, t2, n2) {
    "use strict";
    var r = n2(23182);
    e2.exports = function(e3, t3, n3) {
      for (var o = 0, i = arguments.length > 2 ? n3 : r(t3), a = new e3(i); i > o; ) a[o] = t3[o++];
      return a;
    };
  }, 34327: function(e2, t2, n2) {
    "use strict";
    var r = n2(54237), o = n2(50810), i = n2(50543);
    e2.exports = function(e3, t3, n3) {
      var a, l;
      return i && r(a = t3.constructor) && a !== n3 && o(l = a.prototype) && l !== n3.prototype && i(e3, l), e3;
    };
  }, 34529: function(e2, t2, n2) {
    "use strict";
    var r = n2(90043);
    e2.exports = function(e3, t3, n3) {
      for (var o = e3.length - 1; o >= 0; o--) if (void 0 !== e3[o]) try {
        n3 = r(e3[o].iterator, t3, n3);
      } catch (e4) {
        t3 = "throw", n3 = e4;
      }
      if ("throw" === t3) throw n3;
      return n3;
    };
  }, 34585: function(e2, t2, n2) {
    "use strict";
    var r = n2(83941), o = n2(18), i = n2(64159), a = n2(91791), l = n2(88523), u = TypeError;
    e2.exports = function(e3, t3) {
      var n3 = arguments.length < 2 ? l(e3) : t3;
      if (o(n3)) return i(r(n3, e3));
      throw new u(a(e3) + " is not iterable");
    };
  }, 34676: function(e2, t2, n2) {
    "use strict";
    var r = n2(75800), o = n2(83941), i = n2(64159), a = n2(91791), l = n2(44921), u = n2(23182), c = n2(29793), s = n2(34585), f = n2(88523), d = n2(90043), p = TypeError, h = function(e3, t3) {
      this.stopped = e3, this.result = t3;
    }, v = h.prototype;
    e2.exports = function(e3, t3, n3) {
      var m, y, g, b, w, E, S, k = n3 && n3.that, x = !(!n3 || !n3.AS_ENTRIES), C = !(!n3 || !n3.IS_RECORD), O = !(!n3 || !n3.IS_ITERATOR), P = !(!n3 || !n3.INTERRUPTED), T = r(t3, k), N = function(e4) {
        return m && d(m, "normal"), new h(true, e4);
      }, A = function(e4) {
        return x ? (i(e4), P ? T(e4[0], e4[1], N) : T(e4[0], e4[1])) : P ? T(e4, N) : T(e4);
      };
      if (C) m = e3.iterator;
      else if (O) m = e3;
      else {
        if (!(y = f(e3))) throw new p(a(e3) + " is not iterable");
        if (l(y)) {
          for (g = 0, b = u(e3); b > g; g++) if ((w = A(e3[g])) && c(v, w)) return w;
          return new h(false);
        }
        m = s(e3, y);
      }
      for (E = C ? e3.next : m.next; !(S = o(E, m)).done; ) {
        try {
          w = A(S.value);
        } catch (e4) {
          d(m, "throw", e4);
        }
        if ("object" == typeof w && w && c(v, w)) return w;
      }
      return new h(false);
    };
  }, 35066: function(e2, t2, n2) {
    "use strict";
    var r = n2(38006).PROPER, o = n2(60983), i = n2(56084);
    e2.exports = function(e3) {
      return o(function() {
        return !!i[e3]() || "​᠎" !== "​᠎"[e3]() || r && i[e3].name !== e3;
      });
    };
  }, 35800: function(e2, t2, n2) {
    "use strict";
    var r = n2(77604), o = n2(54489), i = n2(60332);
    e2.exports = function(e3, t3, n3) {
      r ? o.f(e3, t3, i(0, n3)) : e3[t3] = n3;
    };
  }, 36045: function(e2) {
    "use strict";
    var t2 = Math.ceil, n2 = Math.floor;
    e2.exports = Math.trunc || function(e3) {
      var r = +e3;
      return (r > 0 ? n2 : t2)(r);
    };
  }, 36691: function(e2, t2, n2) {
    "use strict";
    var r = n2(27956), o = n2(54237), i = n2(19912), a = n2(24939)("toStringTag"), l = Object, u = "Arguments" === i(/* @__PURE__ */ (function() {
      return arguments;
    })());
    e2.exports = r ? i : function(e3) {
      var t3, n3, r2;
      return void 0 === e3 ? "Undefined" : null === e3 ? "Null" : "string" == typeof (n3 = (function(e4, t4) {
        try {
          return e4[t4];
        } catch (e5) {
        }
      })(t3 = l(e3), a)) ? n3 : u ? i(t3) : "Object" === (r2 = i(t3)) && o(t3.callee) ? "Arguments" : r2;
    };
  }, 38006: function(e2, t2, n2) {
    "use strict";
    var r = n2(77604), o = n2(67961), i = Function.prototype, a = r && Object.getOwnPropertyDescriptor, l = o(i, "name"), u = l && "something" === function() {
    }.name, c = l && (!r || r && a(i, "name").configurable);
    e2.exports = { EXISTS: l, PROPER: u, CONFIGURABLE: c };
  }, 38221: function(e2) {
    "use strict";
    e2.exports = function(e3, t2) {
      try {
        1 === arguments.length ? console.error(e3) : console.error(e3, t2);
      } catch (e4) {
      }
    };
  }, 38356: function(e2) {
    "use strict";
    e2.exports = function(e3, t2) {
      var n2 = "function" == typeof Iterator && Iterator.prototype[e3];
      if (n2) try {
        n2.call({ next: null }, t2).next();
      } catch (e4) {
        return true;
      }
    };
  }, 38849: function(e2, t2, n2) {
    "use strict";
    var r, o, i, a = n2(60983), l = n2(54237), u = n2(50810), c = n2(31168), s = n2(25931), f = n2(49184), d = n2(24939), p = n2(17219), h = d("iterator"), v = false;
    [].keys && ("next" in (i = [].keys()) ? (o = s(s(i))) !== Object.prototype && (r = o) : v = true), !u(r) || a(function() {
      var e3 = {};
      return r[h].call(e3) !== e3;
    }) ? r = {} : p && (r = c(r)), l(r[h]) || f(r, h, function() {
      return this;
    }), e2.exports = { IteratorPrototype: r, BUGGY_SAFARI_ITERATORS: v };
  }, 39216: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = n2(67961), i = SyntaxError, a = parseInt, l = String.fromCharCode, u = r("".charAt), c = r("".slice), s = r(/./.exec), f = { '\\"': '"', "\\\\": "\\", "\\/": "/", "\\b": "\b", "\\f": "\f", "\\n": "\n", "\\r": "\r", "\\t": "	" }, d = /^[\da-f]{4}$/i, p = /^[\u0000-\u001F]$/;
    e2.exports = function(e3, t3) {
      for (var n3 = true, r2 = ""; t3 < e3.length; ) {
        var h = u(e3, t3);
        if ("\\" === h) {
          var v = c(e3, t3, t3 + 2);
          if (o(f, v)) r2 += f[v], t3 += 2;
          else {
            if ("\\u" !== v) throw new i('Unknown escape sequence: "' + v + '"');
            var m = c(e3, t3 += 2, t3 + 4);
            if (!s(d, m)) throw new i("Bad Unicode escape at: " + t3);
            r2 += l(a(m, 16)), t3 += 4;
          }
        } else {
          if ('"' === h) {
            n3 = false, t3++;
            break;
          }
          if (s(p, h)) throw new i("Bad control character in string literal at: " + t3);
          r2 += h, t3++;
        }
      }
      if (n3) throw new i("Unterminated string at: " + t3);
      return { value: r2, end: t3 };
    };
  }, 40321: function(e2, t2, n2) {
    "use strict";
    var r = n2(44910), o = n2(2452), i = n2(61324).CONSTRUCTOR;
    e2.exports = i || !o(function(e3) {
      r.all(e3).then(void 0, function() {
      });
    });
  }, 40522: function(e2) {
    "use strict";
    var t2 = 4503599627370496;
    e2.exports = function(e3) {
      return e3 + t2 - t2;
    };
  }, 40523: function(e2, t2, n2) {
    "use strict";
    var r = n2(60983), o = n2(25624).RegExp;
    e2.exports = r(function() {
      var e3 = o(".", "s");
      return !(e3.dotAll && e3.test("\n") && "s" === e3.flags);
    });
  }, 40699: function(e2) {
    "use strict";
    e2.exports = "undefined" != typeof ArrayBuffer && "undefined" != typeof DataView;
  }, 41558: function(e2, t2, n2) {
    "use strict";
    n2(89580);
    var r, o = n2(18654), i = n2(77604), a = n2(56768), l = n2(25624), u = n2(75800), c = n2(22440), s = n2(49184), f = n2(46146), d = n2(17535), p = n2(67961), h = n2(95741), v = n2(94436), m = n2(90936), y = n2(335).codeAt, g = n2(32029), b = n2(85927), w = n2(97655), E = n2(77188), S = n2(2958), k = n2(17029), x = k.set, C = k.getterFor("URL"), O = S.URLSearchParams, P = S.getState, T = l.URL, N = l.TypeError, A = l.parseInt, R = Math.floor, _ = Math.pow, j = c("".charAt), L = c(/./.exec), D = c([].join), I = c(1.1.toString), z = c([].pop), F = c([].push), M = c("".replace), U = c([].shift), B = c("".split), H = c("".slice), W = c("".toLowerCase), q = c([].unshift), $ = "Invalid scheme", V = "Invalid host", G = "Invalid port", K = /[a-z]/i, Q = /[\d+-.a-z]/i, Y = /\d/, X = /^0x/i, J = /^[0-7]+$/, Z = /^\d+$/, ee = /^[\da-f]+$/i, te = /[\0\t\n\r #%/:<>?@[\\\]^|]/, ne = /[\0\t\n\r #/:<>?@[\\\]^|]/, re = /^[\u0000-\u0020]+/, oe = /(^|[^\u0000-\u0020])[\u0000-\u0020]+$/, ie = /[\t\n\r]/g, ae = function(e3) {
      var t3, n3, r2, o2;
      if ("number" == typeof e3) {
        for (t3 = [], n3 = 0; n3 < 4; n3++) q(t3, e3 % 256), e3 = R(e3 / 256);
        return D(t3, ".");
      }
      if ("object" == typeof e3) {
        for (t3 = "", r2 = (function(e4) {
          for (var t4 = null, n4 = 1, r3 = null, o3 = 0, i2 = 0; i2 < 8; i2++) 0 !== e4[i2] ? (o3 > n4 && (t4 = r3, n4 = o3), r3 = null, o3 = 0) : (null === r3 && (r3 = i2), ++o3);
          return o3 > n4 ? r3 : t4;
        })(e3), n3 = 0; n3 < 8; n3++) o2 && 0 === e3[n3] || (o2 && (o2 = false), r2 === n3 ? (t3 += n3 ? ":" : "::", o2 = true) : (t3 += I(e3[n3], 16), n3 < 7 && (t3 += ":")));
        return "[" + t3 + "]";
      }
      return e3;
    }, le = {}, ue = h({}, le, { " ": 1, '"': 1, "<": 1, ">": 1, "`": 1 }), ce = h({}, ue, { "#": 1, "?": 1, "{": 1, "}": 1 }), se = h({}, ce, { "/": 1, ":": 1, ";": 1, "=": 1, "@": 1, "[": 1, "\\": 1, "]": 1, "^": 1, "|": 1 }), fe = function(e3, t3) {
      var n3 = y(e3, 0);
      return n3 > 32 && n3 < 127 && !p(t3, e3) ? e3 : encodeURIComponent(e3);
    }, de = { ftp: 21, file: null, http: 80, https: 443, ws: 80, wss: 443 }, pe = function(e3, t3) {
      var n3;
      return 2 === e3.length && L(K, j(e3, 0)) && (":" === (n3 = j(e3, 1)) || !t3 && "|" === n3);
    }, he = function(e3) {
      var t3;
      return e3.length > 1 && pe(H(e3, 0, 2)) && (2 === e3.length || "/" === (t3 = j(e3, 2)) || "\\" === t3 || "?" === t3 || "#" === t3);
    }, ve = function(e3) {
      return "." === e3 || "%2e" === W(e3);
    }, me = function(e3) {
      return ".." === (e3 = W(e3)) || "%2e." === e3 || ".%2e" === e3 || "%2e%2e" === e3;
    }, ye = {}, ge = {}, be = {}, we = {}, Ee = {}, Se = {}, ke = {}, xe = {}, Ce = {}, Oe = {}, Pe = {}, Te = {}, Ne = {}, Ae = {}, Re = {}, _e = {}, je = {}, Le = {}, De = {}, Ie = {}, ze = {}, Fe = function(e3, t3, n3) {
      var r2, o2, i2, a2 = b(e3);
      if (t3) {
        if (o2 = this.parse(a2)) throw new N(o2);
        this.searchParams = null;
      } else {
        if (void 0 !== n3 && (r2 = new Fe(n3, true)), o2 = this.parse(a2, null, r2)) throw new N(o2);
        (i2 = P(new O())).bindURL(this), this.searchParams = i2;
      }
    };
    Fe.prototype = { type: "URL", parse: function(e3, t3, n3) {
      var o2, i2, a2, l2, u2 = this, c2 = t3 || ye, s2 = 0, f2 = "", d2 = false, h2 = false, y2 = false;
      for (e3 = b(e3), t3 || (u2.scheme = "", u2.username = "", u2.password = "", u2.host = null, u2.port = null, u2.path = [], u2.query = null, u2.fragment = null, u2.cannotBeABaseURL = false, e3 = M(e3, re, ""), e3 = M(e3, oe, "$1")), e3 = M(e3, ie, ""), o2 = v(e3); s2 <= o2.length; ) {
        switch (i2 = o2[s2], c2) {
          case ye:
            if (!i2 || !L(K, i2)) {
              if (t3) return $;
              c2 = be;
              continue;
            }
            f2 += W(i2), c2 = ge;
            break;
          case ge:
            if (i2 && (L(Q, i2) || "+" === i2 || "-" === i2 || "." === i2)) f2 += W(i2);
            else {
              if (":" !== i2) {
                if (t3) return $;
                f2 = "", c2 = be, s2 = 0;
                continue;
              }
              if (t3 && (u2.isSpecial() !== p(de, f2) || "file" === f2 && (u2.includesCredentials() || null !== u2.port) || "file" === u2.scheme && !u2.host)) return;
              if (u2.scheme = f2, t3) return void (u2.isSpecial() && de[u2.scheme] === u2.port && (u2.port = null));
              f2 = "", "file" === u2.scheme ? c2 = Ae : u2.isSpecial() && n3 && n3.scheme === u2.scheme ? c2 = we : u2.isSpecial() ? c2 = xe : "/" === o2[s2 + 1] ? (c2 = Ee, s2++) : (u2.cannotBeABaseURL = true, F(u2.path, ""), c2 = De);
            }
            break;
          case be:
            if (!n3 || n3.cannotBeABaseURL && "#" !== i2) return $;
            if (n3.cannotBeABaseURL && "#" === i2) {
              u2.scheme = n3.scheme, u2.path = m(n3.path), u2.query = n3.query, u2.fragment = "", u2.cannotBeABaseURL = true, c2 = ze;
              break;
            }
            c2 = "file" === n3.scheme ? Ae : Se;
            continue;
          case we:
            if ("/" !== i2 || "/" !== o2[s2 + 1]) {
              c2 = Se;
              continue;
            }
            c2 = Ce, s2++;
            break;
          case Ee:
            if ("/" === i2) {
              c2 = Oe;
              break;
            }
            c2 = Le;
            continue;
          case Se:
            if (u2.scheme = n3.scheme, i2 === r) u2.username = n3.username, u2.password = n3.password, u2.host = n3.host, u2.port = n3.port, u2.path = m(n3.path), u2.query = n3.query;
            else if ("/" === i2 || "\\" === i2 && u2.isSpecial()) c2 = ke;
            else if ("?" === i2) u2.username = n3.username, u2.password = n3.password, u2.host = n3.host, u2.port = n3.port, u2.path = m(n3.path), u2.query = "", c2 = Ie;
            else {
              if ("#" !== i2) {
                u2.username = n3.username, u2.password = n3.password, u2.host = n3.host, u2.port = n3.port, u2.path = m(n3.path), u2.path.length--, c2 = Le;
                continue;
              }
              u2.username = n3.username, u2.password = n3.password, u2.host = n3.host, u2.port = n3.port, u2.path = m(n3.path), u2.query = n3.query, u2.fragment = "", c2 = ze;
            }
            break;
          case ke:
            if (!u2.isSpecial() || "/" !== i2 && "\\" !== i2) {
              if ("/" !== i2) {
                u2.username = n3.username, u2.password = n3.password, u2.host = n3.host, u2.port = n3.port, c2 = Le;
                continue;
              }
              c2 = Oe;
            } else c2 = Ce;
            break;
          case xe:
            if (c2 = Ce, "/" !== i2 || "/" !== j(f2, s2 + 1)) continue;
            s2++;
            break;
          case Ce:
            if ("/" !== i2 && "\\" !== i2) {
              c2 = Oe;
              continue;
            }
            break;
          case Oe:
            if ("@" === i2) {
              d2 && (f2 = "%40" + f2), d2 = true, a2 = v(f2);
              for (var g2 = 0; g2 < a2.length; g2++) {
                var w2 = a2[g2];
                if (":" !== w2 || y2) {
                  var E2 = fe(w2, se);
                  y2 ? u2.password += E2 : u2.username += E2;
                } else y2 = true;
              }
              f2 = "";
            } else if (i2 === r || "/" === i2 || "?" === i2 || "#" === i2 || "\\" === i2 && u2.isSpecial()) {
              if (d2 && "" === f2) return "Invalid authority";
              s2 -= v(f2).length + 1, f2 = "", c2 = Pe;
            } else f2 += i2;
            break;
          case Pe:
          case Te:
            if (t3 && "file" === u2.scheme) {
              c2 = _e;
              continue;
            }
            if (":" !== i2 || h2) {
              if (i2 === r || "/" === i2 || "?" === i2 || "#" === i2 || "\\" === i2 && u2.isSpecial()) {
                if (u2.isSpecial() && "" === f2) return V;
                if (t3 && "" === f2 && (u2.includesCredentials() || null !== u2.port)) return;
                if (l2 = u2.parseHost(f2)) return l2;
                if (f2 = "", c2 = je, t3) return;
                continue;
              }
              "[" === i2 ? h2 = true : "]" === i2 && (h2 = false), f2 += i2;
            } else {
              if ("" === f2) return V;
              if (l2 = u2.parseHost(f2)) return l2;
              if (f2 = "", c2 = Ne, t3 === Te) return;
            }
            break;
          case Ne:
            if (!L(Y, i2)) {
              if (i2 === r || "/" === i2 || "?" === i2 || "#" === i2 || "\\" === i2 && u2.isSpecial() || t3) {
                if ("" !== f2) {
                  var S2 = A(f2, 10);
                  if (S2 > 65535) return G;
                  u2.port = u2.isSpecial() && S2 === de[u2.scheme] ? null : S2, f2 = "";
                }
                if (t3) return;
                c2 = je;
                continue;
              }
              return G;
            }
            f2 += i2;
            break;
          case Ae:
            if (u2.scheme = "file", "/" === i2 || "\\" === i2) c2 = Re;
            else {
              if (!n3 || "file" !== n3.scheme) {
                c2 = Le;
                continue;
              }
              switch (i2) {
                case r:
                  u2.host = n3.host, u2.path = m(n3.path), u2.query = n3.query;
                  break;
                case "?":
                  u2.host = n3.host, u2.path = m(n3.path), u2.query = "", c2 = Ie;
                  break;
                case "#":
                  u2.host = n3.host, u2.path = m(n3.path), u2.query = n3.query, u2.fragment = "", c2 = ze;
                  break;
                default:
                  he(D(m(o2, s2), "")) || (u2.host = n3.host, u2.path = m(n3.path), u2.shortenPath()), c2 = Le;
                  continue;
              }
            }
            break;
          case Re:
            if ("/" === i2 || "\\" === i2) {
              c2 = _e;
              break;
            }
            n3 && "file" === n3.scheme && !he(D(m(o2, s2), "")) && (pe(n3.path[0], true) ? F(u2.path, n3.path[0]) : u2.host = n3.host), c2 = Le;
            continue;
          case _e:
            if (i2 === r || "/" === i2 || "\\" === i2 || "?" === i2 || "#" === i2) {
              if (!t3 && pe(f2)) c2 = Le;
              else if ("" === f2) {
                if (u2.host = "", t3) return;
                c2 = je;
              } else {
                if (l2 = u2.parseHost(f2)) return l2;
                if ("localhost" === u2.host && (u2.host = ""), t3) return;
                f2 = "", c2 = je;
              }
              continue;
            }
            f2 += i2;
            break;
          case je:
            if (u2.isSpecial()) {
              if (c2 = Le, "/" !== i2 && "\\" !== i2) continue;
            } else if (t3 || "?" !== i2) if (t3 || "#" !== i2) {
              if (i2 !== r && (c2 = Le, "/" !== i2)) continue;
            } else u2.fragment = "", c2 = ze;
            else u2.query = "", c2 = Ie;
            break;
          case Le:
            if (i2 === r || "/" === i2 || "\\" === i2 && u2.isSpecial() || !t3 && ("?" === i2 || "#" === i2)) {
              if (me(f2) ? (u2.shortenPath(), "/" === i2 || "\\" === i2 && u2.isSpecial() || F(u2.path, "")) : ve(f2) ? "/" === i2 || "\\" === i2 && u2.isSpecial() || F(u2.path, "") : ("file" === u2.scheme && !u2.path.length && pe(f2) && (u2.host && (u2.host = ""), f2 = j(f2, 0) + ":"), F(u2.path, f2)), f2 = "", "file" === u2.scheme && (i2 === r || "?" === i2 || "#" === i2)) for (; u2.path.length > 1 && "" === u2.path[0]; ) U(u2.path);
              "?" === i2 ? (u2.query = "", c2 = Ie) : "#" === i2 && (u2.fragment = "", c2 = ze);
            } else f2 += fe(i2, ce);
            break;
          case De:
            "?" === i2 ? (u2.query = "", c2 = Ie) : "#" === i2 ? (u2.fragment = "", c2 = ze) : i2 !== r && (u2.path[0] += fe(i2, le));
            break;
          case Ie:
            t3 || "#" !== i2 ? i2 !== r && ("'" === i2 && u2.isSpecial() ? u2.query += "%27" : u2.query += "#" === i2 ? "%23" : fe(i2, le)) : (u2.fragment = "", c2 = ze);
            break;
          case ze:
            i2 !== r && (u2.fragment += fe(i2, ue));
        }
        s2++;
      }
    }, parseHost: function(e3) {
      var t3, n3, r2;
      if ("[" === j(e3, 0)) {
        if ("]" !== j(e3, e3.length - 1)) return V;
        if (t3 = (function(e4) {
          var t4, n4, r3, o2, i2, a2, l2, u2 = [0, 0, 0, 0, 0, 0, 0, 0], c2 = 0, s2 = null, f2 = 0, d2 = function() {
            return j(e4, f2);
          };
          if (":" === d2()) {
            if (":" !== j(e4, 1)) return;
            f2 += 2, s2 = ++c2;
          }
          for (; d2(); ) {
            if (8 === c2) return;
            if (":" !== d2()) {
              for (t4 = n4 = 0; n4 < 4 && L(ee, d2()); ) t4 = 16 * t4 + A(d2(), 16), f2++, n4++;
              if ("." === d2()) {
                if (0 === n4) return;
                if (f2 -= n4, c2 > 6) return;
                for (r3 = 0; d2(); ) {
                  if (o2 = null, r3 > 0) {
                    if (!("." === d2() && r3 < 4)) return;
                    f2++;
                  }
                  if (!L(Y, d2())) return;
                  for (; L(Y, d2()); ) {
                    if (i2 = A(d2(), 10), null === o2) o2 = i2;
                    else {
                      if (0 === o2) return;
                      o2 = 10 * o2 + i2;
                    }
                    if (o2 > 255) return;
                    f2++;
                  }
                  u2[c2] = 256 * u2[c2] + o2, 2 !== ++r3 && 4 !== r3 || c2++;
                }
                if (4 !== r3) return;
                break;
              }
              if (":" === d2()) {
                if (f2++, !d2()) return;
              } else if (d2()) return;
              u2[c2++] = t4;
            } else {
              if (null !== s2) return;
              f2++, s2 = ++c2;
            }
          }
          if (null !== s2) for (a2 = c2 - s2, c2 = 7; 0 !== c2 && a2 > 0; ) l2 = u2[c2], u2[c2--] = u2[s2 + a2 - 1], u2[s2 + --a2] = l2;
          else if (8 !== c2) return;
          return u2;
        })(H(e3, 1, -1)), !t3) return V;
        this.host = t3;
      } else if (this.isSpecial()) {
        if (e3 = g(e3), L(te, e3)) return V;
        if (t3 = (function(e4) {
          var t4, n4, r3, o2, i2, a2, l2, u2 = B(e4, ".");
          if (u2.length && "" === u2[u2.length - 1] && u2.length--, (t4 = u2.length) > 4) return e4;
          for (n4 = [], r3 = 0; r3 < t4; r3++) {
            if ("" === (o2 = u2[r3])) return e4;
            if (i2 = 10, o2.length > 1 && "0" === j(o2, 0) && (i2 = L(X, o2) ? 16 : 8, o2 = H(o2, 8 === i2 ? 1 : 2)), "" === o2) a2 = 0;
            else {
              if (!L(10 === i2 ? Z : 8 === i2 ? J : ee, o2)) return e4;
              a2 = A(o2, i2);
            }
            F(n4, a2);
          }
          for (r3 = 0; r3 < t4; r3++) if (a2 = n4[r3], r3 === t4 - 1) {
            if (a2 >= _(256, 5 - t4)) return null;
          } else if (a2 > 255) return null;
          for (l2 = z(n4), r3 = 0; r3 < n4.length; r3++) l2 += n4[r3] * _(256, 3 - r3);
          return l2;
        })(e3), null === t3) return V;
        this.host = t3;
      } else {
        if (L(ne, e3)) return V;
        for (t3 = "", n3 = v(e3), r2 = 0; r2 < n3.length; r2++) t3 += fe(n3[r2], le);
        this.host = t3;
      }
    }, cannotHaveUsernamePasswordPort: function() {
      return !this.host || this.cannotBeABaseURL || "file" === this.scheme;
    }, includesCredentials: function() {
      return "" !== this.username || "" !== this.password;
    }, isSpecial: function() {
      return p(de, this.scheme);
    }, shortenPath: function() {
      var e3 = this.path, t3 = e3.length;
      !t3 || "file" === this.scheme && 1 === t3 && pe(e3[0], true) || e3.length--;
    }, serialize: function() {
      var e3 = this, t3 = e3.scheme, n3 = e3.username, r2 = e3.password, o2 = e3.host, i2 = e3.port, a2 = e3.path, l2 = e3.query, u2 = e3.fragment, c2 = t3 + ":";
      return null !== o2 ? (c2 += "//", e3.includesCredentials() && (c2 += n3 + (r2 ? ":" + r2 : "") + "@"), c2 += ae(o2), null !== i2 && (c2 += ":" + i2)) : "file" === t3 && (c2 += "//"), c2 += e3.cannotBeABaseURL ? a2[0] : a2.length ? "/" + D(a2, "/") : "", null !== l2 && (c2 += "?" + l2), null !== u2 && (c2 += "#" + u2), c2;
    }, setHref: function(e3) {
      var t3 = this.parse(e3);
      if (t3) throw new N(t3);
      this.searchParams.update();
    }, getOrigin: function() {
      var e3 = this.scheme, t3 = this.port;
      if ("blob" === e3) try {
        return new Me(e3.path[0]).origin;
      } catch (e4) {
        return "null";
      }
      return "file" !== e3 && this.isSpecial() ? e3 + "://" + ae(this.host) + (null !== t3 ? ":" + t3 : "") : "null";
    }, getProtocol: function() {
      return this.scheme + ":";
    }, setProtocol: function(e3) {
      this.parse(b(e3) + ":", ye);
    }, getUsername: function() {
      return this.username;
    }, setUsername: function(e3) {
      var t3 = v(b(e3));
      if (!this.cannotHaveUsernamePasswordPort()) {
        this.username = "";
        for (var n3 = 0; n3 < t3.length; n3++) this.username += fe(t3[n3], se);
      }
    }, getPassword: function() {
      return this.password;
    }, setPassword: function(e3) {
      var t3 = v(b(e3));
      if (!this.cannotHaveUsernamePasswordPort()) {
        this.password = "";
        for (var n3 = 0; n3 < t3.length; n3++) this.password += fe(t3[n3], se);
      }
    }, getHost: function() {
      var e3 = this.host, t3 = this.port;
      return null === e3 ? "" : null === t3 ? ae(e3) : ae(e3) + ":" + t3;
    }, setHost: function(e3) {
      this.cannotBeABaseURL || this.parse(e3, Pe);
    }, getHostname: function() {
      var e3 = this.host;
      return null === e3 ? "" : ae(e3);
    }, setHostname: function(e3) {
      this.cannotBeABaseURL || this.parse(e3, Te);
    }, getPort: function() {
      var e3 = this.port;
      return null === e3 ? "" : b(e3);
    }, setPort: function(e3) {
      this.cannotHaveUsernamePasswordPort() || ("" === (e3 = b(e3)) ? this.port = null : this.parse(e3, Ne));
    }, getPathname: function() {
      var e3 = this.path;
      return this.cannotBeABaseURL ? e3[0] : e3.length ? "/" + D(e3, "/") : "";
    }, setPathname: function(e3) {
      this.cannotBeABaseURL || (this.path = [], this.parse(e3, je));
    }, getSearch: function() {
      var e3 = this.query;
      return e3 ? "?" + e3 : "";
    }, setSearch: function(e3) {
      "" === (e3 = b(e3)) ? this.query = null : ("?" === j(e3, 0) && (e3 = H(e3, 1)), this.query = "", this.parse(e3, Ie)), this.searchParams.update();
    }, getSearchParams: function() {
      return this.searchParams.facade;
    }, getHash: function() {
      var e3 = this.fragment;
      return e3 ? "#" + e3 : "";
    }, setHash: function(e3) {
      "" !== (e3 = b(e3)) ? ("#" === j(e3, 0) && (e3 = H(e3, 1)), this.fragment = "", this.parse(e3, ze)) : this.fragment = null;
    }, update: function() {
      this.query = this.searchParams.serialize() || null;
    } };
    var Me = function(e3) {
      var t3 = d(this, Ue), n3 = E(arguments.length, 1) > 1 ? arguments[1] : void 0, r2 = x(t3, new Fe(e3, false, n3));
      i || (t3.href = r2.serialize(), t3.origin = r2.getOrigin(), t3.protocol = r2.getProtocol(), t3.username = r2.getUsername(), t3.password = r2.getPassword(), t3.host = r2.getHost(), t3.hostname = r2.getHostname(), t3.port = r2.getPort(), t3.pathname = r2.getPathname(), t3.search = r2.getSearch(), t3.searchParams = r2.getSearchParams(), t3.hash = r2.getHash());
    }, Ue = Me.prototype, Be = function(e3, t3) {
      return { get: function() {
        return C(this)[e3]();
      }, set: t3 && function(e4) {
        return C(this)[t3](e4);
      }, configurable: true, enumerable: true };
    };
    if (i && (f(Ue, "href", Be("serialize", "setHref")), f(Ue, "origin", Be("getOrigin")), f(Ue, "protocol", Be("getProtocol", "setProtocol")), f(Ue, "username", Be("getUsername", "setUsername")), f(Ue, "password", Be("getPassword", "setPassword")), f(Ue, "host", Be("getHost", "setHost")), f(Ue, "hostname", Be("getHostname", "setHostname")), f(Ue, "port", Be("getPort", "setPort")), f(Ue, "pathname", Be("getPathname", "setPathname")), f(Ue, "search", Be("getSearch", "setSearch")), f(Ue, "searchParams", Be("getSearchParams")), f(Ue, "hash", Be("getHash", "setHash"))), s(Ue, "toJSON", function() {
      return C(this).serialize();
    }, { enumerable: true }), s(Ue, "toString", function() {
      return C(this).serialize();
    }, { enumerable: true }), T) {
      var He = T.createObjectURL, We = T.revokeObjectURL;
      He && s(Me, "createObjectURL", u(He, T)), We && s(Me, "revokeObjectURL", u(We, T));
    }
    w(Me, "URL"), o({ global: true, constructor: true, forced: !a, sham: !i }, { URL: Me });
  }, 41864: function(e2, t2, n2) {
    "use strict";
    var r = n2(60684), o = n2(67087);
    e2.exports = Object.keys || function(e3) {
      return r(e3, o);
    };
  }, 43252: function(e2, t2, n2) {
    "use strict";
    var r = n2(77948), o = n2(22440), i = n2(18), a = n2(33522), l = r.aTypedArray, u = r.getTypedArrayConstructor, c = r.exportTypedArrayMethod, s = o(r.TypedArrayPrototype.sort);
    c("toSorted", function(e3) {
      void 0 !== e3 && i(e3);
      var t3 = l(this), n3 = a(u(t3), t3);
      return s(n3, e3);
    });
  }, 44260: function(e2, t2, n2) {
    "use strict";
    var r = n2(60983), o = n2(54237), i = /#|\.prototype\./, a = function(e3, t3) {
      var n3 = u[l(e3)];
      return n3 === s || n3 !== c && (o(t3) ? r(t3) : !!t3);
    }, l = a.normalize = function(e3) {
      return String(e3).replace(i, ".").toLowerCase();
    }, u = a.data = {}, c = a.NATIVE = "N", s = a.POLYFILL = "P";
    e2.exports = a;
  }, 44289: function(e2, t2, n2) {
    "use strict";
    var r = n2(64703), o = n2(67961), i = n2(49123), a = n2(29793), l = n2(50543), u = n2(68948), c = n2(72712), s = n2(34327), f = n2(10163), d = n2(57752), p = n2(3875), h = n2(77604), v = n2(17219);
    e2.exports = function(e3, t3, n3, m) {
      var y = "stackTraceLimit", g = m ? 2 : 1, b = e3.split("."), w = b[b.length - 1], E = r.apply(null, b);
      if (E) {
        var S = E.prototype;
        if (!v && o(S, "cause") && delete S.cause, !n3) return E;
        var k = r("Error"), x = t3(function(e4, t4) {
          var n4 = f(m ? t4 : e4, void 0), r2 = m ? new E(e4) : new E();
          return void 0 !== n4 && i(r2, "message", n4), p(r2, x, r2.stack, 2), this && a(S, this) && s(r2, this, x), arguments.length > g && d(r2, arguments[g]), r2;
        });
        if (x.prototype = S, "Error" !== w ? l ? l(x, k) : u(x, k, { name: true }) : h && y in E && (c(x, E, y), c(x, E, "prepareStackTrace")), u(x, E), !v) try {
          S.name !== w && i(S, "name", w), S.constructor = x;
        } catch (e4) {
        }
        return x;
      }
    };
  }, 44295: function(e2, t2, n2) {
    "use strict";
    var r = n2(97736), o = "function" == typeof Object.is ? Object.is : function(e3, t3) {
      return e3 === t3 && (0 !== e3 || 1 / e3 == 1 / t3) || e3 != e3 && t3 != t3;
    }, i = r.useSyncExternalStore, a = r.useRef, l = r.useEffect, u = r.useMemo, c = r.useDebugValue;
    t2.useSyncExternalStoreWithSelector = function(e3, t3, n3, r2, s) {
      var f = a(null);
      if (null === f.current) {
        var d = { hasValue: false, value: null };
        f.current = d;
      } else d = f.current;
      f = u(function() {
        function e4(e5) {
          if (!l2) {
            if (l2 = true, i2 = e5, e5 = r2(e5), void 0 !== s && d.hasValue) {
              var t4 = d.value;
              if (s(t4, e5)) return a2 = t4;
            }
            return a2 = e5;
          }
          if (t4 = a2, o(i2, e5)) return t4;
          var n4 = r2(e5);
          return void 0 !== s && s(t4, n4) ? (i2 = e5, t4) : (i2 = e5, a2 = n4);
        }
        var i2, a2, l2 = false, u2 = void 0 === n3 ? null : n3;
        return [function() {
          return e4(t3());
        }, null === u2 ? void 0 : function() {
          return e4(u2());
        }];
      }, [t3, n3, r2, s]);
      var p = i(e3, f[0], f[1]);
      return l(function() {
        d.hasValue = true, d.value = p;
      }, [p]), c(p), p;
    };
  }, 44429: function(e2, t2, n2) {
    "use strict";
    var r = n2(50810);
    e2.exports = function(e3) {
      return r(e3) || null === e3;
    };
  }, 44910: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624);
    e2.exports = r.Promise;
  }, 44921: function(e2, t2, n2) {
    "use strict";
    var r = n2(24939), o = n2(47797), i = r("iterator"), a = Array.prototype;
    e2.exports = function(e3) {
      return void 0 !== e3 && (o.Array === e3 || a[i] === e3);
    };
  }, 45327: function(e2, t2, n2) {
    "use strict";
    var r = n2(50810), o = Math.floor;
    e2.exports = Number.isInteger || function(e3) {
      return !r(e3) && isFinite(e3) && o(e3) === e3;
    };
  }, 46146: function(e2, t2, n2) {
    "use strict";
    var r = n2(7171), o = n2(54489);
    e2.exports = function(e3, t3, n3) {
      return n3.get && r(n3.get, t3, { getter: true }), n3.set && r(n3.set, t3, { setter: true }), o.f(e3, t3, n3);
    };
  }, 46349: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = n2(81478), i = n2(85927), a = n2(26069), l = n2(24686), u = r(a), c = r("".slice), s = Math.ceil, f = function(e3) {
      return function(t3, n3, r2) {
        var a2, f2, d = i(l(t3)), p = o(n3), h = d.length, v = void 0 === r2 ? " " : i(r2);
        return p <= h || "" === v ? d : ((f2 = u(v, s((a2 = p - h) / v.length))).length > a2 && (f2 = c(f2, 0, a2)), e3 ? d + f2 : f2 + d);
      };
    };
    e2.exports = { start: f(false), end: f(true) };
  }, 47343: function(e2, t2, n2) {
    "use strict";
    var r = n2(74511).match(/AppleWebKit\/(\d+)\./);
    e2.exports = !!r && +r[1];
  }, 47350: function(e2, t2, n2) {
    "use strict";
    var r = n2(77604), o = n2(60983);
    e2.exports = r && o(function() {
      return 42 !== Object.defineProperty(function() {
      }, "prototype", { value: 42, writable: false }).prototype;
    });
  }, 47797: function(e2) {
    "use strict";
    e2.exports = {};
  }, 47985: function(e2, t2, n2) {
    "use strict";
    var r = n2(74511);
    e2.exports = /ipad|iphone|ipod/i.test(r) && "undefined" != typeof Pebble;
  }, 47989: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(60983), i = r.RegExp, a = !o(function() {
      var e3 = true;
      try {
        i(".", "d");
      } catch (t4) {
        e3 = false;
      }
      var t3 = {}, n3 = "", r2 = e3 ? "dgimsy" : "gimsy", o2 = function(e4, r3) {
        Object.defineProperty(t3, e4, { get: function() {
          return n3 += r3, true;
        } });
      }, a2 = { dotAll: "s", global: "g", ignoreCase: "i", multiline: "m", sticky: "y" };
      for (var l in e3 && (a2.hasIndices = "d"), a2) o2(l, a2[l]);
      return Object.getOwnPropertyDescriptor(i.prototype, "flags").get.call(t3) !== r2 || n3 !== r2;
    });
    e2.exports = { correct: a };
  }, 47991: function(e2, t2, n2) {
    "use strict";
    var r = n2(98588), o = TypeError;
    e2.exports = function(e3) {
      if (r(e3)) throw new o("The method doesn't accept regular expressions");
      return e3;
    };
  }, 48621: function(e2) {
    "use strict";
    var t2 = TypeError;
    e2.exports = function(e3) {
      if (e3 > 9007199254740991) throw t2("Maximum allowed index exceeded");
      return e3;
    };
  }, 48779: function(e2, t2, n2) {
    "use strict";
    var r = n2(77604), o = n2(83941), i = n2(28493), a = n2(60332), l = n2(1549), u = n2(31601), c = n2(67961), s = n2(70517), f = Object.getOwnPropertyDescriptor;
    t2.f = r ? f : function(e3, t3) {
      if (e3 = l(e3), t3 = u(t3), s) try {
        return f(e3, t3);
      } catch (e4) {
      }
      if (c(e3, t3)) return a(!o(i.f, e3, t3), e3[t3]);
    };
  }, 49123: function(e2, t2, n2) {
    "use strict";
    var r = n2(77604), o = n2(54489), i = n2(60332);
    e2.exports = r ? function(e3, t3, n3) {
      return o.f(e3, t3, i(1, n3));
    } : function(e3, t3, n3) {
      return e3[t3] = n3, e3;
    };
  }, 49184: function(e2, t2, n2) {
    "use strict";
    var r = n2(54237), o = n2(54489), i = n2(7171), a = n2(95905);
    e2.exports = function(e3, t3, n3, l) {
      l || (l = {});
      var u = l.enumerable, c = void 0 !== l.name ? l.name : t3;
      if (r(n3) && i(n3, c, l), l.global) u ? e3[t3] = n3 : a(t3, n3);
      else {
        try {
          l.unsafe ? e3[t3] && (u = true) : delete e3[t3];
        } catch (e4) {
        }
        u ? e3[t3] = n3 : o.f(e3, t3, { value: n3, enumerable: false, configurable: !l.nonConfigurable, writable: !l.nonWritable });
      }
      return e3;
    };
  }, 50543: function(e2, t2, n2) {
    "use strict";
    var r = n2(27258), o = n2(50810), i = n2(24686), a = n2(72618);
    e2.exports = Object.setPrototypeOf || ("__proto__" in {} ? (function() {
      var e3, t3 = false, n3 = {};
      try {
        (e3 = r(Object.prototype, "__proto__", "set"))(n3, []), t3 = n3 instanceof Array;
      } catch (e4) {
      }
      return function(n4, r2) {
        return i(n4), a(r2), o(n4) ? (t3 ? e3(n4, r2) : n4.__proto__ = r2, n4) : n4;
      };
    })() : void 0);
  }, 50810: function(e2, t2, n2) {
    "use strict";
    var r = n2(54237);
    e2.exports = function(e3) {
      return "object" == typeof e3 ? null !== e3 : r(e3);
    };
  }, 50911: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(97817).includes, i = n2(60983), a = n2(65933);
    r({ target: "Array", proto: true, forced: i(function() {
      return !Array(1).includes();
    }) }, { includes: function(e3) {
      return o(this, e3, arguments.length > 1 ? arguments[1] : void 0);
    } }), a("includes");
  }, 51007: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(77604), i = n2(25624), a = n2(22440), l = n2(67961), u = n2(54237), c = n2(29793), s = n2(85927), f = n2(46146), d = n2(68948), p = i.Symbol, h = p && p.prototype;
    if (o && u(p) && (!("description" in h) || void 0 !== p().description)) {
      var v = {}, m = function() {
        var e3 = arguments.length < 1 || void 0 === arguments[0] ? void 0 : s(arguments[0]), t3 = c(h, this) ? new p(e3) : void 0 === e3 ? p() : p(e3);
        return "" === e3 && (v[t3] = true), t3;
      };
      d(m, p), m.prototype = h, h.constructor = m;
      var y = "Symbol(description detection)" === String(p("description detection")), g = a(h.valueOf), b = a(h.toString), w = /^Symbol\((.*)\)[^)]+$/, E = a("".replace), S = a("".slice);
      f(h, "description", { configurable: true, get: function() {
        var e3 = g(this);
        if (l(v, e3)) return "";
        var t3 = b(e3), n3 = y ? S(t3, 7, -1) : E(t3, w, "$1");
        return "" === n3 ? void 0 : n3;
      } }), r({ global: true, constructor: true, forced: true }, { Symbol: m });
    }
  }, 51186: function(e2, t2, n2) {
    "use strict";
    var r = n2(83941), o = n2(67961), i = n2(29793), a = n2(47989), l = n2(9155), u = RegExp.prototype;
    e2.exports = a.correct ? function(e3) {
      return e3.flags;
    } : function(e3) {
      return a.correct || !i(u, e3) || o(e3, "flags") ? e3.flags : r(l, e3);
    };
  }, 51346: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = n2(54237), i = n2(54581), a = r(Function.toString);
    o(i.inspectSource) || (i.inspectSource = function(e3) {
      return a(e3);
    }), e2.exports = i.inspectSource;
  }, 52837: function(e2, t2, n2) {
    "use strict";
    e2.exports = "object" == typeof self && self.self === self && self || "object" == typeof n2.g && n2.g.global === n2.g && n2.g || this;
  }, 53300: function(e2, t2, n2) {
    "use strict";
    var r = n2(65470), o = n2(40522), i = Math.abs;
    e2.exports = function(e3, t3, n3, a) {
      var l = +e3, u = i(l), c = r(l);
      if (u < a) return c * o(u / a / t3) * a * t3;
      var s = (1 + t3 / 2220446049250313e-31) * u, f = s - (s - u);
      return f > n3 || f != f ? c * (1 / 0) : c * f;
    };
  }, 54095: function(e2, t2, n2) {
    "use strict";
    var r = n2(36691);
    e2.exports = function(e3) {
      var t3 = r(e3);
      return "BigInt64Array" === t3 || "BigUint64Array" === t3;
    };
  }, 54126: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(64703), i = n2(1585), a = n2(83941), l = n2(22440), u = n2(60983), c = n2(26912), s = n2(54237), f = n2(5386), d = n2(87805), p = n2(19912), h = n2(85927), v = n2(90936), m = n2(39216), y = n2(70584), g = n2(17271), b = n2(30323), w = String, E = o("JSON", "stringify"), S = l(/./.exec), k = l("".charAt), x = l("".charCodeAt), C = l("".replace), O = l("".slice), P = l([].push), T = l(1.1.toString), N = /[\uD800-\uDFFF]/g, A = /^[\uD800-\uDBFF]$/, R = /^[\uDC00-\uDFFF]$/, _ = y(), j = _.length, L = !g || u(function() {
      var e3 = o("Symbol")("stringify detection");
      return "[null]" !== E([e3]) || "{}" !== E({ a: e3 }) || "{}" !== E(Object(e3));
    }), D = u(function() {
      return '"\\udf06\\ud834"' !== E("\uDF06\uD834") || '"\\udead"' !== E("\uDEAD");
    }), I = L ? function(e3, t3) {
      var n3 = v(arguments), r2 = F(t3);
      if (s(r2) || void 0 !== e3 && !d(e3)) return n3[1] = function(e4, t4) {
        if (s(r2) && (t4 = a(r2, this, w(e4), t4)), !d(t4)) return t4;
      }, i(E, null, n3);
    } : E, z = function(e3, t3, n3) {
      var r2 = k(n3, t3 - 1), o2 = k(n3, t3 + 1);
      return S(A, e3) && !S(R, o2) || S(R, e3) && !S(A, r2) ? "\\u" + T(x(e3, 0), 16) : e3;
    }, F = function(e3) {
      if (s(e3)) return e3;
      if (c(e3)) {
        for (var t3 = e3.length, n3 = [], r2 = 0; r2 < t3; r2++) {
          var o2 = e3[r2];
          "string" == typeof o2 ? P(n3, o2) : "number" != typeof o2 && "Number" !== p(o2) && "String" !== p(o2) || P(n3, h(o2));
        }
        var i2 = n3.length, a2 = true;
        return function(e4, t4) {
          if (a2) return a2 = false, t4;
          if (c(this)) return t4;
          for (var r3 = 0; r3 < i2; r3++) if (n3[r3] === e4) return t4;
        };
      }
    };
    E && r({ target: "JSON", stat: true, arity: 3, forced: L || D || !b }, { stringify: function(e3, t3, n3) {
      var r2 = F(t3), o2 = [], i2 = I(e3, function(e4, t4) {
        var n4 = s(r2) ? a(r2, this, w(e4), t4) : t4;
        return !b && f(n4) ? _ + (P(o2, n4.rawJSON) - 1) : n4;
      }, n3);
      if ("string" != typeof i2) return i2;
      if (D && (i2 = C(i2, N, z)), b) return i2;
      for (var l2 = "", u2 = i2.length, c2 = 0; c2 < u2; c2++) {
        var d2 = k(i2, c2);
        if ('"' === d2) {
          var p2 = m(i2, ++c2).end - 1, h2 = O(i2, c2, p2);
          l2 += O(h2, 0, j) === _ ? o2[O(h2, j)] : '"' + h2 + '"', c2 = p2;
        } else l2 += d2;
      }
      return l2;
    } });
  }, 54141: function(e2, t2, n2) {
    "use strict";
    var r = n2(64159), o = n2(4820), i = n2(13005), a = n2(24939)("species");
    e2.exports = function(e3, t3) {
      var n3, l = r(e3).constructor;
      return void 0 === l || i(n3 = r(l)[a]) ? t3 : o(n3);
    };
  }, 54237: function(e2) {
    "use strict";
    var t2 = "object" == typeof document && document.all;
    e2.exports = void 0 === t2 && void 0 !== t2 ? function(e3) {
      return "function" == typeof e3 || e3 === t2;
    } : function(e3) {
      return "function" == typeof e3;
    };
  }, 54274: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = n2(24686), i = n2(85927), a = n2(56084), l = r("".replace), u = RegExp("^[" + a + "]+"), c = RegExp("(^|[^" + a + "])[" + a + "]+$"), s = function(e3) {
      return function(t3) {
        var n3 = i(o(t3));
        return 1 & e3 && (n3 = l(n3, u, "")), 2 & e3 && (n3 = l(n3, c, "$1")), n3;
      };
    };
    e2.exports = { start: s(1), end: s(2), trim: s(3) };
  }, 54369: function(e2, t2, n2) {
    "use strict";
    var r, o = n2(18654), i = n2(61820), a = n2(48779).f, l = n2(81478), u = n2(85927), c = n2(47991), s = n2(24686), f = n2(94532), d = n2(17219), p = i("".slice), h = Math.min, v = f("endsWith");
    o({ target: "String", proto: true, forced: !(!d && !v && (r = a(String.prototype, "endsWith"), r && !r.writable) || v) }, { endsWith: function(e3) {
      var t3 = u(s(this));
      c(e3);
      var n3 = arguments.length > 1 ? arguments[1] : void 0, r2 = t3.length, o2 = void 0 === n3 ? r2 : h(l(n3), r2), i2 = u(e3);
      return p(t3, o2 - i2.length, o2) === i2;
    } });
  }, 54489: function(e2, t2, n2) {
    "use strict";
    var r = n2(77604), o = n2(70517), i = n2(47350), a = n2(64159), l = n2(31601), u = TypeError, c = Object.defineProperty, s = Object.getOwnPropertyDescriptor, f = "enumerable", d = "configurable", p = "writable";
    t2.f = r ? i ? function(e3, t3, n3) {
      if (a(e3), t3 = l(t3), a(n3), "function" == typeof e3 && "prototype" === t3 && "value" in n3 && p in n3 && !n3[p]) {
        var r2 = s(e3, t3);
        r2 && r2[p] && (e3[t3] = n3.value, n3 = { configurable: d in n3 ? n3[d] : r2[d], enumerable: f in n3 ? n3[f] : r2[f], writable: false });
      }
      return c(e3, t3, n3);
    } : c : function(e3, t3, n3) {
      if (a(e3), t3 = l(t3), a(n3), o) try {
        return c(e3, t3, n3);
      } catch (e4) {
      }
      if ("get" in n3 || "set" in n3) throw new u("Accessors not supported");
      return "value" in n3 && (e3[t3] = n3.value), e3;
    };
  }, 54581: function(e2, t2, n2) {
    "use strict";
    var r = n2(17219), o = n2(25624), i = n2(95905), a = "__core-js_shared__", l = e2.exports = o[a] || i(a, {});
    (l.versions || (l.versions = [])).push({ version: "3.48.0", mode: r ? "pure" : "global", copyright: "© 2013–2025 Denis Pushkarev (zloirock.ru), 2025–2026 CoreJS Company (core-js.io). All rights reserved.", license: "https://github.com/zloirock/core-js/blob/v3.48.0/LICENSE", source: "https://github.com/zloirock/core-js" });
  }, 54718: function(e2, t2, n2) {
    "use strict";
    var r = n2(83941), o = n2(64159), i = n2(86543), a = n2(88523);
    e2.exports = function(e3, t3) {
      t3 && "string" == typeof e3 || o(e3);
      var n3 = a(e3);
      return i(o(void 0 !== n3 ? r(n3, e3) : e3));
    };
  }, 56013: function(e2, t2, n2) {
    "use strict";
    var r = n2(99373), o = n2(19378), i = n2(23182);
    e2.exports = function(e3) {
      for (var t3 = r(this), n3 = i(t3), a = arguments.length, l = o(a > 1 ? arguments[1] : void 0, n3), u = a > 2 ? arguments[2] : void 0, c = void 0 === u ? n3 : o(u, n3); c > l; ) t3[l++] = e3;
      return t3;
    };
  }, 56084: function(e2) {
    "use strict";
    e2.exports = "	\n\v\f\r                　\u2028\u2029\uFEFF";
  }, 56175: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(25624), i = n2(19922), a = n2(63081), l = "ArrayBuffer", u = i[l];
    r({ global: true, constructor: true, forced: o[l] !== u }, { ArrayBuffer: u }), a(l);
  }, 56215: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624);
    e2.exports = r;
  }, 56768: function(e2, t2, n2) {
    "use strict";
    var r = n2(60983), o = n2(24939), i = n2(77604), a = n2(17219), l = o("iterator");
    e2.exports = !r(function() {
      var e3 = new URL("b?a=1&b=2&c=3", "https://a"), t3 = e3.searchParams, n3 = new URLSearchParams("a=1&a=2&b=3"), r2 = "";
      return e3.pathname = "c%20d", t3.forEach(function(e4, n4) {
        t3.delete("b"), r2 += n4 + e4;
      }), n3.delete("a", 2), n3.delete("b", void 0), a && (!e3.toJSON || !n3.has("a", 1) || n3.has("a", 2) || !n3.has("a", void 0) || n3.has("b")) || !t3.size && (a || !i) || !t3.sort || "https://a/c%20d?a=1&c=3" !== e3.href || "3" !== t3.get("c") || "a=1" !== String(new URLSearchParams("?a=1")) || !t3[l] || "a" !== new URL("https://a@b").username || "b" !== new URLSearchParams(new URLSearchParams("a=b")).get("a") || "xn--e1aybc" !== new URL("https://тест").host || "#%D0%B1" !== new URL("https://a#б").hash || "a1c3" !== r2 || "x" !== new URL("https://x", void 0).host;
    });
  }, 57126: function(e2, t2, n2) {
    "use strict";
    var r = n2(60983), o = n2(25624).RegExp;
    e2.exports = r(function() {
      var e3 = o("(?<a>b)", "g");
      return "b" !== e3.exec("b").groups.a || "bc" !== "b".replace(e3, "$<a>c");
    });
  }, 57530: function(e2, t2, n2) {
    "use strict";
    n2(17987);
  }, 57752: function(e2, t2, n2) {
    "use strict";
    var r = n2(50810), o = n2(49123);
    e2.exports = function(e3, t3) {
      r(t3) && "cause" in t3 && o(e3, "cause", t3.cause);
    };
  }, 58003: function(e2, t2, n2) {
    "use strict";
    var r, o, i = n2(83941), a = n2(22440), l = n2(85927), u = n2(9155), c = n2(22261), s = n2(14537), f = n2(31168), d = n2(17029).get, p = n2(40523), h = n2(57126), v = s("native-string-replace", String.prototype.replace), m = RegExp.prototype.exec, y = m, g = a("".charAt), b = a("".indexOf), w = a("".replace), E = a("".slice), S = (o = /b*/g, i(m, r = /a/, "a"), i(m, o, "a"), 0 !== r.lastIndex || 0 !== o.lastIndex), k = c.BROKEN_CARET, x = void 0 !== /()??/.exec("")[1];
    (S || x || k || p || h) && (y = function(e3) {
      var t3, n3, r2, o2, a2, c2, s2, p2 = this, h2 = d(p2), C = l(e3), O = h2.raw;
      if (O) return O.lastIndex = p2.lastIndex, t3 = i(y, O, C), p2.lastIndex = O.lastIndex, t3;
      var P = h2.groups, T = k && p2.sticky, N = i(u, p2), A = p2.source, R = 0, _ = C;
      if (T && (N = w(N, "y", ""), -1 === b(N, "g") && (N += "g"), _ = E(C, p2.lastIndex), p2.lastIndex > 0 && (!p2.multiline || p2.multiline && "\n" !== g(C, p2.lastIndex - 1)) && (A = "(?: " + A + ")", _ = " " + _, R++), n3 = new RegExp("^(?:" + A + ")", N)), x && (n3 = new RegExp("^" + A + "$(?!\\s)", N)), S && (r2 = p2.lastIndex), o2 = i(m, T ? n3 : p2, _), T ? o2 ? (o2.input = E(o2.input, R), o2[0] = E(o2[0], R), o2.index = p2.lastIndex, p2.lastIndex += o2[0].length) : p2.lastIndex = 0 : S && o2 && (p2.lastIndex = p2.global ? o2.index + o2[0].length : r2), x && o2 && o2.length > 1 && i(v, o2[0], n3, function() {
        for (a2 = 1; a2 < arguments.length - 2; a2++) void 0 === arguments[a2] && (o2[a2] = void 0);
      }), o2 && P) for (o2.groups = c2 = f(null), a2 = 0; a2 < P.length; a2++) c2[(s2 = P[a2])[0]] = o2[s2[1]];
      return o2;
    }), e2.exports = y;
  }, 58319: function(e2, t2, n2) {
    "use strict";
    var r = n2(64703), o = n2(22440), i = n2(18408), a = n2(22061), l = n2(64159), u = o([].concat);
    e2.exports = r("Reflect", "ownKeys") || function(e3) {
      var t3 = i.f(l(e3)), n3 = a.f;
      return n3 ? u(t3, n3(e3)) : t3;
    };
  }, 59128: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(83941), i = n2(17219), a = n2(38006), l = n2(54237), u = n2(12338), c = n2(25931), s = n2(50543), f = n2(97655), d = n2(49123), p = n2(49184), h = n2(24939), v = n2(47797), m = n2(38849), y = a.PROPER, g = a.CONFIGURABLE, b = m.IteratorPrototype, w = m.BUGGY_SAFARI_ITERATORS, E = h("iterator"), S = "keys", k = "values", x = "entries", C = function() {
      return this;
    };
    e2.exports = function(e3, t3, n3, a2, h2, m2, O) {
      u(n3, t3, a2);
      var P, T, N, A = function(e4) {
        if (e4 === h2 && D) return D;
        if (!w && e4 && e4 in j) return j[e4];
        switch (e4) {
          case S:
          case k:
          case x:
            return function() {
              return new n3(this, e4);
            };
        }
        return function() {
          return new n3(this);
        };
      }, R = t3 + " Iterator", _ = false, j = e3.prototype, L = j[E] || j["@@iterator"] || h2 && j[h2], D = !w && L || A(h2), I = "Array" === t3 && j.entries || L;
      if (I && (P = c(I.call(new e3()))) !== Object.prototype && P.next && (i || c(P) === b || (s ? s(P, b) : l(P[E]) || p(P, E, C)), f(P, R, true, true), i && (v[R] = C)), y && h2 === k && L && L.name !== k && (!i && g ? d(j, "name", k) : (_ = true, D = function() {
        return o(L, this);
      })), h2) if (T = { values: A(k), keys: m2 ? D : A(S), entries: A(x) }, O) for (N in T) (w || _ || !(N in j)) && p(j, N, T[N]);
      else r({ target: t3, proto: true, forced: w || _ }, T);
      return i && !O || j[E] === D || p(j, E, D, { name: h2 }), v[t3] = D, T;
    };
  }, 59383: function(e2) {
    const t2 = "touch";
    e2.exports = class {
      constructor(e3, t3) {
        this._target = e3 || document.body, this._attr = t3 || "data-focus-method", this._focusMethod = this._lastFocusMethod = false, this._onKeyDown = this._onKeyDown.bind(this), this._onMouseDown = this._onMouseDown.bind(this), this._onTouchStart = this._onTouchStart.bind(this), this._onFocus = this._onFocus.bind(this), this._onBlur = this._onBlur.bind(this), this._onWindowBlur = this._onWindowBlur.bind(this), this._bindEvents();
      }
      _bindEvents() {
        this._target.addEventListener("keydown", this._onKeyDown, true), this._target.addEventListener("mousedown", this._onMouseDown, true), this._target.addEventListener("touchstart", this._onTouchStart, { capture: true, passive: true }), this._target.addEventListener("focus", this._onFocus, true), this._target.addEventListener("blur", this._onBlur, true), window.addEventListener("blur", this._onWindowBlur);
      }
      _onKeyDown(e3) {
        this._focusMethod = "key";
      }
      _onMouseDown(e3) {
        this._focusMethod !== t2 && (this._focusMethod = "mouse");
      }
      _onTouchStart(e3) {
        this._focusMethod = t2;
      }
      _onFocus(e3) {
        this._focusMethod || (this._focusMethod = this._lastFocusMethod), e3.target.setAttribute(this._attr, this._focusMethod), this._lastFocusMethod = this._focusMethod, this._focusMethod = false;
      }
      _onBlur(e3) {
        e3.target.removeAttribute(this._attr);
      }
      _onWindowBlur(e3) {
        this._focusMethod = false;
      }
    };
  }, 59384: function(e2, t2, n2) {
    "use strict";
    var r = n2(9679)("span").classList, o = r && r.constructor && r.constructor.prototype;
    e2.exports = o === Object.prototype ? void 0 : o;
  }, 59770: function(e2, t2, n2) {
    "use strict";
    n2(19132), n2(85563), n2(1387), n2(83159), n2(74081), n2(97024);
  }, 60332: function(e2) {
    "use strict";
    e2.exports = function(e3, t2) {
      return { enumerable: !(1 & e3), configurable: !(2 & e3), writable: !(4 & e3), value: t2 };
    };
  }, 60684: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = n2(67961), i = n2(1549), a = n2(97817).indexOf, l = n2(90765), u = r([].push);
    e2.exports = function(e3, t3) {
      var n3, r2 = i(e3), c = 0, s = [];
      for (n3 in r2) !o(l, n3) && o(r2, n3) && u(s, n3);
      for (; t3.length > c; ) o(r2, n3 = t3[c++]) && (~a(s, n3) || u(s, n3));
      return s;
    };
  }, 60983: function(e2) {
    "use strict";
    e2.exports = function(e3) {
      try {
        return !!e3();
      } catch (e4) {
        return true;
      }
    };
  }, 61324: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(44910), i = n2(54237), a = n2(44260), l = n2(51346), u = n2(24939), c = n2(2191), s = n2(17219), f = n2(71527), d = o && o.prototype, p = u("species"), h = false, v = i(r.PromiseRejectionEvent), m = a("Promise", function() {
      var e3 = l(o), t3 = e3 !== String(o);
      if (!t3 && 66 === f) return true;
      if (s && (!d.catch || !d.finally)) return true;
      if (!f || f < 51 || !/native code/.test(e3)) {
        var n3 = new o(function(e4) {
          e4(1);
        }), r2 = function(e4) {
          e4(function() {
          }, function() {
          });
        };
        if ((n3.constructor = {})[p] = r2, !(h = n3.then(function() {
        }) instanceof r2)) return true;
      }
      return !(t3 || "BROWSER" !== c && "DENO" !== c || v);
    });
    e2.exports = { CONSTRUCTOR: m, REJECTION_EVENT: v, SUBCLASSING: h };
  }, 61432: function(e2, t2, n2) {
    "use strict";
    var r = n2(17271);
    e2.exports = r && !Symbol.sham && "symbol" == typeof Symbol.iterator;
  }, 61820: function(e2, t2, n2) {
    "use strict";
    var r = n2(19912), o = n2(22440);
    e2.exports = function(e3) {
      if ("Function" === r(e3)) return o(e3);
    };
  }, 62298: function(e2, t2, n2) {
    "use strict";
    var r = n2(54274).end, o = n2(35066);
    e2.exports = o("trimEnd") ? function() {
      return r(this);
    } : "".trimEnd;
  }, 62608: function(e2, t2, n2) {
    "use strict";
    var r = n2(90936), o = Math.floor, i = function(e3, t3) {
      var n3 = e3.length;
      if (n3 < 8) for (var a, l, u = 1; u < n3; ) {
        for (l = u, a = e3[u]; l && t3(e3[l - 1], a) > 0; ) e3[l] = e3[--l];
        l !== u++ && (e3[l] = a);
      }
      else for (var c = o(n3 / 2), s = i(r(e3, 0, c), t3), f = i(r(e3, c), t3), d = s.length, p = f.length, h = 0, v = 0; h < d || v < p; ) e3[h + v] = h < d && v < p ? t3(s[h], f[v]) <= 0 ? s[h++] : f[v++] : h < d ? s[h++] : f[v++];
      return e3;
    };
    e2.exports = i;
  }, 62646: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(54237), i = r.WeakMap;
    e2.exports = o(i) && /native code/.test(String(i));
  }, 63081: function(e2, t2, n2) {
    "use strict";
    var r = n2(64703), o = n2(46146), i = n2(24939), a = n2(77604), l = i("species");
    e2.exports = function(e3) {
      var t3 = r(e3);
      a && t3 && !t3[l] && o(t3, l, { configurable: true, get: function() {
        return this;
      } });
    };
  }, 63441: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(22440), i = n2(19378), a = RangeError, l = String.fromCharCode, u = String.fromCodePoint, c = o([].join);
    r({ target: "String", stat: true, arity: 1, forced: !!u && 1 !== u.length }, { fromCodePoint: function(e3) {
      for (var t3, n3 = [], r2 = arguments.length, o2 = 0; r2 > o2; ) {
        if (t3 = +arguments[o2++], i(t3, 1114111) !== t3) throw new a(t3 + " is not a valid code point");
        n3[o2] = t3 < 65536 ? l(t3) : l(55296 + ((t3 -= 65536) >> 10), t3 % 1024 + 56320);
      }
      return c(n3, "");
    } });
  }, 63479: function(e2) {
    "use strict";
    var t2 = Math.round;
    e2.exports = function(e3) {
      var n2 = t2(e3);
      return n2 < 0 ? 0 : n2 > 255 ? 255 : 255 & n2;
    };
  }, 64159: function(e2, t2, n2) {
    "use strict";
    var r = n2(50810), o = String, i = TypeError;
    e2.exports = function(e3) {
      if (r(e3)) return e3;
      throw new i(o(e3) + " is not an object");
    };
  }, 64201: function(e2, t2, n2) {
    "use strict";
    var r = n2(53300);
    e2.exports = Math.fround || function(e3) {
      return r(e3, 11920928955078125e-23, 34028234663852886e22, 11754943508222875e-54);
    };
  }, 64461: function(e2, t2, n2) {
    "use strict";
    var r = n2(335).charAt;
    e2.exports = function(e3, t3, n3) {
      return t3 + (n3 ? r(e3, t3).length : 1);
    };
  }, 64703: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(54237);
    e2.exports = function(e3, t3) {
      return arguments.length < 2 ? (n3 = r[e3], o(n3) ? n3 : void 0) : r[e3] && r[e3][t3];
      var n3;
    };
  }, 65470: function(e2) {
    "use strict";
    e2.exports = Math.sign || function(e3) {
      var t2 = +e3;
      return 0 === t2 || t2 != t2 ? t2 : t2 < 0 ? -1 : 1;
    };
  }, 65933: function(e2, t2, n2) {
    "use strict";
    var r = n2(24939), o = n2(31168), i = n2(54489).f, a = r("unscopables"), l = Array.prototype;
    void 0 === l[a] && i(l, a, { configurable: true, value: o(null) }), e2.exports = function(e3) {
      l[a][e3] = true;
    };
  }, 65989: function(e2, t2, n2) {
    "use strict";
    n2(65933)("flatMap");
  }, 66557: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(61820), i = n2(60983), a = n2(18), l = n2(62608), u = n2(77948), c = n2(14021), s = n2(13995), f = n2(71527), d = n2(47343), p = u.aTypedArray, h = u.exportTypedArrayMethod, v = r.Uint16Array, m = v && o(v.prototype.sort), y = !(!m || i(function() {
      m(new v(2), null);
    }) && i(function() {
      m(new v(2), {});
    })), g = !!m && !i(function() {
      if (f) return f < 74;
      if (c) return c < 67;
      if (s) return true;
      if (d) return d < 602;
      var e3, t3, n3 = new v(516), r2 = Array(516);
      for (e3 = 0; e3 < 516; e3++) t3 = e3 % 4, n3[e3] = 515 - e3, r2[e3] = e3 - 2 * t3 + 3;
      for (m(n3, function(e4, t4) {
        return (e4 / 4 | 0) - (t4 / 4 | 0);
      }), e3 = 0; e3 < 516; e3++) if (n3[e3] !== r2[e3]) return true;
    });
    h("sort", function(e3) {
      return void 0 !== e3 && a(e3), g ? m(this, e3) : l(p(this), /* @__PURE__ */ (function(e4) {
        return function(t3, n3) {
          return void 0 !== e4 ? +e4(t3, n3) || 0 : n3 != n3 ? -1 : t3 != t3 ? 1 : 0 === t3 && 0 === n3 ? 1 / t3 > 0 && 1 / n3 < 0 ? 1 : -1 : t3 > n3;
        };
      })(e3));
    }, !g || y);
  }, 67087: function(e2) {
    "use strict";
    e2.exports = ["constructor", "hasOwnProperty", "isPrototypeOf", "propertyIsEnumerable", "toLocaleString", "toString", "valueOf"];
  }, 67398: function(e2, t2, n2) {
    "use strict";
    var r = n2(18), o = n2(13005);
    e2.exports = function(e3, t3) {
      var n3 = e3[t3];
      return o(n3) ? void 0 : r(n3);
    };
  }, 67415: function(e2, t2, n2) {
    "use strict";
    var r = n2(77948), o = n2(86439).findLast, i = r.aTypedArray;
    (0, r.exportTypedArrayMethod)("findLast", function(e3) {
      return o(i(this), e3, arguments.length > 1 ? arguments[1] : void 0);
    });
  }, 67497: function(e2, t2) {
    "use strict";
    var n2 = Symbol.for("react.transitional.element"), r = Symbol.for("react.portal"), o = Symbol.for("react.fragment"), i = Symbol.for("react.strict_mode"), a = Symbol.for("react.profiler"), l = Symbol.for("react.consumer"), u = Symbol.for("react.context"), c = Symbol.for("react.forward_ref"), s = Symbol.for("react.suspense"), f = Symbol.for("react.memo"), d = Symbol.for("react.lazy"), p = Symbol.for("react.activity"), h = Symbol.iterator, v = { isMounted: function() {
      return false;
    }, enqueueForceUpdate: function() {
    }, enqueueReplaceState: function() {
    }, enqueueSetState: function() {
    } }, m = Object.assign, y = {};
    function g(e3, t3, n3) {
      this.props = e3, this.context = t3, this.refs = y, this.updater = n3 || v;
    }
    function b() {
    }
    function w(e3, t3, n3) {
      this.props = e3, this.context = t3, this.refs = y, this.updater = n3 || v;
    }
    g.prototype.isReactComponent = {}, g.prototype.setState = function(e3, t3) {
      if ("object" != typeof e3 && "function" != typeof e3 && null != e3) throw Error("takes an object of state variables to update or a function which returns an object of state variables.");
      this.updater.enqueueSetState(this, e3, t3, "setState");
    }, g.prototype.forceUpdate = function(e3) {
      this.updater.enqueueForceUpdate(this, e3, "forceUpdate");
    }, b.prototype = g.prototype;
    var E = w.prototype = new b();
    E.constructor = w, m(E, g.prototype), E.isPureReactComponent = true;
    var S = Array.isArray;
    function k() {
    }
    var x = { H: null, A: null, T: null, S: null }, C = Object.prototype.hasOwnProperty;
    function O(e3, t3, r2) {
      var o2 = r2.ref;
      return { $$typeof: n2, type: e3, key: t3, ref: void 0 !== o2 ? o2 : null, props: r2 };
    }
    function P(e3) {
      return "object" == typeof e3 && null !== e3 && e3.$$typeof === n2;
    }
    var T = /\/+/g;
    function N(e3, t3) {
      return "object" == typeof e3 && null !== e3 && null != e3.key ? (n3 = "" + e3.key, r2 = { "=": "=0", ":": "=2" }, "$" + n3.replace(/[=:]/g, function(e4) {
        return r2[e4];
      })) : t3.toString(36);
      var n3, r2;
    }
    function A(e3, t3, o2, i2, a2) {
      var l2 = typeof e3;
      "undefined" !== l2 && "boolean" !== l2 || (e3 = null);
      var u2, c2, s2 = false;
      if (null === e3) s2 = true;
      else switch (l2) {
        case "bigint":
        case "string":
        case "number":
          s2 = true;
          break;
        case "object":
          switch (e3.$$typeof) {
            case n2:
            case r:
              s2 = true;
              break;
            case d:
              return A((s2 = e3._init)(e3._payload), t3, o2, i2, a2);
          }
      }
      if (s2) return a2 = a2(e3), s2 = "" === i2 ? "." + N(e3, 0) : i2, S(a2) ? (o2 = "", null != s2 && (o2 = s2.replace(T, "$&/") + "/"), A(a2, t3, o2, "", function(e4) {
        return e4;
      })) : null != a2 && (P(a2) && (u2 = a2, c2 = o2 + (null == a2.key || e3 && e3.key === a2.key ? "" : ("" + a2.key).replace(T, "$&/") + "/") + s2, a2 = O(u2.type, c2, u2.props)), t3.push(a2)), 1;
      s2 = 0;
      var f2, p2 = "" === i2 ? "." : i2 + ":";
      if (S(e3)) for (var v2 = 0; v2 < e3.length; v2++) s2 += A(i2 = e3[v2], t3, o2, l2 = p2 + N(i2, v2), a2);
      else if ("function" == typeof (v2 = null === (f2 = e3) || "object" != typeof f2 ? null : "function" == typeof (f2 = h && f2[h] || f2["@@iterator"]) ? f2 : null)) for (e3 = v2.call(e3), v2 = 0; !(i2 = e3.next()).done; ) s2 += A(i2 = i2.value, t3, o2, l2 = p2 + N(i2, v2++), a2);
      else if ("object" === l2) {
        if ("function" == typeof e3.then) return A((function(e4) {
          switch (e4.status) {
            case "fulfilled":
              return e4.value;
            case "rejected":
              throw e4.reason;
            default:
              switch ("string" == typeof e4.status ? e4.then(k, k) : (e4.status = "pending", e4.then(function(t4) {
                "pending" === e4.status && (e4.status = "fulfilled", e4.value = t4);
              }, function(t4) {
                "pending" === e4.status && (e4.status = "rejected", e4.reason = t4);
              })), e4.status) {
                case "fulfilled":
                  return e4.value;
                case "rejected":
                  throw e4.reason;
              }
          }
          throw e4;
        })(e3), t3, o2, i2, a2);
        throw t3 = String(e3), Error("Objects are not valid as a React child (found: " + ("[object Object]" === t3 ? "object with keys {" + Object.keys(e3).join(", ") + "}" : t3) + "). If you meant to render a collection of children, use an array instead.");
      }
      return s2;
    }
    function R(e3, t3, n3) {
      if (null == e3) return e3;
      var r2 = [], o2 = 0;
      return A(e3, r2, "", "", function(e4) {
        return t3.call(n3, e4, o2++);
      }), r2;
    }
    function _(e3) {
      if (-1 === e3._status) {
        var t3 = e3._result;
        (t3 = t3()).then(function(t4) {
          0 !== e3._status && -1 !== e3._status || (e3._status = 1, e3._result = t4);
        }, function(t4) {
          0 !== e3._status && -1 !== e3._status || (e3._status = 2, e3._result = t4);
        }), -1 === e3._status && (e3._status = 0, e3._result = t3);
      }
      if (1 === e3._status) return e3._result.default;
      throw e3._result;
    }
    var j = "function" == typeof reportError ? reportError : function(e3) {
      if ("object" == typeof window && "function" == typeof window.ErrorEvent) {
        var t3 = new window.ErrorEvent("error", { bubbles: true, cancelable: true, message: "object" == typeof e3 && null !== e3 && "string" == typeof e3.message ? String(e3.message) : String(e3), error: e3 });
        if (!window.dispatchEvent(t3)) return;
      } else if ("object" == typeof process && "function" == typeof process.emit) return void process.emit("uncaughtException", e3);
      console.error(e3);
    }, L = { map: R, forEach: function(e3, t3, n3) {
      R(e3, function() {
        t3.apply(this, arguments);
      }, n3);
    }, count: function(e3) {
      var t3 = 0;
      return R(e3, function() {
        t3++;
      }), t3;
    }, toArray: function(e3) {
      return R(e3, function(e4) {
        return e4;
      }) || [];
    }, only: function(e3) {
      if (!P(e3)) throw Error("React.Children.only expected to receive a single React element child.");
      return e3;
    } };
    t2.Activity = p, t2.Children = L, t2.Component = g, t2.Fragment = o, t2.Profiler = a, t2.PureComponent = w, t2.StrictMode = i, t2.Suspense = s, t2.__CLIENT_INTERNALS_DO_NOT_USE_OR_WARN_USERS_THEY_CANNOT_UPGRADE = x, t2.__COMPILER_RUNTIME = { __proto__: null, c: function(e3) {
      return x.H.useMemoCache(e3);
    } }, t2.cache = function(e3) {
      return function() {
        return e3.apply(null, arguments);
      };
    }, t2.cacheSignal = function() {
      return null;
    }, t2.cloneElement = function(e3, t3, n3) {
      if (null == e3) throw Error("The argument must be a React element, but you passed " + e3 + ".");
      var r2 = m({}, e3.props), o2 = e3.key;
      if (null != t3) for (i2 in void 0 !== t3.key && (o2 = "" + t3.key), t3) !C.call(t3, i2) || "key" === i2 || "__self" === i2 || "__source" === i2 || "ref" === i2 && void 0 === t3.ref || (r2[i2] = t3[i2]);
      var i2 = arguments.length - 2;
      if (1 === i2) r2.children = n3;
      else if (1 < i2) {
        for (var a2 = Array(i2), l2 = 0; l2 < i2; l2++) a2[l2] = arguments[l2 + 2];
        r2.children = a2;
      }
      return O(e3.type, o2, r2);
    }, t2.createContext = function(e3) {
      return (e3 = { $$typeof: u, _currentValue: e3, _currentValue2: e3, _threadCount: 0, Provider: null, Consumer: null }).Provider = e3, e3.Consumer = { $$typeof: l, _context: e3 }, e3;
    }, t2.createElement = function(e3, t3, n3) {
      var r2, o2 = {}, i2 = null;
      if (null != t3) for (r2 in void 0 !== t3.key && (i2 = "" + t3.key), t3) C.call(t3, r2) && "key" !== r2 && "__self" !== r2 && "__source" !== r2 && (o2[r2] = t3[r2]);
      var a2 = arguments.length - 2;
      if (1 === a2) o2.children = n3;
      else if (1 < a2) {
        for (var l2 = Array(a2), u2 = 0; u2 < a2; u2++) l2[u2] = arguments[u2 + 2];
        o2.children = l2;
      }
      if (e3 && e3.defaultProps) for (r2 in a2 = e3.defaultProps) void 0 === o2[r2] && (o2[r2] = a2[r2]);
      return O(e3, i2, o2);
    }, t2.createRef = function() {
      return { current: null };
    }, t2.forwardRef = function(e3) {
      return { $$typeof: c, render: e3 };
    }, t2.isValidElement = P, t2.lazy = function(e3) {
      return { $$typeof: d, _payload: { _status: -1, _result: e3 }, _init: _ };
    }, t2.memo = function(e3, t3) {
      return { $$typeof: f, type: e3, compare: void 0 === t3 ? null : t3 };
    }, t2.startTransition = function(e3) {
      var t3 = x.T, n3 = {};
      x.T = n3;
      try {
        var r2 = e3(), o2 = x.S;
        null !== o2 && o2(n3, r2), "object" == typeof r2 && null !== r2 && "function" == typeof r2.then && r2.then(k, j);
      } catch (e4) {
        j(e4);
      } finally {
        null !== t3 && null !== n3.types && (t3.types = n3.types), x.T = t3;
      }
    }, t2.unstable_useCacheRefresh = function() {
      return x.H.useCacheRefresh();
    }, t2.use = function(e3) {
      return x.H.use(e3);
    }, t2.useActionState = function(e3, t3, n3) {
      return x.H.useActionState(e3, t3, n3);
    }, t2.useCallback = function(e3, t3) {
      return x.H.useCallback(e3, t3);
    }, t2.useContext = function(e3) {
      return x.H.useContext(e3);
    }, t2.useDebugValue = function() {
    }, t2.useDeferredValue = function(e3, t3) {
      return x.H.useDeferredValue(e3, t3);
    }, t2.useEffect = function(e3, t3) {
      return x.H.useEffect(e3, t3);
    }, t2.useEffectEvent = function(e3) {
      return x.H.useEffectEvent(e3);
    }, t2.useId = function() {
      return x.H.useId();
    }, t2.useImperativeHandle = function(e3, t3, n3) {
      return x.H.useImperativeHandle(e3, t3, n3);
    }, t2.useInsertionEffect = function(e3, t3) {
      return x.H.useInsertionEffect(e3, t3);
    }, t2.useLayoutEffect = function(e3, t3) {
      return x.H.useLayoutEffect(e3, t3);
    }, t2.useMemo = function(e3, t3) {
      return x.H.useMemo(e3, t3);
    }, t2.useOptimistic = function(e3, t3) {
      return x.H.useOptimistic(e3, t3);
    }, t2.useReducer = function(e3, t3, n3) {
      return x.H.useReducer(e3, t3, n3);
    }, t2.useRef = function(e3) {
      return x.H.useRef(e3);
    }, t2.useState = function(e3) {
      return x.H.useState(e3);
    }, t2.useSyncExternalStore = function(e3, t3, n3) {
      return x.H.useSyncExternalStore(e3, t3, n3);
    }, t2.useTransition = function() {
      return x.H.useTransition();
    }, t2.version = "19.2.3";
  }, 67961: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = n2(99373), i = r({}.hasOwnProperty);
    e2.exports = Object.hasOwn || function(e3, t3) {
      return i(o(e3), t3);
    };
  }, 68310: function(e2, t2, n2) {
    "use strict";
    var r = n2(64159), o = n2(50810), i = n2(13811);
    e2.exports = function(e3, t3) {
      if (r(e3), o(t3) && t3.constructor === e3) return t3;
      var n3 = i.f(e3);
      return (0, n3.resolve)(t3), n3.promise;
    };
  }, 68948: function(e2, t2, n2) {
    "use strict";
    var r = n2(67961), o = n2(58319), i = n2(48779), a = n2(54489);
    e2.exports = function(e3, t3, n3) {
      for (var l = o(t3), u = a.f, c = i.f, s = 0; s < l.length; s++) {
        var f = l[s];
        r(e3, f) || n3 && r(n3, f) || u(e3, f, c(t3, f));
      }
    };
  }, 69521: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(83941), i = n2(18), a = n2(64159), l = n2(86543), u = n2(22766), c = n2(25383), s = n2(17219), f = n2(90043), d = n2(38356), p = n2(71597), h = !s && !d("filter", function() {
    }), v = !s && !h && p("filter", TypeError), m = s || h || v, y = u(function() {
      for (var e3, t3, n3 = this.iterator, r2 = this.predicate, i2 = this.next; ; ) {
        if (e3 = a(o(i2, n3)), this.done = !!e3.done) return;
        if (t3 = e3.value, c(n3, r2, [t3, this.counter++], true)) return t3;
      }
    });
    r({ target: "Iterator", proto: true, real: true, forced: m }, { filter: function(e3) {
      a(this);
      try {
        i(e3);
      } catch (e4) {
        f(this, "throw", e4);
      }
      return v ? o(v, this, e3) : new y(l(this), { predicate: e3 });
    } });
  }, 69990: function(e2, t2, n2) {
    "use strict";
    n2(77021);
  }, 70187: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(83941), i = n2(18), a = n2(64159), l = n2(86543), u = n2(54718), c = n2(22766), s = n2(90043), f = n2(17219), d = n2(38356), p = n2(71597), h = !f && !d("flatMap", function() {
    }), v = !f && !h && p("flatMap", TypeError), m = f || h || v || (function() {
      try {
        var e3 = Iterator.prototype.flatMap.call((/* @__PURE__ */ new Map([[4, 5]])).entries(), function(e4) {
          return e4;
        });
        e3.next(), e3.return();
      } catch (e4) {
        return true;
      }
    })(), y = c(function() {
      for (var e3, t3, n3 = this.iterator, r2 = this.mapper; ; ) {
        if (t3 = this.inner) try {
          if (!(e3 = a(o(t3.next, t3.iterator))).done) return e3.value;
          this.inner = null;
        } catch (e4) {
          s(n3, "throw", e4);
        }
        if (e3 = a(o(this.next, n3)), this.done = !!e3.done) return;
        try {
          this.inner = u(r2(e3.value, this.counter++), false);
        } catch (e4) {
          s(n3, "throw", e4);
        }
      }
    });
    r({ target: "Iterator", proto: true, real: true, forced: m }, { flatMap: function(e3) {
      a(this);
      try {
        i(e3);
      } catch (e4) {
        s(this, "throw", e4);
      }
      return v ? o(v, this, e3) : new y(l(this), { mapper: e3, inner: null });
    } });
  }, 70517: function(e2, t2, n2) {
    "use strict";
    var r = n2(77604), o = n2(60983), i = n2(9679);
    e2.exports = !r && !o(function() {
      return 7 !== Object.defineProperty(i("div"), "a", { get: function() {
        return 7;
      } }).a;
    });
  }, 70584: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = 0, i = Math.random(), a = r(1.1.toString);
    e2.exports = function(e3) {
      return "Symbol(" + (void 0 === e3 ? "" : e3) + ")_" + a(++o + i, 36);
    };
  }, 71527: function(e2, t2, n2) {
    "use strict";
    var r, o, i = n2(25624), a = n2(74511), l = i.process, u = i.Deno, c = l && l.versions || u && u.version, s = c && c.v8;
    s && (o = (r = s.split("."))[0] > 0 && r[0] < 4 ? 1 : +(r[0] + r[1])), !o && a && (!(r = a.match(/Edge\/(\d+)/)) || r[1] >= 74) && (r = a.match(/Chrome\/(\d+)/)) && (o = +r[1]), e2.exports = o;
  }, 71597: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624);
    e2.exports = function(e3, t3) {
      var n3 = r.Iterator, o = n3 && n3.prototype, i = o && o[e3], a = false;
      if (i) try {
        i.call({ next: function() {
          return { done: true };
        }, return: function() {
          a = true;
        } }, -1);
      } catch (e4) {
        e4 instanceof t3 || (a = false);
      }
      if (!a) return i;
    };
  }, 72528: function(e2, t2, n2) {
    "use strict";
    !(function e3() {
      if ("undefined" != typeof __REACT_DEVTOOLS_GLOBAL_HOOK__ && "function" == typeof __REACT_DEVTOOLS_GLOBAL_HOOK__.checkDCE) try {
        __REACT_DEVTOOLS_GLOBAL_HOOK__.checkDCE(e3);
      } catch (e4) {
        console.error(e4);
      }
    })(), e2.exports = n2(31941);
  }, 72618: function(e2, t2, n2) {
    "use strict";
    var r = n2(44429), o = String, i = TypeError;
    e2.exports = function(e3) {
      if (r(e3)) return e3;
      throw new i("Can't set " + o(e3) + " as a prototype");
    };
  }, 72712: function(e2, t2, n2) {
    "use strict";
    var r = n2(54489).f;
    e2.exports = function(e3, t3, n3) {
      n3 in e3 || r(e3, n3, { configurable: true, get: function() {
        return t3[n3];
      }, set: function(e4) {
        t3[n3] = e4;
      } });
    };
  }, 73375: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(58003);
    r({ target: "RegExp", proto: true, forced: /./.exec !== o }, { exec: o });
  }, 73438: function(e2, t2, n2) {
    "use strict";
    e2.exports = n2(20317);
  }, 73986: function(e2, t2, n2) {
    "use strict";
    n2(73375);
    var r, o, i = n2(18654), a = n2(83941), l = n2(54237), u = n2(64159), c = n2(85927), s = (r = false, (o = /[ac]/).exec = function() {
      return r = true, /./.exec.apply(this, arguments);
    }, true === o.test("abc") && r), f = /./.test;
    i({ target: "RegExp", proto: true, forced: !s }, { test: function(e3) {
      var t3 = u(this), n3 = c(e3), r2 = t3.exec;
      if (!l(r2)) return a(f, t3, n3);
      var o2 = a(r2, t3, n3);
      return null !== o2 && (u(o2), true);
    } });
  }, 74081: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(13811);
    r({ target: "Promise", stat: true, forced: n2(61324).CONSTRUCTOR }, { reject: function(e3) {
      var t3 = o.f(this);
      return (0, t3.reject)(e3), t3.promise;
    } });
  }, 74511: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624).navigator, o = r && r.userAgent;
    e2.exports = o ? String(o) : "";
  }, 75199: function(e2, t2, n2) {
    "use strict";
    var r = n2(49184);
    e2.exports = function(e3, t3, n3) {
      for (var o in t3) r(e3, o, t3[o], n3);
      return e3;
    };
  }, 75558: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = n2(99373), i = Math.floor, a = r("".charAt), l = r("".replace), u = r("".slice), c = /\$([$&'`]|\d{1,2}|<[^>]*>)/g, s = /\$([$&'`]|\d{1,2})/g;
    e2.exports = function(e3, t3, n3, r2, f, d) {
      var p = n3 + e3.length, h = r2.length, v = s;
      return void 0 !== f && (f = o(f), v = c), l(d, v, function(o2, l2) {
        var c2;
        switch (a(l2, 0)) {
          case "$":
            return "$";
          case "&":
            return e3;
          case "`":
            return u(t3, 0, n3);
          case "'":
            return u(t3, p);
          case "<":
            c2 = f[u(l2, 1, -1)];
            break;
          default:
            var s2 = +l2;
            if (0 === s2) return o2;
            if (s2 > h) {
              var d2 = i(s2 / 10);
              return 0 === d2 ? o2 : d2 <= h ? void 0 === r2[d2 - 1] ? a(l2, 1) : r2[d2 - 1] + a(l2, 1) : o2;
            }
            c2 = r2[s2 - 1];
        }
        return void 0 === c2 ? "" : c2;
      });
    };
  }, 75800: function(e2, t2, n2) {
    "use strict";
    var r = n2(61820), o = n2(18), i = n2(82704), a = r(r.bind);
    e2.exports = function(e3, t3) {
      return o(e3), void 0 === t3 ? e3 : i ? a(e3, t3) : function() {
        return e3.apply(t3, arguments);
      };
    };
  }, 77021: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(83941), i = n2(18), a = n2(64159), l = n2(86543), u = n2(22766), c = n2(25383), s = n2(90043), f = n2(38356), d = n2(71597), p = n2(17219), h = !p && !f("map", function() {
    }), v = !p && !h && d("map", TypeError), m = p || h || v, y = u(function() {
      var e3 = this.iterator, t3 = a(o(this.next, e3));
      if (!(this.done = !!t3.done)) return c(e3, this.mapper, [t3.value, this.counter++], true);
    });
    r({ target: "Iterator", proto: true, real: true, forced: m }, { map: function(e3) {
      a(this);
      try {
        i(e3);
      } catch (e4) {
        s(this, "throw", e4);
      }
      return v ? o(v, this, e3) : new y(l(this), { mapper: e3 });
    } });
  }, 77188: function(e2) {
    "use strict";
    var t2 = TypeError;
    e2.exports = function(e3, n2) {
      if (e3 < n2) throw new t2("Not enough arguments");
      return e3;
    };
  }, 77303: function(e2, t2, n2) {
    "use strict";
    !(function e3() {
      if ("undefined" != typeof __REACT_DEVTOOLS_GLOBAL_HOOK__ && "function" == typeof __REACT_DEVTOOLS_GLOBAL_HOOK__.checkDCE) try {
        __REACT_DEVTOOLS_GLOBAL_HOOK__.checkDCE(e3);
      } catch (e4) {
        console.error(e4);
      }
    })(), e2.exports = n2(79231);
  }, 77577: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440), o = Error, i = r("".replace), a = String(new o("zxcasd").stack), l = /\n\s*at [^:]*:[^\n]*/, u = l.test(a);
    e2.exports = function(e3, t3) {
      if (u && "string" == typeof e3 && !o.prepareStackTrace) for (; t3--; ) e3 = i(e3, l, "");
      return e3;
    };
  }, 77604: function(e2, t2, n2) {
    "use strict";
    var r = n2(60983);
    e2.exports = !r(function() {
      return 7 !== Object.defineProperty({}, 1, { get: function() {
        return 7;
      } })[1];
    });
  }, 77948: function(e2, t2, n2) {
    "use strict";
    var r, o, i, a = n2(40699), l = n2(77604), u = n2(25624), c = n2(54237), s = n2(50810), f = n2(67961), d = n2(36691), p = n2(91791), h = n2(49123), v = n2(49184), m = n2(46146), y = n2(29793), g = n2(25931), b = n2(50543), w = n2(24939), E = n2(70584), S = n2(17029), k = S.enforce, x = S.get, C = u.Int8Array, O = C && C.prototype, P = u.Uint8ClampedArray, T = P && P.prototype, N = C && g(C), A = O && g(O), R = Object.prototype, _ = u.TypeError, j = w("toStringTag"), L = E("TYPED_ARRAY_TAG"), D = "TypedArrayConstructor", I = a && !!b && "Opera" !== d(u.opera), z = false, F = { Int8Array: 1, Uint8Array: 1, Uint8ClampedArray: 1, Int16Array: 2, Uint16Array: 2, Int32Array: 4, Uint32Array: 4, Float32Array: 4, Float64Array: 8 }, M = { BigInt64Array: 8, BigUint64Array: 8 }, U = function(e3) {
      var t3 = g(e3);
      if (s(t3)) {
        var n3 = x(t3);
        return n3 && f(n3, D) ? n3[D] : U(t3);
      }
    }, B = function(e3) {
      if (!s(e3)) return false;
      var t3 = d(e3);
      return f(F, t3) || f(M, t3);
    };
    for (r in F) (i = (o = u[r]) && o.prototype) ? k(i)[D] = o : I = false;
    for (r in M) (i = (o = u[r]) && o.prototype) && (k(i)[D] = o);
    if ((!I || !c(N) || N === Function.prototype) && (N = function() {
      throw new _("Incorrect invocation");
    }, I)) for (r in F) u[r] && b(u[r], N);
    if ((!I || !A || A === R) && (A = N.prototype, I)) for (r in F) u[r] && b(u[r].prototype, A);
    if (I && g(T) !== A && b(T, A), l && !f(A, j)) for (r in z = true, m(A, j, { configurable: true, get: function() {
      return s(this) ? this[L] : void 0;
    } }), F) u[r] && h(u[r], L, r);
    e2.exports = { NATIVE_ARRAY_BUFFER_VIEWS: I, TYPED_ARRAY_TAG: z && L, aTypedArray: function(e3) {
      if (B(e3)) return e3;
      throw new _("Target is not a typed array");
    }, aTypedArrayConstructor: function(e3) {
      if (c(e3) && (!b || y(N, e3))) return e3;
      throw new _(p(e3) + " is not a typed array constructor");
    }, exportTypedArrayMethod: function(e3, t3, n3, r2) {
      if (l) {
        if (n3) for (var o2 in F) {
          var i2 = u[o2];
          if (i2 && f(i2.prototype, e3)) try {
            delete i2.prototype[e3];
          } catch (n4) {
            try {
              i2.prototype[e3] = t3;
            } catch (e4) {
            }
          }
        }
        A[e3] && !n3 || v(A, e3, n3 ? t3 : I && O[e3] || t3, r2);
      }
    }, exportTypedArrayStaticMethod: function(e3, t3, n3) {
      var r2, o2;
      if (l) {
        if (b) {
          if (n3) {
            for (r2 in F) if ((o2 = u[r2]) && f(o2, e3)) try {
              delete o2[e3];
            } catch (e4) {
            }
          }
          if (N[e3] && !n3) return;
          try {
            return v(N, e3, n3 ? t3 : I && N[e3] || t3);
          } catch (e4) {
          }
        }
        for (r2 in F) !(o2 = u[r2]) || o2[e3] && !n3 || v(o2, e3, t3);
      }
    }, getTypedArrayConstructor: U, isView: function(e3) {
      if (!s(e3)) return false;
      var t3 = d(e3);
      return "DataView" === t3 || f(F, t3) || f(M, t3);
    }, isTypedArray: B, TypedArray: N, TypedArrayPrototype: A };
  }, 79229: function(e2, t2, n2) {
    "use strict";
    n2(43252);
  }, 79231: function(e2, t2, n2) {
    "use strict";
    var r = n2(97736);
    function o(e3) {
      var t3 = "https://react.dev/errors/" + e3;
      if (1 < arguments.length) {
        t3 += "?args[]=" + encodeURIComponent(arguments[1]);
        for (var n3 = 2; n3 < arguments.length; n3++) t3 += "&args[]=" + encodeURIComponent(arguments[n3]);
      }
      return "Minified React error #" + e3 + "; visit " + t3 + " for the full message or use the non-minified dev environment for full errors and additional helpful warnings.";
    }
    function i() {
    }
    var a = { d: { f: i, r: function() {
      throw Error(o(522));
    }, D: i, C: i, L: i, m: i, X: i, S: i, M: i }, p: 0, findDOMNode: null }, l = Symbol.for("react.portal"), u = r.__CLIENT_INTERNALS_DO_NOT_USE_OR_WARN_USERS_THEY_CANNOT_UPGRADE;
    function c(e3, t3) {
      return "font" === e3 ? "" : "string" == typeof t3 ? "use-credentials" === t3 ? t3 : "" : void 0;
    }
    t2.__DOM_INTERNALS_DO_NOT_USE_OR_WARN_USERS_THEY_CANNOT_UPGRADE = a, t2.createPortal = function(e3, t3) {
      var n3 = 2 < arguments.length && void 0 !== arguments[2] ? arguments[2] : null;
      if (!t3 || 1 !== t3.nodeType && 9 !== t3.nodeType && 11 !== t3.nodeType) throw Error(o(299));
      return (function(e4, t4, n4) {
        var r2 = 3 < arguments.length && void 0 !== arguments[3] ? arguments[3] : null;
        return { $$typeof: l, key: null == r2 ? null : "" + r2, children: e4, containerInfo: t4, implementation: n4 };
      })(e3, t3, null, n3);
    }, t2.flushSync = function(e3) {
      var t3 = u.T, n3 = a.p;
      try {
        if (u.T = null, a.p = 2, e3) return e3();
      } finally {
        u.T = t3, a.p = n3, a.d.f();
      }
    }, t2.preconnect = function(e3, t3) {
      "string" == typeof e3 && (t3 = t3 ? "string" == typeof (t3 = t3.crossOrigin) ? "use-credentials" === t3 ? t3 : "" : void 0 : null, a.d.C(e3, t3));
    }, t2.prefetchDNS = function(e3) {
      "string" == typeof e3 && a.d.D(e3);
    }, t2.preinit = function(e3, t3) {
      if ("string" == typeof e3 && t3 && "string" == typeof t3.as) {
        var n3 = t3.as, r2 = c(n3, t3.crossOrigin), o2 = "string" == typeof t3.integrity ? t3.integrity : void 0, i2 = "string" == typeof t3.fetchPriority ? t3.fetchPriority : void 0;
        "style" === n3 ? a.d.S(e3, "string" == typeof t3.precedence ? t3.precedence : void 0, { crossOrigin: r2, integrity: o2, fetchPriority: i2 }) : "script" === n3 && a.d.X(e3, { crossOrigin: r2, integrity: o2, fetchPriority: i2, nonce: "string" == typeof t3.nonce ? t3.nonce : void 0 });
      }
    }, t2.preinitModule = function(e3, t3) {
      if ("string" == typeof e3) if ("object" == typeof t3 && null !== t3) {
        if (null == t3.as || "script" === t3.as) {
          var n3 = c(t3.as, t3.crossOrigin);
          a.d.M(e3, { crossOrigin: n3, integrity: "string" == typeof t3.integrity ? t3.integrity : void 0, nonce: "string" == typeof t3.nonce ? t3.nonce : void 0 });
        }
      } else null == t3 && a.d.M(e3);
    }, t2.preload = function(e3, t3) {
      if ("string" == typeof e3 && "object" == typeof t3 && null !== t3 && "string" == typeof t3.as) {
        var n3 = t3.as, r2 = c(n3, t3.crossOrigin);
        a.d.L(e3, n3, { crossOrigin: r2, integrity: "string" == typeof t3.integrity ? t3.integrity : void 0, nonce: "string" == typeof t3.nonce ? t3.nonce : void 0, type: "string" == typeof t3.type ? t3.type : void 0, fetchPriority: "string" == typeof t3.fetchPriority ? t3.fetchPriority : void 0, referrerPolicy: "string" == typeof t3.referrerPolicy ? t3.referrerPolicy : void 0, imageSrcSet: "string" == typeof t3.imageSrcSet ? t3.imageSrcSet : void 0, imageSizes: "string" == typeof t3.imageSizes ? t3.imageSizes : void 0, media: "string" == typeof t3.media ? t3.media : void 0 });
      }
    }, t2.preloadModule = function(e3, t3) {
      if ("string" == typeof e3) if (t3) {
        var n3 = c(t3.as, t3.crossOrigin);
        a.d.m(e3, { as: "string" == typeof t3.as && "script" !== t3.as ? t3.as : void 0, crossOrigin: n3, integrity: "string" == typeof t3.integrity ? t3.integrity : void 0 });
      } else a.d.m(e3);
    }, t2.requestFormReset = function(e3) {
      a.d.r(e3);
    }, t2.unstable_batchedUpdates = function(e3, t3) {
      return e3(t3);
    }, t2.useFormState = function(e3, t3, n3) {
      return u.H.useFormState(e3, t3, n3);
    }, t2.useFormStatus = function() {
      return u.H.useHostTransitionStatus();
    }, t2.version = "19.2.3";
  }, 79569: function(e2, t2, n2) {
    "use strict";
    var r = n2(77948), o = n2(54095), i = n2(23182), a = n2(14579), l = n2(6902), u = r.aTypedArray, c = r.getTypedArrayConstructor, s = r.exportTypedArrayMethod, f = RangeError, d = (function() {
      try {
        new Int8Array(1).with(2, { valueOf: function() {
          throw 8;
        } });
      } catch (e3) {
        return 8 === e3;
      }
    })(), p = d && (function() {
      try {
        new Int8Array(1).with(-0.5, 1);
      } catch (e3) {
        return true;
      }
    })();
    s("with", { with: function(e3, t3) {
      var n3 = u(this), r2 = i(n3), s2 = a(e3), d2 = s2 < 0 ? r2 + s2 : s2, p2 = o(n3) ? l(t3) : +t3;
      if (d2 >= r2 || d2 < 0) throw new f("Incorrect index");
      for (var h = new (c(n3))(r2), v = 0; v < r2; v++) h[v] = v === d2 ? p2 : n3[v];
      return h;
    } }.with, !d || p);
  }, 81478: function(e2, t2, n2) {
    "use strict";
    var r = n2(14579), o = Math.min;
    e2.exports = function(e3) {
      var t3 = r(e3);
      return t3 > 0 ? o(t3, 9007199254740991) : 0;
    };
  }, 82704: function(e2, t2, n2) {
    "use strict";
    var r = n2(60983);
    e2.exports = !r(function() {
      var e3 = function() {
      }.bind();
      return "function" != typeof e3 || e3.hasOwnProperty("prototype");
    });
  }, 82953: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(61820), i = n2(60983), a = n2(19922), l = n2(64159), u = n2(19378), c = n2(81478), s = a.ArrayBuffer, f = a.DataView, d = f.prototype, p = o(s.prototype.slice), h = o(d.getUint8), v = o(d.setUint8);
    r({ target: "ArrayBuffer", proto: true, unsafe: true, forced: i(function() {
      return !new s(2).slice(1, void 0).byteLength;
    }) }, { slice: function(e3, t3) {
      if (p && void 0 === t3) return p(l(this), e3);
      for (var n3 = l(this).byteLength, r2 = u(e3, n3), o2 = u(void 0 === t3 ? n3 : t3, n3), i2 = new s(c(o2 - r2)), a2 = new f(this), d2 = new f(i2), m = 0; r2 < o2; ) v(d2, m++, h(a2, r2++));
      return i2;
    } });
  }, 83159: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(83941), i = n2(18), a = n2(13811), l = n2(12391), u = n2(34676);
    r({ target: "Promise", stat: true, forced: n2(40321) }, { race: function(e3) {
      var t3 = this, n3 = a.f(t3), r2 = n3.reject, c = l(function() {
        var a2 = i(t3.resolve);
        u(e3, function(e4) {
          o(a2, t3, e4).then(n3.resolve, r2);
        });
      });
      return c.error && r2(c.value), n3.promise;
    } });
  }, 83569: function(e2, t2, n2) {
    "use strict";
    var r, o, i, a, l = n2(25624), u = n2(1585), c = n2(75800), s = n2(54237), f = n2(67961), d = n2(60983), p = n2(17765), h = n2(90936), v = n2(9679), m = n2(77188), y = n2(31072), g = n2(8969), b = l.setImmediate, w = l.clearImmediate, E = l.process, S = l.Dispatch, k = l.Function, x = l.MessageChannel, C = l.String, O = 0, P = {}, T = "onreadystatechange";
    d(function() {
      r = l.location;
    });
    var N = function(e3) {
      if (f(P, e3)) {
        var t3 = P[e3];
        delete P[e3], t3();
      }
    }, A = function(e3) {
      return function() {
        N(e3);
      };
    }, R = function(e3) {
      N(e3.data);
    }, _ = function(e3) {
      l.postMessage(C(e3), r.protocol + "//" + r.host);
    };
    b && w || (b = function(e3) {
      m(arguments.length, 1);
      var t3 = s(e3) ? e3 : k(e3), n3 = h(arguments, 1);
      return P[++O] = function() {
        u(t3, void 0, n3);
      }, o(O), O;
    }, w = function(e3) {
      delete P[e3];
    }, g ? o = function(e3) {
      E.nextTick(A(e3));
    } : S && S.now ? o = function(e3) {
      S.now(A(e3));
    } : x && !y ? (a = (i = new x()).port2, i.port1.onmessage = R, o = c(a.postMessage, a)) : l.addEventListener && s(l.postMessage) && !l.importScripts && r && "file:" !== r.protocol && !d(_) ? (o = _, l.addEventListener("message", R, false)) : o = T in v("script") ? function(e3) {
      p.appendChild(v("script"))[T] = function() {
        p.removeChild(this), N(e3);
      };
    } : function(e3) {
      setTimeout(A(e3), 0);
    }), e2.exports = { set: b, clear: w };
  }, 83941: function(e2, t2, n2) {
    "use strict";
    var r = n2(82704), o = Function.prototype.call;
    e2.exports = r ? o.bind(o) : function() {
      return o.apply(o, arguments);
    };
  }, 85563: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(83941), i = n2(18), a = n2(13811), l = n2(12391), u = n2(34676);
    r({ target: "Promise", stat: true, forced: n2(40321) }, { all: function(e3) {
      var t3 = this, n3 = a.f(t3), r2 = n3.resolve, c = n3.reject, s = l(function() {
        var n4 = i(t3.resolve), a2 = [], l2 = 0, s2 = 1;
        u(e3, function(e4) {
          var i2 = l2++, u2 = false;
          s2++, o(n4, t3, e4).then(function(e5) {
            u2 || (u2 = true, a2[i2] = e5, --s2 || r2(a2));
          }, c);
        }), --s2 || r2(a2);
      });
      return s.error && c(s.value), n3.promise;
    } });
  }, 85927: function(e2, t2, n2) {
    "use strict";
    var r = n2(36691), o = String;
    e2.exports = function(e3) {
      if ("Symbol" === r(e3)) throw new TypeError("Cannot convert a Symbol value to a string");
      return o(e3);
    };
  }, 86020: function(e2, t2) {
    var n2;
    !(function() {
      "use strict";
      var r = {}.hasOwnProperty;
      function o() {
        for (var e3 = "", t3 = 0; t3 < arguments.length; t3++) {
          var n3 = arguments[t3];
          n3 && (e3 = a(e3, i(n3)));
        }
        return e3;
      }
      function i(e3) {
        if ("string" == typeof e3 || "number" == typeof e3) return e3;
        if ("object" != typeof e3) return "";
        if (Array.isArray(e3)) return o.apply(null, e3);
        if (e3.toString !== Object.prototype.toString && !e3.toString.toString().includes("[native code]")) return e3.toString();
        var t3 = "";
        for (var n3 in e3) r.call(e3, n3) && e3[n3] && (t3 = a(t3, n3));
        return t3;
      }
      function a(e3, t3) {
        return t3 ? e3 ? e3 + " " + t3 : e3 + t3 : e3;
      }
      e2.exports ? (o.default = o, e2.exports = o) : void 0 === (n2 = function() {
        return o;
      }.apply(t2, [])) || (e2.exports = n2);
    })();
  }, 86379: function(e2, t2, n2) {
    "use strict";
    var r, o, i, a, l, u = n2(25624), c = n2(10965), s = n2(75800), f = n2(83569).set, d = n2(97393), p = n2(31072), h = n2(47985), v = n2(6940), m = n2(8969), y = u.MutationObserver || u.WebKitMutationObserver, g = u.document, b = u.process, w = u.Promise, E = c("queueMicrotask");
    if (!E) {
      var S = new d(), k = function() {
        var e3, t3;
        for (m && (e3 = b.domain) && e3.exit(); t3 = S.get(); ) try {
          t3();
        } catch (e4) {
          throw S.head && r(), e4;
        }
        e3 && e3.enter();
      };
      p || m || v || !y || !g ? !h && w && w.resolve ? ((a = w.resolve(void 0)).constructor = w, l = s(a.then, a), r = function() {
        l(k);
      }) : m ? r = function() {
        b.nextTick(k);
      } : (f = s(f, u), r = function() {
        f(k);
      }) : (o = true, i = g.createTextNode(""), new y(k).observe(i, { characterData: true }), r = function() {
        i.data = o = !o;
      }), E = function(e3) {
        S.head || r(), S.add(e3);
      };
    }
    e2.exports = E;
  }, 86439: function(e2, t2, n2) {
    "use strict";
    var r = n2(75800), o = n2(19287), i = n2(99373), a = n2(23182), l = function(e3) {
      var t3 = 1 === e3;
      return function(n3, l2, u) {
        for (var c, s = i(n3), f = o(s), d = a(f), p = r(l2, u); d-- > 0; ) if (p(c = f[d], d, s)) switch (e3) {
          case 0:
            return c;
          case 1:
            return d;
        }
        return t3 ? -1 : void 0;
      };
    };
    e2.exports = { findLast: l(0), findLastIndex: l(1) };
  }, 86543: function(e2) {
    "use strict";
    e2.exports = function(e3) {
      return { iterator: e3, next: e3.next, done: false };
    };
  }, 86685: function(e2, t2, n2) {
    "use strict";
    var r = n2(8254), o = RangeError;
    e2.exports = function(e3, t3) {
      var n3 = r(e3);
      if (n3 % t3) throw new o("Wrong offset");
      return n3;
    };
  }, 87805: function(e2, t2, n2) {
    "use strict";
    var r = n2(64703), o = n2(54237), i = n2(29793), a = n2(61432), l = Object;
    e2.exports = a ? function(e3) {
      return "symbol" == typeof e3;
    } : function(e3) {
      var t3 = r("Symbol");
      return o(t3) && i(t3.prototype, l(e3));
    };
  }, 88140: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(83941), i = n2(34676), a = n2(18), l = n2(64159), u = n2(86543), c = n2(90043), s = n2(71597)("find", TypeError);
    r({ target: "Iterator", proto: true, real: true, forced: s }, { find: function(e3) {
      l(this);
      try {
        a(e3);
      } catch (e4) {
        c(this, "throw", e4);
      }
      if (s) return o(s, this, e3);
      var t3 = u(this), n3 = 0;
      return i(t3, function(t4, r2) {
        if (e3(t4, n3++)) return r2(t4);
      }, { IS_RECORD: true, INTERRUPTED: true }).result;
    } });
  }, 88352: function(e2, t2, n2) {
    "use strict";
    n2(2958);
  }, 88523: function(e2, t2, n2) {
    "use strict";
    var r = n2(36691), o = n2(67398), i = n2(13005), a = n2(47797), l = n2(24939)("iterator");
    e2.exports = function(e3) {
      if (!i(e3)) return o(e3, l) || o(e3, "@@iterator") || a[r(e3)];
    };
  }, 89580: function(e2, t2, n2) {
    "use strict";
    var r = n2(335).charAt, o = n2(85927), i = n2(17029), a = n2(59128), l = n2(4841), u = "String Iterator", c = i.set, s = i.getterFor(u);
    a(String, "String", function(e3) {
      c(this, { type: u, string: o(e3), index: 0 });
    }, function() {
      var e3, t3 = s(this), n3 = t3.string, o2 = t3.index;
      return o2 >= n3.length ? l(void 0, true) : (e3 = r(n3, o2), t3.index += e3.length, l(e3, false));
    });
  }, 90043: function(e2, t2, n2) {
    "use strict";
    var r = n2(83941), o = n2(64159), i = n2(67398);
    e2.exports = function(e3, t3, n3) {
      var a, l;
      o(e3);
      try {
        if (!(a = i(e3, "return"))) {
          if ("throw" === t3) throw n3;
          return n3;
        }
        a = r(a, e3);
      } catch (e4) {
        l = true, a = e4;
      }
      if ("throw" === t3) throw n3;
      if (l) throw a;
      return o(a), n3;
    };
  }, 90765: function(e2) {
    "use strict";
    e2.exports = {};
  }, 90768: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(83941);
    r({ target: "URL", proto: true, enumerable: true }, { toJSON: function() {
      return o(URL.prototype.toString, this);
    } });
  }, 90936: function(e2, t2, n2) {
    "use strict";
    var r = n2(22440);
    e2.exports = r([].slice);
  }, 91557: function(e2, t2, n2) {
    "use strict";
    var r = n2(75800), o = n2(19287), i = n2(99373), a = n2(23182), l = n2(29349), u = n2(35800), c = function(e3) {
      var t3 = 1 === e3, n3 = 2 === e3, c2 = 3 === e3, s = 4 === e3, f = 6 === e3, d = 7 === e3, p = 5 === e3 || f;
      return function(h, v, m) {
        for (var y, g, b = i(h), w = o(b), E = a(w), S = r(v, m), k = 0, x = 0, C = t3 ? l(h, E) : n3 || d ? l(h, 0) : void 0; E > k; k++) if ((p || k in w) && (g = S(y = w[k], k, b), e3)) if (t3) u(C, k, g);
        else if (g) switch (e3) {
          case 3:
            return true;
          case 5:
            return y;
          case 6:
            return k;
          case 2:
            u(C, x++, y);
        }
        else switch (e3) {
          case 4:
            return false;
          case 7:
            u(C, x++, y);
        }
        return f ? -1 : c2 || s ? s : C;
      };
    };
    e2.exports = { forEach: c(0), map: c(1), filter: c(2), some: c(3), every: c(4), find: c(5), findIndex: c(6), filterReject: c(7) };
  }, 91739: function(e2, t2, n2) {
    "use strict";
    var r = n2(60983);
    e2.exports = !r(function() {
      function e3() {
      }
      return e3.prototype.constructor = null, Object.getPrototypeOf(new e3()) !== e3.prototype;
    });
  }, 91791: function(e2) {
    "use strict";
    var t2 = String;
    e2.exports = function(e3) {
      try {
        return t2(e3);
      } catch (e4) {
        return "Object";
      }
    };
  }, 92088: function(e2, t2, n2) {
    "use strict";
    var r = n2(1585), o = n2(83941), i = n2(22440), a = n2(11268), l = n2(60983), u = n2(64159), c = n2(54237), s = n2(50810), f = n2(14579), d = n2(81478), p = n2(85927), h = n2(24686), v = n2(64461), m = n2(67398), y = n2(75558), g = n2(51186), b = n2(32786), w = n2(24939)("replace"), E = Math.max, S = Math.min, k = i([].concat), x = i([].push), C = i("".indexOf), O = i("".slice), P = function(e3) {
      return void 0 === e3 ? e3 : String(e3);
    }, T = "$0" === "a".replace(/./, "$0"), N = !!/./[w] && "" === /./[w]("a", "$0");
    a("replace", function(e3, t3, n3) {
      var i2 = N ? "$" : "$0";
      return [function(e4, n4) {
        var r2 = h(this), i3 = s(e4) ? m(e4, w) : void 0;
        return i3 ? o(i3, e4, r2, n4) : o(t3, p(r2), e4, n4);
      }, function(e4, o2) {
        var a2 = u(this), l2 = p(e4);
        if ("string" == typeof o2 && -1 === C(o2, i2) && -1 === C(o2, "$<")) {
          var s2 = n3(t3, a2, l2, o2);
          if (s2.done) return s2.value;
        }
        var h2 = c(o2);
        h2 || (o2 = p(o2));
        var m2, w2 = p(g(a2)), T2 = -1 !== C(w2, "g");
        T2 && (m2 = -1 !== C(w2, "u"), a2.lastIndex = 0);
        for (var N2, A = []; null !== (N2 = b(a2, l2)) && (x(A, N2), T2); ) "" === p(N2[0]) && (a2.lastIndex = v(l2, d(a2.lastIndex), m2));
        for (var R = "", _ = 0, j = 0; j < A.length; j++) {
          for (var L, D = p((N2 = A[j])[0]), I = E(S(f(N2.index), l2.length), 0), z = [], F = 1; F < N2.length; F++) x(z, P(N2[F]));
          var M = N2.groups;
          if (h2) {
            var U = k([D], z, I, l2);
            void 0 !== M && x(U, M), L = p(r(o2, void 0, U));
          } else L = y(D, l2, I, z, M, o2);
          I >= _ && (R += O(l2, _, I) + L, _ = I + D.length);
        }
        return R + O(l2, _);
      }];
    }, !!l(function() {
      var e3 = /./;
      return e3.exec = function() {
        var e4 = [];
        return e4.groups = { a: "7" }, e4;
      }, "7" !== "".replace(e3, "$<a>");
    }) || !T || N);
  }, 92346: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(99373), i = n2(23182), a = n2(8935), l = n2(48621);
    r({ target: "Array", proto: true, arity: 1, forced: n2(60983)(function() {
      return 4294967297 !== [].push.call({ length: 4294967296 }, 1);
    }) || !(function() {
      try {
        Object.defineProperty([], "length", { writable: false }).push();
      } catch (e3) {
        return e3 instanceof TypeError;
      }
    })() }, { push: function(e3) {
      var t3 = o(this), n3 = i(t3), r2 = arguments.length;
      l(n3 + r2);
      for (var u = 0; u < r2; u++) t3[n3] = arguments[u], n3++;
      return a(t3, n3), n3;
    } });
  }, 94165: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = n2(83941), i = n2(77948), a = n2(23182), l = n2(86685), u = n2(99373), c = n2(60983), s = r.RangeError, f = r.Int8Array, d = f && f.prototype, p = d && d.set, h = i.aTypedArray, v = i.exportTypedArrayMethod, m = !c(function() {
      var e3 = new Uint8ClampedArray(2);
      return o(p, e3, { length: 1, 0: 3 }, 1), 3 !== e3[1];
    }), y = m && i.NATIVE_ARRAY_BUFFER_VIEWS && c(function() {
      var e3 = new f(2);
      return e3.set(1), e3.set("2", 1), 0 !== e3[0] || 2 !== e3[1];
    });
    v("set", function(e3) {
      h(this);
      var t3 = l(arguments.length > 1 ? arguments[1] : void 0, 1), n3 = u(e3);
      if (m) return o(p, this, n3, t3);
      var r2 = this.length, i2 = a(n3), c2 = 0;
      if (i2 + t3 > r2) throw new s("Wrong length");
      for (; c2 < i2; ) this[t3 + c2] = n3[c2++];
    }, !m || y);
  }, 94203: function(e2, t2, n2) {
    "use strict";
    var r = n2(26912), o = n2(23182), i = n2(48621), a = n2(75800), l = n2(35800), u = function(e3, t3, n3, c, s, f, d, p) {
      for (var h, v, m = s, y = 0, g = !!d && a(d, p); y < c; ) y in n3 && (h = g ? g(n3[y], y, t3) : n3[y], f > 0 && r(h) ? (v = o(h), m = u(e3, t3, h, v, m, f - 1) - 1) : (i(m + 1), l(e3, m, h)), m++), y++;
      return m;
    };
    e2.exports = u;
  }, 94436: function(e2, t2, n2) {
    "use strict";
    var r = n2(75800), o = n2(83941), i = n2(99373), a = n2(25383), l = n2(44921), u = n2(14053), c = n2(23182), s = n2(35800), f = n2(8935), d = n2(34585), p = n2(88523), h = Array;
    e2.exports = function(e3) {
      var t3 = i(e3), n3 = u(this), v = arguments.length, m = v > 1 ? arguments[1] : void 0, y = void 0 !== m;
      y && (m = r(m, v > 2 ? arguments[2] : void 0));
      var g, b, w, E, S, k, x = p(t3), C = 0;
      if (!x || this === h && l(x)) for (g = c(t3), b = n3 ? new this(g) : h(g); g > C; C++) k = y ? m(t3[C], C) : t3[C], s(b, C, k);
      else for (b = n3 ? new this() : [], S = (E = d(t3, x)).next; !(w = o(S, E)).done; C++) k = y ? a(E, m, [w.value, C], true) : w.value, s(b, C, k);
      return f(b, C), b;
    };
  }, 94532: function(e2, t2, n2) {
    "use strict";
    var r = n2(24939)("match");
    e2.exports = function(e3) {
      var t3 = /./;
      try {
        "/./"[e3](t3);
      } catch (n3) {
        try {
          return t3[r] = false, "/./"[e3](t3);
        } catch (e4) {
        }
      }
      return false;
    };
  }, 95741: function(e2, t2, n2) {
    "use strict";
    var r = n2(77604), o = n2(22440), i = n2(83941), a = n2(60983), l = n2(41864), u = n2(22061), c = n2(28493), s = n2(99373), f = n2(19287), d = Object.assign, p = Object.defineProperty, h = o([].concat);
    e2.exports = !d || a(function() {
      if (r && 1 !== d({ b: 1 }, d(p({}, "a", { enumerable: true, get: function() {
        p(this, "b", { value: 3, enumerable: false });
      } }), { b: 2 })).b) return true;
      var e3 = {}, t3 = {}, n3 = Symbol("assign detection"), o2 = "abcdefghijklmnopqrst";
      return e3[n3] = 7, o2.split("").forEach(function(e4) {
        t3[e4] = e4;
      }), 7 !== d({}, e3)[n3] || l(d({}, t3)).join("") !== o2;
    }) ? function(e3, t3) {
      for (var n3 = s(e3), o2 = arguments.length, a2 = 1, d2 = u.f, p2 = c.f; o2 > a2; ) for (var v, m = f(arguments[a2++]), y = d2 ? h(l(m), d2(m)) : l(m), g = y.length, b = 0; g > b; ) v = y[b++], r && !i(p2, m, v) || (n3[v] = m[v]);
      return n3;
    } : d;
  }, 95905: function(e2, t2, n2) {
    "use strict";
    var r = n2(25624), o = Object.defineProperty;
    e2.exports = function(e3, t3) {
      try {
        o(r, e3, { value: t3, configurable: true, writable: true });
      } catch (n3) {
        r[e3] = t3;
      }
      return t3;
    };
  }, 96230: function(e2, t2, n2) {
    "use strict";
    n2(27171);
  }, 97024: function(e2, t2, n2) {
    "use strict";
    var r = n2(18654), o = n2(64703), i = n2(17219), a = n2(44910), l = n2(61324).CONSTRUCTOR, u = n2(68310), c = o("Promise"), s = i && !l;
    r({ target: "Promise", stat: true, forced: i || l }, { resolve: function(e3) {
      return u(s && this === c ? a : this, e3);
    } });
  }, 97393: function(e2) {
    "use strict";
    var t2 = function() {
      this.head = null, this.tail = null;
    };
    t2.prototype = { add: function(e3) {
      var t3 = { item: e3, next: null }, n2 = this.tail;
      n2 ? n2.next = t3 : this.head = t3, this.tail = t3;
    }, get: function() {
      var e3 = this.head;
      if (e3) return null === (this.head = e3.next) && (this.tail = null), e3.item;
    } }, e2.exports = t2;
  }, 97655: function(e2, t2, n2) {
    "use strict";
    var r = n2(54489).f, o = n2(67961), i = n2(24939)("toStringTag");
    e2.exports = function(e3, t3, n3) {
      e3 && !n3 && (e3 = e3.prototype), e3 && !o(e3, i) && r(e3, i, { configurable: true, value: t3 });
    };
  }, 97718: function(e2, t2, n2) {
    "use strict";
    n2(70187);
  }, 97736: function(e2, t2, n2) {
    "use strict";
    e2.exports = n2(67497);
  }, 97817: function(e2, t2, n2) {
    "use strict";
    var r = n2(1549), o = n2(19378), i = n2(23182), a = function(e3) {
      return function(t3, n3, a2) {
        var l = r(t3), u = i(l);
        if (0 === u) return !e3 && -1;
        var c, s = o(a2, u);
        if (e3 && n3 != n3) {
          for (; u > s; ) if ((c = l[s++]) != c) return true;
        } else for (; u > s; s++) if ((e3 || s in l) && l[s] === n3) return e3 || s || 0;
        return !e3 && -1;
      };
    };
    e2.exports = { includes: a(true), indexOf: a(false) };
  }, 98588: function(e2, t2, n2) {
    "use strict";
    var r = n2(50810), o = n2(19912), i = n2(24939)("match");
    e2.exports = function(e3) {
      var t3;
      return r(e3) && (void 0 !== (t3 = e3[i]) ? !!t3 : "RegExp" === o(e3));
    };
  }, 99145: function(e2, t2, n2) {
    "use strict";
    var r = n2(77604), o = n2(47350), i = n2(54489), a = n2(64159), l = n2(1549), u = n2(41864);
    t2.f = r && !o ? Object.defineProperties : function(e3, t3) {
      a(e3);
      for (var n3, r2 = l(t3), o2 = u(t3), c = o2.length, s = 0; c > s; ) i.f(e3, n3 = o2[s++], r2[n3]);
      return e3;
    };
  }, 99313: function(e2, t2, n2) {
    "use strict";
    var r = n2(26912), o = n2(14053), i = n2(50810), a = n2(24939)("species"), l = Array;
    e2.exports = function(e3) {
      var t3;
      return r(e3) && (t3 = e3.constructor, (o(t3) && (t3 === l || r(t3.prototype)) || i(t3) && null === (t3 = t3[a])) && (t3 = void 0)), void 0 === t3 ? l : t3;
    };
  }, 99373: function(e2, t2, n2) {
    "use strict";
    var r = n2(24686), o = Object;
    e2.exports = function(e3) {
      return o(r(e3));
    };
  } }, t = {};
  function n(r) {
    var o = t[r];
    if (void 0 !== o) return o.exports;
    var i = t[r] = { exports: {} };
    return e[r].call(i.exports, i, i.exports, n), i.exports;
  }
  n.n = function(e2) {
    var t2 = e2 && e2.__esModule ? function() {
      return e2.default;
    } : function() {
      return e2;
    };
    return n.d(t2, { a: t2 }), t2;
  }, n.d = function(e2, t2) {
    for (var r in t2) n.o(t2, r) && !n.o(e2, r) && Object.defineProperty(e2, r, { enumerable: true, get: t2[r] });
  }, n.g = (function() {
    if ("object" == typeof globalThis) return globalThis;
    try {
      return this || new Function("return this")();
    } catch (e2) {
      if ("object" == typeof window) return window;
    }
  })(), n.o = function(e2, t2) {
    return Object.prototype.hasOwnProperty.call(e2, t2);
  }, (function() {
    "use strict";
    n(32576), n(92346), n(59770), n(9672), n(16976), n(15093);
    var e2 = n(97736);
    n(904), n(30193);
    var t2 = n(72528);
    n(50911), n(16555), n(52837);
    const r = (e3) => (e3 + 256).toString(16).substr(1), o = [4, 6, 8, 10];
    class i {
      constructor() {
        this.registry = /* @__PURE__ */ new Map();
      }
      emit(e3, ...t3) {
        var n2;
        const r2 = null !== (n2 = this.registry.get(e3)) && void 0 !== n2 ? n2 : [];
        for (const e4 of r2) e4(...t3);
      }
      on(e3, t3) {
        {
          let n2 = this.registry.get(e3);
          n2 || this.registry.set(e3, n2 = /* @__PURE__ */ new Set()), n2.add(t3);
        }
        return () => {
          const n2 = this.registry.get(e3);
          return !(!n2 || !n2.has(t3)) && (1 === n2.size ? this.registry.delete(e3) : n2.delete(t3));
        };
      }
      getListeners(e3) {
        const t3 = this.registry.get(e3);
        return t3 ? [...t3] : [];
      }
    }
    let a = -1, l = 0;
    function u(e3) {
      let t3 = "";
      const n2 = Date.now();
      return a === n2 ? l++ : (l = 0, a = n2), t3 += n2 + "-" + l, e3 && (t3 = e3 + t3), t3;
    }
    const c = "winio:", s = /* @__PURE__ */ new Set(["SYN", "SYN/ACK", "ACK"]), f = /* @__PURE__ */ new Set([...s, "connected"]);
    class d extends i {
      constructor(e3, t3, { source: n2 = window, timeout: r2 = 5e3, namespace: o2 = "", instanceId: i2 } = {}) {
        if (super(), this.target = e3, this.targetOrigin = t3, this.preConnectionEvents = [], "*" === t3) throw new Error("targetOrigin can not be '*'");
        if (t3.split("*").length > 2) throw new Error("targetOrigin can only use 1 wildcard '*'");
        this.source = n2, this.namespace = o2, this.isConnected = false, this.isListening = false, this.isClosed = false, this.timeout = r2, this.logs = [], this.instanceId = i2 || u();
      }
      handleMessageEvent(e3) {
        if (this.isClosed) return;
        const t3 = this.targetOrigin.split("*"), n2 = t3.length > 1;
        if ((n2 ? e3.origin.startsWith(t3[0]) && e3.origin.endsWith(t3[1]) : e3.origin === this.targetOrigin) && e3.source === this.target && (r2 = this.namespace, "string" == typeof (o2 = e3.data) && o2.startsWith(c) && o2.substr(6, r2.length) === r2)) {
          const t4 = ((e4, t5) => {
            const n3 = t5.substring(6 + e4.length);
            return JSON.parse(n3);
          })(this.namespace, e3.data), { winio: r3, event: o3 } = t4;
          if (r3.senderId && r3.senderId === this.instanceId) return;
          s.has(o3.name) || this.isConnected && r3.cid === this.connectionID ? (n2 && "SYN" === o3.name && (this.targetOrigin = e3.origin), this.log({ type: "on", data: t4 }), super.emit(o3.name, o3.payload)) : this.preConnectionEvents.push(e3);
        }
        var r2, o2;
      }
      async startHandshake() {
        let e3 = 0, t3 = 0, n2 = Math.ceil(this.timeout / 8);
        for (; e3 < 3; ) try {
          return 2 === e3 && n2 < this.timeout - t3 && (n2 = this.timeout - t3), void await this.attemptHandshake(n2);
        } catch {
          t3 += n2, e3 += 1, n2 *= 2;
        }
        throw new Error("Handshake failed");
      }
      attemptHandshake(e3) {
        return this.handshakePromise = new Promise((t3, n2) => {
          this.resolveHandshake = t3, setTimeout(() => {
            this.isConnected || n2();
          }, e3);
        }), this.internalEmit("SYN", { connectionID: u() }), this.handshakePromise;
      }
      handshakeAcknowledged(e3, t3) {
        var n2;
        this.isConnected = true, this.connectionID = e3, null === (n2 = this.resolveHandshake) || void 0 === n2 || n2.call(this), super.emit("connected", t3), this.preConnectionEvents.length > 0 && (this.preConnectionEvents.forEach((e4) => {
          this.handleMessageEvent(e4);
        }), this.preConnectionEvents = []);
      }
      emit(e3, t3) {
        if (f.has(e3)) throw new Error(`"${e3}" is a reserve event.`);
        if (!this.isConnected) throw new Error("Connection has to be establish before emitting events.");
        this.internalEmit(e3, t3);
      }
      internalEmit(e3, t3) {
        const n2 = { cid: this.connectionID, eid: u() };
        this.target === this.source && (n2.senderId = this.instanceId);
        const r2 = { winio: n2, event: { name: e3, payload: t3 } };
        var o2, i2;
        this.log({ type: "emit", data: r2 }), this.target.postMessage((o2 = this.namespace, i2 = r2, `${c}${o2}${JSON.stringify(i2)}`), this.targetOrigin);
      }
      open(e3) {
        if (this.isListening) throw new Error("Can't use both 'open' and 'connect' in the same connection");
        this.on("SYN", (t3) => {
          this.internalEmit("SYN/ACK", { connectionID: t3.connectionID, data: e3 });
        }), this.on("SYN/ACK", (t3) => {
          this.internalEmit("ACK", { connectionID: t3.connectionID, data: e3 }), this.handshakeAcknowledged(t3.connectionID, t3.data);
        }), this.on("ACK", (e4) => {
          this.handshakeAcknowledged(e4.connectionID, e4.data);
        }), this.boundMessageHandler = (e4) => this.handleMessageEvent(e4), this.source.addEventListener("message", this.boundMessageHandler, false), this.isListening = true;
      }
      close() {
        this.isClosed = true, this.isConnected = false, this.isListening = false, this.preConnectionEvents = [], this.boundMessageHandler && (this.source.removeEventListener("message", this.boundMessageHandler), this.boundMessageHandler = void 0);
      }
      connect(e3 = {}) {
        if (this.isListening) throw new Error("Can't use both 'open' and 'connect' in the same connection");
        if (this.targetOrigin.includes("*")) throw new Error("Can't use 'connect' with a targetOrigin that uses a wildcard, please use 'open' instead to wait for a connection.");
        return this.open(e3.data), this.startHandshake();
      }
      getLogs() {
        return this.logs;
      }
      log(e3) {
        this.logs.push(e3);
      }
    }
    class p {
      constructor(e3, t3, n2, r2, o2, i2, a2) {
        if (null === e3) throw "source cannot be null";
        this.connection = new d(e3, t3, { namespace: r2, instanceId: "aid-verify-widget" });
        const l2 = { events: i2, options: n2.options, features: n2.features, serviceKey: n2.serviceKey, redirect_uri: window.location.origin, urlContext: new URL(n2.serviceURL).pathname };
        n2.devAppDomain && (l2.devAppDomain = n2.devAppDomain), a2 && a2.length && (l2.procedures = a2), this.connection.open(), this.connection.on("connected", () => {
          n2.callbacks.onReady && n2.callbacks.onReady({ frameId: n2.options.frameId }), this.connection.emit("config", l2);
        }), this.connection.on("resize", (e4) => {
          o2 && o2.resize && o2.resize(e4);
        });
      }
    }
    class h {
      constructor(e3, t3, n2, r2, o2, i2) {
        this.parameters = {}, this.expandedInitHeight = 200, this.path = e3, this.containerId = t3, this.name = n2, this.size = r2, o2 && (this.parameters = o2);
        const a2 = document.createElement("iframe");
        a2.src = this.getWidgetURL(), a2.width = "100%", a2.height = "expanded" !== r2 || i2 ? i2 ? "0" : "100%" : this.expandedInitHeight.toString(), a2.id = n2 + "-iFrame", a2.name = this.name, a2.scrolling = "no", a2.frameBorder = "0", a2.setAttribute("role", "none"), this.iframe = a2;
        const l2 = document.getElementById(this.containerId);
        if (!l2) throw new Error(`cannot find element with id ${t3}`);
        this.container = l2;
      }
      append() {
        return this.container.appendChild(this.iframe), this.iframe.contentWindow;
      }
      destroy() {
        var e3;
        null === (e3 = this.iframe.parentNode) || void 0 === e3 || e3.removeChild(this.iframe);
      }
      resize(e3) {
        this.iframe && this.iframe.getBoundingClientRect().height < e3.height && "expanded" === this.size && (this.iframe.height = Math.ceil(e3.height).toString());
      }
      getWidgetURL() {
        const e3 = new URL(this.path);
        return Object.keys(this.parameters).forEach((t3) => {
          "serviceKey" === t3 ? e3.searchParams.set("widgetKey", this.parameters[t3]) : e3.searchParams.set(t3, this.parameters[t3]);
        }), e3.toString();
      }
    }
    class v {
      constructor(e3, t3, n2, i2 = false) {
        this.callbackMapping = { onComplete: "complete", onFail: "fail", onReady: "ready", onWidgetWillChangeFlow: "widgetWillChangeFlow", onWidgetWillRender: "widgetWillRender", onResize: "resize" }, this.eventMapping = { complete: "onComplete", fail: "onFail", ready: "onReady", widgetWillChangeFlow: "onWidgetWillChangeFlow", rpcRequest: "", widgetWillRender: "onWidgetWillRender", resize: "onResize" }, this.procedures = {}, this.config = e3, this.name = t3, this.config.options.frameId ? this.id = this.config.options.frameId : (this.id = (() => {
          const e4 = crypto.getRandomValues(new Uint8Array(16));
          e4[6] = 15 & e4[6] | 64, e4[8] = 63 & e4[8] | 128;
          let t4 = "";
          for (let n3 = 0; n3 < e4.length; n3++) o.includes(n3) && (t4 += "-"), t4 += r(e4[n3]);
          return t4;
        })(), this.config.options.frameId = this.id), this.config.features || (this.config.features = {}), this.config.features.mode = this.config.features.mode ? this.config.features.mode : "modal", this.config.features.size = this.config.features.size ? this.config.features.size : "expanded", this.config.options.theme = this.config.options.theme ? this.config.options.theme : { autoThemeAdjust: false, defaultTheme: "light" }, i2 || (this.iframeParams = this.createIframeParameters(), this.widgetIframe = new h(e3.serviceURL + n2, e3.containerId, this.name, this.config.features.size, this.iframeParams, this.config.features.noPadding));
      }
      registerRPC(e3, t3) {
        this.procedures[e3] = this.config.callbacks[t3];
      }
      createIframeAndConnect() {
        try {
          if (!this.widgetIframe) throw new Error("WidgetIframe not initialized");
          const e3 = this.widgetIframe.append();
          if (!e3) throw new Error("Failed to get iframe window");
          return this.connectToWindow(e3);
        } catch (e3) {
          throw new Error("cannot create and add iframe element to the DOM");
        }
      }
      connectToWindow(e3, t3) {
        const n2 = Object.keys(this.config.callbacks).reduce((e4, t4) => ("onCancel" !== t4 || e4.includes("fail") ? this.callbackMapping[t4] && !e4.includes(this.callbackMapping[t4]) && e4.push(this.callbackMapping[t4]) : e4.push("fail"), e4), []);
        let r2 = [];
        Object.keys(this.procedures).length > 0 && (n2.push("rpcRequest"), r2 = Object.keys(this.procedures));
        const o2 = t3 || this.widgetIframe, i2 = new p(e3, new URL(this.config.serviceURL).origin, this.config, this.name, o2, n2, r2);
        return n2.forEach((e4) => {
          const t4 = e4;
          i2.connection.on(t4, async (e5) => {
            if ("rpcRequest" === t4) {
              const t5 = e5;
              if (!this.procedures[t5.procedure]) return;
              const n3 = await this.procedures[t5.procedure]({ data: t5.data, frameId: this.config.options.frameId });
              this.sendResponse({ uid: t5.uid, data: n3, procedure: t5.procedure });
            } else {
              const n3 = e5, r3 = e5;
              if ("complete" !== t4 || n3.token) if ("fail" === t4 && "1007" === r3.error.id) this.config.callbacks.onCancel && this.config.callbacks.onCancel({ data: r3, frameId: this.config.options.frameId });
              else {
                const n4 = this.eventMapping[t4];
                this.config.callbacks[n4] && this.config.callbacks[n4]({ data: e5, frameId: this.config.options.frameId });
              }
              else this.config.callbacks.onSkipVerification && this.config.callbacks.onSkipVerification({ data: n3, frameId: this.config.options.frameId });
            }
          });
        }), this.connection = i2.connection, i2.connection;
      }
      createIframeParameters() {
        const e3 = { serviceKey: this.config.serviceKey, redirect_uri: window.location.origin };
        if (this.config.devAppDomain && (e3.widgetDomain = this.config.devAppDomain), this.config.options.theme) {
          const { autoThemeAdjust: t3, defaultTheme: n2 } = this.config.options.theme;
          if ("function" == typeof window.matchMedia && t3) {
            const t4 = window.matchMedia("(prefers-color-scheme: dark)");
            t4.matches && (e3.theme = "dark"), t4.onchange = () => {
              e3.theme ? delete e3.theme : e3.theme = "dark";
            };
          } else "blue" !== n2 && "dark" !== n2 || (e3.theme = "dark");
          this.config.options.theme.setColorScheme && (this.config.options.theme.autoThemeAdjust && (e3.themeAdjust = "1"), "blue" !== n2 && "dark" !== n2 || (e3.defaultTheme = n2));
        }
        return false === this.config.options.waitAnimation && (e3.w = "0"), e3;
      }
      getIframeParameters() {
        return this.iframeParams;
      }
      tearDown() {
        this.widgetIframe && this.widgetIframe.destroy(), this.connection && this.connection.close();
      }
      sendResponse(e3) {
        return this.connection.emit("rpcResponse", e3), true;
      }
    }
    class m {
      constructor() {
      }
      resize() {
      }
    }
    class y extends v {
      constructor(e3, t3, n2) {
        super(e3, n2, "/", true), this.windowObject = t3, this.widgetWindow = new m();
      }
      connect() {
        try {
          return this.connectToWindow(this.windowObject, this.widgetWindow);
        } catch (e3) {
          throw new Error("cannot connect to window");
        }
      }
      tearDown() {
        super.tearDown();
      }
    }
    let g = null;
    n(30325), n(4328), n(90768), n(88352), n(54126), n(32041);
    var b = "undefined" != typeof globalThis && globalThis || "undefined" != typeof self && self || void 0 !== n.g && n.g || {}, w = "URLSearchParams" in b, E = "Symbol" in b && "iterator" in Symbol, S = "FileReader" in b && "Blob" in b && (function() {
      try {
        return new Blob(), true;
      } catch (e3) {
        return false;
      }
    })(), k = "FormData" in b, x = "ArrayBuffer" in b;
    if (x) var C = ["[object Int8Array]", "[object Uint8Array]", "[object Uint8ClampedArray]", "[object Int16Array]", "[object Uint16Array]", "[object Int32Array]", "[object Uint32Array]", "[object Float32Array]", "[object Float64Array]"], O = ArrayBuffer.isView || function(e3) {
      return e3 && C.indexOf(Object.prototype.toString.call(e3)) > -1;
    };
    function P(e3) {
      if ("string" != typeof e3 && (e3 = String(e3)), /[^a-z0-9\-#$%&'*+.^_`|~!]/i.test(e3) || "" === e3) throw new TypeError('Invalid character in header field name: "' + e3 + '"');
      return e3.toLowerCase();
    }
    function T(e3) {
      return "string" != typeof e3 && (e3 = String(e3)), e3;
    }
    function N(e3) {
      var t3 = { next: function() {
        var t4 = e3.shift();
        return { done: void 0 === t4, value: t4 };
      } };
      return E && (t3[Symbol.iterator] = function() {
        return t3;
      }), t3;
    }
    function A(e3) {
      this.map = {}, e3 instanceof A ? e3.forEach(function(e4, t3) {
        this.append(t3, e4);
      }, this) : Array.isArray(e3) ? e3.forEach(function(e4) {
        if (2 != e4.length) throw new TypeError("Headers constructor: expected name/value pair to be length 2, found" + e4.length);
        this.append(e4[0], e4[1]);
      }, this) : e3 && Object.getOwnPropertyNames(e3).forEach(function(t3) {
        this.append(t3, e3[t3]);
      }, this);
    }
    function R(e3) {
      if (!e3._noBody) return e3.bodyUsed ? Promise.reject(new TypeError("Already read")) : void (e3.bodyUsed = true);
    }
    function _(e3) {
      return new Promise(function(t3, n2) {
        e3.onload = function() {
          t3(e3.result);
        }, e3.onerror = function() {
          n2(e3.error);
        };
      });
    }
    function j(e3) {
      var t3 = new FileReader(), n2 = _(t3);
      return t3.readAsArrayBuffer(e3), n2;
    }
    function L(e3) {
      if (e3.slice) return e3.slice(0);
      var t3 = new Uint8Array(e3.byteLength);
      return t3.set(new Uint8Array(e3)), t3.buffer;
    }
    function D() {
      return this.bodyUsed = false, this._initBody = function(e3) {
        var t3;
        this.bodyUsed = this.bodyUsed, this._bodyInit = e3, e3 ? "string" == typeof e3 ? this._bodyText = e3 : S && Blob.prototype.isPrototypeOf(e3) ? this._bodyBlob = e3 : k && FormData.prototype.isPrototypeOf(e3) ? this._bodyFormData = e3 : w && URLSearchParams.prototype.isPrototypeOf(e3) ? this._bodyText = e3.toString() : x && S && (t3 = e3) && DataView.prototype.isPrototypeOf(t3) ? (this._bodyArrayBuffer = L(e3.buffer), this._bodyInit = new Blob([this._bodyArrayBuffer])) : x && (ArrayBuffer.prototype.isPrototypeOf(e3) || O(e3)) ? this._bodyArrayBuffer = L(e3) : this._bodyText = e3 = Object.prototype.toString.call(e3) : (this._noBody = true, this._bodyText = ""), this.headers.get("content-type") || ("string" == typeof e3 ? this.headers.set("content-type", "text/plain;charset=UTF-8") : this._bodyBlob && this._bodyBlob.type ? this.headers.set("content-type", this._bodyBlob.type) : w && URLSearchParams.prototype.isPrototypeOf(e3) && this.headers.set("content-type", "application/x-www-form-urlencoded;charset=UTF-8"));
      }, S && (this.blob = function() {
        var e3 = R(this);
        if (e3) return e3;
        if (this._bodyBlob) return Promise.resolve(this._bodyBlob);
        if (this._bodyArrayBuffer) return Promise.resolve(new Blob([this._bodyArrayBuffer]));
        if (this._bodyFormData) throw new Error("could not read FormData body as blob");
        return Promise.resolve(new Blob([this._bodyText]));
      }), this.arrayBuffer = function() {
        if (this._bodyArrayBuffer) return R(this) || (ArrayBuffer.isView(this._bodyArrayBuffer) ? Promise.resolve(this._bodyArrayBuffer.buffer.slice(this._bodyArrayBuffer.byteOffset, this._bodyArrayBuffer.byteOffset + this._bodyArrayBuffer.byteLength)) : Promise.resolve(this._bodyArrayBuffer));
        if (S) return this.blob().then(j);
        throw new Error("could not read as ArrayBuffer");
      }, this.text = function() {
        var e3, t3, n2, r2, o2, i2 = R(this);
        if (i2) return i2;
        if (this._bodyBlob) return e3 = this._bodyBlob, n2 = _(t3 = new FileReader()), o2 = (r2 = /charset=([A-Za-z0-9_-]+)/.exec(e3.type)) ? r2[1] : "utf-8", t3.readAsText(e3, o2), n2;
        if (this._bodyArrayBuffer) return Promise.resolve((function(e4) {
          for (var t4 = new Uint8Array(e4), n3 = new Array(t4.length), r3 = 0; r3 < t4.length; r3++) n3[r3] = String.fromCharCode(t4[r3]);
          return n3.join("");
        })(this._bodyArrayBuffer));
        if (this._bodyFormData) throw new Error("could not read FormData body as text");
        return Promise.resolve(this._bodyText);
      }, k && (this.formData = function() {
        return this.text().then(F);
      }), this.json = function() {
        return this.text().then(JSON.parse);
      }, this;
    }
    A.prototype.append = function(e3, t3) {
      e3 = P(e3), t3 = T(t3);
      var n2 = this.map[e3];
      this.map[e3] = n2 ? n2 + ", " + t3 : t3;
    }, A.prototype.delete = function(e3) {
      delete this.map[P(e3)];
    }, A.prototype.get = function(e3) {
      return e3 = P(e3), this.has(e3) ? this.map[e3] : null;
    }, A.prototype.has = function(e3) {
      return this.map.hasOwnProperty(P(e3));
    }, A.prototype.set = function(e3, t3) {
      this.map[P(e3)] = T(t3);
    }, A.prototype.forEach = function(e3, t3) {
      for (var n2 in this.map) this.map.hasOwnProperty(n2) && e3.call(t3, this.map[n2], n2, this);
    }, A.prototype.keys = function() {
      var e3 = [];
      return this.forEach(function(t3, n2) {
        e3.push(n2);
      }), N(e3);
    }, A.prototype.values = function() {
      var e3 = [];
      return this.forEach(function(t3) {
        e3.push(t3);
      }), N(e3);
    }, A.prototype.entries = function() {
      var e3 = [];
      return this.forEach(function(t3, n2) {
        e3.push([n2, t3]);
      }), N(e3);
    }, E && (A.prototype[Symbol.iterator] = A.prototype.entries);
    var I = ["CONNECT", "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT", "TRACE"];
    function z(e3, t3) {
      if (!(this instanceof z)) throw new TypeError('Please use the "new" operator, this DOM object constructor cannot be called as a function.');
      var n2, r2, o2 = (t3 = t3 || {}).body;
      if (e3 instanceof z) {
        if (e3.bodyUsed) throw new TypeError("Already read");
        this.url = e3.url, this.credentials = e3.credentials, t3.headers || (this.headers = new A(e3.headers)), this.method = e3.method, this.mode = e3.mode, this.signal = e3.signal, o2 || null == e3._bodyInit || (o2 = e3._bodyInit, e3.bodyUsed = true);
      } else this.url = String(e3);
      if (this.credentials = t3.credentials || this.credentials || "same-origin", !t3.headers && this.headers || (this.headers = new A(t3.headers)), this.method = (r2 = (n2 = t3.method || this.method || "GET").toUpperCase(), I.indexOf(r2) > -1 ? r2 : n2), this.mode = t3.mode || this.mode || null, this.signal = t3.signal || this.signal || (function() {
        if ("AbortController" in b) return new AbortController().signal;
      })(), this.referrer = null, ("GET" === this.method || "HEAD" === this.method) && o2) throw new TypeError("Body not allowed for GET or HEAD requests");
      if (this._initBody(o2), !("GET" !== this.method && "HEAD" !== this.method || "no-store" !== t3.cache && "no-cache" !== t3.cache)) {
        var i2 = /([?&])_=[^&]*/;
        i2.test(this.url) ? this.url = this.url.replace(i2, "$1_=" + (/* @__PURE__ */ new Date()).getTime()) : this.url += (/\?/.test(this.url) ? "&" : "?") + "_=" + (/* @__PURE__ */ new Date()).getTime();
      }
    }
    function F(e3) {
      var t3 = new FormData();
      return e3.trim().split("&").forEach(function(e4) {
        if (e4) {
          var n2 = e4.split("="), r2 = n2.shift().replace(/\+/g, " "), o2 = n2.join("=").replace(/\+/g, " ");
          t3.append(decodeURIComponent(r2), decodeURIComponent(o2));
        }
      }), t3;
    }
    function M(e3, t3) {
      if (!(this instanceof M)) throw new TypeError('Please use the "new" operator, this DOM object constructor cannot be called as a function.');
      if (t3 || (t3 = {}), this.type = "default", this.status = void 0 === t3.status ? 200 : t3.status, this.status < 200 || this.status > 599) throw new RangeError("Failed to construct 'Response': The status provided (0) is outside the range [200, 599].");
      this.ok = this.status >= 200 && this.status < 300, this.statusText = void 0 === t3.statusText ? "" : "" + t3.statusText, this.headers = new A(t3.headers), this.url = t3.url || "", this._initBody(e3);
    }
    z.prototype.clone = function() {
      return new z(this, { body: this._bodyInit });
    }, D.call(z.prototype), D.call(M.prototype), M.prototype.clone = function() {
      return new M(this._bodyInit, { status: this.status, statusText: this.statusText, headers: new A(this.headers), url: this.url });
    }, M.error = function() {
      var e3 = new M(null, { status: 200, statusText: "" });
      return e3.ok = false, e3.status = 0, e3.type = "error", e3;
    };
    var U = [301, 302, 303, 307, 308];
    M.redirect = function(e3, t3) {
      if (-1 === U.indexOf(t3)) throw new RangeError("Invalid status code");
      return new M(null, { status: t3, headers: { location: e3 } });
    };
    var B, H, W = b.DOMException;
    try {
      new W();
    } catch (e3) {
      (W = function(e4, t3) {
        this.message = e4, this.name = t3;
        var n2 = Error(e4);
        this.stack = n2.stack;
      }).prototype = Object.create(Error.prototype), W.prototype.constructor = W;
    }
    function q(e3, t3) {
      return new Promise(function(n2, r2) {
        var o2 = new z(e3, t3);
        if (o2.signal && o2.signal.aborted) return r2(new W("Aborted", "AbortError"));
        var i2 = new XMLHttpRequest();
        function a2() {
          i2.abort();
        }
        if (i2.onload = function() {
          var e4, t4, r3 = { statusText: i2.statusText, headers: (e4 = i2.getAllResponseHeaders() || "", t4 = new A(), e4.replace(/\r?\n[\t ]+/g, " ").split("\r").map(function(e5) {
            return 0 === e5.indexOf("\n") ? e5.substr(1, e5.length) : e5;
          }).forEach(function(e5) {
            var n3 = e5.split(":"), r4 = n3.shift().trim();
            if (r4) {
              var o3 = n3.join(":").trim();
              try {
                t4.append(r4, o3);
              } catch (e6) {
                console.warn("Response " + e6.message);
              }
            }
          }), t4) };
          0 === o2.url.indexOf("file://") && (i2.status < 200 || i2.status > 599) ? r3.status = 200 : r3.status = i2.status, r3.url = "responseURL" in i2 ? i2.responseURL : r3.headers.get("X-Request-URL");
          var a3 = "response" in i2 ? i2.response : i2.responseText;
          setTimeout(function() {
            n2(new M(a3, r3));
          }, 0);
        }, i2.onerror = function() {
          setTimeout(function() {
            r2(new TypeError("Network request failed"));
          }, 0);
        }, i2.ontimeout = function() {
          setTimeout(function() {
            r2(new TypeError("Network request timed out"));
          }, 0);
        }, i2.onabort = function() {
          setTimeout(function() {
            r2(new W("Aborted", "AbortError"));
          }, 0);
        }, i2.open(o2.method, (function(e4) {
          try {
            return "" === e4 && b.location.href ? b.location.href : e4;
          } catch (t4) {
            return e4;
          }
        })(o2.url), true), "include" === o2.credentials ? i2.withCredentials = true : "omit" === o2.credentials && (i2.withCredentials = false), "responseType" in i2 && (S ? i2.responseType = "blob" : x && (i2.responseType = "arraybuffer")), t3 && "object" == typeof t3.headers && !(t3.headers instanceof A || b.Headers && t3.headers instanceof b.Headers)) {
          var l2 = [];
          Object.getOwnPropertyNames(t3.headers).forEach(function(e4) {
            l2.push(P(e4)), i2.setRequestHeader(e4, T(t3.headers[e4]));
          }), o2.headers.forEach(function(e4, t4) {
            -1 === l2.indexOf(t4) && i2.setRequestHeader(t4, e4);
          });
        } else o2.headers.forEach(function(e4, t4) {
          i2.setRequestHeader(t4, e4);
        });
        o2.signal && (o2.signal.addEventListener("abort", a2), i2.onreadystatechange = function() {
          4 === i2.readyState && o2.signal.removeEventListener("abort", a2);
        }), i2.send(void 0 === o2._bodyInit ? null : o2._bodyInit);
      });
    }
    function $(e3) {
      return void 0 === e3;
    }
    function V(e3) {
      return null == e3;
    }
    function G(e3) {
      return (function(e4, t3, n2) {
        return Object.defineProperty(n2, "name", { configurable: true, value: `${t3}(${e4.name || "anonymous"})` });
      })(e3, G.name, function(...t3) {
        return !e3.apply(this, t3);
      });
    }
    function K(e3, t3) {
      return Object.keys(e3).reduce((n2, r2) => {
        const o2 = e3[r2];
        return t3(o2, r2) && (n2[r2] = o2), n2;
      }, {});
    }
    function Q(e3) {
      return K(e3, G(V));
    }
    function Y(e3, ...t3) {
      return t3.reduce((t4, n2) => (n2 in e3 && (t4[n2] = e3[n2]), t4), {});
    }
    function X(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function J(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? X(Object(n2), true).forEach(function(t4) {
          Z(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : X(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function Z(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function ee(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    q.polyfill = true, b.fetch || (b.fetch = q, b.Headers = A, b.Request = z, b.Response = M), (H = B || (B = {}))[H.Continue = 100] = "Continue", H[H.SwitchingProtocols = 101] = "SwitchingProtocols", H[H.Processing = 102] = "Processing", H[H.OK = 200] = "OK", H[H.Created = 201] = "Created", H[H.Accepted = 202] = "Accepted", H[H.NonAuthoritativeInformation = 203] = "NonAuthoritativeInformation", H[H.NoContent = 204] = "NoContent", H[H.ResetContent = 205] = "ResetContent", H[H.PartialContent = 206] = "PartialContent", H[H.MultiStatus = 207] = "MultiStatus", H[H.AcceptedWarning = 208] = "AcceptedWarning", H[H.Complete = 209] = "Complete", H[H.AcceptedIntroduction = 210] = "AcceptedIntroduction", H[H.Pending = 210] = "Pending", H[H.AcceptedLocked = 223] = "AcceptedLocked", H[H.TwoFactorAuthenticationCompleted = 250] = "TwoFactorAuthenticationCompleted", H[H.Done = 260] = "Done", H[H.PaymentVerificationCompleted = 261] = "PaymentVerificationCompleted", H[H.TwoFactorEnrollmentContinue = 262] = "TwoFactorEnrollmentContinue", H[H.AlternateContent = 290] = "AlternateContent", H[H.MultipleChoices = 300] = "MultipleChoices", H[H.MovedPermanently = 301] = "MovedPermanently", H[H.MovedTemporarily = 302] = "MovedTemporarily", H[H.SeeOther = 303] = "SeeOther", H[H.NotModified = 304] = "NotModified", H[H.UseProxy = 305] = "UseProxy", H[H.TemporaryRedirect = 307] = "TemporaryRedirect", H[H.PermanentRedirect = 308] = "PermanentRedirect", H[H.BadRequest = 400] = "BadRequest", H[H.Unauthorized = 401] = "Unauthorized", H[H.PaymentRequired = 402] = "PaymentRequired", H[H.Forbidden = 403] = "Forbidden", H[H.NotFound = 404] = "NotFound", H[H.MethodNotAllowed = 405] = "MethodNotAllowed", H[H.NotAcceptable = 406] = "NotAcceptable", H[H.ProxyAuthenticationRequired = 407] = "ProxyAuthenticationRequired", H[H.RequestTimeout = 408] = "RequestTimeout", H[H.Conflict = 409] = "Conflict", H[H.Gone = 410] = "Gone", H[H.LengthRequired = 411] = "LengthRequired", H[H.PreconditionFailed = 412] = "PreconditionFailed", H[H.RequestEntityTooLarge = 413] = "RequestEntityTooLarge", H[H.RequestUriTooLong = 414] = "RequestUriTooLong", H[H.UnsupportedMediaType = 415] = "UnsupportedMediaType", H[H.RequestedRangeNotSatisfiable = 416] = "RequestedRangeNotSatisfiable", H[H.ExpectationFailed = 417] = "ExpectationFailed", H[H.ImATeapot = 418] = "ImATeapot", H[H.ExpectationFailedContinue = 418] = "ExpectationFailedContinue", H[H.InsufficientSpaceOnResource = 419] = "InsufficientSpaceOnResource", H[H.SessionTimeout = 419] = "SessionTimeout", H[H.PreconditionFailedContinue = 419] = "PreconditionFailedContinue", H[H.MethodFailure = 420] = "MethodFailure", H[H.UnprocessableEntity = 422] = "UnprocessableEntity", H[H.Locked = 423] = "Locked", H[H.FailedDependency = 424] = "FailedDependency", H[H.PreconditionRequired = 428] = "PreconditionRequired", H[H.TooManyRequests = 429] = "TooManyRequests", H[H.RequestHeaderFieldsTooLarge = 431] = "RequestHeaderFieldsTooLarge", H[H.UnavailableForLegalReasons = 451] = "UnavailableForLegalReasons", H[H.AccountLocked = 451] = "AccountLocked", H[H.TwoStepAuthenticationRequired = 451] = "TwoStepAuthenticationRequired", H[H.EmailVerificationRequired = 452] = "EmailVerificationRequired", H[H.HsaEnrollmentEmbargoed = 453] = "HsaEnrollmentEmbargoed", H[H.PaymentVerificationRequired = 454] = "PaymentVerificationRequired", H[H.AppleIdInvalid = 455] = "AppleIdInvalid", H[H.PaymentSmsVerificationCodeError = 455] = "PaymentSmsVerificationCodeError", H[H.iMessageVerificationRequired = 456] = "iMessageVerificationRequired", H[H.AuthenticationVerificationRequired = 456] = "AuthenticationVerificationRequired", H[H.CancelCurrentFlow = 457] = "CancelCurrentFlow", H[H.ClientUpgradeRequired = 460] = "ClientUpgradeRequired", H[H.NativeTakeoverForbiddenEdit = 465] = "NativeTakeoverForbiddenEdit", H[H.NativeTakeoverForbiddenAppPasswordGeneration = 466] = "NativeTakeoverForbiddenAppPasswordGeneration", H[H.CriticalAccountEditForbiddenEdit = 467] = "CriticalAccountEditForbiddenEdit", H[H.AccountActivationRequired = 468] = "AccountActivationRequired", H[H.ThirdPartyPaymentVerificationRequired = 469] = "ThirdPartyPaymentVerificationRequired", H[H.ZeroFactorEmbargoNotSupported = 470] = "ZeroFactorEmbargoNotSupported", H[H.InlineEmailRepairRequired = 471] = "InlineEmailRepairRequired", H[H.InternalServerError = 500] = "InternalServerError", H[H.NotImplemented = 501] = "NotImplemented", H[H.BadGateway = 502] = "BadGateway", H[H.ServiceUnavailable = 503] = "ServiceUnavailable", H[H.GatewayTimeout = 504] = "GatewayTimeout", H[H.HTTPVersionNotSupported = 505] = "HTTPVersionNotSupported", H[H.InsufficientStorage = 507] = "InsufficientStorage", H[H.NetworkAuthenticationRequired = 511] = "NetworkAuthenticationRequired", H[H.AcceptedInternalServerError = 523] = "AcceptedInternalServerError", Object.freeze({ [B.Accepted]: "Accepted", [B.BadGateway]: "Bad Gateway", [B.BadRequest]: "Bad Request", [B.Conflict]: "Conflict", [B.Continue]: "Continue", [B.Created]: "Created", [B.ExpectationFailed]: "Expectation Failed", [B.FailedDependency]: "Failed Dependency", [B.Forbidden]: "Forbidden", [B.GatewayTimeout]: "Gateway Timeout", [B.Gone]: "Gone", [B.HTTPVersionNotSupported]: "HTTP Version Not Supported", [B.InsufficientStorage]: "Insufficient Storage", [B.InternalServerError]: "Internal Server Error", [B.LengthRequired]: "Length Required", [B.Locked]: "Locked", [B.MethodFailure]: "Method Failure", [B.MovedPermanently]: "Moved Permanently", [B.MovedTemporarily]: "Moved Temporarily", [B.MultiStatus]: "Multi-Status", [B.MultipleChoices]: "Multiple Choices", [B.NetworkAuthenticationRequired]: "Network Authentication Required", [B.NoContent]: "No Content", [B.NonAuthoritativeInformation]: "Non Authoritative Information", [B.NotAcceptable]: "Not Acceptable", [B.NotFound]: "Not Found", [B.NotImplemented]: "Not Implemented", [B.NotModified]: "Not Modified", [B.OK]: "OK", [B.PartialContent]: "Partial Content", [B.PaymentRequired]: "Payment Required", [B.PermanentRedirect]: "Permanent Redirect", [B.PreconditionFailed]: "Precondition Failed", [B.PreconditionRequired]: "Precondition Required", [B.Processing]: "Processing", [B.ProxyAuthenticationRequired]: "Proxy Authentication Required", [B.RequestEntityTooLarge]: "Request Entity Too Large", [B.RequestHeaderFieldsTooLarge]: "Request Header Fields Too Large", [B.RequestTimeout]: "Request Timeout", [B.RequestUriTooLong]: "Request-URI Too Long", [B.RequestedRangeNotSatisfiable]: "Requested Range Not Satisfiable", [B.ResetContent]: "Reset Content", [B.SeeOther]: "See Other", [B.ServiceUnavailable]: "Service Unavailable", [B.SwitchingProtocols]: "Switching Protocols", [B.TemporaryRedirect]: "Temporary Redirect", [B.TooManyRequests]: "Too Many Requests", [B.Unauthorized]: "Unauthorized", [B.UnprocessableEntity]: "Unprocessable Entity", [B.UnsupportedMediaType]: "Unsupported Media Type", [B.UseProxy]: "Use Proxy", [B.AcceptedWarning]: "Accepted warning", [B.Complete]: "Complete", [B.Pending]: ["Pending", "Accepted introduction"], [B.AcceptedLocked]: "Trusted device push notification lock for non HSA2 escape hatch auth", [B.TwoFactorAuthenticationCompleted]: "Two factor authentication completed", [B.Done]: "I'm done", [B.PaymentVerificationCompleted]: "Payment verification completed", [B.TwoFactorEnrollmentContinue]: "Two factor enrollment continue", [B.ExpectationFailedContinue]: "Expectation failed continue", [B.SessionTimeout]: ["Session timed out", "Precondition failed continue"], [B.AccountLocked]: ["Account locked", "Unavailable For Legacy Reasons", "Two step authentication required"], [B.EmailVerificationRequired]: "Email verification required", [B.HsaEnrollmentEmbargoed]: "HSA enrollment embargoed", [B.PaymentVerificationRequired]: "Payment verification required", [B.AppleIdInvalid]: ["Account taken", "Payment sms verification code error"], [B.iMessageVerificationRequired]: ["iMessage verification required", "Authentication verification required"], [B.CancelCurrentFlow]: "Cancel current flow", [B.ClientUpgradeRequired]: "Client upgrade required", [B.AccountActivationRequired]: "New Account Activation Required", [B.ThirdPartyPaymentVerificationRequired]: "Third party payment verification required", [B.ZeroFactorEmbargoNotSupported]: "Zero factor embargo is not supported", [B.InlineEmailRepairRequired]: "Inline email repair required", [B.AcceptedInternalServerError]: "Trusted device push notification error for non HSA2 escape hatch auth" });
    var te, ne = ["GET", "HEAD", "DELETE"];
    !(function(e3) {
      e3.AuthenticatePassword = "/authenticate/password", e3.GetOnDemand2FAToken = "/account/manage/token/2fa";
    })(te || (te = {}));
    class re extends Error {
      constructor(e3) {
        super("".concat(e3.status).concat(e3.statusText ? " ".concat(e3.statusText) : "")), (function(e4, t3, n2) {
          (t3 = (function(e5) {
            var t4 = (function(e6) {
              if ("object" != typeof e6 || !e6) return e6;
              var t5 = e6[Symbol.toPrimitive];
              if (void 0 !== t5) {
                var n3 = t5.call(e6, "string");
                if ("object" != typeof n3) return n3;
                throw new TypeError("@@toPrimitive must return a primitive value.");
              }
              return String(e6);
            })(e5);
            return "symbol" == typeof t4 ? t4 : t4 + "";
          })(t3)) in e4 ? Object.defineProperty(e4, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e4[t3] = n2;
        })(this, "response", void 0), this.response = e3, this.name = "HTTPError";
      }
    }
    function oe(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function ie(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? oe(Object(n2), true).forEach(function(t4) {
          ae(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : oe(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function ae(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function le(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function ue(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? le(Object(n2), true).forEach(function(t4) {
          ce(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : le(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function ce(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    n(15957);
    function se(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function fe(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? se(Object(n2), true).forEach(function(t4) {
          de(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : se(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function de(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function pe(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function he(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? pe(Object(n2), true).forEach(function(t4) {
          ve(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : pe(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function ve(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    n(54369), n(31160);
    var me = function(e3) {
      var t3 = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {};
      return { name: "setHeader", requestInterceptor: (n2) => {
        if (t3.filter && !t3.filter(n2)) return n2;
        var r2 = "string" == typeof e3.value ? e3.value : e3.value();
        return r2 ? he(he({}, n2), {}, { headers: he(he({}, n2.headers), {}, { [e3.name]: r2 }) }) : he({}, n2);
      } };
    };
    function ye(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function ge(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? ye(Object(n2), true).forEach(function(t4) {
          Ee(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : ye(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function be(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    function we(e3) {
      return function() {
        var t3 = this, n2 = arguments;
        return new Promise(function(r2, o2) {
          var i2 = e3.apply(t3, n2);
          function a2(e4) {
            be(i2, r2, o2, a2, l2, "next", e4);
          }
          function l2(e4) {
            be(i2, r2, o2, a2, l2, "throw", e4);
          }
          a2(void 0);
        });
      };
    }
    function Ee(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    new CustomEvent("onDemand2FA/unsubscribe"), new CustomEvent("passwordChallenge/authenticated"), new CustomEvent("passwordChallenge/cancelled"), new CustomEvent("passwordChallenge/unsubscribe"), n(96230);
    var Se = new class {
      constructor(e3) {
        Ee(this, "outboundRequests", /* @__PURE__ */ new Map()), Ee(this, "plugins", []), Ee(this, "_adapter", void 0), this._adapter = e3;
      }
      pushPlugin(e3) {
        e3.shouldRunOnlyOnce && this.plugins.some((t3) => {
          var { name: n2 } = t3;
          return n2 === e3.name;
        }) || this.plugins.push(e3);
      }
      request(e3) {
        if (!e3.dedupe) return this._request(e3);
        var t3 = ((e4) => JSON.stringify(e4))(e3);
        if (this.outboundRequests.has(t3)) return this.outboundRequests.get(t3);
        var n2 = this._request(e3, t3);
        return this.outboundRequests.set(t3, n2), n2;
      }
      _request(e3, t3) {
        var n2 = this;
        return we(function* () {
          try {
            var r2;
            e3 = yield n2.processOptions(e3);
            var o2 = yield n2._adapter.request(e3);
            for (var i2 of n2.plugins) "responseInterceptor" in i2 && (o2 = yield i2.responseInterceptor.call(n2, o2, e3));
            if ((null === (r2 = e3.throwHttpErrors) || void 0 === r2 || r2) && o2.status >= 300) throw new re(o2);
            return t3 && n2.outboundRequests.delete(t3), o2;
          } catch (e4) {
            throw t3 && n2.outboundRequests.delete(t3), e4;
          }
        })();
      }
      processOptions(e3) {
        var t3 = this;
        return we(function* () {
          for (var n2 of t3.plugins) "requestInterceptor" in n2 && (e3 = yield n2.requestInterceptor.call(t3, e3));
          return e3;
        })();
      }
      get(e3) {
        return this.request(ge(ge({}, e3), {}, { method: "GET" }));
      }
      post(e3) {
        return this.request(ge(ge({}, e3), {}, { method: "POST" }));
      }
      put(e3) {
        return this.request(ge(ge({}, e3), {}, { method: "PUT" }));
      }
      delete(e3) {
        return this.request(ge(ge({}, e3), {}, { method: "DELETE" }));
      }
      options(e3) {
        return this.request(ge(ge({}, e3), {}, { method: "OPTIONS" }));
      }
      patch(e3) {
        return this.request(ge(ge({}, e3), {}, { method: "PATCH" }));
      }
      head(e3) {
        return this.request(ge(ge({}, e3), {}, { method: "HEAD" }));
      }
      setAdapter(e3) {
        this._adapter = e3;
      }
    }(new class {
      request(e3) {
        return (/* @__PURE__ */ (function(e4) {
          return function() {
            var t3 = this, n2 = arguments;
            return new Promise(function(r2, o2) {
              var i2 = e4.apply(t3, n2);
              function a2(e5) {
                ee(i2, r2, o2, a2, l2, "next", e5);
              }
              function l2(e5) {
                ee(i2, r2, o2, a2, l2, "throw", e5);
              }
              a2(void 0);
            });
          };
        })(function* () {
          var t3, n2, r2 = e3.method.toUpperCase(), o2 = !ne.includes(r2) && !$(e3.data), i2 = yield fetch(e3.url, J(J({}, e3), Q(J(J({}, Y(e3, "credentials", "signal")), {}, { method: r2, headers: J(J({ Accept: "application/json, text/plain, */*" }, o2 ? { "Content-Type": "application/json" } : {}), e3.headers), body: o2 ? JSON.stringify(e3.data) : void 0 }))));
          return J(J({ headers: Object.fromEntries(i2.headers) }, Y(i2, "status", "statusText")), {}, { data: null !== (t3 = i2.headers.get("content-type")) && void 0 !== t3 && t3.includes("text/html") ? yield i2.text() : null !== (n2 = i2.headers.get("content-type")) && void 0 !== n2 && n2.includes("application/json") && i2.status !== B.NoContent ? yield i2.json() : void 0 });
        }))();
      }
    }()), ke = n(59383), xe = n.n(ke);
    const Ce = Oe();
    function Oe({ elementSeparator: e3 = "__", modifierSeparator: t3 = "--", namespaceSeparator: n2 = "-", namespace: r2 = "" } = {}) {
      return function(t4) {
        return [function(e4) {
          return o2(t4, e4);
        }, function(n3, r3) {
          return o2([t4, n3].join(e3), r3);
        }];
      };
      function o2(e4, o3 = {}) {
        const i2 = r2 ? [r2, e4].join(n2) : e4;
        return [i2].concat(Object.keys(o3).filter((e5) => o3[e5]).map((e5) => e5.startsWith(":") ? e5 : [i2, e5].join(t3))).join(" ").replace(/ :/g, ":");
      }
    }
    const Pe = Oe({ elementSeparator: "-", modifierSeparator: "-", namespaceSeparator: "-" }), Te = (Pe("amk-icon"), Pe("button")), Ne = Pe("button-bar"), Ae = Pe("card"), Re = Pe("card-list"), _e = Pe("card-list-with-search"), je = Pe("description-list"), Le = Pe("error-message"), De = Pe("image"), Ie = Pe("inline-icon-container"), ze = Pe("modal"), Fe = Pe("amk-options-popover"), Me = Pe("page"), Ue = Pe("section"), Be = Pe("form-security-code"), He = Pe("shelf"), We = Pe("spinner"), qe = Pe("text"), $e = Oe({ elementSeparator: "-", modifierSeparator: "-" });
    var Ve;
    !(function(e3) {
      e3[e3.Thin = 100] = "Thin", e3[e3.ExtraLight = 200] = "ExtraLight", e3[e3.Light = 300] = "Light", e3[e3.Normal = 400] = "Normal", e3[e3.Medium = 500] = "Medium", e3[e3.SemiBold = 600] = "SemiBold", e3[e3.Bold = 700] = "Bold", e3[e3.ExtraBold = 800] = "ExtraBold", e3[e3.Black = 900] = "Black";
    })(Ve || (Ve = {}));
    const Ge = ({ isError: e3, errorMessage: t3 }) => null != e3 ? e3 : !!(null == t3 ? void 0 : t3.children);
    var Ke;
    !(function(e3) {
      e3.IsError = "is-error", e3.VisuallyHidden = "visuallyhidden";
    })(Ke || (Ke = {}));
    const Qe = ({ axLabel: t3, children: n2 }) => e2.createElement(e2.Fragment, null, e2.createElement("span", { className: Ke.VisuallyHidden }, t3), n2);
    var Ye = n(7379), Xe = n.n(Ye);
    const [Je] = $e("button"), Ze = ({ block: t3, children: n2, className: r2, color: o2, size: i2, type: a2 = "button", ...l2 }) => e2.createElement("button", { className: et({ block: t3, className: r2, color: o2, size: i2 }), type: a2, ...l2 }, n2);
    function et({ block: e3 = false, className: t3, color: n2, size: r2 }) {
      return Xe()(Je({ block: e3, [n2]: n2, [r2]: r2 }), t3);
    }
    function tt(t3, n2, r2) {
      (0, e2.useEffect)(() => (window.addEventListener(t3, n2, r2), () => {
        window.removeEventListener(t3, n2);
      }), [t3, n2, r2]);
    }
    function nt({ defaultValue: t3, prefix: n2 } = {}) {
      return (0, e2.useMemo)(() => null != t3 ? t3 : u(n2), [t3, n2]);
    }
    const [rt] = $e("form-label"), ot = ({ children: t3, ...n2 }) => e2.createElement("label", { className: rt(), ...n2 }, t3), it = (0, e2.forwardRef)(({ baseClassName: t3, children: n2, hasIndicator: r2, id: o2, isLabelAfterInput: i2, ...a2 }, l2) => {
      const [[u2, c2]] = (0, e2.useState)($e(t3)), s2 = nt({ defaultValue: o2, prefix: u2() + "-" }), f2 = e2.createElement(ot, { htmlFor: s2 }, r2 && e2.createElement("span", { className: c2("indicator") }), n2);
      return e2.createElement("div", { className: u2() }, !i2 && f2, e2.createElement("input", { className: c2("input"), id: s2, ref: l2, ...a2 }), i2 && f2);
    }), at = ({ children: t3, ...n2 }) => e2.createElement(it, { baseClassName: "form-checkbox", hasIndicator: true, isLabelAfterInput: true, type: "checkbox", ...n2 }, t3);
    function lt(e3) {
      return K(e3, Boolean);
    }
    const [ut, ct] = $e("form-message"), st = ({ axLabel: t3, children: n2, ...r2 }) => e2.createElement("div", { className: ct("wrapper"), ...r2 }, e2.createElement(Qe, { axLabel: t3 }, e2.createElement("span", { className: ut() }, n2))), [ft, dt] = $e("form-dropdown"), [pt] = ((0, e2.forwardRef)(({ "aria-describedby": t3, children: n2, errorMessage: r2, id: o2, isError: i2, labelText: a2, value: l2, ltr: u2 = false, ...c2 }, s2) => {
      const f2 = nt({ defaultValue: o2, prefix: ft() + "-" }), d2 = Ge({ isError: i2, errorMessage: r2 }), p2 = d2 ? `${f2}_error` : "", h2 = `${f2}_label`;
      return e2.createElement("div", { className: Xe()(ft({ ltr: u2 }), { [Ke.IsError]: d2 }) }, e2.createElement("select", { ...lt({ "aria-describedby": Xe()(p2, t3), "aria-invalid": d2, value: l2 }), className: Xe()(dt("select"), !l2 && dt("selectnone")), id: f2, ref: s2, "aria-labelledby": h2, ...c2 }, n2), e2.createElement("span", { "aria-hidden": true, className: dt("chevron") }), e2.createElement("span", { "aria-hidden": true, className: dt("label"), id: h2 }, a2), r2 && e2.createElement(st, { id: p2, ...r2 }));
    }), (0, e2.forwardRef)(({ leftToRightMarkerPrefix: t3 = false, children: n2, ...r2 }, o2) => e2.createElement("option", { ref: o2, ...r2 }, t3 ? `‎${n2}` : n2)), $e("form-icons")), ht = ({ axLabel: t3, children: n2, glyph: r2, weight: o2, ...i2 }) => {
      const a2 = o2 ? { ...i2.style, fontWeight: o2 } : i2.style;
      return e2.createElement("span", { className: pt({ [r2]: true }), ...i2, style: a2 }, e2.createElement(Qe, { axLabel: t3 }, n2));
    };
    var vt, mt;
    (mt = vt || (vt = {})).Add19 = "add19", mt.Add29 = "add29", mt.CheckAlt15 = "checkalt15", mt.CheckAlt19 = "checkalt19", mt.Circle15 = "circle15", mt.Circle19 = "circle19", mt.ClearSolid15 = "clearsolid15", mt.ClearSolid19 = "clearsolid19", mt.Info19 = "info19", mt.Location = "location", mt.Remove19 = "remove19", mt.Reset = "reset", mt.Search15 = "search15", mt.Search19 = "search19", mt.Unvalidated19 = "unvalidated19", mt.UnvalidatedAlt15 = "unvalidatedalt15", mt.UnvalidatedAlt19 = "unvalidatedalt19";
    const yt = (e3, t3) => t3 ? "object" != typeof t3 ? { [`${e3}-${t3}`]: true } : { [`${e3}-${t3.size}`]: t3.size, [`${e3}-centered`]: t3.centered, [`${e3}-uncentered`]: false === t3.centered, [`${e3}-offset-${t3.offset}`]: t3.offset, [`${e3}-order-${t3.order}`]: t3.order, [`${e3}-last`]: t3.last, [`${e3}-notlast`]: false === t3.last } : {}, gt = ({ align: t3, large: n2, medium: r2, small: o2, ...i2 }) => e2.createElement("div", { className: Xe()("column", { [`align-self-${t3}`]: t3, ...yt("large", n2), ...yt("medium", r2), ...yt("small", o2) }), ...i2 }), bt = ({ reverse: t3, align: n2, ...r2 }) => e2.createElement("div", { className: Xe()("row", { [`align-items-${n2}`]: n2, "row-reverse": t3 }), ...r2 }), [wt] = $e("form-group-label"), Et = ({ glyph: t3, weight: n2, ...r2 }) => {
      const o2 = n2 ? { ...r2.style, fontWeight: n2 } : r2.style;
      return e2.createElement("span", { className: Xe()("icon", `icon-${t3}`), ...r2, style: o2 });
    };
    var St, kt;
    function xt(e3) {
      return " " + (e3.length > 2 ? e3.slice(0, -1) + " " + e3.slice(-1) : e3).toLowerCase();
    }
    (kt = St || (St = {})).Apple = "apple", kt.ChevronDown = "chevrondown", kt.ChevronDownCircle = "chevrondowncircle", kt.ChevronLeft = "chevronleft", kt.ChevronLeftCircle = "chevronleftcircle", kt.ChevronRight = "chevronright", kt.ChevronRightCircle = "chevronrightcircle", kt.ChevronUp = "chevronup", kt.ChevronUpCircle = "chevronupcircle", kt.DownloadCircle = "downloadcircle", kt.ArrowUpCircle = "arrowupcircle", kt.External = "external", kt.ExternalRtl = "externalrtl", kt.Share = "share", kt.Search = "search", kt.ArKit = "arkit", kt.PauseCircle = "pausecircle", kt.PauseSolid = "pausesolid", kt.PlayCircle = "playcircle", kt.PlaySolid = "playsolid", kt.Replay = "replay", kt.StopCircle = "stopcircle", kt.StopSolid = "stopsolid", kt.Circle = "circle", kt.Check = "check", kt.CheckCircle = "checkcircle", kt.CheckSolid = "checksolid", kt.Reset = "reset", kt.ResetCircle = "resetcircle", kt.ResetSolid = "resetsolid", kt.Exclamation = "exclamation", kt.ExclamationCircle = "exclamationcircle", kt.ExclamationSolid = "exclamationsolid", kt.ExclamationTriangle = "exclamationtriangle", kt.ExclamationTriangleSolid = "exclamationtrianglesolid", kt.InfoCircle = "infocircle", kt.InfoSolid = "infosolid", kt.Question = "question", kt.QuestionRtl = "questionrtl", kt.QuestionCircle = "questioncircle", kt.QuestionCircleRtl = "questioncirclertl", kt.QuestionSolid = "questionsolid", kt.QuestionSolidRtl = "questionsolidrtl", kt.Plus = "plus", kt.PlusCircle = "pluscircle", kt.PlusSolid = "plussolid", kt.Minus = "minus", kt.MinusCircle = "minuscircle", kt.MinusSolid = "minussolid", kt.OneCircle = "1circle", kt.TwoCircle = "2circle", kt.ThreeCircle = "3circle", kt.FourCircle = "4circle", kt.FiveCircle = "5circle", kt.SixCircle = "6circle", kt.SevenCircle = "7circle", kt.EightCircle = "8circle", kt.NineCircle = "9circle", kt.TenCircle = "10circle", kt.ElevenCircle = "11circle", kt.TwelveCircle = "12circle", kt.ThirteenCircle = "13circle", kt.FourteenCircle = "14circle", kt.FifteenCircle = "15circle", kt.SixteenCircle = "16circle", kt.SeventeenCircle = "17circle", kt.EighteenCircle = "18circle", kt.NineteenCircle = "19circle", kt.TwentyCircle = "20circle", kt.PaddleLeft = "paddleleft", kt.PaddleLeftCompact = "paddleleftcompact", kt.PaddleRight = "paddleright", kt.PaddleRightCompact = "paddlerightcompact", kt.PaddleUp = "paddleup", kt.PaddleUpCompact = "paddleupCompact", kt.PaddleDown = "paddledown", kt.PaddleDownCompact = "paddledownCompact", kt.Close = "close", kt.CloseCompact = "closecompact", kt.ThumbnailReplay = "thumbnailreplay", kt.ThumbnailPause = "thumbnailpaurse", kt.ThumbnailPlay = "thumbnailplay";
    const Ct = new RegExp("\\p{Lu}+", "gu"), Ot = new RegExp(`^${Ct.source}$`, "u"), Pt = /[\p{Ll}\p{N}]+/gu, Tt = /[\p{L}\p{N}]+/gu, [Nt, At] = $e("form-dropdown-option"), Rt = (0, e2.forwardRef)(({ id: t3, checked: n2, selected: r2, onClick: o2, onMouseEnter: i2, children: a2, ...l2 }, u2) => {
      const c2 = nt({ defaultValue: t3, prefix: Nt() + "-" });
      return e2.createElement("li", { className: Xe()(Nt(), { checked: n2, selected: r2 }), role: "option", tabIndex: -1, ...lt({ "aria-current": n2, "aria-selected": r2, onMouseEnter: i2 }) }, e2.createElement("input", { checked: n2, className: Ke.VisuallyHidden, id: c2, ref: u2, type: "radio", ...l2 }), e2.createElement("label", { htmlFor: c2 }, a2, n2 && e2.createElement(Et, { glyph: St.Check })));
    });
    Rt.displayName = "MultiLineDropdownOption";
    const _t = (t3) => e2.createElement("div", { className: At("title"), ...t3 }), jt = (t3) => e2.createElement("div", { className: At("text"), ...t3 }), [Lt, Dt] = $e("form-dropdown"), It = (0, e2.forwardRef)(({ "aria-describedby": t3, errorMessage: n2, id: r2, isError: o2, label: i2, name: a2, onChange: l2, onClick: u2, onFocus: c2, options: s2 = [], placeholder: f2, value: d2, ...p2 }, h2) => {
      var v2;
      const [m2, y2] = (0, e2.useState)(false), [g2, b2] = (0, e2.useState)(false), [w2, E2] = (0, e2.useState)(""), { value: S2, increment: k2, decrement: x2, setValue: C2 } = (function({ initialValue: t4 = 0, min: n3 = 0, max: r3 = 1 / 0, shouldWrap: o3 = false } = {}) {
        const [i3, a3] = (0, e2.useState)(t4), l3 = (0, e2.useCallback)((e3) => {
          a3(e3 > r3 ? o3 ? n3 : r3 : e3 < n3 ? o3 ? r3 : n3 : e3);
        }, [o3, n3, r3, a3]);
        return { value: i3, increment() {
          l3(i3 + 1);
        }, decrement() {
          l3(i3 - 1);
        }, setValue: l3 };
      })({ max: Math.max(s2.length - 1, 0) }), O2 = nt({ defaultValue: r2, prefix: Lt() + "-" }), P2 = `${O2}_label`, T2 = `${O2}_options-container`, N2 = Ge({ errorMessage: n2, isError: o2 }), A2 = (null == n2 ? void 0 : n2.children) && N2 ? `${O2}_error` : "", R2 = (0, e2.useRef)(null), _2 = (0, e2.useRef)(null), j2 = (0, e2.useRef)(null), L2 = (0, e2.useRef)(false);
      (0, e2.useImperativeHandle)(h2, () => ({ focus() {
        var e3;
        null === (e3 = j2.current) || void 0 === e3 || e3.focus();
      }, focusAndExpand(e3 = true) {
        var t4;
        e3 && (L2.current = true), null === (t4 = j2.current) || void 0 === t4 || t4.focus(), y2(true);
      } }));
      const D2 = (e3) => {
        var t4;
        (null === (t4 = R2.current) || void 0 === t4 ? void 0 : t4.contains(e3.target)) || (L2.current ? L2.current = false : (b2(false), y2(false)));
      };
      tt("click", D2), tt("focusIn", D2), (0, e2.useLayoutEffect)(() => {
        var e3, t4;
        const n3 = null === (e3 = _2.current) || void 0 === e3 ? void 0 : e3.offsetHeight;
        if ($(n3)) return;
        const r3 = null === (t4 = j2.current) || void 0 === t4 ? void 0 : t4.offsetHeight;
        $(r3) || E2(m2 ? `${n3 + r3}px` : "");
      }, [j2, _2, m2]);
      const I2 = (0, e2.useMemo)(() => {
        var e3, t4;
        const n3 = null === (t4 = null === (e3 = _2.current) || void 0 === e3 ? void 0 : e3.children) || void 0 === t4 ? void 0 : t4[S2];
        return n3 ? n3.querySelector("input") : null;
      }, [null === (v2 = _2.current) || void 0 === v2 ? void 0 : v2.children, S2]);
      (0, e2.useEffect)(() => {
        m2 && (null == I2 || I2.focus());
      }, [I2, m2]);
      const z2 = (0, e2.useCallback)((e3) => {
        var t4;
        y2(false), null === (t4 = j2.current) || void 0 === t4 || t4.focus(), l2(e3);
      }, [l2, j2.current]), F2 = (0, e2.useCallback)((e3) => {
        var t4;
        if (m2) switch (e3.key) {
          case "Enter":
          case "Escape":
            e3.preventDefault(), "Enter" === e3.key && (null == I2 || I2.click()), y2(false), null === (t4 = j2.current) || void 0 === t4 || t4.focus();
            break;
          case "ArrowDown":
          case "ArrowRight":
            e3.preventDefault(), k2();
            break;
          case "ArrowUp":
          case "ArrowLeft":
            e3.preventDefault(), x2();
        }
      }, [m2, j2.current, _2.current, I2, y2, k2, x2]);
      return e2.createElement("div", { className: Xe()(Lt(), { [Ke.IsError]: N2 }), ref: R2 }, e2.createElement("div", { className: Xe()(Dt("multiline"), { focused: g2, "is-expanded": m2 }) }, e2.createElement("button", { "aria-controls": T2, "aria-expanded": m2, "aria-haspopup": "listbox", "aria-labelledby": P2, ...lt({ "aria-describedby": Xe()(A2, t3), "aria-invalid": N2 }), className: Xe()(Dt("select"), !d2 && !f2 && Dt("selectnone")), id: O2, onClick: (e3) => {
        b2(true), y2(!m2), null == u2 || u2(e3);
      }, onFocus: (e3) => {
        b2(true), null == c2 || c2(e3);
      }, ref: j2, style: { height: w2 }, type: "button", ...p2 }, e2.createElement("p", { className: Dt("title") }, d2 || f2)), e2.createElement("span", { "aria-hidden": true, className: Dt("chevron") }), e2.createElement("span", { "aria-hidden": true, className: Dt("label"), id: P2 }, i2), e2.createElement("div", { id: T2 }, e2.createElement("ul", { "aria-label": i2, className: Dt("options"), onClick: () => {
        var e3;
        y2(false), null === (e3 = j2.current) || void 0 === e3 || e3.focus();
      }, onKeyDown: F2, ref: _2, role: "listbox", tabIndex: -1 }, s2.map(({ onChange: t4, onMouseEnter: n3, title: r3, text: o3, ...i3 }, l3) => {
        var u3, c3;
        const s3 = String(null !== (u3 = i3.value) && void 0 !== u3 ? u3 : r3), f3 = `${O2}_option_${(function(e3) {
          var t5, n4;
          return null !== (n4 = null === (t5 = e3.match(Tt)) || void 0 === t5 ? void 0 : t5.map((e4) => Ot.test(e4) ? e4.toLowerCase() : e4.replace(Ct, xt).match(Pt).join("-")).join("-")) && void 0 !== n4 ? n4 : "";
        })(s3)}`;
        return e2.createElement(Rt, { checked: s3 === d2, id: f3, key: f3, name: a2, onChange: (e3) => {
          z2(e3), null == t4 || t4(e3);
        }, onMouseEnter: (e3) => {
          C2(l3), null == n3 || n3(e3);
        }, selected: l3 === S2, ...i3, value: null !== (c3 = i3.value) && void 0 !== c3 ? c3 : String(r3) }, r3 && e2.createElement(_t, null, r3), o3 && e2.createElement(jt, null, o3));
      })))), N2 && (null == n2 ? void 0 : n2.children) && e2.createElement(st, { id: A2, ...n2 }));
    });
    It.displayName = "MultiLineDropdown";
    const zt = ({ children: t3, ...n2 }) => e2.createElement(it, { baseClassName: "form-radiobutton", hasIndicator: true, isLabelAfterInput: true, type: "radio", ...n2 }, t3), [Ft, Mt] = $e("form-textbox"), [Ut] = $e("form-textarea"), [Bt] = ((0, e2.forwardRef)(({ "aria-describedby": t3, children: n2, errorMessage: r2, id: o2, isError: i2, labelText: a2, value: l2, placeholder: u2, disabled: c2, onFocus: s2, onBlur: f2, ...d2 }, p2) => {
      const h2 = nt({ defaultValue: o2, prefix: Ut() + "-" }), v2 = Ge({ isError: i2, errorMessage: r2 }), m2 = (null == r2 ? void 0 : r2.children) && v2 ? `${h2}_error` : "", [y2, g2] = (0, e2.useState)(false);
      return e2.createElement("div", { className: Xe()(Ft(), { [Ke.IsError]: v2 }) }, " ", e2.createElement("div", { className: Xe()(Ut({ "with-placeholder": !!u2 }), { disabled: c2, focused: y2, "form-textbox-entered": l2 }) }, e2.createElement("textarea", { ...lt({ "aria-describedby": Xe()(m2, t3), "aria-invalid": v2 }), ...Q({ value: l2, placeholder: u2, disabled: c2 }), autoCorrect: "off", autoCapitalize: "off", id: h2, ref: p2, spellCheck: false, ...d2, onFocus: (e3) => {
        g2(true), null == s2 || s2(e3);
      }, onBlur: (e3) => {
        g2(false), null == f2 || f2(e3);
      } })), e2.createElement("label", { "aria-hidden": true, className: Mt("label"), htmlFor: h2 }, a2), n2, v2 && (null == r2 ? void 0 : r2.children) && e2.createElement(st, { id: m2, ...r2 }));
    }), $e("form-icons")), Ht = ({ axLabel: t3, children: n2, glyph: r2, weight: o2, ...i2 }) => {
      const a2 = o2 ? { ...i2.style, fontWeight: o2 } : i2.style;
      return e2.createElement("button", { className: Bt({ [r2]: true }), type: "button", ...i2, style: a2 }, e2.createElement(Qe, { axLabel: t3 }, n2));
    }, [Wt, qt] = $e("form-textbox-counter"), $t = ({ axLabel: t3, children: n2, isError: r2 = false, ...o2 }) => e2.createElement("div", { className: Xe()(qt("wrapper"), { [Ke.IsError]: r2 }), ...o2 }, e2.createElement(Qe, { axLabel: t3 }, e2.createElement("span", { className: Wt() }, n2))), [Vt, Gt] = $e("form-textbox"), Kt = (0, e2.forwardRef)(({ "aria-describedby": t3, children: n2, counter: r2, errorMessage: o2, id: i2, isError: a2, isValid: l2 = false, labelText: u2, leftIconProps: c2, prefix: s2, rightIconProps: f2, rightIcon: d2, type: p2 = "text", value: h2, ltr: v2 = false, ltrForValueOnly: m2 = false, ...y2 }, g2) => {
      const b2 = nt({ defaultValue: i2, prefix: Vt() + "-" }), w2 = r2 ? r2.limit - String(h2).length : 0, E2 = r2 && w2 < 0 ? r2.errorMessage : o2, S2 = Ge({ isError: a2, errorMessage: E2 }), k2 = (null == E2 ? void 0 : E2.children) && S2 ? `${b2}_error` : "", x2 = `${b2}_label`;
      return e2.createElement("div", { className: Xe()(Vt({ "with-button": Boolean(n2), "with-counter": Boolean(r2), "with-countrycode": !!s2 && s2.children.length > 2, "with-countrycode-small": !!s2 && s2.children.length <= 2, "with-lefticon": Boolean(c2), "with-righticon": Boolean(f2) || Boolean(d2) || l2, ltr: v2 }), { [Ke.IsError]: S2 }) }, " ", e2.createElement("input", { ...lt({ "aria-describedby": Xe()(k2, t3), "aria-invalid": S2 }), "aria-labelledby": x2, autoCorrect: "off", autoCapitalize: "off", className: Xe()(Gt("input", { ltr: m2 }), h2 && "form-textbox-entered"), id: b2, ref: g2, spellCheck: false, type: p2, value: h2, ...y2 }), e2.createElement("label", { id: x2, "aria-hidden": true, className: Gt("label") }, u2), n2, S2 && (null == E2 ? void 0 : E2.children) && e2.createElement(st, { id: k2, ...E2 }), r2 && e2.createElement($t, { isError: S2, axLabel: r2.axLabel }, r2.format(w2)), s2 && e2.createElement("span", { className: Gt("countrycode") }, e2.createElement(Qe, { ...s2 })), c2 && e2.createElement("span", { className: Gt("lefticon") }, e2.createElement(ht, { ...c2 })), (l2 || f2 || d2) && e2.createElement("div", { className: Gt("righticon") }, l2 ? e2.createElement(Et, { glyph: St.Check }) : d2 || (f2.onClick ? e2.createElement(Ht, { ...f2 }) : e2.createElement(ht, { ...f2 }))));
    }), [Qt] = $e("form-textbox-button"), Yt = ((0, e2.forwardRef)(({ children: t3, ...n2 }, r2) => e2.createElement("button", { className: Qt(), ref: r2, type: "button", ...n2 }, t3)), $e("form-tooltip")), [, Xt] = Yt, [Jt] = Yt, [, Zt] = Yt, [, en] = Yt, [, tn] = Yt, nn = "data-tabindex", rn = "[tabindex]", on = ["button", "[href]", "input", "select", "textarea", rn].join(",");
    function an(e3, t3, n2) {
      e3.setAttribute("aria-hidden", "true");
      const r2 = e3.querySelectorAll(rn);
      !(function(e4) {
        for (const t4 of e4) {
          const e5 = t4.getAttribute("tabIndex");
          e5 ? t4.setAttribute(nn, e5) : t4.removeAttribute("tabindex");
        }
      })(r2), t3.set(`${n2}-tabIndexElements`, r2);
      const o2 = e3.querySelectorAll(on);
      !(function(e4 = []) {
        for (const t4 of e4) t4.setAttribute("tabindex", "-1");
      })(o2), t3.set(`${n2}-focusableElements`, o2);
    }
    function ln(e3, t3, n2) {
      e3.removeAttribute("aria-hidden"), (function(e4 = []) {
        for (const t4 of e4) "-1" === t4.getAttribute("tabindex") && t4.removeAttribute("tabindex");
      })(t3.get(`${n2}-focusableElements`)), (function(e4 = []) {
        for (const t4 of e4) {
          const e5 = t4.getAttribute(nn);
          e5 && (t4.setAttribute("tabindex", e5), t4.removeAttribute(nn));
        }
      })(t3.get(`${n2}-tabIndexElements`));
    }
    const [un] = ze, cn = un({ open: true }).substr(un().length + 1);
    let sn = 0;
    const fn = () => {
      sn > 0 ? document.body.classList.contains(cn) || document.body.classList.add(cn) : document.body.classList.remove(cn);
    };
    var dn, pn = n(77303);
    (dn || (dn = {})).Escape = "Escape";
    const [hn] = Te, vn = ({ icon: t3, iconOnly: n2, bare: r2, expand: o2, shape: i2, link: a2, ...l2 }) => e2.createElement(Ze, { className: mn({ icon: t3, iconOnly: n2, bare: r2, expand: o2, link: a2, shape: i2 }), ...l2 });
    function mn({ icon: e3, iconOnly: t3, bare: n2, expand: r2, link: o2, shape: i2 = "rounded-rectangle" }) {
      return hn({ icon: e3, "icon-only": t3, bare: n2, expand: r2, link: o2, [i2]: "pill" !== i2 }).split(" ").slice(1).join(" ");
    }
    const [yn, gn] = We, bn = [...new Array(8).keys()], wn = ({ size: t3, axLabel: n2 }) => e2.createElement("div", { className: yn({ large: "large" === t3 }) }, e2.createElement("div", { className: gn("container") }, bn.map((t4) => e2.createElement("div", { key: t4, className: gn("nib", { [t4 + 1]: true }) }))), e2.createElement("span", { "aria-live": "assertive", className: Ke.VisuallyHidden, role: "status" }, n2)), [En, Sn] = ze, kn = ({ axAutoFocus: t3 = true, axCloseButtonLabel: n2, axWorkingLabel: r2, blurryOverlay: o2 = true, children: i2, focusElementId: a2, id: l2, inactive: u2 = false, onDismiss: c2, shouldDismissOnBackdropClick: s2 = false, shouldDismissOnEscapeKeyPress: f2 = true, visible: d2, alert: p2, container: h2 = document.body, axLabel: v2, workingText: m2 = false, tabIndex: y2, onFeedbackButtonClick: g2 }) => {
      const b2 = nt({ defaultValue: l2, prefix: En() + "-" }), w2 = (0, e2.useRef)(null);
      (({ autoFocus: t4 = true, focusElementId: n3, visible: r3, modalId: o3 }) => {
        const i3 = (0, e2.useRef)(/* @__PURE__ */ new Map()), a3 = (0, e2.useRef)(false), l3 = (0, e2.useRef)(null), u3 = () => {
          var e3, n4;
          if (!a3.current) return;
          sn--, fn();
          const r4 = null !== (e3 = i3.current.get(`${o3}-siblings`)) && void 0 !== e3 ? e3 : [];
          for (const [e4, t5] of r4.entries()) ln(t5, i3.current, `${o3}-${e4}`);
          t4 && (null === (n4 = l3.current) || void 0 === n4 || n4.focus()), i3.current.clear(), l3.current = null, a3.current = false;
        };
        (0, e2.useEffect)(() => {
          var e3, c3, s3;
          if (r3) {
            sn++, fn();
            const r4 = (function(e4) {
              var t5, n4;
              return [...null !== (n4 = null === (t5 = null == e4 ? void 0 : e4.parentNode) || void 0 === t5 ? void 0 : t5.children) && void 0 !== n4 ? n4 : []].filter((t6) => t6 !== e4 && "SCRIPT" !== t6.tagName);
            })(document.getElementById(o3)).filter((e4) => "true" !== e4.getAttribute("aria-hidden"));
            if (r4.length) {
              i3.current.set(`${o3}-siblings`, r4);
              for (const [e4, t5] of r4.entries()) an(t5, i3.current, `${o3}-${e4}`);
            }
            const u4 = null !== (e3 = document.getElementById(null != n3 ? n3 : "")) && void 0 !== e3 ? e3 : null === (s3 = null === (c3 = document.getElementById(o3)) || void 0 === c3 ? void 0 : c3.querySelectorAll(on)) || void 0 === s3 ? void 0 : s3[0];
            new Promise((e4) => {
              setTimeout(e4, 350);
            }).then(() => {
              l3.current = document.activeElement, t4 && (null == u4 || u4.focus());
            }), a3.current = true;
          } else u3();
          return () => {
            u3();
          };
        }, [r3]), i3.current;
      })({ autoFocus: t3, focusElementId: a2, modalId: b2, visible: d2 });
      const E2 = (0, e2.useCallback)(function(e3) {
        d2 && e3.key === dn.Escape && "true" !== w2.current.getAttribute("aria-hidden") && (e3.stopPropagation(), c2());
      }, [c2, d2]);
      f2 && tt("keydown", E2);
      const [S2, k2] = e2.useState(null), x2 = e2.useCallback((e3) => {
        e3.stopPropagation(), s2 && c2();
      }, [c2, s2]);
      var C2, O2;
      C2 = S2, O2 = x2, tt("click", (0, e2.useCallback)((e3) => {
        C2 && !C2.contains(e3.target) && O2(e3);
      }, [C2, O2]), void 0);
      const P2 = c2 && n2 && e2.createElement("div", { className: Sn("close") }, e2.createElement(vn, { "aria-label": n2, bare: true, onClick: c2 }, e2.createElement(Et, { glyph: St.Close, weight: Ve.SemiBold }))), T2 = g2 && e2.createElement("div", { className: Sn("top-corner") }, e2.createElement(vn, { "aria-label": "feedback", icon: true, onClick: g2 }, e2.createElement("svg", { viewBox: "0 0 107.61767578125 107.8623046875", version: "1.1", xmlns: "http://www.w3.org/2000/svg", className: " glyph-box", style: { height: 18.37, width: 18.3283 } }, e2.createElement("g", { transform: "matrix(1 0 0 1 -12.451127929687573 89.1611328125)" }, e2.createElement("path", { d: "M41.4551 18.7012C43.3594 18.7012 44.7754 17.7246 47.0703 15.5762L64.6973-0.537109L97.7051-0.488281C112.256-0.439453 120.068-8.54492 120.068-22.8516L120.068-60.2539C120.068-74.5605 112.256-82.6172 97.7051-82.6172L34.8145-82.6172C20.2637-82.6172 12.4512-74.6094 12.4512-60.2539L12.4512-22.8516C12.4512-8.49609 20.2637-0.537109 34.8145-0.537109L37.1094-0.537109L37.1094 13.6719C37.1094 16.6992 38.6719 18.7012 41.4551 18.7012ZM66.3086-32.5195C63.7695-32.5195 62.3535-33.9355 62.3047-36.5234L61.6699-63.0859C61.6211-65.6738 63.5254-67.5781 66.2598-67.5781C68.9453-67.5781 70.9473-65.625 70.8984-63.0371L70.166-36.5234C70.1172-33.8867 68.7012-32.5195 66.3086-32.5195ZM66.3086-16.1621C63.3789-16.1621 60.8398-18.457 60.8398-21.3867C60.8398-24.2676 63.3301-26.6113 66.3086-26.6113C69.2383-26.6113 71.7285-24.3164 71.7285-21.3867C71.7285-18.4082 69.1895-16.1621 66.3086-16.1621Z" })))));
      m2 = m2 || r2 || false;
      const [N2, A2] = (0, e2.useState)(false);
      return (0, e2.useEffect)(() => {
        let e3;
        return !N2 && d2 && m2 && (e3 = setTimeout(() => {
          A2(true);
        }, 2e3)), () => {
          clearTimeout(e3);
        };
      }, [d2, m2, N2]), d2 ? (0, pn.createPortal)(e2.createElement("aside", { id: b2, ref: w2, className: En({ "blurry-overlay": o2, inactive: u2, alert: p2 }) }, e2.createElement("div", { ref: k2, className: Sn("dialog"), role: "dialog", "aria-label": v2, onClick: xn, tabIndex: y2 }, m2 ? e2.createElement("div", { className: Sn("working") + (N2 ? "" : ` ${Ke.VisuallyHidden}`) }, e2.createElement(wn, { axLabel: m2, size: "large" })) : i2, P2, T2)), h2) : null;
    };
    function xn(e3) {
      e3.stopPropagation();
    }
    const [, Cn] = ze, [On, Pn] = Ne, Tn = ({ children: t3 }) => e2.createElement("div", { className: Pn("side") }, t3), Nn = ({ children: t3, centered: n2 = false, leading: r2 = false, splitButtonsAt: o2 = 0, workingText: i2 = false, ...a2 }) => {
      const l2 = Boolean(i2);
      return e2.createElement("fieldset", { className: On({ working: l2 }), ...a2 }, e2.createElement("div", { className: Pn("nav", { centered: l2 || n2, leading: r2 && !l2 }) }, (() => {
        if (i2) return e2.createElement(e2.Fragment, null, e2.createElement(wn, { axLabel: i2 }), e2.createElement("span", null, i2));
        if (n2 || r2) return t3;
        if (!e2.Children.count(t3)) return;
        if (!o2) return e2.createElement(Tn, null, t3);
        const a3 = e2.Children.toArray(t3), l3 = a3.splice(o2);
        return e2.createElement(e2.Fragment, null, e2.createElement(Tn, null, a3), e2.createElement(Tn, null, l3));
      })()));
    }, [, An] = ze, Rn = (t3) => e2.createElement("div", { className: An("button-bar") }, e2.createElement(Nn, { ...t3 })), [, _n] = ze, jn = ({ disabled: t3 = false, id: n2, children: r2 }) => {
      const o2 = nt({ defaultValue: n2, prefix: _n("content") + "-" }), i2 = (0, e2.useRef)(/* @__PURE__ */ new Map()), a2 = (0, e2.useRef)(null);
      return (0, e2.useLayoutEffect)(() => (t3 && an(a2.current, i2.current, o2), () => {
        ln(a2.current, i2.current, o2);
      }), [t3]), e2.createElement("div", { id: o2, ref: a2, className: _n("content", { disabled: t3 }) }, r2);
    }, [, Ln] = ze, Dn = (t3) => e2.createElement("p", { className: Ln("description"), ...t3 }), [, In] = ze, [, zn] = ze, Fn = (t3) => e2.createElement("header", { className: zn("header"), ...t3 }), [, Mn] = ze, [, Un] = ze, [, Bn] = ze, Hn = (t3) => e2.createElement("h1", { className: Bn("title"), tabIndex: -1, ...t3 }), Wn = ({ children: t3, ...n2 }) => e2.createElement(kn, { ...n2, alert: true }, t3), [, qn] = ze, $n = () => e2.createElement("svg", { width: "24", height: "24", viewBox: "0 0 24 24", version: "1.1", xmlns: "http://www.w3.org/2000/svg" }, e2.createElement("g", { fill: "#0071E3" }, e2.createElement("path", { d: "M11.988 0C18.553 0 24 5.435 24 12c0 6.553-5.435 12-12 12-6.553 0-12-5.447-12-12C0 5.435 5.435 0 11.988 0zm-4.67 9.518c-.342-.365-.93-.365-1.306.023-.33.353-.33.906.047 1.294l4.753 5.047c.764.812 1.647.812 2.412 0l4.752-5.047c.365-.388.389-.953.048-1.294-.389-.376-.965-.388-1.318-.023l-4.694 4.976z" }))), Vn = () => e2.createElement("svg", { width: "24", height: "24", viewBox: "0 0 24 24", version: "1.1", xmlns: "http://www.w3.org/2000/svg" }, e2.createElement("g", { fill: "#0071E3" }, e2.createElement("path", { d: "M11.988 24C18.553 24 24 18.565 24 12c0-6.553-5.435-12-12-12C5.447 0 0 5.447 0 12c0 6.565 5.435 12 11.988 12zm-4.67-9.518c-.342.365-.93.365-1.306-.023-.33-.353-.33-.906.047-1.294l4.753-5.047c.764-.812 1.647-.812 2.412 0l4.752 5.047c.365.388.389.953.048 1.294-.389.376-.965.388-1.318.023l-4.694-4.976z" }))), [Gn, Kn] = Ae, Qn = ({ background: t3, theme: n2, border: r2 = true, close: o2, info: i2 = false, rounded: a2 = true, shadow: l2 = true, minLines: u2, noWrap: c2 = false, upArrow: s2, downArrow: f2, ...d2 }) => {
      const p2 = Gn({ ...n2 ? { [`theme-${n2}`]: true } : t3 ? { [t3]: true } : { info: i2 }, border: r2, "no-wrap": c2, padding: Boolean(d2.children), rounded: a2, shadow: l2, [`min-lines-${u2}`]: u2 }), h2 = o2 && e2.createElement("div", { className: Kn("close") }, e2.createElement(vn, { "aria-label": o2.axLabel, "data-testid": "card-close-button", iconOnly: true, onClick: o2.onClick }, e2.createElement(Et, { glyph: St.Close })));
      {
        const { children: t4, ...n3 } = d2;
        if (t4) {
          if (n3.title) throw new Error("cannot use title when children are specified");
          return e2.createElement("div", { className: p2, ...n3 }, h2, t4);
        }
      }
      {
        const { lines: t4, leftElements: n3, rightElements: r3, title: o3, heading: i3, ...a3 } = d2, l3 = "string" == typeof o3 && (void 0 === i3 ? 3 : i3), u3 = () => e2.createElement("div", { className: Kn("right", { "align-center": true }) }, s2 && e2.createElement("button", { className: Kn("right-element", { "has-padding": true }), onClick: s2.onClick, "aria-label": s2.label }, e2.createElement(Vn, null)), f2 && e2.createElement("button", { className: Kn("right-element", { "has-padding": true }), onClick: f2.onClick, "aria-label": f2.label }, e2.createElement($n, null)));
        return e2.createElement("div", { className: p2, ...a3 }, h2, n3 && e2.createElement("div", { className: Kn("left") }, n3.map((t5, n4) => e2.createElement("div", { key: n4, className: Kn("left-element") }, t5))), e2.createElement("div", { className: Kn("middle") }, e2.createElement("div", { className: Kn("top") }, e2.createElement("div", { className: Kn("header") }, l3 ? e2.createElement(`h${l3}`, { className: Kn("title") }, o3) : e2.createElement("div", { className: Kn("title") }, o3)), t4 && e2.createElement("div", { className: Kn("body") }, t4.map((t5, n4) => e2.createElement("div", { key: n4, className: Kn("line") }, t5 || " "))))), s2 || f2 ? u3() : r3 && e2.createElement("div", { className: Kn("right") }, r3.map((t5, n4) => e2.createElement("div", { key: n4, className: Kn("right-element") }, t5))));
      }
    }, [Yn, Xn] = Re, Jn = (t3) => e2.createElement("ul", { className: Yn(), ...t3 }), Zn = ({ chiclet: t3 = false, platter: n2 = false, ...r2 }) => e2.createElement("li", { className: Xn("item", { chiclet: t3, platter: n2 }), ...r2 });
    function er(e3, t3 = {}) {
      const { acceptedSuffix: n2 } = t3;
      return function(t4, { wasBackspaceDetected: r2 = false } = {}) {
        const o2 = [...e3], i2 = t4.split(""), a2 = [];
        let l2;
        const u2 = [];
        for (; l2 = o2.shift(); ) {
          const e4 = i2[0];
          if (!e4) return r2 || s2(), o2.unshift(l2), f2();
          if ("string" != typeof l2) l2.test(e4) ? s2(true) : i2.shift();
          else {
            if (l2 !== e4) {
              u2.push(l2);
              continue;
            }
            if (!r2) {
              s2(true);
              continue;
            }
            u2.push(i2.shift());
          }
        }
        const c2 = i2.join("");
        if (n2) for (let e4 = c2.length; e4 > 0; e4--) {
          const t5 = c2.substr(0, e4);
          if (n2.test(t5)) return f2(t5);
        }
        return f2();
        function s2(e4 = false) {
          e4 ? a2.push(...u2, i2.shift()) : a2.push(...u2), u2.length = 0;
        }
        function f2(e4) {
          let t5 = a2.join("");
          return e4 && (t5 += e4), [t5, d2(t5)];
        }
        function d2(t5) {
          return e3.every((e4, n3) => {
            const r3 = t5[n3];
            return "string" == typeof e4 ? e4 === r3 : e4.test(r3);
          });
        }
      };
    }
    "a".charCodeAt(0), "z".charCodeAt(0);
    const [tr] = qe, nr = ({ block: t3 = false, ltr: n2 = false, heading: r2, typography: o2, color: i2, weight: a2, spacing: l2, lineClamp: u2, wordBreak: c2, children: s2 }) => {
      const f2 = { className: tr({ [`typography-${o2}`]: o2, [`color-${i2}`]: i2, [`weight-${a2}`]: a2, [`line-clamp-${u2}`]: u2, [`word-break-${c2}`]: c2, [true === l2 ? "spacing" : `spacing-${l2}`]: l2 }), children: n2 ? e2.createElement("bdo", { dir: "ltr" }, s2) : s2 }, d2 = r2 ? `h${r2}` : t3 ? "div" : "span";
      return (0, e2.createElement)(d2, f2);
    }, [rr, or] = _e, ir = ({ shouldAddContainer: t3, search: n2, listItem: r2, index: o2 }) => {
      const i2 = e2.useRef(null);
      return e2.createElement("div", { className: rr({ "no-index": t3 && !o2 }) }, !!n2 && t3 && e2.createElement("div", null, n2), t3 && e2.createElement(Qn, { theme: "list-search" }, e2.createElement("div", { className: or("container") }, e2.createElement("div", { ref: i2 }, r2), !!o2 && e2.createElement("div", { onClick: (e3) => {
        const t4 = e3.target, n3 = "button" === t4.tagName.toLowerCase() ? t4 : t4.closest("button");
        if (n3) {
          e3.preventDefault();
          const t5 = n3.dataset.id;
          if (t5) {
            const e4 = document.getElementById(t5);
            if (e4) {
              const t6 = e4.closest("li");
              if (t6) {
                const n4 = t6.offsetTop;
                i2.current.scrollTop = n4 - 20;
                const r3 = e4.closest("button");
                r3 ? r3.focus() : e4.focus();
              }
            }
          }
        }
      } }, o2))), !t3 && r2);
    }, ar = ({ onClick: t3, ...n2 }) => {
      const r2 = { theme: "platter", heading: false, ...n2 };
      return e2.createElement(Zn, { platter: true }, t3 ? e2.createElement(vn, { bare: true, expand: true, onClick: t3 }, e2.createElement(Qn, { ...r2 })) : e2.createElement(Qn, { ...r2 }));
    }, [lr, ur] = je, [cr, sr] = Le, [fr] = De, [dr, pr] = Ie, [hr, vr] = Fe, [mr] = Me, yr = (t3) => e2.createElement("div", { className: mr(), ...t3 }), [, gr] = Me, br = (t3) => e2.createElement("div", { className: gr("description"), ...t3 }), [, wr] = Me, [, Er] = Me, Sr = (t3) => e2.createElement("h1", { className: Er("title"), ...t3 }), kr = /\D/g;
    (0, e2.forwardRef)(({ acceptedSuffix: t3, autoComplete: n2 = "tel", format: r2, onChange: o2, onKeyDown: i2, onKeyUp: a2, shouldShowCheckMarkWhenValid: l2 = true, ...u2 }, c2) => {
      const [s2, f2, d2] = (0, e2.useMemo)(() => {
        const [e3, n3] = (function(e4) {
          let t4 = 0;
          return [null == e4 ? void 0 : e4.split("").map((e5) => "x" === e5 ? (t4++, /\d/) : e5), t4];
        })(r2), o3 = n3 || 4;
        var i3;
        return [o3, r2 ? (i3 = r2, i3.replace(/[.*+?^${}()|[\]\\]/g, "\\$&")).replace(/x/g, "\\d") : `\\d{${o3},}${t3 ? t3.source.replace(/^\^/, "") : ""}`, e3 ? er(e3, { acceptedSuffix: t3 }) : er(new Array(o3).fill(/\d/), { acceptedSuffix: null != t3 ? t3 : /^\d*$/ })];
      }, [t3, r2]), [p2, h2] = (0, e2.useState)(false), [v2, m2] = (0, e2.useState)(false), y2 = (0, e2.useCallback)((e3) => {
        var n3;
        if (r2) {
          const t4 = e3.target, [n4, r3] = d2(t4.value, { wasBackspaceDetected: v2 });
          t4.value = n4, h2(r3);
        } else {
          const r3 = e3.target, o3 = r3.value, i3 = t3 && (null === (n3 = o3.match(t3.source.replace(/^\^/, "").replace(/\$$/, ""))) || void 0 === n3 ? void 0 : n3[0]) || "", a3 = (i3 ? o3.split(i3)[0] : o3).replace(kr, "");
          r3.value = a3 + i3;
        }
        null == o2 || o2(e3);
      }, [r2, o2, v2]), g2 = (0, e2.useCallback)((e3) => {
        m2("Backspace" === e3.key), null == i2 || i2(e3);
      }, []), b2 = (0, e2.useCallback)((e3) => {
        m2(false), null == a2 || a2(e3);
      }, []);
      return e2.createElement(Kt, { autoCorrect: "off", inputMode: "tel", onChange: y2, onKeyDown: g2, onKeyUp: b2, type: "tel", ltrForValueOnly: true, ...Q({ pattern: f2 }), autoComplete: n2, isValid: p2 && l2, minLength: s2, ref: c2, ...u2 });
    });
    const [xr] = Ue, [, Cr] = Ue, [, Or] = Ue, [, Pr] = Ue, [, Tr] = Ue, [Nr, Ar] = Be, Rr = ({ value: t3, axLabel: n2, axDigitLabel: r2, onChange: o2, errorMessage: i2, isError: a2, split: l2 = true, inputType: u2 = "tel", disabled: c2 = false, axDescription: s2 = "", autoComplete: f2 = "off" }) => {
      const d2 = l2 && t3.length % 2 == 0, p2 = nt({ prefix: Nr() + "-error-" }), h2 = null != a2 ? a2 : !!(null == i2 ? void 0 : i2.children), [v2, m2] = (0, e2.useState)([]), [y2, g2] = (0, e2.useState)([]);
      (0, e2.useEffect)(() => {
        m2(t3.map((t4, n3) => v2[n3] || (0, e2.createRef)())), g2(t3.map((e3, t4) => y2[t4] || { start: 0, end: 0 }));
      }, [t3.length]);
      const b2 = (e3, n3) => {
        const r3 = [...t3];
        if (n3.length + e3 > t3.length) {
          const r4 = n3.length + e3 - t3.length;
          n3 = n3.slice(0, n3.length - r4);
        }
        return r3.splice(e3, n3.length, ...n3), r3;
      }, w2 = (e3) => {
        v2[e3 + 1 < t3.length ? e3 + 1 : t3.length - 1].current.focus();
      }, E2 = (e3) => {
        v2[e3 - 1 > 0 ? e3 - 1 : 0].current.focus();
      }, S2 = (e3) => (n3) => {
        const { value: r3 } = n3.target, i3 = r3.replace(/\D/g, "").split("");
        "" !== t3[e3] && y2[e3].start === y2[e3].end && i3.splice(0 === y2[e3].start ? -1 : 0, 1), i3.length && (o2(b2(e3, i3)), w2(e3 + i3.length - 1));
      }, k2 = (e3) => (n3) => {
        switch (((e4) => e4.keyCode || e4.which)(n3)) {
          case 8:
            0 === e3 || t3[e3] ? o2(b2(e3, [""])) : (o2(b2(e3 - 1, [""])), E2(e3));
            break;
          case 46:
            e3 === t3.length - 1 || t3[e3] ? o2(b2(e3, [""])) : (o2(b2(e3 + 1, [""])), w2(e3));
            break;
          case 37:
            E2(e3);
            break;
          case 39:
            w2(e3);
        }
      }, x2 = (e3) => (t4) => {
        g2((n3) => {
          const r3 = [...n3];
          return r3[e3] = { start: t4.target.selectionStart || 0, end: t4.target.selectionEnd || 0 }, r3;
        });
      };
      return e2.createElement("div", { className: Xe()(Nr(), { "is-error": h2 }) }, e2.createElement("div", { className: Ar("inputs") }, v2.map((o3, a3) => e2.createElement(e2.Fragment, { key: a3 }, d2 && Math.floor(v2.length / 2) === a3 && e2.createElement("div", { className: Ar("divider") }), e2.createElement("input", { ref: o3, className: Ar("input", { "no-caret": !!t3[a3] }), type: u2, autoCapitalize: "off", autoCorrect: "off", spellCheck: false, autoComplete: f2, value: t3[a3], onChange: S2(a3), onKeyDown: k2(a3), onSelect: x2(a3), "aria-invalid": h2 || void 0, ...lt({ "aria-description": !(0 !== a3 || !s2) && s2 }), "aria-describedby": h2 && (null == i2 ? void 0 : i2.children) ? p2 : void 0, "aria-label": 0 === a3 ? `${n2} ${r2} ${a3 + 1}` : `${r2} ${a3 + 1}`, disabled: c2 })))), h2 && (null == i2 ? void 0 : i2.children) && e2.createElement(st, { id: p2, ...i2 }));
    }, [_r] = He, [, jr] = He, [, Lr] = He, [, Dr] = He, [, Ir] = He;
    function zr(e3, t3) {
      return e3.width === t3.width && e3.height === t3.height;
    }
    function Fr(e3) {
      let t3;
      if (e3.contentBoxSize) if (e3.contentBoxSize[0]) t3 = { width: e3.contentBoxSize[0].inlineSize, height: e3.contentBoxSize[0].blockSize };
      else {
        const n2 = e3.contentBoxSize;
        t3 = { width: n2.inlineSize, height: n2.blockSize };
      }
      else t3 = { width: e3.contentRect.width, height: e3.contentRect.height };
      return t3;
    }
    function Mr(e3, t3) {
      let n2;
      const r2 = new ResizeObserver((e4) => {
        for (const r3 of e4) {
          const e5 = Fr(r3);
          n2 && zr(n2, e5) || (n2 = e5, t3(e5));
        }
      });
      return r2.observe(e3), () => r2.disconnect();
    }
    var Ur = n(86020), Br = n.n(Ur);
    function Hr(e3, t3) {
      var [n2] = e3;
      return n2 && n2.isResponseError && !n2.isUnexpectedResponseError && n2.message || t3;
    }
    n(51007);
    var Wr = {};
    function qr(e3) {
      if (0 === e3.length) throw new Error("locMessage key cannot be empty!");
      for (var t3 = /{(\d*):?(?: *)?([a-z]*[\w ]*)?}/gi, n2 = Wr[e3] || "", r2 = arguments.length, o2 = new Array(r2 > 1 ? r2 - 1 : 0), i2 = 1; i2 < r2; i2++) o2[i2 - 1] = arguments[i2];
      for (var a2, l2 = ["string", "undefined"].includes(typeof o2[0]), u2 = l2 ? o2 : o2[0], c2 = [], s2 = 0, f2 = ""; null !== (a2 = t3.exec(n2)); ) {
        var [d2, p2, h2] = a2;
        if (!p2.length) throw new Error("localized string is missing required argument for key:".concat(e3));
        a2.index > s2 && b2(n2.substring(s2, a2.index));
        var v2 = (null != h2 ? h2 : "").trimEnd();
        if (!l2 && v2 && "object" == typeof u2 && !Array.isArray(u2) && v2 in u2) b2(u2[v2]);
        else {
          var m2, y2, g2 = Number(p2);
          Array.isArray(u2) ? b2(null !== (m2 = u2[g2]) && void 0 !== m2 ? m2 : d2) : b2(null !== (y2 = u2[g2.toString()]) && void 0 !== y2 ? y2 : d2);
        }
        s2 = t3.lastIndex;
      }
      return b2(n2.substr(s2)), w2(), l2 ? c2.join("") : c2;
      function b2(e4) {
        e4 && ("string" != typeof e4 ? (w2(), c2.push(e4)) : f2 += e4);
      }
      function w2() {
        f2 && (c2.push(f2), f2 = "");
      }
    }
    n(73375), n(3962), n(69990);
    n(73986);
    const { entries: $r, setPrototypeOf: Vr, isFrozen: Gr, getPrototypeOf: Kr, getOwnPropertyDescriptor: Qr } = Object;
    let { freeze: Yr, seal: Xr, create: Jr } = Object, { apply: Zr, construct: eo } = "undefined" != typeof Reflect && Reflect;
    Yr || (Yr = function(e3) {
      return e3;
    }), Xr || (Xr = function(e3) {
      return e3;
    }), Zr || (Zr = function(e3, t3) {
      for (var n2 = arguments.length, r2 = new Array(n2 > 2 ? n2 - 2 : 0), o2 = 2; o2 < n2; o2++) r2[o2 - 2] = arguments[o2];
      return e3.apply(t3, r2);
    }), eo || (eo = function(e3) {
      for (var t3 = arguments.length, n2 = new Array(t3 > 1 ? t3 - 1 : 0), r2 = 1; r2 < t3; r2++) n2[r2 - 1] = arguments[r2];
      return new e3(...n2);
    });
    const to = yo(Array.prototype.forEach), no = yo(Array.prototype.lastIndexOf), ro = yo(Array.prototype.pop), oo = yo(Array.prototype.push), io = yo(Array.prototype.splice), ao = yo(String.prototype.toLowerCase), lo = yo(String.prototype.toString), uo = yo(String.prototype.match), co = yo(String.prototype.replace), so = yo(String.prototype.indexOf), fo = yo(String.prototype.trim), po = yo(Object.prototype.hasOwnProperty), ho = yo(RegExp.prototype.test), vo = (mo = TypeError, function() {
      for (var e3 = arguments.length, t3 = new Array(e3), n2 = 0; n2 < e3; n2++) t3[n2] = arguments[n2];
      return eo(mo, t3);
    });
    var mo;
    function yo(e3) {
      return function(t3) {
        t3 instanceof RegExp && (t3.lastIndex = 0);
        for (var n2 = arguments.length, r2 = new Array(n2 > 1 ? n2 - 1 : 0), o2 = 1; o2 < n2; o2++) r2[o2 - 1] = arguments[o2];
        return Zr(e3, t3, r2);
      };
    }
    function go(e3, t3) {
      let n2 = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : ao;
      Vr && Vr(e3, null);
      let r2 = t3.length;
      for (; r2--; ) {
        let o2 = t3[r2];
        if ("string" == typeof o2) {
          const e4 = n2(o2);
          e4 !== o2 && (Gr(t3) || (t3[r2] = e4), o2 = e4);
        }
        e3[o2] = true;
      }
      return e3;
    }
    function bo(e3) {
      for (let t3 = 0; t3 < e3.length; t3++) po(e3, t3) || (e3[t3] = null);
      return e3;
    }
    function wo(e3) {
      const t3 = Jr(null);
      for (const [n2, r2] of $r(e3)) po(e3, n2) && (Array.isArray(r2) ? t3[n2] = bo(r2) : r2 && "object" == typeof r2 && r2.constructor === Object ? t3[n2] = wo(r2) : t3[n2] = r2);
      return t3;
    }
    function Eo(e3, t3) {
      for (; null !== e3; ) {
        const n2 = Qr(e3, t3);
        if (n2) {
          if (n2.get) return yo(n2.get);
          if ("function" == typeof n2.value) return yo(n2.value);
        }
        e3 = Kr(e3);
      }
      return function() {
        return null;
      };
    }
    const So = Yr(["a", "abbr", "acronym", "address", "area", "article", "aside", "audio", "b", "bdi", "bdo", "big", "blink", "blockquote", "body", "br", "button", "canvas", "caption", "center", "cite", "code", "col", "colgroup", "content", "data", "datalist", "dd", "decorator", "del", "details", "dfn", "dialog", "dir", "div", "dl", "dt", "element", "em", "fieldset", "figcaption", "figure", "font", "footer", "form", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "i", "img", "input", "ins", "kbd", "label", "legend", "li", "main", "map", "mark", "marquee", "menu", "menuitem", "meter", "nav", "nobr", "ol", "optgroup", "option", "output", "p", "picture", "pre", "progress", "q", "rp", "rt", "ruby", "s", "samp", "search", "section", "select", "shadow", "slot", "small", "source", "spacer", "span", "strike", "strong", "style", "sub", "summary", "sup", "table", "tbody", "td", "template", "textarea", "tfoot", "th", "thead", "time", "tr", "track", "tt", "u", "ul", "var", "video", "wbr"]), ko = Yr(["svg", "a", "altglyph", "altglyphdef", "altglyphitem", "animatecolor", "animatemotion", "animatetransform", "circle", "clippath", "defs", "desc", "ellipse", "enterkeyhint", "exportparts", "filter", "font", "g", "glyph", "glyphref", "hkern", "image", "inputmode", "line", "lineargradient", "marker", "mask", "metadata", "mpath", "part", "path", "pattern", "polygon", "polyline", "radialgradient", "rect", "stop", "style", "switch", "symbol", "text", "textpath", "title", "tref", "tspan", "view", "vkern"]), xo = Yr(["feBlend", "feColorMatrix", "feComponentTransfer", "feComposite", "feConvolveMatrix", "feDiffuseLighting", "feDisplacementMap", "feDistantLight", "feDropShadow", "feFlood", "feFuncA", "feFuncB", "feFuncG", "feFuncR", "feGaussianBlur", "feImage", "feMerge", "feMergeNode", "feMorphology", "feOffset", "fePointLight", "feSpecularLighting", "feSpotLight", "feTile", "feTurbulence"]), Co = Yr(["animate", "color-profile", "cursor", "discard", "font-face", "font-face-format", "font-face-name", "font-face-src", "font-face-uri", "foreignobject", "hatch", "hatchpath", "mesh", "meshgradient", "meshpatch", "meshrow", "missing-glyph", "script", "set", "solidcolor", "unknown", "use"]), Oo = Yr(["math", "menclose", "merror", "mfenced", "mfrac", "mglyph", "mi", "mlabeledtr", "mmultiscripts", "mn", "mo", "mover", "mpadded", "mphantom", "mroot", "mrow", "ms", "mspace", "msqrt", "mstyle", "msub", "msup", "msubsup", "mtable", "mtd", "mtext", "mtr", "munder", "munderover", "mprescripts"]), Po = Yr(["maction", "maligngroup", "malignmark", "mlongdiv", "mscarries", "mscarry", "msgroup", "mstack", "msline", "msrow", "semantics", "annotation", "annotation-xml", "mprescripts", "none"]), To = Yr(["#text"]), No = Yr(["accept", "action", "align", "alt", "autocapitalize", "autocomplete", "autopictureinpicture", "autoplay", "background", "bgcolor", "border", "capture", "cellpadding", "cellspacing", "checked", "cite", "class", "clear", "color", "cols", "colspan", "controls", "controlslist", "coords", "crossorigin", "datetime", "decoding", "default", "dir", "disabled", "disablepictureinpicture", "disableremoteplayback", "download", "draggable", "enctype", "enterkeyhint", "exportparts", "face", "for", "headers", "height", "hidden", "high", "href", "hreflang", "id", "inert", "inputmode", "integrity", "ismap", "kind", "label", "lang", "list", "loading", "loop", "low", "max", "maxlength", "media", "method", "min", "minlength", "multiple", "muted", "name", "nonce", "noshade", "novalidate", "nowrap", "open", "optimum", "part", "pattern", "placeholder", "playsinline", "popover", "popovertarget", "popovertargetaction", "poster", "preload", "pubdate", "radiogroup", "readonly", "rel", "required", "rev", "reversed", "role", "rows", "rowspan", "spellcheck", "scope", "selected", "shape", "size", "sizes", "slot", "span", "srclang", "start", "src", "srcset", "step", "style", "summary", "tabindex", "title", "translate", "type", "usemap", "valign", "value", "width", "wrap", "xmlns", "slot"]), Ao = Yr(["accent-height", "accumulate", "additive", "alignment-baseline", "amplitude", "ascent", "attributename", "attributetype", "azimuth", "basefrequency", "baseline-shift", "begin", "bias", "by", "class", "clip", "clippathunits", "clip-path", "clip-rule", "color", "color-interpolation", "color-interpolation-filters", "color-profile", "color-rendering", "cx", "cy", "d", "dx", "dy", "diffuseconstant", "direction", "display", "divisor", "dur", "edgemode", "elevation", "end", "exponent", "fill", "fill-opacity", "fill-rule", "filter", "filterunits", "flood-color", "flood-opacity", "font-family", "font-size", "font-size-adjust", "font-stretch", "font-style", "font-variant", "font-weight", "fx", "fy", "g1", "g2", "glyph-name", "glyphref", "gradientunits", "gradienttransform", "height", "href", "id", "image-rendering", "in", "in2", "intercept", "k", "k1", "k2", "k3", "k4", "kerning", "keypoints", "keysplines", "keytimes", "lang", "lengthadjust", "letter-spacing", "kernelmatrix", "kernelunitlength", "lighting-color", "local", "marker-end", "marker-mid", "marker-start", "markerheight", "markerunits", "markerwidth", "maskcontentunits", "maskunits", "max", "mask", "mask-type", "media", "method", "mode", "min", "name", "numoctaves", "offset", "operator", "opacity", "order", "orient", "orientation", "origin", "overflow", "paint-order", "path", "pathlength", "patterncontentunits", "patterntransform", "patternunits", "points", "preservealpha", "preserveaspectratio", "primitiveunits", "r", "rx", "ry", "radius", "refx", "refy", "repeatcount", "repeatdur", "restart", "result", "rotate", "scale", "seed", "shape-rendering", "slope", "specularconstant", "specularexponent", "spreadmethod", "startoffset", "stddeviation", "stitchtiles", "stop-color", "stop-opacity", "stroke-dasharray", "stroke-dashoffset", "stroke-linecap", "stroke-linejoin", "stroke-miterlimit", "stroke-opacity", "stroke", "stroke-width", "style", "surfacescale", "systemlanguage", "tabindex", "tablevalues", "targetx", "targety", "transform", "transform-origin", "text-anchor", "text-decoration", "text-rendering", "textlength", "type", "u1", "u2", "unicode", "values", "viewbox", "visibility", "version", "vert-adv-y", "vert-origin-x", "vert-origin-y", "width", "word-spacing", "wrap", "writing-mode", "xchannelselector", "ychannelselector", "x", "x1", "x2", "xmlns", "y", "y1", "y2", "z", "zoomandpan"]), Ro = Yr(["accent", "accentunder", "align", "bevelled", "close", "columnsalign", "columnlines", "columnspan", "denomalign", "depth", "dir", "display", "displaystyle", "encoding", "fence", "frame", "height", "href", "id", "largeop", "length", "linethickness", "lspace", "lquote", "mathbackground", "mathcolor", "mathsize", "mathvariant", "maxsize", "minsize", "movablelimits", "notation", "numalign", "open", "rowalign", "rowlines", "rowspacing", "rowspan", "rspace", "rquote", "scriptlevel", "scriptminsize", "scriptsizemultiplier", "selection", "separator", "separators", "stretchy", "subscriptshift", "supscriptshift", "symmetric", "voffset", "width", "xmlns"]), _o = Yr(["xlink:href", "xml:id", "xlink:title", "xml:space", "xmlns:xlink"]), jo = Xr(/\{\{[\w\W]*|[\w\W]*\}\}/gm), Lo = Xr(/<%[\w\W]*|[\w\W]*%>/gm), Do = Xr(/\$\{[\w\W]*/gm), Io = Xr(/^data-[\-\w.\u00B7-\uFFFF]+$/), zo = Xr(/^aria-[\-\w]+$/), Fo = Xr(/^(?:(?:(?:f|ht)tps?|mailto|tel|callto|sms|cid|xmpp|matrix):|[^a-z]|[a-z+.\-]+(?:[^a-z+.\-:]|$))/i), Mo = Xr(/^(?:\w+script|data):/i), Uo = Xr(/[\u0000-\u0020\u00A0\u1680\u180E\u2000-\u2029\u205F\u3000]/g), Bo = Xr(/^html$/i), Ho = Xr(/^[a-z][.\w]*(-[.\w]+)+$/i);
    var Wo = Object.freeze({ __proto__: null, ARIA_ATTR: zo, ATTR_WHITESPACE: Uo, CUSTOM_ELEMENT: Ho, DATA_ATTR: Io, DOCTYPE_NAME: Bo, ERB_EXPR: Lo, IS_ALLOWED_URI: Fo, IS_SCRIPT_OR_DATA: Mo, MUSTACHE_EXPR: jo, TMPLIT_EXPR: Do });
    const qo = function() {
      return "undefined" == typeof window ? null : window;
    };
    var $o = (function e3() {
      let t3 = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : qo();
      const n2 = (t4) => e3(t4);
      if (n2.version = "3.3.1", n2.removed = [], !t3 || !t3.document || 9 !== t3.document.nodeType || !t3.Element) return n2.isSupported = false, n2;
      let { document: r2 } = t3;
      const o2 = r2, i2 = o2.currentScript, { DocumentFragment: a2, HTMLTemplateElement: l2, Node: u2, Element: c2, NodeFilter: s2, NamedNodeMap: f2 = t3.NamedNodeMap || t3.MozNamedAttrMap, HTMLFormElement: d2, DOMParser: p2, trustedTypes: h2 } = t3, v2 = c2.prototype, m2 = Eo(v2, "cloneNode"), y2 = Eo(v2, "remove"), g2 = Eo(v2, "nextSibling"), b2 = Eo(v2, "childNodes"), w2 = Eo(v2, "parentNode");
      if ("function" == typeof l2) {
        const e4 = r2.createElement("template");
        e4.content && e4.content.ownerDocument && (r2 = e4.content.ownerDocument);
      }
      let E2, S2 = "";
      const { implementation: k2, createNodeIterator: x2, createDocumentFragment: C2, getElementsByTagName: O2 } = r2, { importNode: P2 } = o2;
      let T2 = { afterSanitizeAttributes: [], afterSanitizeElements: [], afterSanitizeShadowDOM: [], beforeSanitizeAttributes: [], beforeSanitizeElements: [], beforeSanitizeShadowDOM: [], uponSanitizeAttribute: [], uponSanitizeElement: [], uponSanitizeShadowNode: [] };
      n2.isSupported = "function" == typeof $r && "function" == typeof w2 && k2 && void 0 !== k2.createHTMLDocument;
      const { MUSTACHE_EXPR: N2, ERB_EXPR: A2, TMPLIT_EXPR: R2, DATA_ATTR: _2, ARIA_ATTR: j2, IS_SCRIPT_OR_DATA: L2, ATTR_WHITESPACE: D2, CUSTOM_ELEMENT: I2 } = Wo;
      let { IS_ALLOWED_URI: z2 } = Wo, F2 = null;
      const M2 = go({}, [...So, ...ko, ...xo, ...Oo, ...To]);
      let U2 = null;
      const B2 = go({}, [...No, ...Ao, ...Ro, ..._o]);
      let H2 = Object.seal(Jr(null, { tagNameCheck: { writable: true, configurable: false, enumerable: true, value: null }, attributeNameCheck: { writable: true, configurable: false, enumerable: true, value: null }, allowCustomizedBuiltInElements: { writable: true, configurable: false, enumerable: true, value: false } })), W2 = null, q2 = null;
      const $2 = Object.seal(Jr(null, { tagCheck: { writable: true, configurable: false, enumerable: true, value: null }, attributeCheck: { writable: true, configurable: false, enumerable: true, value: null } }));
      let V2 = true, G2 = true, K2 = false, Q2 = true, Y2 = false, X2 = true, J2 = false, Z2 = false, ee2 = false, te2 = false, ne2 = false, re2 = false, oe2 = true, ie2 = false, ae2 = true, le2 = false, ue2 = {}, ce2 = null;
      const se2 = go({}, ["annotation-xml", "audio", "colgroup", "desc", "foreignobject", "head", "iframe", "math", "mi", "mn", "mo", "ms", "mtext", "noembed", "noframes", "noscript", "plaintext", "script", "style", "svg", "template", "thead", "title", "video", "xmp"]);
      let fe2 = null;
      const de2 = go({}, ["audio", "video", "img", "source", "image", "track"]);
      let pe2 = null;
      const he2 = go({}, ["alt", "class", "for", "id", "label", "name", "pattern", "placeholder", "role", "summary", "title", "value", "style", "xmlns"]), ve2 = "http://www.w3.org/1998/Math/MathML", me2 = "http://www.w3.org/2000/svg", ye2 = "http://www.w3.org/1999/xhtml";
      let ge2 = ye2, be2 = false, we2 = null;
      const Ee2 = go({}, [ve2, me2, ye2], lo);
      let Se2 = go({}, ["mi", "mo", "mn", "ms", "mtext"]), ke2 = go({}, ["annotation-xml"]);
      const xe2 = go({}, ["title", "style", "font", "a", "script"]);
      let Ce2 = null;
      const Oe2 = ["application/xhtml+xml", "text/html"];
      let Pe2 = null, Te2 = null;
      const Ne2 = r2.createElement("form"), Ae2 = function(e4) {
        return e4 instanceof RegExp || e4 instanceof Function;
      }, Re2 = function() {
        let e4 = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {};
        if (!Te2 || Te2 !== e4) {
          if (e4 && "object" == typeof e4 || (e4 = {}), e4 = wo(e4), Ce2 = -1 === Oe2.indexOf(e4.PARSER_MEDIA_TYPE) ? "text/html" : e4.PARSER_MEDIA_TYPE, Pe2 = "application/xhtml+xml" === Ce2 ? lo : ao, F2 = po(e4, "ALLOWED_TAGS") ? go({}, e4.ALLOWED_TAGS, Pe2) : M2, U2 = po(e4, "ALLOWED_ATTR") ? go({}, e4.ALLOWED_ATTR, Pe2) : B2, we2 = po(e4, "ALLOWED_NAMESPACES") ? go({}, e4.ALLOWED_NAMESPACES, lo) : Ee2, pe2 = po(e4, "ADD_URI_SAFE_ATTR") ? go(wo(he2), e4.ADD_URI_SAFE_ATTR, Pe2) : he2, fe2 = po(e4, "ADD_DATA_URI_TAGS") ? go(wo(de2), e4.ADD_DATA_URI_TAGS, Pe2) : de2, ce2 = po(e4, "FORBID_CONTENTS") ? go({}, e4.FORBID_CONTENTS, Pe2) : se2, W2 = po(e4, "FORBID_TAGS") ? go({}, e4.FORBID_TAGS, Pe2) : wo({}), q2 = po(e4, "FORBID_ATTR") ? go({}, e4.FORBID_ATTR, Pe2) : wo({}), ue2 = !!po(e4, "USE_PROFILES") && e4.USE_PROFILES, V2 = false !== e4.ALLOW_ARIA_ATTR, G2 = false !== e4.ALLOW_DATA_ATTR, K2 = e4.ALLOW_UNKNOWN_PROTOCOLS || false, Q2 = false !== e4.ALLOW_SELF_CLOSE_IN_ATTR, Y2 = e4.SAFE_FOR_TEMPLATES || false, X2 = false !== e4.SAFE_FOR_XML, J2 = e4.WHOLE_DOCUMENT || false, te2 = e4.RETURN_DOM || false, ne2 = e4.RETURN_DOM_FRAGMENT || false, re2 = e4.RETURN_TRUSTED_TYPE || false, ee2 = e4.FORCE_BODY || false, oe2 = false !== e4.SANITIZE_DOM, ie2 = e4.SANITIZE_NAMED_PROPS || false, ae2 = false !== e4.KEEP_CONTENT, le2 = e4.IN_PLACE || false, z2 = e4.ALLOWED_URI_REGEXP || Fo, ge2 = e4.NAMESPACE || ye2, Se2 = e4.MATHML_TEXT_INTEGRATION_POINTS || Se2, ke2 = e4.HTML_INTEGRATION_POINTS || ke2, H2 = e4.CUSTOM_ELEMENT_HANDLING || {}, e4.CUSTOM_ELEMENT_HANDLING && Ae2(e4.CUSTOM_ELEMENT_HANDLING.tagNameCheck) && (H2.tagNameCheck = e4.CUSTOM_ELEMENT_HANDLING.tagNameCheck), e4.CUSTOM_ELEMENT_HANDLING && Ae2(e4.CUSTOM_ELEMENT_HANDLING.attributeNameCheck) && (H2.attributeNameCheck = e4.CUSTOM_ELEMENT_HANDLING.attributeNameCheck), e4.CUSTOM_ELEMENT_HANDLING && "boolean" == typeof e4.CUSTOM_ELEMENT_HANDLING.allowCustomizedBuiltInElements && (H2.allowCustomizedBuiltInElements = e4.CUSTOM_ELEMENT_HANDLING.allowCustomizedBuiltInElements), Y2 && (G2 = false), ne2 && (te2 = true), ue2 && (F2 = go({}, To), U2 = [], true === ue2.html && (go(F2, So), go(U2, No)), true === ue2.svg && (go(F2, ko), go(U2, Ao), go(U2, _o)), true === ue2.svgFilters && (go(F2, xo), go(U2, Ao), go(U2, _o)), true === ue2.mathMl && (go(F2, Oo), go(U2, Ro), go(U2, _o))), e4.ADD_TAGS && ("function" == typeof e4.ADD_TAGS ? $2.tagCheck = e4.ADD_TAGS : (F2 === M2 && (F2 = wo(F2)), go(F2, e4.ADD_TAGS, Pe2))), e4.ADD_ATTR && ("function" == typeof e4.ADD_ATTR ? $2.attributeCheck = e4.ADD_ATTR : (U2 === B2 && (U2 = wo(U2)), go(U2, e4.ADD_ATTR, Pe2))), e4.ADD_URI_SAFE_ATTR && go(pe2, e4.ADD_URI_SAFE_ATTR, Pe2), e4.FORBID_CONTENTS && (ce2 === se2 && (ce2 = wo(ce2)), go(ce2, e4.FORBID_CONTENTS, Pe2)), e4.ADD_FORBID_CONTENTS && (ce2 === se2 && (ce2 = wo(ce2)), go(ce2, e4.ADD_FORBID_CONTENTS, Pe2)), ae2 && (F2["#text"] = true), J2 && go(F2, ["html", "head", "body"]), F2.table && (go(F2, ["tbody"]), delete W2.tbody), e4.TRUSTED_TYPES_POLICY) {
            if ("function" != typeof e4.TRUSTED_TYPES_POLICY.createHTML) throw vo('TRUSTED_TYPES_POLICY configuration option must provide a "createHTML" hook.');
            if ("function" != typeof e4.TRUSTED_TYPES_POLICY.createScriptURL) throw vo('TRUSTED_TYPES_POLICY configuration option must provide a "createScriptURL" hook.');
            E2 = e4.TRUSTED_TYPES_POLICY, S2 = E2.createHTML("");
          } else void 0 === E2 && (E2 = (function(e5, t4) {
            if ("object" != typeof e5 || "function" != typeof e5.createPolicy) return null;
            let n3 = null;
            const r3 = "data-tt-policy-suffix";
            t4 && t4.hasAttribute(r3) && (n3 = t4.getAttribute(r3));
            const o3 = "dompurify" + (n3 ? "#" + n3 : "");
            try {
              return e5.createPolicy(o3, { createHTML(e6) {
                return e6;
              }, createScriptURL(e6) {
                return e6;
              } });
            } catch (e6) {
              return console.warn("TrustedTypes policy " + o3 + " could not be created."), null;
            }
          })(h2, i2)), null !== E2 && "string" == typeof S2 && (S2 = E2.createHTML(""));
          Yr && Yr(e4), Te2 = e4;
        }
      }, _e2 = go({}, [...ko, ...xo, ...Co]), je2 = go({}, [...Oo, ...Po]), Le2 = function(e4) {
        oo(n2.removed, { element: e4 });
        try {
          w2(e4).removeChild(e4);
        } catch (t4) {
          y2(e4);
        }
      }, De2 = function(e4, t4) {
        try {
          oo(n2.removed, { attribute: t4.getAttributeNode(e4), from: t4 });
        } catch (e5) {
          oo(n2.removed, { attribute: null, from: t4 });
        }
        if (t4.removeAttribute(e4), "is" === e4) if (te2 || ne2) try {
          Le2(t4);
        } catch (e5) {
        }
        else try {
          t4.setAttribute(e4, "");
        } catch (e5) {
        }
      }, Ie2 = function(e4) {
        let t4 = null, n3 = null;
        if (ee2) e4 = "<remove></remove>" + e4;
        else {
          const t5 = uo(e4, /^[\r\n\t ]+/);
          n3 = t5 && t5[0];
        }
        "application/xhtml+xml" === Ce2 && ge2 === ye2 && (e4 = '<html xmlns="http://www.w3.org/1999/xhtml"><head></head><body>' + e4 + "</body></html>");
        const o3 = E2 ? E2.createHTML(e4) : e4;
        if (ge2 === ye2) try {
          t4 = new p2().parseFromString(o3, Ce2);
        } catch (e5) {
        }
        if (!t4 || !t4.documentElement) {
          t4 = k2.createDocument(ge2, "template", null);
          try {
            t4.documentElement.innerHTML = be2 ? S2 : o3;
          } catch (e5) {
          }
        }
        const i3 = t4.body || t4.documentElement;
        return e4 && n3 && i3.insertBefore(r2.createTextNode(n3), i3.childNodes[0] || null), ge2 === ye2 ? O2.call(t4, J2 ? "html" : "body")[0] : J2 ? t4.documentElement : i3;
      }, ze2 = function(e4) {
        return x2.call(e4.ownerDocument || e4, e4, s2.SHOW_ELEMENT | s2.SHOW_COMMENT | s2.SHOW_TEXT | s2.SHOW_PROCESSING_INSTRUCTION | s2.SHOW_CDATA_SECTION, null);
      }, Fe2 = function(e4) {
        return e4 instanceof d2 && ("string" != typeof e4.nodeName || "string" != typeof e4.textContent || "function" != typeof e4.removeChild || !(e4.attributes instanceof f2) || "function" != typeof e4.removeAttribute || "function" != typeof e4.setAttribute || "string" != typeof e4.namespaceURI || "function" != typeof e4.insertBefore || "function" != typeof e4.hasChildNodes);
      }, Me2 = function(e4) {
        return "function" == typeof u2 && e4 instanceof u2;
      };
      function Ue2(e4, t4, r3) {
        to(e4, (e5) => {
          e5.call(n2, t4, r3, Te2);
        });
      }
      const Be2 = function(e4) {
        let t4 = null;
        if (Ue2(T2.beforeSanitizeElements, e4, null), Fe2(e4)) return Le2(e4), true;
        const r3 = Pe2(e4.nodeName);
        if (Ue2(T2.uponSanitizeElement, e4, { tagName: r3, allowedTags: F2 }), X2 && e4.hasChildNodes() && !Me2(e4.firstElementChild) && ho(/<[/\w!]/g, e4.innerHTML) && ho(/<[/\w!]/g, e4.textContent)) return Le2(e4), true;
        if (7 === e4.nodeType) return Le2(e4), true;
        if (X2 && 8 === e4.nodeType && ho(/<[/\w]/g, e4.data)) return Le2(e4), true;
        if (!($2.tagCheck instanceof Function && $2.tagCheck(r3)) && (!F2[r3] || W2[r3])) {
          if (!W2[r3] && We2(r3)) {
            if (H2.tagNameCheck instanceof RegExp && ho(H2.tagNameCheck, r3)) return false;
            if (H2.tagNameCheck instanceof Function && H2.tagNameCheck(r3)) return false;
          }
          if (ae2 && !ce2[r3]) {
            const t5 = w2(e4) || e4.parentNode, n3 = b2(e4) || e4.childNodes;
            if (n3 && t5) for (let r4 = n3.length - 1; r4 >= 0; --r4) {
              const o3 = m2(n3[r4], true);
              o3.__removalCount = (e4.__removalCount || 0) + 1, t5.insertBefore(o3, g2(e4));
            }
          }
          return Le2(e4), true;
        }
        return e4 instanceof c2 && !(function(e5) {
          let t5 = w2(e5);
          t5 && t5.tagName || (t5 = { namespaceURI: ge2, tagName: "template" });
          const n3 = ao(e5.tagName), r4 = ao(t5.tagName);
          return !!we2[e5.namespaceURI] && (e5.namespaceURI === me2 ? t5.namespaceURI === ye2 ? "svg" === n3 : t5.namespaceURI === ve2 ? "svg" === n3 && ("annotation-xml" === r4 || Se2[r4]) : Boolean(_e2[n3]) : e5.namespaceURI === ve2 ? t5.namespaceURI === ye2 ? "math" === n3 : t5.namespaceURI === me2 ? "math" === n3 && ke2[r4] : Boolean(je2[n3]) : e5.namespaceURI === ye2 ? !(t5.namespaceURI === me2 && !ke2[r4]) && !(t5.namespaceURI === ve2 && !Se2[r4]) && !je2[n3] && (xe2[n3] || !_e2[n3]) : !("application/xhtml+xml" !== Ce2 || !we2[e5.namespaceURI]));
        })(e4) ? (Le2(e4), true) : "noscript" !== r3 && "noembed" !== r3 && "noframes" !== r3 || !ho(/<\/no(script|embed|frames)/i, e4.innerHTML) ? (Y2 && 3 === e4.nodeType && (t4 = e4.textContent, to([N2, A2, R2], (e5) => {
          t4 = co(t4, e5, " ");
        }), e4.textContent !== t4 && (oo(n2.removed, { element: e4.cloneNode() }), e4.textContent = t4)), Ue2(T2.afterSanitizeElements, e4, null), false) : (Le2(e4), true);
      }, He2 = function(e4, t4, n3) {
        if (oe2 && ("id" === t4 || "name" === t4) && (n3 in r2 || n3 in Ne2)) return false;
        if (G2 && !q2[t4] && ho(_2, t4)) ;
        else if (V2 && ho(j2, t4)) ;
        else if ($2.attributeCheck instanceof Function && $2.attributeCheck(t4, e4)) ;
        else if (!U2[t4] || q2[t4]) {
          if (!(We2(e4) && (H2.tagNameCheck instanceof RegExp && ho(H2.tagNameCheck, e4) || H2.tagNameCheck instanceof Function && H2.tagNameCheck(e4)) && (H2.attributeNameCheck instanceof RegExp && ho(H2.attributeNameCheck, t4) || H2.attributeNameCheck instanceof Function && H2.attributeNameCheck(t4, e4)) || "is" === t4 && H2.allowCustomizedBuiltInElements && (H2.tagNameCheck instanceof RegExp && ho(H2.tagNameCheck, n3) || H2.tagNameCheck instanceof Function && H2.tagNameCheck(n3)))) return false;
        } else if (pe2[t4]) ;
        else if (ho(z2, co(n3, D2, ""))) ;
        else if ("src" !== t4 && "xlink:href" !== t4 && "href" !== t4 || "script" === e4 || 0 !== so(n3, "data:") || !fe2[e4]) {
          if (K2 && !ho(L2, co(n3, D2, ""))) ;
          else if (n3) return false;
        }
        return true;
      }, We2 = function(e4) {
        return "annotation-xml" !== e4 && uo(e4, I2);
      }, qe2 = function(e4) {
        Ue2(T2.beforeSanitizeAttributes, e4, null);
        const { attributes: t4 } = e4;
        if (!t4 || Fe2(e4)) return;
        const r3 = { attrName: "", attrValue: "", keepAttr: true, allowedAttributes: U2, forceKeepAttr: void 0 };
        let o3 = t4.length;
        for (; o3--; ) {
          const i3 = t4[o3], { name: a3, namespaceURI: l3, value: u3 } = i3, c3 = Pe2(a3), s3 = u3;
          let f3 = "value" === a3 ? s3 : fo(s3);
          if (r3.attrName = c3, r3.attrValue = f3, r3.keepAttr = true, r3.forceKeepAttr = void 0, Ue2(T2.uponSanitizeAttribute, e4, r3), f3 = r3.attrValue, !ie2 || "id" !== c3 && "name" !== c3 || (De2(a3, e4), f3 = "user-content-" + f3), X2 && ho(/((--!?|])>)|<\/(style|title|textarea)/i, f3)) {
            De2(a3, e4);
            continue;
          }
          if ("attributename" === c3 && uo(f3, "href")) {
            De2(a3, e4);
            continue;
          }
          if (r3.forceKeepAttr) continue;
          if (!r3.keepAttr) {
            De2(a3, e4);
            continue;
          }
          if (!Q2 && ho(/\/>/i, f3)) {
            De2(a3, e4);
            continue;
          }
          Y2 && to([N2, A2, R2], (e5) => {
            f3 = co(f3, e5, " ");
          });
          const d3 = Pe2(e4.nodeName);
          if (He2(d3, c3, f3)) {
            if (E2 && "object" == typeof h2 && "function" == typeof h2.getAttributeType) if (l3) ;
            else switch (h2.getAttributeType(d3, c3)) {
              case "TrustedHTML":
                f3 = E2.createHTML(f3);
                break;
              case "TrustedScriptURL":
                f3 = E2.createScriptURL(f3);
            }
            if (f3 !== s3) try {
              l3 ? e4.setAttributeNS(l3, a3, f3) : e4.setAttribute(a3, f3), Fe2(e4) ? Le2(e4) : ro(n2.removed);
            } catch (t5) {
              De2(a3, e4);
            }
          } else De2(a3, e4);
        }
        Ue2(T2.afterSanitizeAttributes, e4, null);
      }, $e2 = function e4(t4) {
        let n3 = null;
        const r3 = ze2(t4);
        for (Ue2(T2.beforeSanitizeShadowDOM, t4, null); n3 = r3.nextNode(); ) Ue2(T2.uponSanitizeShadowNode, n3, null), Be2(n3), qe2(n3), n3.content instanceof a2 && e4(n3.content);
        Ue2(T2.afterSanitizeShadowDOM, t4, null);
      };
      return n2.sanitize = function(e4) {
        let t4 = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {}, r3 = null, i3 = null, l3 = null, c3 = null;
        if (be2 = !e4, be2 && (e4 = "<!-->"), "string" != typeof e4 && !Me2(e4)) {
          if ("function" != typeof e4.toString) throw vo("toString is not a function");
          if ("string" != typeof (e4 = e4.toString())) throw vo("dirty is not a string, aborting");
        }
        if (!n2.isSupported) return e4;
        if (Z2 || Re2(t4), n2.removed = [], "string" == typeof e4 && (le2 = false), le2) {
          if (e4.nodeName) {
            const t5 = Pe2(e4.nodeName);
            if (!F2[t5] || W2[t5]) throw vo("root node is forbidden and cannot be sanitized in-place");
          }
        } else if (e4 instanceof u2) r3 = Ie2("<!---->"), i3 = r3.ownerDocument.importNode(e4, true), 1 === i3.nodeType && "BODY" === i3.nodeName || "HTML" === i3.nodeName ? r3 = i3 : r3.appendChild(i3);
        else {
          if (!te2 && !Y2 && !J2 && -1 === e4.indexOf("<")) return E2 && re2 ? E2.createHTML(e4) : e4;
          if (r3 = Ie2(e4), !r3) return te2 ? null : re2 ? S2 : "";
        }
        r3 && ee2 && Le2(r3.firstChild);
        const s3 = ze2(le2 ? e4 : r3);
        for (; l3 = s3.nextNode(); ) Be2(l3), qe2(l3), l3.content instanceof a2 && $e2(l3.content);
        if (le2) return e4;
        if (te2) {
          if (ne2) for (c3 = C2.call(r3.ownerDocument); r3.firstChild; ) c3.appendChild(r3.firstChild);
          else c3 = r3;
          return (U2.shadowroot || U2.shadowrootmode) && (c3 = P2.call(o2, c3, true)), c3;
        }
        let f3 = J2 ? r3.outerHTML : r3.innerHTML;
        return J2 && F2["!doctype"] && r3.ownerDocument && r3.ownerDocument.doctype && r3.ownerDocument.doctype.name && ho(Bo, r3.ownerDocument.doctype.name) && (f3 = "<!DOCTYPE " + r3.ownerDocument.doctype.name + ">\n" + f3), Y2 && to([N2, A2, R2], (e5) => {
          f3 = co(f3, e5, " ");
        }), E2 && re2 ? E2.createHTML(f3) : f3;
      }, n2.setConfig = function() {
        Re2(arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {}), Z2 = true;
      }, n2.clearConfig = function() {
        Te2 = null, Z2 = false;
      }, n2.isValidAttribute = function(e4, t4, n3) {
        Te2 || Re2({});
        const r3 = Pe2(e4), o3 = Pe2(t4);
        return He2(r3, o3, n3);
      }, n2.addHook = function(e4, t4) {
        "function" == typeof t4 && oo(T2[e4], t4);
      }, n2.removeHook = function(e4, t4) {
        if (void 0 !== t4) {
          const n3 = no(T2[e4], t4);
          return -1 === n3 ? void 0 : io(T2[e4], n3, 1)[0];
        }
        return ro(T2[e4]);
      }, n2.removeHooks = function(e4) {
        T2[e4] = [];
      }, n2.removeAllHooks = function() {
        T2 = { afterSanitizeAttributes: [], afterSanitizeElements: [], afterSanitizeShadowDOM: [], beforeSanitizeAttributes: [], beforeSanitizeElements: [], beforeSanitizeShadowDOM: [], uponSanitizeAttribute: [], uponSanitizeElement: [], uponSanitizeShadowNode: [] };
      }, n2;
    })(), Vo = ["html", "tagName"];
    function Go(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function Ko(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? Go(Object(n2), true).forEach(function(t4) {
          Qo(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : Go(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function Qo(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    var Yo = $o.isSupported ? (e3) => $o.sanitize(e3) : () => "", Xo = /\bno(opener|referrer)\b/, Jo = /* @__PURE__ */ new Map();
    function Zo(t3) {
      var { html: n2, tagName: r2 } = t3, o2 = (function(e3, t4) {
        if (null == e3) return {};
        var n3, r3, o3 = (function(e4, t5) {
          if (null == e4) return {};
          var n4 = {};
          for (var r4 in e4) if ({}.hasOwnProperty.call(e4, r4)) {
            if (-1 !== t5.indexOf(r4)) continue;
            n4[r4] = e4[r4];
          }
          return n4;
        })(e3, t4);
        if (Object.getOwnPropertySymbols) {
          var i2 = Object.getOwnPropertySymbols(e3);
          for (r3 = 0; r3 < i2.length; r3++) n3 = i2[r3], -1 === t4.indexOf(n3) && {}.propertyIsEnumerable.call(e3, n3) && (o3[n3] = e3[n3]);
        }
        return o3;
      })(t3, Vo);
      return (0, e2.createElement)(null != r2 ? r2 : "span", Ko(Ko({}, o2), {}, { dangerouslySetInnerHTML: { __html: Yo(n2) } }));
    }
    $o.isSupported && ($o.addHook("beforeSanitizeAttributes", (e3) => {
      "target" in e3 && Jo.set(e3, e3.getAttribute("target"));
    }), $o.addHook("afterSanitizeAttributes", (e3) => {
      var t3, n2 = Jo.get(e3);
      if (n2) {
        Jo.delete(e3), e3.setAttribute("target", n2);
        var r2 = null !== (t3 = e3.getAttribute("rel")) && void 0 !== t3 ? t3 : "";
        Xo.test(r2) || e3.setAttribute("rel", [r2, "noopener"].filter(Boolean).join(" "));
      }
    }));
    var ei = n(15255);
    var ti = { notify() {
    }, get: () => [] };
    var ni = (() => !("undefined" == typeof window || void 0 === window.document || void 0 === window.document.createElement))(), ri = (() => "undefined" != typeof navigator && "ReactNative" === navigator.product)(), oi = (() => ni || ri ? e2.useLayoutEffect : e2.useEffect)();
    Object.defineProperty, Object.getOwnPropertyNames, Object.getOwnPropertySymbols, Object.getOwnPropertyDescriptor, Object.getPrototypeOf, Object.prototype;
    var ii = Symbol.for("react-redux-context"), ai = "undefined" != typeof globalThis ? globalThis : {};
    function li() {
      var _a2;
      if (!e2.createContext) return {};
      const t3 = (_a2 = ai[ii]) != null ? _a2 : ai[ii] = /* @__PURE__ */ new Map();
      let n2 = t3.get(e2.createContext);
      return n2 || (n2 = e2.createContext(null), t3.set(e2.createContext, n2)), n2;
    }
    var ui = li(), ci = function(t3) {
      const { children: n2, context: r2, serverState: o2, store: i2 } = t3, a2 = e2.useMemo(() => {
        const e3 = /* @__PURE__ */ (function(e4, t4) {
          let n3, r3 = ti, o3 = 0, i3 = false;
          function a3() {
            c2.onStateChange && c2.onStateChange();
          }
          function l3() {
            o3++, n3 || (n3 = t4 ? t4.addNestedSub(a3) : e4.subscribe(a3), r3 = /* @__PURE__ */ (function() {
              let e5 = null, t5 = null;
              return { clear() {
                e5 = null, t5 = null;
              }, notify() {
                (() => {
                  let t6 = e5;
                  for (; t6; ) t6.callback(), t6 = t6.next;
                })();
              }, get() {
                const t6 = [];
                let n4 = e5;
                for (; n4; ) t6.push(n4), n4 = n4.next;
                return t6;
              }, subscribe(n4) {
                let r4 = true;
                const o4 = t5 = { callback: n4, next: null, prev: t5 };
                return o4.prev ? o4.prev.next = o4 : e5 = o4, function() {
                  r4 && null !== e5 && (r4 = false, o4.next ? o4.next.prev = o4.prev : t5 = o4.prev, o4.prev ? o4.prev.next = o4.next : e5 = o4.next);
                };
              } };
            })());
          }
          function u3() {
            o3--, n3 && 0 === o3 && (n3(), n3 = void 0, r3.clear(), r3 = ti);
          }
          const c2 = { addNestedSub: function(e5) {
            l3();
            const t5 = r3.subscribe(e5);
            let n4 = false;
            return () => {
              n4 || (n4 = true, t5(), u3());
            };
          }, notifyNestedSubs: function() {
            r3.notify();
          }, handleChangeWrapper: a3, isSubscribed: function() {
            return i3;
          }, trySubscribe: function() {
            i3 || (i3 = true, l3());
          }, tryUnsubscribe: function() {
            i3 && (i3 = false, u3());
          }, getListeners: () => r3 };
          return c2;
        })(i2);
        return { store: i2, subscription: e3, getServerState: o2 ? () => o2 : void 0 };
      }, [i2, o2]), l2 = e2.useMemo(() => i2.getState(), [i2]);
      oi(() => {
        const { subscription: e3 } = a2;
        return e3.onStateChange = e3.notifyNestedSubs, e3.trySubscribe(), l2 !== i2.getState() && e3.notifyNestedSubs(), () => {
          e3.tryUnsubscribe(), e3.onStateChange = void 0;
        };
      }, [a2, l2]);
      const u2 = r2 || ui;
      return e2.createElement(u2.Provider, { value: a2 }, n2);
    };
    function si(t3 = ui) {
      return function() {
        return e2.useContext(t3);
      };
    }
    var fi = si();
    function di(e3 = ui) {
      const t3 = e3 === ui ? fi : si(e3), n2 = () => {
        const { store: e4 } = t3();
        return e4;
      };
      return Object.assign(n2, { withTypes: () => n2 }), n2;
    }
    var pi = di();
    function hi(e3 = ui) {
      const t3 = e3 === ui ? pi : di(e3), n2 = () => t3().dispatch;
      return Object.assign(n2, { withTypes: () => n2 }), n2;
    }
    var vi = hi(), mi = (e3, t3) => e3 === t3;
    function yi(t3 = ui) {
      const n2 = t3 === ui ? fi : si(t3), r2 = (t4, r3 = {}) => {
        const { equalityFn: o2 = mi } = "function" == typeof r3 ? { equalityFn: r3 } : r3, i2 = n2(), { store: a2, subscription: l2, getServerState: u2 } = i2, c2 = (e2.useRef(true), e2.useCallback({ [t4.name](e3) {
          return t4(e3);
        } }[t4.name], [t4])), s2 = (0, ei.useSyncExternalStoreWithSelector)(l2.addNestedSub, a2.getState, u2 || a2.getState, c2, o2);
        return e2.useDebugValue(s2), s2;
      };
      return Object.assign(r2, { withTypes: () => r2 }), r2;
    }
    var gi = yi();
    function bi(e3) {
      return `Minified Redux error #${e3}; visit https://redux.js.org/Errors?code=${e3} for the full message or use the non-minified dev environment for full errors. `;
    }
    var wi, Ei = (() => "function" == typeof Symbol && Symbol.observable || "@@observable")(), Si = () => Math.random().toString(36).substring(7).split("").join("."), ki = { INIT: `@@redux/INIT${Si()}`, REPLACE: `@@redux/REPLACE${Si()}`, PROBE_UNKNOWN_ACTION: () => `@@redux/PROBE_UNKNOWN_ACTION${Si()}` };
    function xi(e3, t3, n2) {
      if ("function" != typeof e3) throw new Error(bi(2));
      if ("function" == typeof t3 && "function" == typeof n2 || "function" == typeof n2 && "function" == typeof arguments[3]) throw new Error(bi(0));
      if ("function" == typeof t3 && void 0 === n2 && (n2 = t3, t3 = void 0), void 0 !== n2) {
        if ("function" != typeof n2) throw new Error(bi(1));
        return n2(xi)(e3, t3);
      }
      let r2 = e3, o2 = t3, i2 = /* @__PURE__ */ new Map(), a2 = i2, l2 = 0, u2 = false;
      function c2() {
        a2 === i2 && (a2 = /* @__PURE__ */ new Map(), i2.forEach((e4, t4) => {
          a2.set(t4, e4);
        }));
      }
      function s2() {
        if (u2) throw new Error(bi(3));
        return o2;
      }
      function f2(e4) {
        if ("function" != typeof e4) throw new Error(bi(4));
        if (u2) throw new Error(bi(5));
        let t4 = true;
        c2();
        const n3 = l2++;
        return a2.set(n3, e4), function() {
          if (t4) {
            if (u2) throw new Error(bi(6));
            t4 = false, c2(), a2.delete(n3), i2 = null;
          }
        };
      }
      function d2(e4) {
        if (!(function(e5) {
          if ("object" != typeof e5 || null === e5) return false;
          let t4 = e5;
          for (; null !== Object.getPrototypeOf(t4); ) t4 = Object.getPrototypeOf(t4);
          return Object.getPrototypeOf(e5) === t4 || null === Object.getPrototypeOf(e5);
        })(e4)) throw new Error(bi(7));
        if (void 0 === e4.type) throw new Error(bi(8));
        if ("string" != typeof e4.type) throw new Error(bi(17));
        if (u2) throw new Error(bi(9));
        try {
          u2 = true, o2 = r2(o2, e4);
        } finally {
          u2 = false;
        }
        return (i2 = a2).forEach((e5) => {
          e5();
        }), e4;
      }
      return d2({ type: ki.INIT }), { dispatch: d2, subscribe: f2, getState: s2, replaceReducer: function(e4) {
        if ("function" != typeof e4) throw new Error(bi(10));
        r2 = e4, d2({ type: ki.REPLACE });
      }, [Ei]: function() {
        const e4 = f2;
        return { subscribe(t4) {
          if ("object" != typeof t4 || null === t4) throw new Error(bi(11));
          function n3() {
            const e5 = t4;
            e5.next && e5.next(s2());
          }
          return n3(), { unsubscribe: e4(n3) };
        }, [Ei]() {
          return this;
        } };
      } };
    }
    function Ci(...e3) {
      return 0 === e3.length ? (e4) => e4 : 1 === e3.length ? e3[0] : e3.reduce((e4, t3) => (...n2) => e4(t3(...n2)));
    }
    function Oi(e3, ...t3) {
      return e3;
    }
    function Pi(e3) {
      return ({ dispatch: t3, getState: n2 }) => (r2) => (o2) => "function" == typeof o2 ? o2(t3, n2, e3) : r2(o2);
    }
    !(function(e3) {
      e3.Pending = "pending", e3.Fulfilled = "fulfilled", e3.Rejected = "rejected", e3.Settled = "settled";
    })(wi || (wi = {}));
    var Ti = Pi(), Ni = Pi;
    function Ai(e3, t3) {
      function n2(...n3) {
        if (t3) {
          const r2 = t3(...n3);
          if (!$(r2)) return Object.keys(r2).includes("__reason__") ? { type: e3, reason: r2.__reason__ } : { type: e3, payload: r2 };
        }
        return { type: e3 };
      }
      return n2.type = e3, n2;
    }
    function Ri(e3, t3) {
      return `${e3}::${t3}`;
    }
    function _i(e3) {
      for (var t3 = arguments.length, n2 = Array(t3 > 1 ? t3 - 1 : 0), r2 = 1; r2 < t3; r2++) n2[r2 - 1] = arguments[r2];
      throw Error("[Immer] minified error nr: " + e3 + (n2.length ? " " + n2.map(function(e4) {
        return "'" + e4 + "'";
      }).join(",") : "") + ". Find the full error at: https://bit.ly/3cXEKWf");
    }
    function ji(e3) {
      return !!e3 && !!e3[ga];
    }
    function Li(e3) {
      var t3;
      return !!e3 && ((function(e4) {
        if (!e4 || "object" != typeof e4) return false;
        var t4 = Object.getPrototypeOf(e4);
        if (null === t4) return true;
        var n2 = Object.hasOwnProperty.call(t4, "constructor") && t4.constructor;
        return n2 === Object || "function" == typeof n2 && Function.toString.call(n2) === ba;
      })(e3) || Array.isArray(e3) || !!e3[ya] || !!(null === (t3 = e3.constructor) || void 0 === t3 ? void 0 : t3[ya]) || Mi(e3) || Ui(e3));
    }
    function Di(e3, t3, n2) {
      void 0 === n2 && (n2 = false), 0 === Ii(e3) ? (n2 ? Object.keys : wa)(e3).forEach(function(r2) {
        n2 && "symbol" == typeof r2 || t3(r2, e3[r2], e3);
      }) : e3.forEach(function(n3, r2) {
        return t3(r2, n3, e3);
      });
    }
    function Ii(e3) {
      var t3 = e3[ga];
      return t3 ? t3.i > 3 ? t3.i - 4 : t3.i : Array.isArray(e3) ? 1 : Mi(e3) ? 2 : Ui(e3) ? 3 : 0;
    }
    function zi(e3, t3) {
      return 2 === Ii(e3) ? e3.has(t3) : Object.prototype.hasOwnProperty.call(e3, t3);
    }
    function Fi(e3, t3, n2) {
      var r2 = Ii(e3);
      2 === r2 ? e3.set(t3, n2) : 3 === r2 ? e3.add(n2) : e3[t3] = n2;
    }
    function Mi(e3) {
      return pa && e3 instanceof Map;
    }
    function Ui(e3) {
      return ha && e3 instanceof Set;
    }
    function Bi(e3) {
      return e3.o || e3.t;
    }
    function Hi(e3) {
      if (Array.isArray(e3)) return Array.prototype.slice.call(e3);
      var t3 = Ea(e3);
      delete t3[ga];
      for (var n2 = wa(t3), r2 = 0; r2 < n2.length; r2++) {
        var o2 = n2[r2], i2 = t3[o2];
        false === i2.writable && (i2.writable = true, i2.configurable = true), (i2.get || i2.set) && (t3[o2] = { configurable: true, writable: true, enumerable: i2.enumerable, value: e3[o2] });
      }
      return Object.create(Object.getPrototypeOf(e3), t3);
    }
    function Wi(e3, t3) {
      return void 0 === t3 && (t3 = false), $i(e3) || ji(e3) || !Li(e3) || (Ii(e3) > 1 && (e3.set = e3.add = e3.clear = e3.delete = qi), Object.freeze(e3), t3 && Di(e3, function(e4, t4) {
        return Wi(t4, true);
      }, true)), e3;
    }
    function qi() {
      _i(2);
    }
    function $i(e3) {
      return null == e3 || "object" != typeof e3 || Object.isFrozen(e3);
    }
    function Vi(e3) {
      var t3 = Sa[e3];
      return t3 || _i(18, e3), t3;
    }
    function Gi() {
      return fa;
    }
    function Ki(e3, t3) {
      t3 && (Vi("Patches"), e3.u = [], e3.s = [], e3.v = t3);
    }
    function Qi(e3) {
      Yi(e3), e3.p.forEach(Ji), e3.p = null;
    }
    function Yi(e3) {
      e3 === fa && (fa = e3.l);
    }
    function Xi(e3) {
      return fa = { p: [], l: fa, h: e3, m: true, _: 0 };
    }
    function Ji(e3) {
      var t3 = e3[ga];
      0 === t3.i || 1 === t3.i ? t3.j() : t3.g = true;
    }
    function Zi(e3, t3) {
      t3._ = t3.p.length;
      var n2 = t3.p[0], r2 = void 0 !== e3 && e3 !== n2;
      return t3.h.O || Vi("ES5").S(t3, e3, r2), r2 ? (n2[ga].P && (Qi(t3), _i(4)), Li(e3) && (e3 = ea(t3, e3), t3.l || na(t3, e3)), t3.u && Vi("Patches").M(n2[ga].t, e3, t3.u, t3.s)) : e3 = ea(t3, n2, []), Qi(t3), t3.u && t3.v(t3.u, t3.s), e3 !== ma ? e3 : void 0;
    }
    function ea(e3, t3, n2) {
      if ($i(t3)) return t3;
      var r2 = t3[ga];
      if (!r2) return Di(t3, function(o3, i3) {
        return ta(e3, r2, t3, o3, i3, n2);
      }, true), t3;
      if (r2.A !== e3) return t3;
      if (!r2.P) return na(e3, r2.t, true), r2.t;
      if (!r2.I) {
        r2.I = true, r2.A._--;
        var o2 = 4 === r2.i || 5 === r2.i ? r2.o = Hi(r2.k) : r2.o, i2 = o2, a2 = false;
        3 === r2.i && (i2 = new Set(o2), o2.clear(), a2 = true), Di(i2, function(t4, i3) {
          return ta(e3, r2, o2, t4, i3, n2, a2);
        }), na(e3, o2, false), n2 && e3.u && Vi("Patches").N(r2, n2, e3.u, e3.s);
      }
      return r2.o;
    }
    function ta(e3, t3, n2, r2, o2, i2, a2) {
      if (ji(o2)) {
        var l2 = ea(e3, o2, i2 && t3 && 3 !== t3.i && !zi(t3.R, r2) ? i2.concat(r2) : void 0);
        if (Fi(n2, r2, l2), !ji(l2)) return;
        e3.m = false;
      } else a2 && n2.add(o2);
      if (Li(o2) && !$i(o2)) {
        if (!e3.h.D && e3._ < 1) return;
        ea(e3, o2), t3 && t3.A.l || na(e3, o2);
      }
    }
    function na(e3, t3, n2) {
      void 0 === n2 && (n2 = false), !e3.l && e3.h.D && e3.m && Wi(t3, n2);
    }
    function ra(e3, t3) {
      var n2 = e3[ga];
      return (n2 ? Bi(n2) : e3)[t3];
    }
    function oa(e3, t3) {
      if (t3 in e3) for (var n2 = Object.getPrototypeOf(e3); n2; ) {
        var r2 = Object.getOwnPropertyDescriptor(n2, t3);
        if (r2) return r2;
        n2 = Object.getPrototypeOf(n2);
      }
    }
    function ia(e3) {
      e3.P || (e3.P = true, e3.l && ia(e3.l));
    }
    function aa(e3) {
      e3.o || (e3.o = Hi(e3.t));
    }
    function la(e3, t3, n2) {
      var r2 = Mi(t3) ? Vi("MapSet").F(t3, n2) : Ui(t3) ? Vi("MapSet").T(t3, n2) : e3.O ? (function(e4, t4) {
        var n3 = Array.isArray(e4), r3 = { i: n3 ? 1 : 0, A: t4 ? t4.A : Gi(), P: false, I: false, R: {}, l: t4, t: e4, k: null, o: null, j: null, C: false }, o2 = r3, i2 = ka;
        n3 && (o2 = [r3], i2 = xa);
        var a2 = Proxy.revocable(o2, i2), l2 = a2.revoke, u2 = a2.proxy;
        return r3.k = u2, r3.j = l2, u2;
      })(t3, n2) : Vi("ES5").J(t3, n2);
      return (n2 ? n2.A : Gi()).p.push(r2), r2;
    }
    function ua(e3) {
      return ji(e3) || _i(22, e3), (function e4(t3) {
        if (!Li(t3)) return t3;
        var n2, r2 = t3[ga], o2 = Ii(t3);
        if (r2) {
          if (!r2.P && (r2.i < 4 || !Vi("ES5").K(r2))) return r2.t;
          r2.I = true, n2 = ca(t3, o2), r2.I = false;
        } else n2 = ca(t3, o2);
        return Di(n2, function(t4, o3) {
          r2 && (function(e5, t5) {
            return 2 === Ii(e5) ? e5.get(t5) : e5[t5];
          })(r2.t, t4) === o3 || Fi(n2, t4, e4(o3));
        }), 3 === o2 ? new Set(n2) : n2;
      })(e3);
    }
    function ca(e3, t3) {
      switch (t3) {
        case 2:
          return new Map(e3);
        case 3:
          return Array.from(e3);
      }
      return Hi(e3);
    }
    var sa, fa, da = "undefined" != typeof Symbol && "symbol" == typeof Symbol("x"), pa = "undefined" != typeof Map, ha = "undefined" != typeof Set, va = "undefined" != typeof Proxy && void 0 !== Proxy.revocable && "undefined" != typeof Reflect, ma = da ? Symbol.for("immer-nothing") : ((sa = {})["immer-nothing"] = true, sa), ya = da ? Symbol.for("immer-draftable") : "__$immer_draftable", ga = da ? Symbol.for("immer-state") : "__$immer_state", ba = ("undefined" != typeof Symbol && Symbol.iterator, "" + Object.prototype.constructor), wa = "undefined" != typeof Reflect && Reflect.ownKeys ? Reflect.ownKeys : void 0 !== Object.getOwnPropertySymbols ? function(e3) {
      return Object.getOwnPropertyNames(e3).concat(Object.getOwnPropertySymbols(e3));
    } : Object.getOwnPropertyNames, Ea = Object.getOwnPropertyDescriptors || function(e3) {
      var t3 = {};
      return wa(e3).forEach(function(n2) {
        t3[n2] = Object.getOwnPropertyDescriptor(e3, n2);
      }), t3;
    }, Sa = {}, ka = { get: function(e3, t3) {
      if (t3 === ga) return e3;
      var n2 = Bi(e3);
      if (!zi(n2, t3)) return (function(e4, t4, n3) {
        var r3, o2 = oa(t4, n3);
        return o2 ? "value" in o2 ? o2.value : null === (r3 = o2.get) || void 0 === r3 ? void 0 : r3.call(e4.k) : void 0;
      })(e3, n2, t3);
      var r2 = n2[t3];
      return e3.I || !Li(r2) ? r2 : r2 === ra(e3.t, t3) ? (aa(e3), e3.o[t3] = la(e3.A.h, r2, e3)) : r2;
    }, has: function(e3, t3) {
      return t3 in Bi(e3);
    }, ownKeys: function(e3) {
      return Reflect.ownKeys(Bi(e3));
    }, set: function(e3, t3, n2) {
      var r2 = oa(Bi(e3), t3);
      if (null == r2 ? void 0 : r2.set) return r2.set.call(e3.k, n2), true;
      if (!e3.P) {
        var o2 = ra(Bi(e3), t3), i2 = null == o2 ? void 0 : o2[ga];
        if (i2 && i2.t === n2) return e3.o[t3] = n2, e3.R[t3] = false, true;
        if ((function(e4, t4) {
          return e4 === t4 ? 0 !== e4 || 1 / e4 == 1 / t4 : e4 != e4 && t4 != t4;
        })(n2, o2) && (void 0 !== n2 || zi(e3.t, t3))) return true;
        aa(e3), ia(e3);
      }
      return e3.o[t3] === n2 && (void 0 !== n2 || t3 in e3.o) || Number.isNaN(n2) && Number.isNaN(e3.o[t3]) || (e3.o[t3] = n2, e3.R[t3] = true), true;
    }, deleteProperty: function(e3, t3) {
      return void 0 !== ra(e3.t, t3) || t3 in e3.t ? (e3.R[t3] = false, aa(e3), ia(e3)) : delete e3.R[t3], e3.o && delete e3.o[t3], true;
    }, getOwnPropertyDescriptor: function(e3, t3) {
      var n2 = Bi(e3), r2 = Reflect.getOwnPropertyDescriptor(n2, t3);
      return r2 ? { writable: true, configurable: 1 !== e3.i || "length" !== t3, enumerable: r2.enumerable, value: n2[t3] } : r2;
    }, defineProperty: function() {
      _i(11);
    }, getPrototypeOf: function(e3) {
      return Object.getPrototypeOf(e3.t);
    }, setPrototypeOf: function() {
      _i(12);
    } }, xa = {};
    Di(ka, function(e3, t3) {
      xa[e3] = function() {
        return arguments[0] = arguments[0][0], t3.apply(this, arguments);
      };
    }), xa.deleteProperty = function(e3, t3) {
      return xa.set.call(this, e3, t3, void 0);
    }, xa.set = function(e3, t3, n2) {
      return ka.set.call(this, e3[0], t3, n2, e3[0]);
    };
    var Ca = (function() {
      function e3(e4) {
        var t4 = this;
        this.O = va, this.D = true, this.produce = function(e5, n2, r2) {
          if ("function" == typeof e5 && "function" != typeof n2) {
            var o2 = n2;
            n2 = e5;
            var i2 = t4;
            return function(e6) {
              var t5 = this;
              void 0 === e6 && (e6 = o2);
              for (var r3 = arguments.length, a3 = Array(r3 > 1 ? r3 - 1 : 0), l3 = 1; l3 < r3; l3++) a3[l3 - 1] = arguments[l3];
              return i2.produce(e6, function(e7) {
                var r4;
                return (r4 = n2).call.apply(r4, [t5, e7].concat(a3));
              });
            };
          }
          var a2;
          if ("function" != typeof n2 && _i(6), void 0 !== r2 && "function" != typeof r2 && _i(7), Li(e5)) {
            var l2 = Xi(t4), u2 = la(t4, e5, void 0), c2 = true;
            try {
              a2 = n2(u2), c2 = false;
            } finally {
              c2 ? Qi(l2) : Yi(l2);
            }
            return "undefined" != typeof Promise && a2 instanceof Promise ? a2.then(function(e6) {
              return Ki(l2, r2), Zi(e6, l2);
            }, function(e6) {
              throw Qi(l2), e6;
            }) : (Ki(l2, r2), Zi(a2, l2));
          }
          if (!e5 || "object" != typeof e5) {
            if (void 0 === (a2 = n2(e5)) && (a2 = e5), a2 === ma && (a2 = void 0), t4.D && Wi(a2, true), r2) {
              var s2 = [], f2 = [];
              Vi("Patches").M(e5, a2, s2, f2), r2(s2, f2);
            }
            return a2;
          }
          _i(21, e5);
        }, this.produceWithPatches = function(e5, n2) {
          if ("function" == typeof e5) return function(n3) {
            for (var r3 = arguments.length, o3 = Array(r3 > 1 ? r3 - 1 : 0), i3 = 1; i3 < r3; i3++) o3[i3 - 1] = arguments[i3];
            return t4.produceWithPatches(n3, function(t5) {
              return e5.apply(void 0, [t5].concat(o3));
            });
          };
          var r2, o2, i2 = t4.produce(e5, n2, function(e6, t5) {
            r2 = e6, o2 = t5;
          });
          return "undefined" != typeof Promise && i2 instanceof Promise ? i2.then(function(e6) {
            return [e6, r2, o2];
          }) : [i2, r2, o2];
        }, "boolean" == typeof (null == e4 ? void 0 : e4.useProxies) && this.setUseProxies(e4.useProxies), "boolean" == typeof (null == e4 ? void 0 : e4.autoFreeze) && this.setAutoFreeze(e4.autoFreeze);
      }
      var t3 = e3.prototype;
      return t3.createDraft = function(e4) {
        Li(e4) || _i(8), ji(e4) && (e4 = ua(e4));
        var t4 = Xi(this), n2 = la(this, e4, void 0);
        return n2[ga].C = true, Yi(t4), n2;
      }, t3.finishDraft = function(e4, t4) {
        var n2 = (e4 && e4[ga]).A;
        return Ki(n2, t4), Zi(void 0, n2);
      }, t3.setAutoFreeze = function(e4) {
        this.D = e4;
      }, t3.setUseProxies = function(e4) {
        e4 && !va && _i(20), this.O = e4;
      }, t3.applyPatches = function(e4, t4) {
        var n2;
        for (n2 = t4.length - 1; n2 >= 0; n2--) {
          var r2 = t4[n2];
          if (0 === r2.path.length && "replace" === r2.op) {
            e4 = r2.value;
            break;
          }
        }
        n2 > -1 && (t4 = t4.slice(n2 + 1));
        var o2 = Vi("Patches").$;
        return ji(e4) ? o2(e4, t4) : this.produce(e4, function(e5) {
          return o2(e5, t4);
        });
      }, e3;
    })(), Oa = new Ca(), Pa = Oa.produce;
    function Ta(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function Na(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? Ta(Object(n2), true).forEach(function(t4) {
          Aa(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : Ta(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function Aa(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    Oa.produceWithPatches.bind(Oa), Oa.setAutoFreeze.bind(Oa), Oa.setUseProxies.bind(Oa), Oa.applyPatches.bind(Oa), Oa.createDraft.bind(Oa), Oa.finishDraft.bind(Oa);
    var Ra = Ai("globalErrors/clear", () => ({ errors: [] })), _a = (Ai("app/step/next"), Ai("externalData/set", (e3) => {
      var { data: t3, bootData: n2 } = e3;
      return { data: t3, bootData: n2 };
    })), ja = Ai("connection/set", (e3) => {
      var { data: t3 } = e3;
      return { data: t3 };
    }), La = Ai("showAlert/set", (e3) => e3), Da = Ai("showGenerateNewCode/set", (e3) => e3), Ia = Ai("verificationStep/set", (e3) => e3), za = Ai("initialSize/set", (e3) => e3), Fa = Ai("step/update", (e3, t3) => ({ step: e3, data: Na({}, t3) })), Ma = (Ai("verifyOption/set", (e3) => e3), Ai("phoneMode/set", (e3) => e3)), Ua = Ai("pending/set", (e3) => e3), Ba = Ai("skip/set", (e3) => e3), Ha = Ai("checkbox/set", (e3, t3) => ({ step: e3, checked: t3 })), Wa = Ai("backbutton/set"), qa = (n(14166), n(65989), n(97718), (e3) => {
      var t3, n2, r2;
      return (null !== (t3 = null == e3 ? void 0 : e3.serviceErrors) && void 0 !== t3 ? t3 : []).concat(null !== (n2 = null == e3 ? void 0 : e3.validationErrors) && void 0 !== n2 ? n2 : []).concat(null !== (r2 = null == e3 ? void 0 : e3.service_errors) && void 0 !== r2 ? r2 : []);
    }), $a = (e3) => ["serviceErrors", "validationErrors", "service_errors"].includes(e3), Va = function() {
      var e3 = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {};
      return e3 ? qa(e3).concat(Object.keys(e3).filter(G($a)).flatMap((t3) => qa(e3[t3]))) : [];
    };
    function Ga(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function Ka(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? Ga(Object(n2), true).forEach(function(t4) {
          Qa(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : Ga(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function Qa(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function Ya(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function Xa(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? Ya(Object(n2), true).forEach(function(t4) {
          Ja(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : Ya(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function Ja(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    var Za = [{ name: "NormalizeServerErrorsPlugin", responseInterceptor(e3) {
      return !V(t3 = e3.data) && Object.keys(t3).some((e4) => $a(e4) || !V(t3[e4]) && Object.keys(t3[e4]).some($a)) ? Ka(Ka({}, e3), {}, { errors: Va(e3.data) }) : e3;
      var t3;
    }, shouldRunOnlyOnce: true }, { name: "sillyRequestOptions", requestInterceptor: (e3) => V(e3.data) ? Xa(Xa({}, e3), {}, { data: {}, headers: Xa(Xa({}, e3.headers), {}, { "Content-Type": "application/json" }) }) : e3 }];
    for (var el of Za) Se.pushPlugin(el);
    class tl extends re {
      constructor() {
        super(...arguments), (function(e3, t3, n2) {
          (t3 = (function(e4) {
            var t4 = (function(e5) {
              if ("object" != typeof e5 || !e5) return e5;
              var t5 = e5[Symbol.toPrimitive];
              if (void 0 !== t5) {
                var n3 = t5.call(e5, "string");
                if ("object" != typeof n3) return n3;
                throw new TypeError("@@toPrimitive must return a primitive value.");
              }
              return String(e5);
            })(e4);
            return "symbol" == typeof t4 ? t4 : t4 + "";
          })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2;
        })(this, "message", "Unexpected Response");
      }
    }
    var nl = Object.freeze({ serviceClient: Se, StatusCode: B, unexpected: (e3) => new tl(e3) });
    function rl(e3) {
      return e3 instanceof re ? ol(e3.response) : e3 instanceof Error ? [e3] : ol(e3);
    }
    function ol(e3) {
      var t3;
      return (null !== (t3 = e3.errors) && void 0 !== t3 ? t3 : [{ message: "Unexpected HTTP response: ".concat(e3.status, " ").concat(e3.statusText), isUnexpectedResponseError: true }]).map((e4) => Object.assign(new Error(), e4, { isResponseError: true }));
    }
    function il(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function al(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? il(Object(n2), true).forEach(function(t4) {
          ll(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : il(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function ll(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    n(12345);
    var ul = (e3) => e3.match(/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/), cl = function(e3, t3) {
      var n2, r2, o2, i2, a2 = !(arguments.length > 2 && void 0 !== arguments[2]) || arguments[2];
      if (null !== (n2 = window.AppleID) && void 0 !== n2 && null !== (n2 = n2.service) && void 0 !== n2 && null !== (n2 = n2.phoneFormat) && void 0 !== n2 && n2.formatPhoneNumberWithDetail) {
        var l2 = null === (r2 = window.AppleID) || void 0 === r2 || null === (r2 = r2.service) || void 0 === r2 || null === (r2 = r2.phoneFormat) || void 0 === r2 ? void 0 : r2.formatPhoneNumberWithDetail(e3, t3, a2);
        return al(al({}, l2), {}, { name: (null == l2 || null === (o2 = l2.nationalNumber) || void 0 === o2 ? void 0 : o2.toString()) || e3, countryCode: (null == l2 ? void 0 : l2.country) || "US", countryDialCode: (null == l2 || null === (i2 = l2.countryCallingCode) || void 0 === i2 ? void 0 : i2.toString()) || "1" });
      }
    }, sl = function(e3, t3) {
      const [n2, r2, o2, i2] = [l2(Ri(e3, wi.Pending)), l2(Ri(e3, wi.Fulfilled), (e4) => e4), l2(Ri(e3, wi.Rejected), (e4) => ({ __reason__: e4 })), l2(Ri(e3, wi.Settled))], a2 = (e4) => async (a3, l3, u2) => {
        a3(n2());
        try {
          const n3 = await t3(e4, { ...u2, dispatch: (...e5) => (async function(e6) {
            const t4 = await e6;
            return "function" == typeof (null == t4 ? void 0 : t4.unwrap) ? t4.unwrap() : t4;
          })(a3(...e5)), getState: l3 });
          return a3(r2(n3)), { unwrap: () => n3 };
        } catch (e5) {
          return a3(o2(e5)), { unwrap() {
            throw e5;
          } };
        } finally {
          a3(i2());
        }
      };
      return a2.fulfilled = r2.type, a2.pending = n2.type, a2.rejected = o2.type, a2.settled = i2.type, a2;
      function l2(...e4) {
        return Ai(...e4);
      }
    };
    function fl(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function dl(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? fl(Object(n2), true).forEach(function(t4) {
          pl(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : fl(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function pl(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function hl(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var vl = sl("reachable/add", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              hl(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              hl(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var n2, { serviceClient: r2, StatusCode: o2, unexpected: i2, getState: a2 } = t3, l2 = a2().verifyWeb.userData.name, u2 = a2().verifyWeb.showInterstitialCreatePage, c2 = null === (n2 = a2().verifyWeb.addReachable) || void 0 === n2 || null === (n2 = n2.features) || void 0 === n2 ? void 0 : n2.skipVerification, s2 = e4;
        if (s2.emailVerification) l2 && (e4 = dl(dl({}, s2), {}, { emailVerification: dl(dl({}, s2.emailVerification), {}, { name: l2 }) }));
        else if (l2) {
          var f2 = e4;
          e4 = dl(dl({}, f2), {}, { phoneNumberVerification: dl(dl({}, f2.phoneNumberVerification), {}, { name: l2 }) });
        }
        (u2 || c2) && (e4.sendVerificationCode = false);
        var d2 = yield r2.post({ url: "/verification/initiate", data: e4 });
        if (d2.status === o2.OK) return dl(dl({}, d2.data), {}, { uEInd: d2.headers["x-apple-i-require-ue-ind"] });
        throw i2(d2);
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })());
    function ml(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var yl = sl("reachable/email/add", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              ml(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              ml(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var n2, { serviceClient: r2, StatusCode: o2, unexpected: i2, getState: a2 } = t3, { currentStep: l2, steps: u2, userData: c2 } = a2().verifyWeb, s2 = null === (n2 = u2[l2]) || void 0 === n2 ? void 0 : n2.magicLink, f2 = yield r2.post({ url: "/verification/generate/email", data: lt({ email: { address: e4.address }, resend: e4.resend, name: c2.name, magicLink: s2 }) });
        if (f2.status === o2.OK) return f2.data;
        throw i2(f2);
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })());
    function gl(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function bl(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? gl(Object(n2), true).forEach(function(t4) {
          wl(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : gl(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function wl(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function El(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var Sl = sl("reachablePhone/add", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              El(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              El(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var { serviceClient: n2, StatusCode: r2, unexpected: o2, getState: i2 } = t3, a2 = yield n2.post({ url: "/verification/generate/phone", data: lt(bl(bl({}, e4), {}, { name: i2().verifyWeb.userData.name })) });
        if (a2.status === r2.OK) return a2.data;
        throw o2(a2);
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })()), kl = {}, xl = {}, Cl = {}, Ol = (e3) => (xl[e3] || (xl[e3] = []), xl[e3]), Pl = (e3) => {
      xl[e3] && (xl[e3] = []);
    }, Tl = (e3, t3) => {
      if (kl[e3] && (kl[e3] = null), ((e4, t4) => {
        Ol(e4).forEach((e5) => e5(t4));
      })(e3, t3 || "closed"), Pl(e3), Cl[e3]) {
        var n2 = Cl[e3];
        n2 && clearInterval(n2), Cl[e3] = null;
      }
    }, Nl = (e3, t3) => {
      var n2 = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width, r2 = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;
      return { left: n2 / 2 - e3 / 2 + window.screenLeft, top: r2 / 2 - t3 / 2 + window.screenTop };
    }, Al = 700, Rl = 700, _l = Nl(Al, Rl).left, jl = Nl(Al, Rl).top, Ll = { strWindowFeatures: "width=".concat(Al, ",height=").concat(Rl, ",left=").concat(_l, ",top=").concat(jl, ",resizable=no,location=no,menubar=no"), windowName: "AppleAuthentication" }, Dl = (e3) => {
      ((e4, t3) => {
        var n2 = kl[e4];
        n2 && ("function" == typeof n2.close && n2.close(), Tl(e4, t3));
      })(Ll.windowName, e3);
    }, Il = (e3) => (Dl("closed_trigger_new_signing_flow"), ((e4, t3, n2) => {
      var r2 = window.open(e4, t3, n2);
      return r2 && (kl[t3] = r2, Cl[t3] = setInterval(() => {
        r2.closed && Tl(t3, "closed_by_user");
      }, 300)), r2;
    })(e3, Ll.windowName, Ll.strWindowFeatures)), zl = () => Pl(Ll.windowName);
    function Fl(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var Ml = sl("popupConnection/start", (e3) => new Promise((t3) => {
      var n2 = new d(e3.popupWindow, e3.destinationDomain, { namespace: "FedLogin" });
      n2.open(), n2.on("result", (e4) => {
        t3(e4);
      });
    })), Ul = sl("fedAuthThunk/start", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              Fl(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              Fl(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var n2, r2, o2, { dispatch: i2, getState: a2 } = t3, l2 = "FedLogin";
        Al = (n2 = { width: 700, height: 700, windowName: l2 }).width, Rl = n2.height, _l = n2.left ? n2.left : Nl(Al, Rl).left, jl = n2.top ? n2.top : Nl(Al, Rl).top, Ll.windowName = n2.windowName ? n2.windowName : Ll.windowName, Ll.strWindowFeatures = "width=".concat(Al, ",height=").concat(Rl, ",left=").concat(_l, ",top=").concat(jl, ",resizable=no,location=no,menubar=no"), o2 = () => {
          zl(), i2(Ua(false));
        }, ((e5, t4) => {
          Ol(e5).push(t4);
        })(Ll.windowName, o2);
        var u2 = a2().verifyWeb.federation.federatedIdpRequest.requestParams, c2 = new URL(u2.redirect_uri).origin;
        if ("GET" === a2().verifyWeb.federation.federatedIdpRequest.httpMethod) {
          var s2 = new URLSearchParams(u2);
          r2 = Il(a2().verifyWeb.federation.federatedIdpRequest.idPUrl + "?" + s2.toString());
        } else {
          var f2 = window.document.createElement("form");
          f2.method = "post", f2.action = a2().verifyWeb.federation.federatedIdpRequest.idPUrl, f2.target = l2;
          var d2 = a2().verifyWeb.federation.federatedIdpRequest.requestParams;
          for (var p2 in d2) {
            var h2 = window.document.createElement("input");
            h2.type = "hidden", h2.value = d2[p2], h2.name = p2, f2.appendChild(h2);
          }
          window.document.body.appendChild(f2), (r2 = Il(window.origin)) && f2.submit();
        }
        if (r2) {
          var v2 = yield i2(Ml({ popupWindow: r2, destinationDomain: c2 }));
          if ((() => {
            return e5 = Ll.windowName, !!kl[e5];
            var e5;
          })() && (zl(), Dl(l2)), v2.error) throw v2;
          return v2;
        }
        throw new Error("Error");
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })());
    function Bl(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var Hl = sl("fed/complete", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              Bl(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              Bl(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var { serviceClient: n2 } = t3, r2 = yield n2.post({ url: "/verification/federate/complete", headers: { "X-Apple-Verification-Complete": "true" }, data: e4 });
        switch (r2.status) {
          case B.NoContent:
          case B.OK:
            return r2;
          default:
            throw r2;
        }
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })());
    function Wl(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function ql(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? Wl(Object(n2), true).forEach(function(t4) {
          $l(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : Wl(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function $l(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function Vl(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var Gl = sl("fed/init", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              Vl(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              Vl(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var { serviceClient: n2, getState: r2 } = t3, o2 = yield n2.get({ url: "/verification/federate/init", data: ql({}, r2().verifyWeb.externalData.options.federation) });
        switch (o2.status) {
          case B.NoContent:
          case B.OK:
            return o2.data;
          default:
            throw o2;
        }
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })());
    function Kl(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var Ql = sl("sendNewCode/done", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              Kl(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              Kl(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var { dispatch: n2, getState: r2 } = t3, { verificationCode: o2, mode: i2, isStepAdd: a2, shouldCheckUserExist: l2 } = r2().verifyWeb, u2 = o2;
        a2 && l2 ? "email" === u2.id ? yield n2(vl({ emailVerification: { email: { address: u2.name } } })) : "phone" === u2.id && (yield n2(vl({ phoneNumberVerification: { phoneNumber: { countryCode: u2.countryCode, countryDialCode: u2.countryDialCode, number: u2.name }, mode: i2 } }))) : "email" === u2.id ? yield n2(yl({ address: u2.name, resend: e4 || void 0 })) : "phone" === u2.id && (yield n2(Sl({ phoneNumber: { countryCode: u2.countryCode, countryDialCode: u2.countryDialCode, number: u2.name }, resend: e4 || void 0, mode: i2 })));
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })());
    function Yl(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var Xl = sl("email/verify/skip", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              Yl(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              Yl(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var n2, { serviceClient: r2, getState: o2 } = t3, i2 = {};
        e4.isComplete && (i2["X-Apple-Verification-Complete"] = "true"), delete e4.isComplete;
        var a2 = yield r2.post({ url: "/verification/skip/email", headers: i2, data: lt({ email: { address: e4.emailId }, name: null === (n2 = o2().verifyWeb.externalData.options.data) || void 0 === n2 ? void 0 : n2.name, verificationInfo: { id: e4.encryptedCode } }) });
        switch (a2.status) {
          case B.NoContent:
          case B.OK:
            return a2;
          default:
            throw a2;
        }
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })());
    function Jl(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function Zl(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? Jl(Object(n2), true).forEach(function(t4) {
          eu(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : Jl(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function eu(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function tu(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var nu = sl("phone/verify/skip", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              tu(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              tu(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var n2, { serviceClient: r2, getState: o2 } = t3, i2 = {};
        e4.isComplete && (i2["X-Apple-Verification-Complete"] = "true"), delete e4.isComplete;
        var a2 = yield r2.post({ url: "/verification/skip/phone", headers: i2, data: lt(Zl(Zl({}, e4), {}, { name: null === (n2 = o2().verifyWeb.externalData.options.data) || void 0 === n2 ? void 0 : n2.name })) });
        switch (a2.status) {
          case B.NoContent:
          case B.OK:
            return a2;
          default:
            throw a2;
        }
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })());
    function ru(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var ou = sl("verifyThunk/skip", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              ru(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              ru(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var { dispatch: n2, getState: r2 } = t3, { verificationCode: o2, currentStep: i2, steps: a2, mode: l2, encryptedCode: u2 } = r2().verifyWeb, c2 = i2 === a2.length - 1, s2 = o2;
        "email" === o2.id ? yield n2(Xl({ encryptedCode: u2, emailId: s2.name, isComplete: c2 })) : "phone" === s2.id && (yield n2(nu({ phoneNumber: { countryDialCode: s2.countryDialCode, countryCode: s2.countryCode, number: s2.name }, mode: l2, isComplete: c2 })));
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })());
    function iu(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    n(27961);
    var au = sl("submitReachable/done", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              iu(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              iu(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var n2, { getState: r2, dispatch: o2 } = t3, { rpc: i2 } = r2().verifyWeb, { procedures: a2 } = r2().verifyWeb.externalData;
        a2 && a2.find((e5) => "HandleSubmit" === e5) && i2 && (yield o2(lu({ type: e4.type, name: null === (n2 = e4.step) || void 0 === n2 ? void 0 : n2.name, rpc: i2 }))), e4.type, o2(Fa(e4.step, { name: e4.data.name })), void 0 !== e4.checkboxChecked && o2(Ha("add", e4.checkboxChecked)), yield o2(Ql());
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })()), lu = sl("validateReachable/done", (e3) => {
      var { type: t3, name: n2, rpc: r2 } = e3;
      return r2.call("HandleSubmit", { type: t3, handle: n2 });
    });
    function uu(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var cu = sl("verify/complete", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              uu(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              uu(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var { serviceClient: n2 } = t3, r2 = yield n2.post({ url: "/verification/complete" });
        if (r2.status === B.OK) return r2.data;
        throw r2;
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })());
    function su(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var fu = sl("emailCode/verify", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              su(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              su(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var n2, { serviceClient: r2, getState: o2 } = t3, i2 = {};
        e4.isComplete && (i2["X-Apple-Verification-Complete"] = "true");
        var a2 = yield r2.post({ url: "/verification/validate/email", headers: i2, data: lt({ email: { address: e4.emailId }, name: null === (n2 = o2().verifyWeb.externalData.options.data) || void 0 === n2 ? void 0 : n2.name, verificationInfo: { id: e4.encryptedCode, answer: e4.secretCode } }) });
        switch (a2.status) {
          case B.NoContent:
          case B.OK:
            return a2;
          default:
            throw a2;
        }
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })());
    function du(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function pu(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? du(Object(n2), true).forEach(function(t4) {
          hu(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : du(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function hu(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function vu(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var mu = sl("phoneCode/verify", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              vu(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              vu(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var n2, { serviceClient: r2, getState: o2 } = t3, i2 = {};
        e4.isComplete && (i2["X-Apple-Verification-Complete"] = "true"), delete e4.isComplete;
        var a2 = yield r2.post({ url: "/verification/validate/phone", headers: i2, data: lt(pu(pu({}, e4), {}, { name: null === (n2 = o2().verifyWeb.externalData.options.data) || void 0 === n2 ? void 0 : n2.name })) });
        switch (a2.status) {
          case B.NoContent:
          case B.OK:
            return a2;
          default:
            throw a2;
        }
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })());
    function yu(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function gu(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? yu(Object(n2), true).forEach(function(t4) {
          bu(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : yu(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function bu(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function wu(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var Eu = sl("click/done", /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              wu(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              wu(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var { dispatch: n2, getState: r2 } = t3, { verificationCode: o2, currentStep: i2, steps: a2, encryptedCode: l2, mode: u2 } = r2().verifyWeb, c2 = o2, s2 = i2 === a2.length - 1;
        c2.name && ("email" === c2.id ? yield n2(fu(gu(gu({}, e4), {}, { encryptedCode: l2, emailId: c2.name, isComplete: s2 }))) : "phone" === c2.id && (yield n2(mu({ phoneNumber: { countryDialCode: c2.countryDialCode, countryCode: c2.countryCode, number: c2.name }, securityCode: e4.secretCode, mode: u2, isComplete: s2 }))), void 0 !== e4.checkboxChecked && n2(Ha("verify", e4.checkboxChecked)));
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })());
    function Su(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    class ku {
      constructor(e3, t3) {
        Su(this, "procedures", {}), Su(this, "id", 1), this.connection = e3, t3.forEach((e4) => {
          this.procedures[e4] = {};
        }), Object.keys(this.procedures).length && e3.on("rpcResponse", (e4) => {
          this.procedures[e4.procedure] && this.procedures[e4.procedure][e4.uid] && (e4.data.isSuccess ? this.procedures[e4.procedure][e4.uid].resolve(e4.data.data) : this.procedures[e4.procedure][e4.uid].reject(e4.data.error), delete this.procedures[e4.procedure][e4.uid]);
        });
      }
      call(e3, t3) {
        var n2, r2 = new Promise((r3, o2) => {
          if (!Object.keys(this.procedures).find((t4) => t4 === e3)) return o2("no procedure");
          n2 = this.id + "", this.connection.emit("rpcRequest", { uid: n2, procedure: e3, data: t3 }), this.procedures[e3][n2] = { resolve: r3, reject: o2 }, this.id++;
        });
        return r2;
      }
    }
    function xu(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function Cu(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? xu(Object(n2), true).forEach(function(t4) {
          Ou(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : xu(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function Ou(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    var Pu, Tu, Nu, Au = { errors: [], federation: { federatedIdpRequest: { idPUrl: "", requestParams: { login_hint: "", scope: "", response_type: "", redirect_uri: "", state: "xxxx", nonce: "", client_id: "" }, httpMethod: "GET" }, federatedAuthIntro: { accountManagementUrl: "", idpName: "", orgType: "", idpUrl: "", orgName: "" }, showFederatedIdpConfirmation: true, federated: true }, externalData: { procedures: [], events: [], options: { frameId: "", verifications: [], token: "", nonce: "", locale: "", theme: { autoThemeAdjust: false, defaultTheme: "light" }, context: "" }, serviceKey: "", redirect_uri: "", devAppDomain: "", features: { mode: "modal", size: "expanded" }, urlContext: "/" }, steps: [], currentStep: 0, verificationType: "email", verificationStep: "verify", showGenerateNewCode: false, pending: false, pendingSendingCode: false, skippingVerification: false, mode: "sms", initialHeight: 0, didSendCode: false, encryptedCode: "", completeResult: {}, shouldUseGlobalErrors: true, showAlert: false, enableErrorAlert: true, errorResult: { isSuccess: false, token: "", error: { id: "1000", message: "" }, nonce: "" }, bootData: { destinationDomain: "" }, verificationCode: { id: "email", name: "" }, addReachable: { description: { text: "" }, nameTextField: { caption: { text: "" } }, features: { skipVerificationOnExist: false } }, initialSize: { height: 0, width: 0 }, selectSkipOption: false, userData: {}, isStepAdd: false, disableSendNewCode: false, showInterstitialCreatePage: false, formattedHandle: "", shouldCheckUserExist: false, rpc: void 0, checkboxData: [] }, Ru = (e3) => {
      var t3 = { "-22981": qr("error_22981"), "-28244": qr("error_28244"), "-21651": qr("error_21651"), "-28230": qr("error_28230"), "-320018": qr("error_320018"), "-320020": qr("error_320020"), "-320019": qr("error_320019"), "-21669": qr("error_21669") };
      return "fallback" !== e3.message && "" !== e3.message && "Error Description not available" !== e3.message || (e3.message = qr("web.error.unknown.description")), e3.code && t3[e3.code] && (e3.message = t3[e3.code]), e3;
    }, _u = (function(e3) {
      const t3 = Object.keys(e3), n2 = {};
      for (let r3 = 0; r3 < t3.length; r3++) {
        const o3 = t3[r3];
        "function" == typeof e3[o3] && (n2[o3] = e3[o3]);
      }
      const r2 = Object.keys(n2);
      let o2;
      try {
        !(function(e4) {
          Object.keys(e4).forEach((t4) => {
            const n3 = e4[t4];
            if (void 0 === n3(void 0, { type: ki.INIT })) throw new Error(bi(12));
            if (void 0 === n3(void 0, { type: ki.PROBE_UNKNOWN_ACTION() })) throw new Error(bi(13));
          });
        })(n2);
      } catch (e4) {
        o2 = e4;
      }
      return function(e4 = {}, t4) {
        if (o2) throw o2;
        let i2 = false;
        const a2 = {};
        for (let o3 = 0; o3 < r2.length; o3++) {
          const l2 = r2[o3], u2 = n2[l2], c2 = e4[l2], s2 = u2(c2, t4);
          if (void 0 === s2) throw t4 && t4.type, new Error(bi(14));
          a2[l2] = s2, i2 = i2 || s2 !== c2;
        }
        return i2 = i2 || r2.length !== Object.keys(e4).length, i2 ? a2 : e4;
      };
    })({ verifyWeb: (Tu = "verifyWeb", Nu = Au, (e3) => Object.defineProperty((t3 = Nu, n2) => Pa(t3, (t4) => e3(t4, n2)), "name", { value: `${Tu}Reducer`, configurable: true }))((e3, t3) => {
      var n2 = () => {
        var t4, n3;
        e3.formattedHandle = null !== (t4 = window.AppleID) && void 0 !== t4 && null !== (t4 = t4.service) && void 0 !== t4 && null !== (t4 = t4.phoneFormat) && void 0 !== t4 && t4.formatPhoneNumber && "phone" === e3.verificationCode.id ? null === (n3 = window.AppleID) || void 0 === n3 || null === (n3 = n3.service) || void 0 === n3 || null === (n3 = n3.phoneFormat) || void 0 === n3 ? void 0 : n3.formatPhoneNumber(e3.verificationCode.name, e3.verificationCode.countryCode, false) : e3.verificationCode.name;
      }, r2 = () => {
        var t4 = () => {
          var t5, n3;
          return null !== (t5 = e3.externalData.options.federation) && void 0 !== t5 && t5.id_token ? (e3.verificationStep = "fedAuthComplete", true) : !(null === (n3 = e3.externalData.options.federation) || void 0 === n3 || !n3.idp || (e3.verificationStep = "fedAuth", 0));
        };
        if (e3.currentStep >= e3.steps.length) if (0 === e3.currentStep) {
          if (t4()) return;
          e3.verificationStep = "fatalError", e3.errorResult.error = { id: "1006" };
        } else Object.keys(e3.completeResult).length ? e3.verificationStep = "complete" : e3.verificationStep = "verificationDone";
        else {
          if (!(() => {
            var t5 = e3.steps[e3.currentStep];
            if ("tier" === t5.id) {
              var n3 = t5;
              if (2 === n3.expectedTier) {
                var r4, o4 = Cu(Cu({}, n3), {}, { id: "email", hero: { glyph: "none" }, noBorder: true, modalTitle: false, title: { text: qr("web.sharing.verify.email.title") }, description2: { text: qr("web.sharing.verify.email.description", "{handle}") }, handleTextField: n3.handleTextField, didNotGetCode: { popup: false, submitButton: { buttonProps: { color: "primary" } } }, didNotGetCodeButtonLink: { alignment: "left", text: qr("web.sharing.verify.email.resend.code.link") }, optionalConfig: { features: { skipVerificationCallback: true } }, footer: { text: "{signin}[".concat(qr("web.sharing.verify.email.signin.link"), "]"), alignment: "left" } });
                return n3.name ? (e3.verificationStep = "verify", e3.shouldUseGlobalErrors = false, e3.isStepAdd = false) : o4.addReachable = { modalTitle: false, hero: n3.hero, title: n3.title, description: n3.description || { textProps: { typography: "intro" }, text: qr("web.sharing.addreachable.description.photo") }, handleTextField: n3.handleTextField, privacy: { alignment: "left" }, footer: n3.footer, submitButton: { buttonProps: { color: "primary" } }, headerBackButton: null === (r4 = n3.addReachable) || void 0 === r4 ? void 0 : r4.headerBackButton }, e3.steps[e3.currentStep] = o4, true;
              }
              return e3.shouldUseGlobalErrors = true, e3.errorResult.error = { id: "1000" }, false;
            }
            return true;
          })()) return;
          var r3 = e3.steps[e3.currentStep].name;
          if (e3.verificationType = e3.steps[e3.currentStep].id, t4()) return;
          if (r3) {
            if ("emailOrPhone" === e3.steps[e3.currentStep].id) if (ul(r3)) e3.steps[e3.currentStep].id = "email";
            else {
              var o3, i3 = e3.steps[e3.currentStep].countryCode, a3 = cl(r3, i3 || (null === (o3 = e3.externalData.options.locale) || void 0 === o3 ? void 0 : o3.split("_")[1]), !i3);
              if (a3 && a3.didFormat) {
                var l3 = e3.steps[e3.currentStep];
                l3.id = "phone", l3.countryCode = a3.countryCode, l3.countryDialCode = a3.countryDialCode;
              }
            }
            else n2();
            e3.verificationStep = "verify";
            var u3 = e3.steps[e3.currentStep];
            "tier" !== u3.id && (e3.verificationCode = Cu(Cu({}, u3), {}, { name: r3 }));
          } else {
            var c3, s3, f3;
            e3.verificationStep = "add", e3.shouldUseGlobalErrors = false, e3.isStepAdd = true, e3.steps[e3.currentStep].addReachable && (e3.addReachable = Object.assign(e3.addReachable, e3.steps[e3.currentStep].addReachable), e3.showInterstitialCreatePage = !(null === (f3 = e3.steps[e3.currentStep].addReachable) || void 0 === f3 || !f3.interstitialCreatePage)), e3.verificationCode.noBorder = e3.steps[e3.currentStep].noBorder, (null !== (c3 = e3.addReachable.features) && void 0 !== c3 && c3.skipVerificationOnExist || null !== (s3 = e3.addReachable.features) && void 0 !== s3 && s3.skipVerification) && (e3.shouldCheckUserExist = true);
          }
        }
      };
      switch (t3.type) {
        case _a.type:
          var o2;
          if (e3.bootData = t3.payload.bootData, t3.payload.data.options.theme || (t3.payload.data.options.theme = Cu({}, Au.externalData.options.theme)), t3.payload.data.features && false === t3.payload.data.features.errorAlert && (e3.enableErrorAlert = false), e3.externalData = t3.payload.data, e3.steps = [...e3.externalData.options.verifications], e3.externalData.options.nonce && (e3.errorResult.nonce = e3.externalData.options.nonce), r2(), e3.externalData.options.locale || (e3.externalData.options.locale = "en_US"), null !== (o2 = e3.externalData.procedures) && void 0 !== o2 && o2.length && e3.connection) {
            var i2 = e3.connection;
            e3.rpc = new ku(i2, e3.externalData.procedures);
          }
          return;
        case Wa.type:
          switch (e3.steps = [...e3.externalData.options.verifications], e3.verificationStep) {
            case "verify":
              e3.steps[e3.currentStep].name ? (e3.errorResult.error = { id: "1007" }, e3.verificationStep = "cancel") : e3.verificationStep = "add";
              break;
            case "add":
              e3.errorResult.error = { id: "1007" }, e3.verificationStep = "cancel";
              break;
            case "interstitialCreatePage":
              e3.verificationStep = "add";
          }
          break;
        case Ha.type:
          e3.checkboxData[e3.currentStep] || (e3.checkboxData[e3.currentStep] = {}), e3.checkboxData[e3.currentStep][t3.payload.step] = t3.payload.checked;
          break;
        case Fa.type:
          var a2 = t3.payload.step, l2 = t3.payload.data, u2 = e3.steps[e3.currentStep];
          if (l2.name && (e3.userData.name = l2.name), a2) {
            var c2 = a2.id, s2 = a2.name;
            "emailOrPhone" !== u2.id ? u2.name = s2 : "email" === c2 ? e3.steps[e3.currentStep] = Cu(Cu({}, e3.steps[e3.currentStep]), {}, { id: c2, name: s2 }) : "phone" === c2 && (e3.steps[e3.currentStep] = Cu(Cu({}, e3.steps[e3.currentStep]), {}, { id: c2, name: s2, countryDialCode: a2.countryDialCode, countryCode: a2.countryCode }));
            var f2 = e3.steps[e3.currentStep];
            "tier" !== f2.id && (e3.verificationCode = Cu(Cu({}, f2), {}, { name: s2 }));
          }
          return;
        case Gl.rejected:
        case Hl.rejected:
          return e3.errors = rl(t3.reason), e3.errors[0] = Ru(e3.errors[0]), e3.shouldUseGlobalErrors = true, void (e3.errorResult.error = { id: t3.type === Hl.rejected ? "1008" : "1009" });
        case Ul.rejected:
          return e3.errors = rl(t3.reason), e3.errors[0] = Ru(e3.errors[0]), void (e3.shouldUseGlobalErrors = false);
        case Gl.fulfilled:
          return void (e3.federation = t3.payload);
        case Hl.fulfilled:
          var d2 = t3.payload.headers["x-apple-verification-token"];
          return d2 && (e3.completeResult = { token: d2 }), e3.currentStep++, void r2();
        case Gl.settled:
        case Ul.settled:
        case Hl.settled:
          return void (e3.pending = false);
        case Ul.fulfilled:
          var { token: p2 } = t3.payload;
          return void (p2 && (e3.completeResult = { token: p2 }, e3.currentStep++, r2()));
        case nu.fulfilled:
        case Xl.fulfilled:
        case mu.fulfilled:
        case fu.fulfilled:
          var h2 = t3.payload.headers["x-apple-verification-token"];
          return void (h2 && (e3.completeResult = { token: h2 }));
        case ou.fulfilled:
          var v2, { verificationCode: m2 } = e3;
          null !== (v2 = m2.optionalConfig) && void 0 !== v2 && null !== (v2 = v2.features) && void 0 !== v2 && v2.skipVerificationCallback && (e3.completeResult = lt({ accountName: m2.name, reasonCode: "5", name: e3.userData.name, isCompleted: true })), e3.currentStep++, r2(), e3.showGenerateNewCode = false, e3.didSendCode = false;
          break;
        case Eu.fulfilled:
          e3.currentStep++, r2(), e3.showGenerateNewCode = false, e3.didSendCode = false;
          break;
        case za.type:
          return void (e3.initialSize = t3.payload);
        case ja.type:
          return void (e3.connection = t3.payload.data);
        case Ra.type:
          return e3.errors = [], void (e3.shouldUseGlobalErrors = true);
        case Ia.type:
          return void (e3.verificationStep = t3.payload);
        case La.type:
          return t3.payload || (e3.errors = [], e3.shouldUseGlobalErrors = true), void (e3.showAlert = t3.payload);
        case Ma.type:
          return void (e3.mode = t3.payload);
        case Ua.type:
          return void (e3.pending = t3.payload);
        case Ba.type:
          return void (e3.selectSkipOption = t3.payload);
        case Da.type:
          return e3.showGenerateNewCode = t3.payload, e3.errors = [], void (e3.shouldUseGlobalErrors = true);
        case nu.pending:
        case Xl.pending:
          return e3.pending = true, e3.pendingSendingCode = true, void (e3.skippingVerification = true);
        case vl.pending:
        case Sl.pending:
        case yl.pending:
          return e3.pending = true, void (e3.pendingSendingCode = true);
        case Ul.pending:
          return e3.pending = true, void (e3.errors = []);
        case Gl.pending:
        case Hl.pending:
        case cu.pending:
        case mu.pending:
        case fu.pending:
          return void (e3.pending = true);
        case nu.settled:
        case Xl.settled:
        case cu.settled:
        case mu.settled:
        case fu.settled:
        case vl.settled:
        case Sl.settled:
        case yl.settled:
          return e3.pending = false, e3.pendingSendingCode = false, void (e3.skippingVerification = false);
        case Ql.rejected:
          var y2 = { "-22981": { verificationStep: "verify" }, "-28244": { verificationStep: "verify" }, "-21651": { verificationStep: "add" }, "-320019": { verificationStep: "verify" } };
          return e3.errors = rl(t3.reason), e3.errors[0] = Ru(e3.errors[0]), void (e3.errors[0].code && y2[e3.errors[0].code] ? (e3.shouldUseGlobalErrors = false, "add" === y2[e3.errors[0].code].verificationStep ? (e3.steps[e3.currentStep] = Cu({}, e3.externalData.options.verifications[e3.currentStep]), r2()) : (y2[e3.errors[0].code].verificationStep !== e3.verificationStep && r2(), e3.showGenerateNewCode = false, e3.didSendCode || (e3.didSendCode = true), e3.disableSendNewCode = true)) : (e3.shouldUseGlobalErrors = true, e3.didSendCode || (e3.errorResult.error = { id: "1004" })));
        case cu.rejected:
          return e3.errors = rl(t3.reason), e3.errors[0] = Ru(e3.errors[0]), void (e3.errorResult.error = { id: "1005" });
        case lu.pending:
          return e3.shouldUseGlobalErrors = false, void (e3.pending = true);
        case lu.rejected:
          var g2 = t3.reason;
          return e3.errors[0] = { code: g2.id, message: g2.message, name: g2.message, isResponseError: true }, void (e3.pending = false);
        case lu.fulfilled:
          var b2 = t3.payload.token;
          return void (b2 && (e3.externalData.options.token = b2, Se.pushPlugin(me({ name: "X-Apple-Identity-token", value: b2 }))));
        case nu.rejected:
        case Xl.rejected:
        case mu.rejected:
        case fu.rejected:
          return e3.errors = rl(t3.reason), e3.errors[0] = Ru(e3.errors[0]), void ("-320018" === e3.errors[0].code || "-21669" === e3.errors[0].code ? e3.shouldUseGlobalErrors = false : (e3.shouldUseGlobalErrors = true, e3.errorResult.error = { id: "1003" }));
        case cu.fulfilled:
          return e3.completeResult = t3.payload, void (e3.verificationStep = "complete");
        case vl.fulfilled:
        case yl.fulfilled:
        case Sl.fulfilled:
          if (n2(), t3.type === yl.fulfilled) e3.encryptedCode = t3.payload.verificationInfo.id;
          else if (t3.type === vl.fulfilled) {
            var w2 = t3.payload, E2 = t3.payload.accountName || e3.verificationCode.name;
            if (w2.verificationInfo) e3.encryptedCode = w2.verificationInfo.id;
            else {
              var S2 = t3.payload, k2 = t3.payload;
              if (0 !== Object.keys(S2).length) {
                var x2 = "false" === k2.uEInd ? "3" : "email" === e3.verificationCode.id ? "2" : "4";
                return "email" === e3.verificationCode.id ? e3.completeResult = lt({ accountName: E2, reasonCode: x2, type: e3.verificationCode.id, name: e3.userData.name, isCompleted: true }) : "phone" === e3.verificationCode.id && (e3.completeResult = lt({ accountName: E2, reasonCode: x2, type: e3.verificationCode.id, name: e3.userData.name, isCompleted: true, countryCode: e3.verificationCode.countryCode, countryDialCode: e3.verificationCode.countryDialCode })), e3.currentStep++, e3.showGenerateNewCode = false, e3.didSendCode = false, void r2();
              }
              if (e3.showInterstitialCreatePage) return e3.completeResult = Q({ accountName: e3.formattedHandle, reasonCode: "1", name: e3.userData.name, isCompleted: false }), e3.verificationStep = "interstitialCreatePage", e3.showGenerateNewCode = false, e3.didSendCode = false, void (e3.isStepAdd = false);
            }
          }
          return e3.showGenerateNewCode = false, e3.didSendCode || (e3.didSendCode = true), void (e3.verificationStep = "verify");
      }
    }) }), ju = (function(t3, n2, { interceptRejectedAction: r2 } = {}) {
      const o2 = n2 ? Ni(n2) : Ti;
      return { configureStore: function(e3) {
        const n3 = /* @__PURE__ */ (function(...e4) {
          return (t4) => (n4, r3) => {
            const o3 = t4(n4, r3);
            let i2 = () => {
              throw new Error(bi(15));
            };
            const a2 = { getState: o3.getState, dispatch: (e5, ...t5) => i2(e5, ...t5) }, l2 = e4.map((e5) => e5(a2));
            return i2 = Ci(...l2)(o3.dispatch), { ...o3, dispatch: i2 };
          };
        })(o2, /* @__PURE__ */ (function(e4 = Oi) {
          return (t4) => (n4) => (r3) => {
            const o3 = r3;
            return n4((function(e5) {
              return e5.type.endsWith(`::${wi.Rejected}`);
            })(o3) ? e4(o3, t4) : r3);
          };
        })(r2));
        return (function(e4, t4, n4) {
          return xi(e4, t4, n4);
        })(t3, e3, Ci(n3));
      }, createSelector: Oi, useDispatch: function(t4) {
        const n3 = vi();
        return t4 ? (0, e2.useCallback)((...e3) => n3(t4(...e3)), []) : n3;
      }, useSelector: gi };
    })(_u, nl), { configureStore: Lu, useDispatch: Du } = ju, Iu = ju.useSelector;
    function zu(e3) {
      return "" !== e3;
    }
    !(function(e3) {
      e3.Error = "error", e3.Info = "info", e3.Debug = "debug", e3.Warn = "warn", e3.Event = "event";
    })(Pu || (Pu = {}));
    const Fu = new RegExp("\\p{Ll}+", "gu"), Mu = new RegExp("\\p{L}+", "gu");
    var Uu = new class {
      log(e3, t3) {
        for (var n2 = arguments.length, r2 = new Array(n2 > 2 ? n2 - 2 : 0), o2 = 2; o2 < n2; o2++) r2[o2 - 2] = arguments[o2];
        this.plugins.forEach((n3) => {
          n3(e3, t3, ...r2);
        });
      }
      constructor() {
        var { plugins: e3 = [] } = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {};
        (function(e4, t3, n2) {
          (t3 = (function(e5) {
            var t4 = (function(e6) {
              if ("object" != typeof e6 || !e6) return e6;
              var t5 = e6[Symbol.toPrimitive];
              if (void 0 !== t5) {
                var n3 = t5.call(e6, "string");
                if ("object" != typeof n3) return n3;
                throw new TypeError("@@toPrimitive must return a primitive value.");
              }
              return String(e6);
            })(e5);
            return "symbol" == typeof t4 ? t4 : t4 + "";
          })(t3)) in e4 ? Object.defineProperty(e4, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e4[t3] = n2;
        })(this, "plugins", void 0), this.plugins = e3;
      }
      error(e3) {
        for (var t3 = arguments.length, n2 = new Array(t3 > 1 ? t3 - 1 : 0), r2 = 1; r2 < t3; r2++) n2[r2 - 1] = arguments[r2];
        return this.log(Pu.Error, e3, ...n2);
      }
      info(e3) {
        for (var t3 = arguments.length, n2 = new Array(t3 > 1 ? t3 - 1 : 0), r2 = 1; r2 < t3; r2++) n2[r2 - 1] = arguments[r2];
        return this.log(Pu.Info, e3, ...n2);
      }
      debug(e3) {
        for (var t3 = arguments.length, n2 = new Array(t3 > 1 ? t3 - 1 : 0), r2 = 1; r2 < t3; r2++) n2[r2 - 1] = arguments[r2];
        return this.log(Pu.Debug, e3, ...n2);
      }
      warn(e3) {
        for (var t3 = arguments.length, n2 = new Array(t3 > 1 ? t3 - 1 : 0), r2 = 1; r2 < t3; r2++) n2[r2 - 1] = arguments[r2];
        return this.log(Pu.Warn, e3, ...n2);
      }
      event(e3) {
        return this.log(Pu.Event, e3);
      }
      pushPlugin(e3) {
        this.plugins.push(e3);
      }
    }({ plugins: [function(e3) {
      for (var t3 = (function(e4) {
        return { [Pu.Error]: "error", [Pu.Info]: "info", [Pu.Debug]: "debug", [Pu.Warn]: "warn", [Pu.Event]: "log" }[e4];
      })(e3), n2 = arguments.length, r2 = new Array(n2 > 1 ? n2 - 1 : 0), o2 = 1; o2 < n2; o2++) r2[o2 - 1] = arguments[o2];
      console[t3]((function(e4, t4) {
        var n3 = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : "", r3 = arguments.length > 3 ? arguments[3] : void 0;
        return ["<IDMS-UI>", e4 === Pu.Event ? t4 : [t4, n3].filter(zu).join(":"), ...$(r3) ? [] : ["->", JSON.stringify(r3)]].join(" ");
      })(e3, ...r2));
    }, /* @__PURE__ */ (function(e3) {
      return function(t3, n2) {
        for (var r2, o2, i2 = arguments.length, a2 = new Array(i2 > 2 ? i2 - 2 : 0), l2 = 2; l2 < i2; l2++) a2[l2 - 2] = arguments[l2];
        var u2, c2, s2, f2, [d2, p2] = a2, h2 = lt({ message: d2, title: n2, stacktrace: null == p2 ? void 0 : p2.stack, iframeId: null == p2 ? void 0 : p2.iframeId, type: t3.toUpperCase(), messageMap: (u2 = null !== (r2 = null == p2 ? void 0 : p2.messageMap) && void 0 !== r2 ? r2 : { ACTION: t3 }, { ACTION: "FE_".concat((c2 = u2.ACTION, null !== (f2 = null === (s2 = c2.match(Mu)) || void 0 === s2 ? void 0 : s2.map((e4) => Ot.test(e4) ? e4.toLowerCase() : e4.replace(Ct, xt).match(Fu).join("_")).join("_")) && void 0 !== f2 ? f2 : "").toUpperCase()) }), details: JSON.stringify(lt(null !== (o2 = null == p2 ? void 0 : p2.details) && void 0 !== o2 ? o2 : {})) });
        return e3.post({ url: "/jslog", data: h2 }).catch(() => {
        });
      };
    })(Se)] }), Bu = ["isLogged", "name", "message"];
    function Hu(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function Wu(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? Hu(Object(n2), true).forEach(function(t4) {
          qu(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : Hu(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function qu(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function $u(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function Vu(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? $u(Object(n2), true).forEach(function(t4) {
          Gu(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : $u(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function Gu(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    n(92088);
    var Ku = ["children"], Qu = ["expand", "color", "size", "style"], Yu = ["checkbox"], Xu = ["borderRadius"];
    function Ju(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function Zu(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? Ju(Object(n2), true).forEach(function(t4) {
          ec(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : Ju(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function ec(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function tc(e3, t3) {
      if (null == e3) return {};
      var n2, r2, o2 = (function(e4, t4) {
        if (null == e4) return {};
        var n3 = {};
        for (var r3 in e4) if ({}.hasOwnProperty.call(e4, r3)) {
          if (-1 !== t4.indexOf(r3)) continue;
          n3[r3] = e4[r3];
        }
        return n3;
      })(e3, t3);
      if (Object.getOwnPropertySymbols) {
        var i2 = Object.getOwnPropertySymbols(e3);
        for (r2 = 0; r2 < i2.length; r2++) n2 = i2[r2], -1 === t3.indexOf(n2) && {}.propertyIsEnumerable.call(e3, n2) && (o2[n2] = e3[n2]);
      }
      return o2;
    }
    function nc() {
      return nc = Object.assign ? Object.assign.bind() : function(e3) {
        for (var t3 = 1; t3 < arguments.length; t3++) {
          var n2 = arguments[t3];
          for (var r2 in n2) ({}).hasOwnProperty.call(n2, r2) && (e3[r2] = n2[r2]);
        }
        return e3;
      }, nc.apply(null, arguments);
    }
    var rc = { typography: /* @__PURE__ */ new Set(["callout", "label", "intro", "body", "body-reduced", "caption"]), weight: /* @__PURE__ */ new Set(["regular", "normal", "medium", "semibold", "bold"]) }, oc = function(e3) {
      if ("text" === (arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : "text")) {
        e3 = Y(e3, "typography", "weight");
        var t3 = rc;
        return Object.keys(rc).forEach((n2) => {
          e3[n2] && !t3[n2].has(e3[n2]) && delete e3[n2];
        }), e3;
      }
      return e3 = Y(e3, "src", "alt", "width", "height", "srcSet", "borderRadius");
    }, ic = (t3) => {
      var { textProps: n2 = {}, marginTop: r2 = true, children: o2 } = t3;
      if (o2) return n2 = oc(n2), e2.createElement(e2.Fragment, null, r2 ? e2.createElement(e2.Fragment, null, Object.keys(n2).length > 0 ? e2.createElement(br, null, e2.createElement(nr, nc({ block: true }, n2), o2)) : e2.createElement(br, null, o2)) : e2.createElement("div", { className: "page-description-text" }, e2.createElement(nr, nc({ block: true, typography: "body-reduced" }, n2), o2)));
    }, ac = (e3) => void 0 !== e3 && e3.textProps ? oc(e3.textProps) : {}, lc = (t3) => {
      var { title: n2, defaultText: r2 } = t3;
      if (false !== n2 && (void 0 !== n2 || void 0 !== r2)) {
        var o2 = ac(n2);
        return e2.createElement(Sr, null, e2.createElement(e2.Fragment, null, void 0 === n2 ? e2.createElement(e2.Fragment, null, r2) : e2.createElement(nr, o2, n2.text)));
      }
    }, uc = (t3) => {
      var { heading: n2 = 2, title: r2, defaultText: o2 } = t3;
      if (false !== r2 && (void 0 !== r2 || void 0 !== o2)) {
        var i2 = ac(r2);
        return e2.createElement("div", { className: "verifyweb-page-title" }, e2.createElement(nr, nc({ heading: n2, block: true, typography: "callout" }, i2), e2.createElement(e2.Fragment, null, void 0 === r2 ? e2.createElement(e2.Fragment, null, o2) : e2.createElement(e2.Fragment, null, r2.text))));
      }
    }, cc = (t3) => {
      var { children: n2 } = t3, r2 = tc(t3, Ku), o2 = Y(r2, "expand", "color", "size", "style"), { expand: i2, color: a2, size: l2, style: u2 } = r2, c2 = Zu({}, tc(r2, Qu)), s2 = /^[a-zA-Z0-9\-_]*$/;
      if (o2.color && s2.test(o2.color) && ("primary" === o2.color || (c2.color = o2.color)), o2.size && s2.test(o2.size) && (c2.size = o2.size), o2.expand && "boolean" == typeof o2.expand && (c2.expand = o2.expand), o2.style && "object" == typeof o2.style) {
        var f2 = Y(o2.style, "width", "maxWidth");
        c2.style = f2;
      }
      return e2.createElement(vn, c2, n2);
    }, sc = (t3) => {
      var n2, r2, { checkbox: o2 } = t3, i2 = tc(t3, Yu), a2 = o2.alignment;
      return e2.createElement(br, null, e2.createElement("div", { className: Br()({ "verify-code__checkbox-container": true, "verify-code__checkbox-container--left": "left" === a2 || !a2 && !!o2.description, "verify-code__checkbox-container--center": "center" === a2, "verify-code__checkbox-container--right": "right" === a2 }) }, e2.createElement(at, i2, o2.title.text), !!o2.description && e2.createElement("div", { className: "verify-code__checkbox-subtext-container" }, e2.createElement(nr, nc({ block: true }, null === (n2 = o2.description) || void 0 === n2 ? void 0 : n2.textProps), e2.createElement(pc, { textTemplate: null === (r2 = o2.description) || void 0 === r2 ? void 0 : r2.text })))));
    }, fc = (t3) => {
      var { hero: n2, svg: r2 } = t3, o2 = { glyph: /* @__PURE__ */ new Set(["checkcircle", "apple", "none"]) };
      if (n2 && o2.glyph.has(n2.glyph)) {
        var i2 = n2.weight || 400;
        if ("none" !== n2.glyph) return e2.createElement("div", { className: "verifyweb-hero verifyweb-hero__glyph" }, e2.createElement(Et, { style: { fontSize: "40px" }, weight: i2, glyph: n2.glyph }));
        if (n2.logo) {
          var a2, l2, u2, { autoThemeAdjust: c2, defaultTheme: s2 } = Iu((e3) => e3.verifyWeb.externalData.options.theme), [f2, d2] = (0, e2.useState)(oc(n2.logo, "logo")), p2 = null === (a2 = n2.logo) || void 0 === a2 ? void 0 : a2.darkSrc, h2 = null === (l2 = n2.logo) || void 0 === l2 ? void 0 : l2.src;
          "function" == typeof window.matchMedia && c2 && (u2 = window.matchMedia("(prefers-color-scheme: dark)")), (0, e2.useEffect)(() => {
            var e3, t4, r3, o3, i3;
            "blue" !== s2 && null !== (e3 = n2.logo) && void 0 !== e3 && e3.darkSrc && ("function" == typeof window.matchMedia && c2 ? u2 && u2.matches && d2(Zu(Zu({}, f2), {}, { src: null === (t4 = n2.logo) || void 0 === t4 ? void 0 : t4.darkSrc, srcSet: null === (r3 = n2.logo) || void 0 === r3 ? void 0 : r3.darkSrcSet })) : "dark" === s2 && d2(Zu(Zu({}, f2), {}, { src: null === (o3 = n2.logo) || void 0 === o3 ? void 0 : o3.darkSrc, srcSet: null === (i3 = n2.logo) || void 0 === i3 ? void 0 : i3.darkSrcSet })));
          }, []), u2 && (u2.onchange = () => {
            var e3, t4, r3;
            f2.src === (null === (e3 = n2.logo) || void 0 === e3 ? void 0 : e3.src) ? d2(Zu(Zu({}, f2), {}, { src: p2, srcSet: null === (t4 = n2.logo) || void 0 === t4 ? void 0 : t4.darkSrcSet })) : d2(Zu(Zu({}, f2), {}, { src: h2, srcSet: null === (r3 = n2.logo) || void 0 === r3 ? void 0 : r3.srcSet }));
          });
          var { borderRadius: v2 } = f2, m2 = tc(f2, Xu);
          return e2.createElement("div", { className: "verifyweb-hero" }, e2.createElement("img", nc({ alt: "" }, m2, { style: Zu(Zu({}, f2.height ? { objectFit: "cover" } : {}), f2.borderRadius ? { borderRadius: "20px" } : {}) })));
        }
        return r2 ? e2.createElement("div", { className: "verifyweb-hero verifyweb-hero--default" }, r2) : void 0;
      }
    }, dc = (t3) => {
      var n2, r2, { workingText: o2, showSubmitButtonByDefault: i2 = false, submitButton: a2, onClickSubmitButton: l2, onClickBackButton: u2, submitButtonDisabled: c2, backButton: s2 } = t3, { reverseButtonOrder: f2 } = Iu((e3) => e3.verifyWeb.externalData.features), { pending: d2 } = Iu((e3) => e3.verifyWeb), p2 = e2.createElement(e2.Fragment, null, (!!a2 || i2) && e2.createElement(cc, nc({ expand: true }, "primary" !== (null == a2 || null === (n2 = a2.buttonProps) || void 0 === n2 ? void 0 : n2.color) && { color: "neutral" }, null == a2 ? void 0 : a2.buttonProps, { onClick: l2, disabled: c2 }), (null == a2 ? void 0 : a2.text) || qr("web.continue.button"))), h2 = e2.createElement(e2.Fragment, null, !!s2 && e2.createElement(cc, nc({ expand: true }, "primary" !== (null == s2 || null === (r2 = s2.buttonProps) || void 0 === r2 ? void 0 : r2.color) && { color: "neutral" }, { onClick: u2 }, s2.buttonProps), (null == s2 ? void 0 : s2.text) || qr("web.cancel.button")));
      return e2.createElement(Nn, { centered: true, workingText: !!o2 && d2 && o2 }, f2 && e2.createElement(e2.Fragment, null, h2, p2), !f2 && e2.createElement(e2.Fragment, null, p2, h2));
    }, pc = (t3) => {
      var { textTemplate: n2 } = t3, { connection: r2, formattedHandle: o2, userData: i2 } = Iu((e3) => e3.verifyWeb), a2 = ((e3, t4) => {
        var n3;
        return n3 = { "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;", "/": "&#x2F;", "`": "&#x60;", "=": "&#x3D;" }, e3 = String(e3).replace(/[&<>"'`=/]/g, function(e4) {
          return n3[e4];
        }), (e3 = e3.replace("{handle}", (null == t4 ? void 0 : t4.formattedHandle) || "")).replace("{name}", (null == t4 ? void 0 : t4.name) || "").replace(/(\[([^\]]+)])\(([^)]+)\)/g, '<a href="$3" target="_blank">$2</a>');
      })(n2, { formattedHandle: o2, name: i2.name }), l2 = "{createAccount}";
      if (a2.indexOf(l2) >= 0) {
        var u2 = a2.indexOf(l2), c2 = u2 + 15 - 1, s2 = a2.substring(0, u2), f2 = a2.substring(c2 + 1, a2.length);
        return e2.createElement(e2.Fragment, null, e2.createElement(Zo, { html: s2 }), e2.createElement(cc, { link: true, color: "neutral", onClick: () => {
          null == r2 || r2.emit("complete", { accountName: o2, reasonCode: "1", isCompleted: false });
        } }, qr("web.addreachable.interstitial.create.create.account.button")), e2.createElement(Zo, { html: f2 }));
      }
      var d2 = ((e3) => {
        var t4 = e3.match(/\{signin\}(?:\[([^\]]+)\])?/);
        if (!t4) return { matched: false };
        var n3 = t4[0], r3 = t4[1] || qr("widget.default.signInString"), o3 = e3.indexOf(n3);
        return { matched: true, fullMatch: n3, buttonText: r3, startIndex: o3, endIndex: o3 + n3.length };
      })(a2);
      if (d2.matched && void 0 !== d2.startIndex && void 0 !== d2.endIndex) {
        var p2 = a2.substring(0, d2.startIndex), h2 = a2.substring(d2.endIndex, a2.length);
        return e2.createElement(e2.Fragment, null, e2.createElement(Zo, { html: p2 }), e2.createElement(cc, { link: true, onClick: () => {
          null == r2 || r2.emit("complete", { accountName: o2, reasonCode: "5", isCompleted: false });
        } }, d2.buttonText), e2.createElement(Zo, { html: h2 }));
      }
      return e2.createElement(Zo, { html: a2 });
    }, hc = (t3) => {
      var { children: n2 } = t3, [r2, o2] = (0, e2.useState)(null), { pending: i2, currentStep: a2, showGenerateNewCode: l2, verificationCode: u2, externalData: c2, initialSize: s2 } = Iu((e3) => e3.verifyWeb), { noPadding: f2 } = Iu((e3) => e3.verifyWeb.externalData.features), d2 = f2 || false, p2 = Du(za), h2 = (0, e2.useRef)(null);
      return (0, e2.useLayoutEffect)(() => {
        if (r2 && "expanded" === c2.features.size && !l2 && 0 == a2) return h2.current = Mr(r2, (e3) => {
          e3.height > s2.height && p2(e3);
        }), () => {
          h2.current && h2.current();
        };
      }, [r2, i2, l2, a2]), e2.createElement("div", { className: Br()({ "verify-code__body-container": true, "verify-code__body-container--no-border": u2.noBorder, "verify-code__body-container--no-padding": f2 }), style: { minHeight: 0 !== s2.height ? s2.height + "px" : d2 ? "auto" : "300px", width: "100%" }, ref: (e3) => {
        o2(e3);
      } }, n2);
    }, vc = (t3) => {
      var { className: n2 } = t3;
      return e2.createElement("svg", { xmlns: "http://www.w3.org/2000/svg", viewBox: "0 0 24 24", "aria-hidden": "true", focusable: "false", className: n2 }, e2.createElement("path", { d: "M15.41 7.41L14 6l-6 6 6 6 1.41-1.41L10.83 12z", fill: "currentColor" }));
    }, mc = () => e2.createElement("svg", { viewBox: "0 0 256 173", version: "1.1" }, e2.createElement("g", { transform: "translate(12, 2)", fillRule: "nonzero" }, e2.createElement("path", { d: "M163.086903,29.1922504 L27.0819672,29.1922504 C25.3798128,29.1922504 23.8222832,29.3738051 22.4230951,29.7390247 L97.6005961,97.5126677 C100.326379,99.9746647 103.140089,101.117735 106.041729,101.117735 C108.943368,101.117735 111.757079,99.9746647 114.482861,97.5126677 L167.619791,49.6091696 C169.568286,53.5449884 172.143535,57.114251 175.202039,60.2077854 L144.576203,87.7744143 L198.644471,141.842683 C198.695118,141.27361 198.718331,140.681323 198.718331,140.070045 L198.718331,72.3862295 C200.913025,72.794921 203.180173,72.9806259 205.488823,72.9806259 C207.764411,72.9806259 210.002015,72.7970313 212.171386,72.3939672 L212.171386,140.070045 C212.171386,158.183308 202.938897,167.327869 187.199702,167.327869 L27.609538,167.327869 C9.32041729,167.327869 0,158.183308 0,140.070045 L0,42.9970194 C0,24.8837556 9.23248882,15.7391952 24.9716841,15.7391952 L165.743046,15.7391952 C164.115314,19.9373222 163.187493,24.4673967 163.086903,29.1922504 Z M122.132638,107.976155 C117.120715,112.548435 111.669151,114.658718 106.041729,114.658718 C100.414307,114.658718 94.9627422,112.548435 89.9508197,107.976155 L77.1807928,96.4821461 L20.9148054,152.82741 C22.675907,153.52521 24.7423666,153.874814 27.0819672,153.874814 L185.00149,153.874814 C187.362897,153.874814 189.452781,153.518879 191.23386,152.809121 L134.904775,96.4800358 L122.132638,107.976155 Z M13.4530551,42.9090909 L13.4530551,139.982116 C13.4530551,140.623642 13.4777455,141.243362 13.5332459,141.836352 L67.5536811,87.8159165 L13.7519416,39.3890683 C13.5502689,40.4718545 13.4530551,41.6487595 13.4530551,42.9090909 Z", id: "Shape" }), e2.createElement("path", { d: "M205.488823,61.0223547 C222.107303,61.0223547 236,47.2175857 236,30.5111773 C236,13.804769 222.107303,0 205.488823,0 C188.782414,0 174.977645,13.804769 174.977645,30.5111773 C174.977645,47.2175857 188.782414,61.0223547 205.488823,61.0223547 Z", id: "Path" }))), yc = (t3) => {
      var { button: n2, onClick: r2 } = t3, o2 = (null == n2 ? void 0 : n2.text) || qr("web.back.button");
      return e2.createElement("button", { type: "button", className: "modal-header-back-button", "aria-label": o2, onClick: r2, "data-testid": "modal-header-back-button" }, e2.createElement(vc, { className: "modal-header-back-button__icon" }));
    };
    function gc(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function bc(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? gc(Object(n2), true).forEach(function(t4) {
          wc(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : gc(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function wc(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    var Ec = (t3) => {
      var { onChangeName: n2, onKeyUp: r2, caption: o2 } = t3, [i2, a2] = (0, e2.useState)(""), { errors: l2 } = Iu((e3) => e3.verifyWeb), [u2, c2] = (0, e2.useState)(!!l2.length), s2 = Hr(l2, qr("web.error.unknown.description")), [f2, d2] = (0, e2.useState)(l2.length ? s2 : "");
      return e2.createElement(e2.Fragment, null, e2.createElement("div", { style: { position: "relative", textAlign: "left" } }, e2.createElement(Kt, { value: i2, labelText: qr("web.addreachable.name.label"), onChange: (e3) => {
        a2(e3.target.value), null == n2 || n2(e3.target.value, !!i2 && !f2);
      }, onBlur: () => {
        c2(!!f2);
      }, errorMessage: { axLabel: "name-error", children: u2 ? f2 : "" }, onKeyUp: () => {
        c2(false), /.*[%<>&;'\0-].*/.test(i2) ? (d2(qr("web.addreachable.error.invalid.characters.name")), r2(false)) : (d2(""), r2(true));
      } }, e2.createElement("div", { className: "text-field-background" }))), e2.createElement("div", null, e2.createElement(ic, { textProps: bc({ typography: "caption" }, null == o2 ? void 0 : o2.textProps), marginTop: false }, (null == o2 ? void 0 : o2.text) || "")));
    };
    function Sc(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function kc(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? Sc(Object(n2), true).forEach(function(t4) {
          xc(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : Sc(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function xc(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    var Cc = () => {
      var t3, n2, r2, o2, i2, a2, l2, u2, c2, s2, f2, d2, p2, h2, v2, m2, y2, g2, b2, w2, E2, S2, k2, x2, C2, O2, P2, T2, N2, { currentStep: A2, steps: R2, pending: _2, externalData: j2, errors: L2 } = Iu((e3) => e3.verifyWeb), D2 = j2.features.noPadding || false, I2 = R2[A2], z2 = null === (t3 = I2.addReachable) || void 0 === t3 ? void 0 : t3.backButton, F2 = null !== (n2 = null === (r2 = I2.addReachable) || void 0 === r2 ? void 0 : r2.headerBackButton) && void 0 !== n2 ? n2 : I2.headerBackButton, M2 = null === (o2 = I2.addReachable) || void 0 === o2 ? void 0 : o2.submitButton, U2 = I2.countryCode, B2 = (null === (i2 = I2.addReachable) || void 0 === i2 || null === (i2 = i2.submitButton) || void 0 === i2 ? void 0 : i2.arrowButton) || false, H2 = Du(Wa), W2 = Du(Ra), q2 = Du(au), [$2] = (0, e2.useState)(I2.id), [V2, G2] = (0, e2.useState)(""), [K2, Q2] = (0, e2.useState)(""), [Y2, X2] = (0, e2.useState)(!(null === (a2 = I2.addReachable) || void 0 === a2 || !a2.checkbox || null === (l2 = I2.addReachable) || void 0 === l2 || !l2.checkbox.checked)), [J2, Z2] = (0, e2.useState)(false), [ee2, te2] = (0, e2.useState)(false), [ne2, re2] = (0, e2.useState)(void 0), oe2 = Hr(L2, qr("web.error.unknown.description")), [ie2, ae2] = (0, e2.useState)("email"), [le2, ue2] = (0, e2.useState)(false), [ce2, se2] = (0, e2.useState)(!!L2.length), [fe2, de2] = (0, e2.useState)(false), pe2 = (e3) => {
        var t4, n3;
        if (se2(false), W2(), ("email" === $2 || "emailOrPhone" === $2) && ul(e3)) return de2(true), ue2(false), void ae2("email");
        if (null !== (t4 = window.AppleID) && void 0 !== t4 && null !== (t4 = t4.service) && void 0 !== t4 && null !== (t4 = t4.phoneFormat) && void 0 !== t4 && t4.formatPhoneNumberWithDetail) {
          var r3 = cl(e3, U2 || (null === (n3 = j2.options.locale) || void 0 === n3 ? void 0 : n3.split("_")[1]), !U2);
          if (r3) {
            if (("phone" === $2 || "emailOrPhone" === $2) && r3.didFormat) return re2(r3), de2(true), ue2(false), G2(r3.formattedNumber), void ae2("phone");
            ae2("email"), de2(false), ue2(true);
          }
        }
      }, he2 = () => {
        var e3, t4, n3;
        return !(!fe2 || null !== (e3 = I2.addReachable) && void 0 !== e3 && e3.checkbox && null !== (t4 = I2.addReachable) && void 0 !== t4 && t4.checkbox.required && !Y2 || !(null === (n3 = I2.addReachable) || void 0 === n3 || !n3.nameTextField || K2 && ee2));
      }, ve2 = () => {
        var e3, t4, n3;
        q2({ type: ie2, step: "email" === ie2 ? { id: ie2, name: V2 } : { id: ie2, name: (null == ne2 || null === (e3 = ne2.nationalNumber) || void 0 === e3 ? void 0 : e3.toString()) || V2, countryCode: (null == ne2 ? void 0 : ne2.country) || "US", countryDialCode: (null == ne2 || null === (t4 = ne2.countryCallingCode) || void 0 === t4 ? void 0 : t4.toString()) || "1" }, data: { name: K2 }, checkboxChecked: null !== (n3 = I2.addReachable) && void 0 !== n3 && n3.checkbox ? Y2 : void 0 });
      }, me2 = () => {
        H2();
      }, ye2 = e2.createElement("span", { className: Br()({ "verify-code__arrow-button-container--pending": _2, "verify-code__arrow-button-container--down": J2 }, "verify-code__arrow-button-container") }, !_2 && e2.createElement(vn, { disabled: !he2(), "aria-label": qr("web.continue.button"), bare: true, onClick: ve2 }, e2.createElement("svg", { version: "1.1", id: "sign-in-button", xmlns: "http://www.w3.org/2000/svg", x: "0px", y: "0px", viewBox: "0 0 50 50", enableBackground: "new 0 0 50 50" }, e2.createElement("g", { id: "Sign_In_copy_12" }, e2.createElement("g", null, e2.createElement("path", { d: "M25,0C11.2,0,0,11.2,0,25c0,13.8,11.2,25,25,25c13.8,0,25-11.2,25-25C50,11.2,38.8,0,25,0z M25,48.1 C12.3,48.1,1.9,37.7,1.9,25C1.9,12.3,12.3,1.9,25,1.9c12.7,0,23.1,10.3,23.1,23.1C48.1,37.7,37.7,48.1,25,48.1z M27.9,21.2H12.5 v7.7h15.4v7.7l12.5-10.7v-1.7L27.9,13.4V21.2z" }))))), _2 && e2.createElement(wn, { size: "large", axLabel: qr("web.verify.loading.message") })), ge2 = e2.createElement("div", null, e2.createElement("div", { className: "verify-code__button-container" }, e2.createElement(dc, { workingText: qr("web.verify.loading.message"), submitButton: M2, showSubmitButtonByDefault: true, submitButtonDisabled: !he2(), onClickSubmitButton: ve2, backButton: z2, onClickBackButton: me2 }))), be2 = qr("web.sharing.addreachable.privacy.photo");
      return e2.createElement(e2.Fragment, null, !!F2 && e2.createElement(yc, { button: F2, onClick: me2 }), e2.createElement(lc, { title: null === (u2 = I2.addReachable) || void 0 === u2 ? void 0 : u2.modalTitle, defaultText: qr("email" === $2 ? "web.addreachable.title.add.email" : "phone" === $2 ? "web.addreachable.title.add.phone" : "web.addreachable.title.add.email.or.phone") }), e2.createElement("div", null, e2.createElement("div", null, e2.createElement(hc, null, e2.createElement(fc, { hero: null === (c2 = I2.addReachable) || void 0 === c2 ? void 0 : c2.hero }), e2.createElement("div", { className: "verify-code__security-code-container" }, e2.createElement(uc, { heading: false === (null === (s2 = I2.addReachable) || void 0 === s2 ? void 0 : s2.modalTitle) ? 2 : 3, title: null === (f2 = I2.addReachable) || void 0 === f2 ? void 0 : f2.title }), !(null === (d2 = I2.addReachable) || void 0 === d2 || null === (d2 = d2.description) || void 0 === d2 || !d2.text) && e2.createElement("div", { className: "text-wrap" }, e2.createElement(ic, { textProps: kc({}, null === (p2 = I2.addReachable) || void 0 === p2 || null === (p2 = p2.description) || void 0 === p2 ? void 0 : p2.textProps), marginTop: false !== I2.title }, e2.createElement(pc, { textTemplate: null === (h2 = I2.addReachable) || void 0 === h2 || null === (h2 = h2.description) || void 0 === h2 ? void 0 : h2.text }))), e2.createElement(e2.Fragment, null, !(null === (w2 = I2.addReachable) || void 0 === w2 || !w2.nameTextField) && e2.createElement(Ec, { caption: null === (E2 = I2.addReachable) || void 0 === E2 ? void 0 : E2.nameTextField.caption, onChangeName: (e3) => {
        Q2(e3);
      }, onKeyUp: (e3) => {
        te2(e3);
      } }), e2.createElement(br, { style: { marginTop: !D2 || null !== (S2 = I2.addReachable) && void 0 !== S2 && S2.title && I2.addReachable.title.text || null !== (k2 = I2.addReachable) && void 0 !== k2 && k2.nameTextField ? void 0 : "0" } }, e2.createElement("div", { className: Br()({ "handle-container": true, "handle-container--arrow": B2 }) }, e2.createElement(Kt, { required: true, id: "handle-input", autoComplete: "phone" === $2 ? "tel" : "username", value: V2, type: "phone" === $2 ? "tel" : "text", labelText: null !== (x2 = I2.addReachable) && void 0 !== x2 && x2.handleTextField && null !== (C2 = I2.addReachable) && void 0 !== C2 && null !== (C2 = C2.handleTextField) && void 0 !== C2 && C2.labelText ? null === (O2 = I2.addReachable) || void 0 === O2 ? void 0 : O2.handleTextField.labelText : qr("email" === $2 ? "web.addreachable.email.label" : "phone" === $2 ? "web.addreachable.phone.label" : "web.addreachable.email.or.phone.label"), errorMessage: false === (null === (P2 = I2.addReachable) || void 0 === P2 || null === (P2 = P2.handleTextField) || void 0 === P2 ? void 0 : P2.showErrorMessage) ? void 0 : { axLabel: "error", children: (() => {
        if (L2.length) return oe2;
        if (!ce2) return "";
        switch ($2) {
          case "email":
            return qr("web.addreachable.error.invalid.email");
          case "phone":
            return qr("web.addreachable.error.invalid.phone");
          default:
            return qr("web.addreachable.error.invalid.email.or.phone");
        }
      })() }, onFocus: () => {
        Z2(true);
      }, onBlur: () => {
        se2(le2), V2 || Z2(false);
      }, onKeyUp: (e3) => {
        pe2(V2), "Enter" === e3.key && he2() && ve2();
      }, onChange: (e3) => {
        G2(e3.target.value), pe2(e3.target.value);
      } }, e2.createElement("div", { className: "text-field-background" })), e2.createElement("div", { "aria-hidden": "true", className: "password-hidden-container" }, e2.createElement("input", { tabIndex: -1, id: "password", type: "password", name: "password", "aria-hidden": "true" })), B2 && ye2, !(null === (T2 = I2.addReachable) || void 0 === T2 || !T2.checkbox) && e2.createElement(sc, { checkbox: null === (N2 = I2.addReachable) || void 0 === N2 ? void 0 : N2.checkbox, checked: Y2, onChange: (e3) => {
        X2(e3.target.checked);
      }, onKeyUp: (e3) => {
        "Enter" === e3.key && X2(!Y2);
      } })))), false !== (null === (v2 = I2.addReachable) || void 0 === v2 ? void 0 : v2.footer) && e2.createElement("div", null, e2.createElement(ic, { textProps: kc({}, null === (m2 = I2.addReachable) || void 0 === m2 || null === (m2 = m2.footer) || void 0 === m2 ? void 0 : m2.textProps), marginTop: false }, null !== (y2 = I2.addReachable) && void 0 !== y2 && null !== (y2 = y2.footer) && void 0 !== y2 && y2.text ? e2.createElement(pc, { textTemplate: null === (g2 = I2.addReachable) || void 0 === g2 || null === (g2 = g2.footer) || void 0 === g2 ? void 0 : g2.text }) : qr("phone" === $2 ? "web.addreachable.footer.phone.text" : "web.addreachable.footer.text"))), (null === (b2 = I2.addReachable) || void 0 === b2 ? void 0 : b2.privacy) && e2.createElement("div", { className: Br()("privacy-section", { ["privacy-section--".concat(I2.addReachable.privacy.alignment || "left")]: true }) }, e2.createElement(ic, { textProps: { typography: "caption" }, marginTop: false }, e2.createElement(Zo, { html: be2 }))), !B2 && ge2)))));
    }, Oc = () => {
      var t3 = Du(Ul), n2 = Du(Gl), { pending: r2, errors: o2 } = Iu((e3) => e3.verifyWeb), i2 = Hr(o2, qr("web.error.unknown.description"));
      return (0, e2.useEffect)(() => {
        n2();
      }, []), e2.createElement(yr, null, e2.createElement("div", { style: { textAlign: "center" }, className: o2.length ? "is-error" : "" }, r2 && e2.createElement("div", { className: "verify-code__spinner-container", style: { justifyContent: "center", minHeight: "92px" } }, e2.createElement(wn, { axLabel: qr("web.verify.loading.message") }), e2.createElement("span", null, qr("web.verify.loading.message"))), !r2 && e2.createElement(vn, { onClick: () => {
        t3();
      } }, qr("web.continue.button")), !!o2.length && e2.createElement(st, { axLabel: "test", id: "test" }, i2)));
    }, Pc = () => {
      var t3 = Du(Hl), { federation: n2 } = Iu((e3) => e3.verifyWeb.externalData.options), r2 = null == n2 ? void 0 : n2.id_token, o2 = null == n2 ? void 0 : n2.idp, { pending: i2, errors: a2 } = Iu((e3) => e3.verifyWeb);
      return (0, e2.useEffect)(() => {
        r2 && o2 && t3({ idp: o2, id_token: r2 });
      }, [r2]), e2.createElement(yr, null, e2.createElement("div", null, e2.createElement("div", null, i2 && e2.createElement("div", { className: "verify-code__spinner-container", style: { justifyContent: "center", minHeight: "92px" } }, e2.createElement(wn, { axLabel: qr("web.verify.loading.message") }), e2.createElement("span", null, qr("web.verify.loading.message"))), !!a2.length && e2.createElement(hc, null))));
    }, Tc = () => {
      var { errors: t3, showAlert: n2 } = Iu((e3) => e3.verifyWeb), r2 = Du(Ra), o2 = Du(La), i2 = Du(Ia), [a2] = t3;
      if (!a2) return null;
      var l2 = () => {
        o2(false), r2(), i2("fatalError");
      }, u2 = Hr(t3, qr("web.error.unknown.description")), c2 = a2.title || qr("web.error.unknown.title");
      return e2.createElement(Wn, { blurryOverlay: false, visible: n2, onDismiss: l2, axLabel: "tets" }, e2.createElement(jn, null, e2.createElement(Fn, null, c2 && e2.createElement(Hn, null, c2), u2 && e2.createElement(Dn, null, u2))), e2.createElement(Rn, null, e2.createElement(vn, { onClick: () => {
        l2();
      } }, qr("web.ok.button"))));
    };
    function Nc(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function Ac(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? Nc(Object(n2), true).forEach(function(t4) {
          Rc(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : Nc(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function Rc(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    var _c = () => {
      var t3, n2, r2, o2, i2, a2, l2, u2, c2, s2, f2, d2, p2, h2, v2, m2, y2, g2, b2, { currentStep: w2, connection: E2, steps: S2, pending: k2, completeResult: x2 } = Iu((e3) => e3.verifyWeb), C2 = S2[w2], O2 = Du(Ia), [P2] = (0, e2.useState)(C2.id), [T2, N2] = (0, e2.useState)(""), [A2, R2] = (0, e2.useState)(false), _2 = Du(Fa);
      if (null !== (t3 = C2.addReachable) && void 0 !== t3 && t3.interstitialCreatePage) {
        var j2 = e2.createElement("div", null, e2.createElement("div", { className: "verify-code__button-container" }, e2.createElement(Nn, { workingText: k2 && qr("web.verify.loading.message"), centered: true }, e2.createElement(cc, { expand: true, color: "secondary-neutral", disabled: !(null === (n2 = C2.addReachable) || void 0 === n2 || !n2.interstitialCreatePage.nameTextField || T2 && A2), onClick: () => {
          _2(void 0, { name: T2 }), O2("verify");
        } }, qr("web.addreachable.interstitial.create.continue.without.account.button")), e2.createElement(cc, { bare: true, link: true, expand: true, color: "neutral", onClick: () => {
          _2(void 0, { name: T2 }), null == E2 || E2.emit("complete", Ac(Ac({}, x2), {}, { name: T2 }));
        } }, qr("web.addreachable.interstitial.create.create.account.button")))));
        return e2.createElement(e2.Fragment, null, e2.createElement(lc, { title: null === (r2 = C2.addReachable) || void 0 === r2 ? void 0 : r2.interstitialCreatePage.modalTitle, defaultText: qr("email" === P2 ? "web.addreachable.title.add.email" : "web.addreachable.title.add.phone") }), e2.createElement("div", null, e2.createElement("div", null, e2.createElement(hc, null, e2.createElement(fc, { hero: null === (o2 = C2.addReachable) || void 0 === o2 ? void 0 : o2.hero }), e2.createElement("div", { className: "verify-code__security-code-container" }, e2.createElement(uc, { heading: false === (null === (i2 = C2.addReachable) || void 0 === i2 ? void 0 : i2.modalTitle) ? 2 : 3, title: null === (a2 = C2.addReachable) || void 0 === a2 || null === (a2 = a2.interstitialCreatePage) || void 0 === a2 ? void 0 : a2.title }), !(null === (l2 = C2.addReachable) || void 0 === l2 || null === (l2 = l2.interstitialCreatePage) || void 0 === l2 || null === (l2 = l2.description) || void 0 === l2 || !l2.text) && e2.createElement(ic, { textProps: Ac({}, null === (u2 = C2.addReachable) || void 0 === u2 || null === (u2 = u2.interstitialCreatePage) || void 0 === u2 || null === (u2 = u2.description) || void 0 === u2 ? void 0 : u2.textProps), marginTop: false !== (null === (c2 = C2.addReachable) || void 0 === c2 || null === (c2 = c2.interstitialCreatePage) || void 0 === c2 ? void 0 : c2.title) }, e2.createElement(pc, { textTemplate: null === (s2 = C2.addReachable) || void 0 === s2 || null === (s2 = s2.interstitialCreatePage) || void 0 === s2 || null === (s2 = s2.description) || void 0 === s2 ? void 0 : s2.text })), e2.createElement(ic, { textProps: Ac({}, null === (f2 = C2.addReachable) || void 0 === f2 || null === (f2 = f2.interstitialCreatePage) || void 0 === f2 || null === (f2 = f2.description2) || void 0 === f2 ? void 0 : f2.textProps), marginTop: true }, !(null === (d2 = C2.addReachable) || void 0 === d2 || null === (d2 = d2.interstitialCreatePage) || void 0 === d2 || null === (d2 = d2.description2) || void 0 === d2 || !d2.text) && e2.createElement(pc, { textTemplate: null === (p2 = C2.addReachable) || void 0 === p2 || null === (p2 = p2.interstitialCreatePage) || void 0 === p2 || null === (p2 = p2.description2) || void 0 === p2 ? void 0 : p2.text })), e2.createElement(br, null, e2.createElement(Kt, { labelText: "email" === C2.id ? "Email" : "Phone number", value: C2.name || "", disabled: true })), !(null === (h2 = C2.addReachable) || void 0 === h2 || !h2.interstitialCreatePage.nameTextField) && e2.createElement(br, null, e2.createElement(Ec, { caption: null === (v2 = C2.addReachable) || void 0 === v2 ? void 0 : v2.interstitialCreatePage.nameTextField.caption, onChangeName: (e3) => {
          N2(e3);
        }, onKeyUp: (e3) => {
          R2(e3);
        } })), false !== (null === (m2 = C2.addReachable.interstitialCreatePage) || void 0 === m2 ? void 0 : m2.footer) && !(null === (y2 = C2.addReachable) || void 0 === y2 || null === (y2 = y2.interstitialCreatePage) || void 0 === y2 || null === (y2 = y2.footer) || void 0 === y2 || !y2.text) && e2.createElement(ic, { textProps: Ac({}, null === (g2 = C2.addReachable.interstitialCreatePage) || void 0 === g2 || null === (g2 = g2.footer) || void 0 === g2 ? void 0 : g2.textProps), marginTop: true }, e2.createElement(pc, { textTemplate: null === (b2 = C2.addReachable) || void 0 === b2 || null === (b2 = b2.interstitialCreatePage) || void 0 === b2 || null === (b2 = b2.footer) || void 0 === b2 ? void 0 : b2.text })), j2)))));
      }
    }, jc = false, Lc = (t3) => {
      var { children: n2, data: r2, connection: o2, bootData: i2 } = t3;
      !(function() {
        var e3 = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {};
        Object.keys(e3).forEach((t4) => {
          return n3 = t4, r3 = e3[t4], Wr[n3] = r3;
          var n3, r3;
        });
      })(i2.i18n);
      var a2 = Lu();
      return a2.dispatch(ja({ data: o2 })), a2.dispatch(_a({ data: r2, bootData: i2 })), ((e3) => {
        jc || (e3.options.token && Se.pushPlugin(me({ name: "X-Apple-Identity-token", value: e3.options.token })), e3.options.nonce && Se.pushPlugin(me({ name: "X-Apple-I-Verification-Nonce", value: e3.options.nonce })), e3.options.context && Se.pushPlugin(me({ name: "X-Apple-I-Verification-Context", value: e3.options.context })), e3.options.frameId && Se.pushPlugin(me({ name: "X-Apple-Frame-Id", value: e3.options.frameId + "" })), e3.serviceKey && Se.pushPlugin(me({ name: "X-Apple-AppID-Key", value: e3.serviceKey })), jc = true);
      })(r2), e2.createElement(ci, { store: a2 }, n2);
    }, Dc = () => {
      var t3, n2, r2, { verificationCode: o2, disableSendNewCode: i2 } = Iu((e3) => e3.verifyWeb), a2 = Du(ou), l2 = Du(Ql), u2 = Du(Da), c2 = o2, s2 = { id: "skip", title: (null === (t3 = c2.didNotGetCode) || void 0 === t3 || null === (t3 = t3.skipOption) || void 0 === t3 ? void 0 : t3.title) || qr("web.skip.phone.number.verification.link.text"), description: (null === (n2 = c2.didNotGetCode) || void 0 === n2 || null === (n2 = n2.skipOption) || void 0 === n2 ? void 0 : n2.description) || "" }, f2 = { id: "email", title: qr("web.send.new.code.button") }, d2 = null !== (r2 = c2.didNotGetCode) && void 0 !== r2 && r2.skipOption ? i2 ? [s2] : [f2, s2] : [f2];
      return e2.createElement("div", { style: { textAlign: "left", padding: "5px" } }, e2.createElement(ir, { shouldAddContainer: false, listItem: e2.createElement(Jn, null, e2.createElement(bt, null, d2.map((t4) => e2.createElement(gt, { large: 2 === d2.length ? "6" : "12", small: "12", style: { marginBottom: "10px", padding: "0 10px" }, key: t4.id }, e2.createElement(ar, { border: true, key: t4.id, title: e2.createElement(nr, { typography: "body-reduced" }, t4.title), lines: [t4.description], onClick: (e3) => {
        e3.preventDefault(), "skip" === t4.id ? a2() : (l2(true), u2(false));
      } }))))) }));
    }, Ic = () => {
      var t3, n2, r2, o2 = Du(Ql), i2 = Du(Da), a2 = Du(Ma), l2 = Du(ou), { verificationCode: u2, disableSendNewCode: c2 } = Iu((e3) => e3.verifyWeb), s2 = u2, f2 = { id: "sms", title: qr("web.phone.resend.text"), description: qr("web.phone.resend.description") }, d2 = { id: "voice", title: qr("web.phone.resend.call.me"), description: qr("web.portal.phone.resend.call.description") }, p2 = { id: "skip", title: (null === (t3 = s2.didNotGetCode) || void 0 === t3 || null === (t3 = t3.skipOption) || void 0 === t3 ? void 0 : t3.title) || qr("web.skip.phone.number.verification.link.text"), description: (null === (n2 = s2.didNotGetCode) || void 0 === n2 || null === (n2 = n2.skipOption) || void 0 === n2 ? void 0 : n2.description) || "" }, h2 = null !== (r2 = s2.didNotGetCode) && void 0 !== r2 && r2.skipOption ? c2 ? [p2] : [f2, d2, p2] : [f2, d2];
      return e2.createElement(ir, { shouldAddContainer: false, listItem: e2.createElement(Jn, null, e2.createElement(bt, null, h2.map((t4) => e2.createElement(gt, { large: 2 === h2.length ? "6" : "4", medium: 2 === h2.length ? "6" : "4", small: "12", style: { marginBottom: "10px", padding: "0 5px" }, key: t4.id }, e2.createElement(ar, { border: true, key: t4.id, title: e2.createElement(nr, { typography: "body-reduced" }, t4.title), lines: [e2.createElement(nr, { key: t4.id, typography: "caption" }, t4.description)], onClick: (e3) => {
        e3.preventDefault(), "skip" === t4.id ? l2() : (a2(t4.id), o2(true)), i2(false);
      } }))))) });
    }, [zc, Fc] = Ce("resend-fieldset"), Mc = (t3) => {
      var { mode: n2, onChangeSMS: r2, onChangeVoice: o2, skipOption: i2, disableSendNewCode: a2 = false } = t3;
      return e2.createElement("fieldset", { className: zc() }, e2.createElement("div", { className: Fc("radio") }, e2.createElement(zt, { name: "phoneType", value: "sms", "data-testid": "radio-sms", disabled: a2, defaultChecked: "sms" === n2, onChange: r2 }, e2.createElement("div", { className: Fc("text") }, qr("web.phone.resend.text")), e2.createElement("div", { className: Fc("description") }, qr("web.phone.resend.description")))), e2.createElement("div", { className: Fc("radio") }, e2.createElement(zt, { name: "phoneType", disabled: a2, value: "voice", "data-testid": "radio-voice", defaultChecked: "voice" === n2, onChange: o2 }, e2.createElement("div", { className: Fc("text") }, qr("web.phone.resend.call.me")), e2.createElement("div", { className: Fc("description") }, qr("web.portal.phone.resend.call.description")))), !!i2 && e2.createElement("div", { className: Fc("radio") }, e2.createElement(zt, { name: "phoneType", value: "skip", "data-testid": "radio-skip", defaultChecked: "skip" === n2, onChange: i2.onChangeSkip }, e2.createElement("div", { className: Fc("text") }, i2.title || qr("web.skip.phone.number.verification.link.text")), !!i2.description && e2.createElement("div", { className: Fc("description") }, i2.description))));
    }, Uc = () => {
      var t3, n2 = Du(ou), { verificationCode: r2 } = Iu((e3) => e3.verifyWeb), o2 = r2;
      return e2.createElement(vn, { link: true, disabled: false, onClick: (e3) => {
        e3.preventDefault(), n2();
      } }, e2.createElement(nr, { typography: "body-reduced" }, (null === (t3 = o2.optionalConfig) || void 0 === t3 ? void 0 : t3.text) || ("email" === o2.id ? qr("web.skip.email.verification.link.text") : qr("web.skip.phone.number.verification.link.text"))));
    };
    function Bc() {
      return Bc = Object.assign ? Object.assign.bind() : function(e3) {
        for (var t3 = 1; t3 < arguments.length; t3++) {
          var n2 = arguments[t3];
          for (var r2 in n2) ({}).hasOwnProperty.call(n2, r2) && (e3[r2] = n2[r2]);
        }
        return e3;
      }, Bc.apply(null, arguments);
    }
    var Hc = () => {
      var t3, n2, r2, o2, i2, { mode: a2, verificationCode: l2, disableSendNewCode: u2 } = Iu((e3) => e3.verifyWeb), c2 = l2, s2 = Du(Ma), f2 = Du(Ba), d2 = !(null === (t3 = l2.didNotGetCode) || void 0 === t3 || !t3.popup);
      return e2.createElement("div", { style: { flexGrow: 1 } }, !d2 && e2.createElement(uc, { heading: false === c2.modalTitle ? 2 : 3, title: void 0, defaultText: qr("web.didnt.get.verification.code.title") }), "email" === c2.id && e2.createElement(e2.Fragment, null, d2 ? e2.createElement(Dc, null) : e2.createElement(e2.Fragment, null, e2.createElement(br, null, qr("web.verify.email.resend.description")), (null === (n2 = c2.didNotGetCode) || void 0 === n2 ? void 0 : n2.skipOption) && e2.createElement(br, null, e2.createElement(Uc, null)))), "phone" === c2.id && e2.createElement("div", { style: { textAlign: "left", padding: "5px" } }, d2 ? e2.createElement(Ic, null) : e2.createElement(Mc, { disabled: false, mode: a2, disableSendNewCode: u2, onChangeSMS: () => {
        f2(false), s2("sms");
      }, onChangeVoice: () => {
        f2(false), s2("voice");
      }, skipOption: null !== (r2 = c2.didNotGetCode) && void 0 !== r2 && r2.skipOption ? { title: null === (o2 = c2.didNotGetCode) || void 0 === o2 || null === (o2 = o2.skipOption) || void 0 === o2 ? void 0 : o2.title, onChangeSkip: () => {
        f2(true);
      }, description: null === (i2 = c2.didNotGetCode) || void 0 === i2 || null === (i2 = i2.skipOption) || void 0 === i2 ? void 0 : i2.description } : void 0 })));
    }, Wc = () => {
      var t3, n2, r2, o2, i2 = Du(Ql), { pending: a2, verificationCode: l2, selectSkipOption: u2, disableSendNewCode: c2 } = Iu((e3) => e3.verifyWeb), s2 = l2.id, f2 = null === (t3 = l2.didNotGetCode) || void 0 === t3 ? void 0 : t3.backButton, d2 = null === (n2 = l2.didNotGetCode) || void 0 === n2 ? void 0 : n2.submitButton, p2 = Du(ou), h2 = Du(Da);
      return e2.createElement(Nn, { workingText: a2 && qr("web.sending.loading.message"), centered: true }, e2.createElement(cc, Bc({}, "primary" !== (null == d2 || null === (r2 = d2.buttonProps) || void 0 === r2 ? void 0 : r2.color) && { color: "secondary-neutral" }, { onClick: () => {
        h2(false);
      } }, null == d2 ? void 0 : d2.buttonProps), (null == d2 ? void 0 : d2.text) || qr("web.back.button")), e2.createElement(cc, Bc({}, "primary" !== (null == f2 || null === (o2 = f2.buttonProps) || void 0 === o2 ? void 0 : o2.color) && { color: "neutral" }, { disabled: "email" === s2 && c2 || "phone" === s2 && !u2 && c2, onClick: () => {
        u2 ? p2() : i2(true);
      } }, null == f2 ? void 0 : f2.buttonProps), null != f2 && f2.text || "phone" === s2 && u2 ? qr("web.next.button") : qr("web.send.new.code.button")));
    }, qc = ".other-options-popover-container";
    function $c(e3) {
      return Array.from(e3.querySelectorAll('button:not([disabled]), [href], input:not([disabled]), select:not([disabled]), textarea:not([disabled]), [tabindex]:not([tabindex="-1"])'));
    }
    var Vc = "inert", Gc = "aria-hidden", Kc = (t3) => {
      var { anchorElementId: n2, onPopupClose: r2, children: o2 } = t3, i2 = (0, e2.useRef)(null), a2 = () => {
        h2(), r2();
      }, l2 = () => {
        var e3;
        null === (e3 = i2.current) || void 0 === e3 || e3.focus();
      }, u2 = e2.useRef(null), c2 = (e3) => {
        var t4;
        (t4 = e3.target) !== u2.current && !t4.closest(qc) && t4 !== i2.current && t4.closest("body") && (l2(), r2());
      }, s2 = (e3) => {
        var t4 = e3.target;
        t4.closest(".other-options-popover-container") || t4 !== i2.current && (l2(), a2());
      }, f2 = () => {
        var e3 = u2.current;
        setTimeout(() => {
          var t4 = document.activeElement;
          (null === t4 || t4 !== e3 && !t4.closest(qc) && t4 !== i2.current) && (l2(), a2());
        }, 0);
      }, d2 = (e3) => {
        27 === (e3.keyCode || e3.charCode) && (l2(), a2());
      }, p2 = (e3) => {
        if (9 === (e3.keyCode || e3.charCode)) {
          var t4 = u2.current;
          if (t4) {
            var n3 = $c(t4);
            if (0 !== n3.length) {
              var r3 = n3[0], o3 = n3[n3.length - 1], i3 = document.activeElement;
              e3.shiftKey ? i3 !== r3 && t4.contains(i3) || (e3.preventDefault(), o3.focus()) : i3 !== o3 && t4.contains(i3) || (e3.preventDefault(), r3.focus());
            }
          }
        }
      };
      function h2() {
        var e3 = u2.current;
        e3 && (e3.removeEventListener("click", c2), e3.removeEventListener("keyup", d2), e3.removeEventListener("keydown", p2), e3.removeEventListener("focusout", f2)), document.removeEventListener("click", c2), document.body.removeEventListener("focusin", s2);
      }
      return (0, e2.useEffect)(() => {
        var e3 = u2.current;
        i2.current = document.getElementById(n2), (function() {
          var e4 = u2.current;
          e4.addEventListener("click", c2), document.addEventListener("click", c2), document.body.addEventListener("focusin", s2), e4.addEventListener("focusout", f2), e4.addEventListener("keyup", d2), e4.addEventListener("keydown", p2);
        })();
        var t4 = $c(e3)[0];
        if (t4) t4.focus();
        else {
          var r3 = e3.querySelector(".verify-code__new-code-container");
          null == r3 || r3.focus();
        }
        var o3 = (function(e4) {
          var t5 = [];
          function n3(e5) {
            var n4 = e5.hasAttribute(Vc), r5 = e5.hasAttribute(Gc);
            n4 || e5.setAttribute(Vc, ""), r5 || e5.setAttribute(Gc, "true"), t5.push({ el: e5, hadInert: n4, hadAriaHidden: r5 });
          }
          for (var r4 = e4; r4 && r4 !== document.body; ) {
            var o4 = r4.parentElement;
            if (!o4) break;
            Array.from(o4.children).forEach((t6) => {
              var o5 = t6;
              o5 === r4 || o5.contains(e4) || n3(o5);
            }), r4 = o4;
          }
          return document.body && Array.from(document.body.children).forEach((t6) => {
            var r5 = t6;
            r5.contains(e4) || n3(r5);
          }), () => {
            t5.forEach((e5) => {
              var { el: t6, hadInert: n4, hadAriaHidden: r5 } = e5;
              n4 || t6.removeAttribute(Vc), r5 || t6.removeAttribute(Gc);
            });
          };
        })(e3);
        return () => {
          h2(), o3();
        };
      }, []), e2.createElement("div", { style: { margin: 0 }, ref: u2, className: "other-options-popover-container", role: "dialog", "aria-modal": "true", "aria-label": qr("web.footer.verifyCode.popover.label.sr.only") }, o2);
    }, Qc = () => {
      var t3, { verificationCode: n2, showGenerateNewCode: r2 } = Iu((e3) => e3.verifyWeb), o2 = !(null === (t3 = n2.didNotGetCode) || void 0 === t3 || !t3.popup), i2 = Du(Da);
      return e2.createElement(e2.Fragment, null, o2 && r2 && e2.createElement(Kc, { anchorElementId: "did-not-get-code", onPopupClose: () => {
        i2(false);
      } }, e2.createElement("div", { style: { position: "relative" } }, e2.createElement("div", { className: "verify-code__popup" }, e2.createElement("div", { className: "verify-code__new-code-container", tabIndex: -1 }, e2.createElement(Hc, null))))));
    };
    function Yc(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function Xc(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? Yc(Object(n2), true).forEach(function(t4) {
          Jc(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : Yc(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function Jc(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    var Zc = () => {
      var t3, n2, r2, o2, i2, a2, l2, u2, c2, s2, f2, { pending: d2, pendingSendingCode: p2, errors: h2, currentStep: v2, verificationCode: m2, showGenerateNewCode: y2, shouldUseGlobalErrors: g2, skippingVerification: b2, disableSendNewCode: w2, showAlert: E2, didSendCode: S2, formattedHandle: k2 } = Iu((e3) => e3.verifyWeb), x2 = Du(Eu), C2 = Du(Ql), O2 = Du(Ra), P2 = Du(Da), [T2, N2] = (0, e2.useState)([]), [A2, R2] = (0, e2.useState)(false), _2 = Hr(h2, qr("web.error.unknown.description")), j2 = m2, L2 = j2.backButton, D2 = j2.headerBackButton, I2 = j2.submitButton, z2 = !(null === (t3 = j2.didNotGetCode) || void 0 === t3 || !t3.popup), F2 = j2.footer2, M2 = !(!j2.footer2 || !F2.checkbox || !F2.checkbox), [U2, B2] = (0, e2.useState)(!!M2 && !!F2.checkbox.checked), H2 = !(y2 || !L2 && !I2);
      (0, e2.useEffect)(() => {
        N2(Array.from({ length: 6 }, () => ""));
      }, [6]), (0, e2.useEffect)(() => {
        y2 || S2 || C2();
      }, [v2, S2]), (0, e2.useEffect)(() => {
        if (!(d2 || y2 || g2)) {
          var e3 = setTimeout(() => {
            document.querySelector("input").focus();
          });
          return () => {
            clearTimeout(e3), O2();
          };
        }
      }, [v2, d2, y2, h2, g2]), (0, e2.useEffect)(() => {
        h2.length && N2(Array.from({ length: 6 }, () => ""));
      }, [h2]);
      var W2 = (0, e2.useCallback)((e3) => {
        d2 || (h2.length && O2(), N2(e3), 6 === e3.join("").length ? (R2(true), I2 || x2({ secretCode: e3.join(""), checkboxChecked: M2 ? U2 : void 0 })) : R2(false));
      }, [h2, d2, U2]);
      (0, e2.useEffect)(() => {
        N2(Array.from({ length: 6 }, () => ""));
      }, [v2]);
      var q2, $2, V2 = e2.createElement(vn, { link: true, id: "did-not-get-code", disabled: d2 || !(null !== (n2 = j2.didNotGetCode) && void 0 !== n2 && n2.skipOption) && w2, onClick: (e3) => {
        e3.preventDefault(), y2 || e3.stopPropagation(), P2(!y2), N2(Array.from({ length: 6 }, () => ""));
      } }, e2.createElement(nr, { typography: "body-reduced" }, (null === (r2 = j2.didNotGetCodeButtonLink) || void 0 === r2 ? void 0 : r2.text) || qr("web.didnt.get.verification.code.link"))), G2 = function() {
        var t4 = arguments.length > 0 && void 0 !== arguments[0] && arguments[0], n3 = j2.footer, r3 = Br()({ "verify-code__security-code-description": true, "verify-code__security-code-description--hide": p2, "verify-code__security-code-description--left": t4 && "left" === (null == n3 ? void 0 : n3.alignment) });
        return e2.createElement("div", { className: r3 }, e2.createElement(ic, { textProps: Xc({}, null == n3 ? void 0 : n3.textProps), marginTop: false }, e2.createElement(pc, { textTemplate: (null == n3 ? void 0 : n3.text) || qr("web.enter.verification.code.description", k2) })));
      }, K2 = function() {
        var t4, n3 = arguments.length > 0 && void 0 !== arguments[0] && arguments[0], r3 = (null === (t4 = j2.didNotGetCodeButtonLink) || void 0 === t4 ? void 0 : t4.alignment) || "center", o3 = Br()({ "verify-code__resend-code-link-container": true, "verify-code__resend-code-link-container--popup": z2, "verify-code__resend-code-link-container--inside-wrapper": n3 }), i3 = Br()({ "verify-code__resend-code-link": true, ["verify-code__resend-code-link--".concat(r3)]: true, "verify-code__resend-code-link--hide": p2 || E2, "verify-code__resend-code-link--popup": z2, "verify-code__resend-code-link--inside-wrapper": n3 });
        return e2.createElement("div", { className: o3 }, e2.createElement("div", { className: i3 }, ((t5) => e2.createElement(e2.Fragment, null, !p2 && d2 ? e2.createElement("div", { className: "verify-code__spinner-container", style: { justifyContent: "left" === t5 ? "flex-start" : "center" } }, e2.createElement(wn, { axLabel: qr("web.verify.loading.message") }), e2.createElement("span", null, qr("web.verify.loading.message"))) : e2.createElement(e2.Fragment, null, V2)))(r3), e2.createElement(Qc, null)));
      }, Q2 = e2.createElement("div", null, e2.createElement("div", { className: "verify-code__security-code-container" }, e2.createElement(uc, { heading: false === j2.modalTitle ? 2 : 3, title: j2.title, defaultText: qr("web.enter.verification.code.title") }), !!j2.description && !!j2.description.text && e2.createElement(ic, { textProps: Xc({}, j2.description.textProps), marginTop: false !== j2.title }, e2.createElement(pc, { textTemplate: j2.description.text })), !(null === (o2 = j2.description2) || void 0 === o2 || !o2.text) && e2.createElement(ic, { textProps: Xc({}, j2.description2.textProps), marginTop: true }, e2.createElement(pc, { textTemplate: j2.description2.text })), e2.createElement("div", { className: Br()("verify-code__security-code-wrapper", { "verify-code__security-code-wrapper--no-min-height": false !== j2.footer && "left" === (null === (i2 = j2.footer) || void 0 === i2 ? void 0 : i2.alignment) || "left" === (null === (a2 = j2.didNotGetCodeButtonLink) || void 0 === a2 ? void 0 : a2.alignment) }) }, d2 && p2 ? e2.createElement("div", { className: "verify-code__spinner-container", style: { justifyContent: "center", minHeight: "92px" } }, e2.createElement(wn, { axLabel: qr(b2 ? "web.verify.loading.message" : "web.sending.loading.message") }), e2.createElement("span", null, qr(b2 ? "web.verify.loading.message" : "web.sending.loading.message"))) : e2.createElement(Rr, { value: T2, errorMessage: { axLabel: qr("web.aria.digit"), children: h2.length ? _2 : "" }, disabled: !H2 && M2 && !U2 && F2.checkbox.required, onChange: W2, split: false, axLabel: qr("web.verifyCode.first.digit.sr"), axDigitLabel: qr("web.aria.digit") }), "left" === (null === (l2 = j2.didNotGetCodeButtonLink) || void 0 === l2 ? void 0 : l2.alignment) && K2(true), false !== j2.footer && "left" === (null === (u2 = j2.footer) || void 0 === u2 ? void 0 : u2.alignment) && G2(true)), false !== j2.footer && "left" !== (null === (c2 = j2.footer) || void 0 === c2 ? void 0 : c2.alignment) && G2()), e2.createElement(ic, { marginTop: !!j2.footer }, "left" !== (null === (s2 = j2.didNotGetCodeButtonLink) || void 0 === s2 ? void 0 : s2.alignment) && K2(), !!j2.optional && e2.createElement("div", { className: p2 || E2 ? "verify-code__skip-verification-link verify-code__skip-verification-link--".concat("center", " verify-code__skip-verification-link--hide") : "verify-code__skip-verification-link verify-code__skip-verification-link--".concat((null === (f2 = j2.optionalConfig) || void 0 === f2 ? void 0 : f2.alignment) || "center") }, e2.createElement(Uc, null))), (q2 = j2.footer2, $2 = void 0, M2 && ($2 = j2.footer2.checkbox), e2.createElement(e2.Fragment, null, M2 && $2 ? e2.createElement("div", { className: p2 ? "verify-code__checkbox hidden" : "verify-code__checkbox" }, e2.createElement(sc, { checkbox: $2, checked: U2, onChange: (e3) => {
        B2(e3.target.checked);
      }, onKeyUp: (e3) => {
        "Enter" === e3.key && B2(!U2);
      } })) : (null == q2 ? void 0 : q2.text) && e2.createElement("div", { className: p2 ? "verify-code--hide" : "" }, e2.createElement(ic, { textProps: Xc({}, null == q2 ? void 0 : q2.textProps), marginTop: true }, e2.createElement(pc, { textTemplate: q2.text })))))), Y2 = e2.createElement("div", null, e2.createElement("div", { className: "verify-code__button-container" }, y2 && e2.createElement(Wc, null))), X2 = Du(Wa), J2 = e2.createElement("div", { style: { padding: "5px", margin: "0 20px" } }, e2.createElement("div", { className: "verify-code__button-container" }, e2.createElement(dc, { submitButton: I2, submitButtonDisabled: !A2 || M2 && !U2 && F2.checkbox.required, onClickSubmitButton: () => {
        x2({ secretCode: T2.join(""), checkboxChecked: M2 ? U2 : void 0 });
      }, backButton: L2, onClickBackButton: () => {
        X2();
      } })));
      return e2.createElement(yr, null, e2.createElement(e2.Fragment, null, !!D2 && e2.createElement(yc, { button: D2, onClick: X2 }), e2.createElement(lc, { title: j2.modalTitle, defaultText: "email" === j2.id ? qr("web.verify.email.title") : qr("web.verify.phone.title") }), e2.createElement("div", null, e2.createElement("div", null, e2.createElement(hc, null, !(!z2 && y2) && e2.createElement(fc, { hero: j2.hero, svg: "email" === j2.id ? e2.createElement(mc, null) : void 0 }), (z2 || !y2) && e2.createElement(e2.Fragment, null, Q2), !z2 && y2 && e2.createElement("div", { className: "verify-code__new-code-container" }, e2.createElement(Hc, null), !z2 && e2.createElement(e2.Fragment, null, Y2)), H2 && J2)))));
    }, es = (n(5892), () => {
      (function() {
        var { shouldUseGlobalErrors: t4, errors: n3, externalData: r3, enableErrorAlert: o3 } = Iu((e3) => e3.verifyWeb), i3 = r3.options.frameId, a3 = Du(La), l3 = Du(Ra), u3 = Du(Ia), [c3] = n3;
        (0, e2.useEffect)(() => {
          if (c3 && t4) {
            var e3 = c3, { isLogged: n4, name: r4, message: s3 } = e3, f3 = (function(e4, t5) {
              if (null == e4) return {};
              var n5, r5, o4 = (function(e5, t6) {
                if (null == e5) return {};
                var n6 = {};
                for (var r6 in e5) if ({}.hasOwnProperty.call(e5, r6)) {
                  if (-1 !== t6.indexOf(r6)) continue;
                  n6[r6] = e5[r6];
                }
                return n6;
              })(e4, t5);
              if (Object.getOwnPropertySymbols) {
                var i4 = Object.getOwnPropertySymbols(e4);
                for (r5 = 0; r5 < i4.length; r5++) n5 = i4[r5], -1 === t5.indexOf(n5) && {}.propertyIsEnumerable.call(e4, n5) && (o4[n5] = e4[n5]);
              }
              return o4;
            })(e3, Bu);
            n4 || Uu.error("Error" === r4 ? "VERIFY_WEB_GLOBAL" : r4, s3 || qr("web.error.unknown.title"), Wu(Wu({}, f3), {}, { iframeId: i3 })), o3 ? a3(true) : (l3(), u3("fatalError"));
          }
        }, [c3, t4]);
      })(), (function() {
        var { autoThemeAdjust: t4, defaultTheme: n3 } = Iu((e3) => e3.verifyWeb.externalData.options.theme);
        (0, e2.useEffect)(() => {
          var e3, r3 = document.getElementsByTagName("body")[0], o3 = document.querySelector("#verify-web main"), i3 = /* @__PURE__ */ new Set(), a3 = (e4, t5) => {
            t5 ? r3.classList.contains(e4) || i3.add(e4) : i3.delete(e4), r3.classList.toggle(e4, t5), o3 && o3.classList.toggle(e4, t5);
          };
          return "blue" === n3 ? (a3("theme-dark", true), a3("theme-blue", true)) : "function" == typeof window.matchMedia && t4 ? ((e3 = window.matchMedia("(prefers-color-scheme: dark)")).matches && a3("theme-dark", true), e3.onchange = (e4) => {
            a3("theme-dark", Boolean(e4 && e4.matches));
          }) : "dark" === n3 && a3("theme-dark", true), () => {
            e3 && (e3.onchange = null), i3.forEach((e4) => {
              r3.classList.remove(e4), o3 && o3.classList.remove(e4);
            });
          };
        }, [t4, n3]);
      })(), (function() {
        var { verificationStep: t4, verificationCode: n3, showGenerateNewCode: r3, connection: o3, completeResult: i3, errorResult: a3, errors: l3, checkboxData: u3 } = Iu((e3) => e3.verifyWeb), c3 = Du(cu), s3 = l3.length ? l3[0] : { message: "", title: "" };
        (0, e2.useEffect)(() => {
          "verificationDone" === t4 ? c3() : "complete" === t4 ? u3.length > 0 ? null == o3 || o3.emit("complete", Vu(Vu({}, i3), {}, { checkbox: u3 })) : null == o3 || o3.emit("complete", i3) : "fatalError" === t4 ? null == o3 || o3.emit("fail", Vu(Vu({}, a3), {}, { error: Vu(Vu({}, a3.error), {}, { message: a3.error.message || s3.message || qr("web.error.unknown.description"), title: a3.error.title || s3.title || qr("web.error.unknown.title") }) })) : "cancel" === t4 ? null == o3 || o3.emit("fail", Vu(Vu({}, a3), {}, { error: Vu(Vu({}, a3.error), {}, { message: "", title: "" }) })) : "verify" !== t4 && "add" !== t4 || null == o3 || o3.emit("widgetWillChangeFlow", { id: n3.id, step: t4, subStep: "verify" === t4 && r3 ? "didNotGetCode" : "" });
        }, [t4, n3.id, r3]);
      })();
      var t3, { currentStep: n2, verificationStep: r2, connection: o2, pending: i2, externalData: a2, showAlert: l2 } = Iu((e3) => e3.verifyWeb), u2 = a2.features.noPadding || false, [c2, s2] = (0, e2.useState)(null), [f2, d2] = (0, e2.useState)(0), p2 = "fixed" === a2.features.size;
      switch ((0, e2.useEffect)(() => {
        if (c2 && "expanded" === a2.features.size) {
          var e3 = Mr(c2, (e4) => {
            0 === n2 && ("verify" === r2 || "add" === r2 || "fedAuthComplete" === r2) && f2 < e4.height && 0 == f2 && d2(e4.height), 0 !== f2 && (f2 <= e4.height || window.innerHeight < e4.height) && (null == o2 || o2.emit("resize", e4));
          });
          return () => {
            e3();
          };
        }
      }, [c2, n2, r2, i2, f2]), r2) {
        case "interstitialCreatePage":
          t3 = e2.createElement(_c, null);
          break;
        case "verify":
          t3 = e2.createElement(Zc, null);
          break;
        case "add":
          t3 = e2.createElement(Cc, null);
          break;
        case "fedAuth":
          t3 = e2.createElement(Oc, null);
          break;
        case "fedAuthComplete":
          t3 = e2.createElement(Pc, null);
          break;
        default:
          t3 = e2.createElement("div", { className: "verify-complete" }, e2.createElement(wn, { size: "large", axLabel: "Loading" }));
      }
      return e2.createElement("div", { id: "verify-web", className: "app", style: { height: "100%" } }, e2.createElement("main", { className: Br()("app__main", { "app--fixed": p2 }) }, e2.createElement("div", { className: "app__content", ref: (e3) => {
        s2(e3);
      } }, e2.createElement("div", { className: Br()({ "verify-code": true, "verify-code--hide": l2, "verify-code--no-margin": u2 }) }, t3))), e2.createElement(Tc, null));
    });
    function ts(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var ns = /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              ts(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              ts(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* (e4, t3) {
        var n2 = (() => {
          try {
            var e5;
            return (null === (e5 = window) || void 0 === e5 || null === (e5 = e5.idms) || void 0 === e5 || null === (e5 = e5.app_config) || void 0 === e5 || null === (e5 = e5.bootData) || void 0 === e5 ? void 0 : e5.urlContext) || "";
          } catch (e6) {
            return "";
          }
        })(), r2 = "".concat(n2, "/verification/token");
        try {
          var o2 = yield fetch(r2, { method: "POST", headers: { "Content-Type": "application/json; charset=utf-8", Accept: "application/json", "X-Apple-Widget-Key": t3 }, body: JSON.stringify({ context: e4 }) });
          if (!o2.ok) throw new Error("Failed to fetch verification token: ".concat(o2.status, " ").concat(o2.statusText));
          var i2 = yield o2.json();
          if (!i2.token) throw new Error("No token returned from verification endpoint");
          return i2.token;
        } catch (e5) {
          if (e5 instanceof Error) throw new Error("Failed to fetch verification token: ".concat(e5.message));
          throw new Error("Failed to fetch verification token: Unknown error");
        }
      });
      return function(t3, n2) {
        return e3.apply(this, arguments);
      };
    })();
    function rs(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function os(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? rs(Object(n2), true).forEach(function(t4) {
          is(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : rs(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function is(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function as(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    function ls(e3) {
      return function() {
        var t3 = this, n2 = arguments;
        return new Promise(function(r2, o2) {
          var i2 = e3.apply(t3, n2);
          function a2(e4) {
            as(i2, r2, o2, a2, l2, "next", e4);
          }
          function l2(e4) {
            as(i2, r2, o2, a2, l2, "throw", e4);
          }
          a2(void 0);
        });
      };
    }
    var us = false;
    function cs() {
      return (cs = ls(function* (e3) {
        var t3, n2 = yield fetch(e3, { headers: { "Content-Type": "application/json" } });
        if (!n2.ok) throw new Error("HTTP error! status: ".concat(n2.status));
        var r2 = (null === (t3 = n2.headers) || void 0 === t3 ? void 0 : t3.get("X-Apple-ID-Session-Id")) || void 0;
        return us || (Se.pushPlugin((function(e4) {
          var t4 = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : { ignoreUndefinedHeaders: true };
          return ue(ue({}, (function(e5, t5) {
            var n3 = !(arguments.length > 2 && void 0 !== arguments[2]) || arguments[2], r3 = ie({}, e5);
            return { name: "headersReplay", requestInterceptor(e6) {
              var t6 = {};
              for (var n4 in r3) {
                var o2 = r3[n4];
                "function" == typeof o2 ? t6[n4] = o2(n4) : o2 && (t6[n4] = o2);
              }
              return 0 === Object.keys(t6).length ? e6 : ie(ie({}, e6), {}, { headers: ie(ie({}, e6.headers), t6) });
            }, responseInterceptor(e6) {
              for (var o2 in r3) {
                var i2, a2 = e6.headers[o2] || e6.headers[o2.toLowerCase()];
                n3 && !a2 || (null == t5 || null === (i2 = t5[o2]) || void 0 === i2 || i2.call(t5, a2), "function" != typeof r3[o2] && (r3[o2] = a2));
              }
              return e6;
            } };
          })({ [e4.name]: e4.value }, { [e4.name]: null == t4 ? void 0 : t4.setHeaderCallback }, t4.ignoreUndefinedHeaders)), {}, { name: "headerReplay" });
        })({ name: "X-Apple-ID-Session-Id", value: r2 })), us = true), n2.json();
      })).apply(this, arguments);
    }
    function ss() {
      return ss = ls(function* (n2, r2, o2, i2) {
        if (!r2 && !i2) throw new Error("onRootCreated callback required when connection is auto-created for cleanup");
        var a2, l2 = null != r2 ? r2 : new d(window, window.location.origin, { namespace: "aid-verify-widget", instanceId: "verify-".concat(crypto.randomUUID()) });
        l2.connect(), new (xe())();
        var u2 = (function() {
          var e3 = ls(function* (e4) {
            if (!e4.options.token && (() => {
              try {
                var e5;
                return !(null === (e5 = window) || void 0 === e5 || !e5.idms);
              } catch (e6) {
                return false;
              }
            })()) try {
              var t3 = yield ns(e4.options.context, e4.serviceKey);
              return os(os({}, e4), {}, { options: os(os({}, e4.options), {}, { token: t3 }) });
            } catch (e5) {
              console.warn("Failed to fetch verification token from embedded app:", e5);
            }
            return e4;
          });
          return function(t3) {
            return e3.apply(this, arguments);
          };
        })(), c2 = (function() {
          var r3 = ls(function* (r4) {
            var o3, c3 = yield u2(r4), s2 = (function(e3) {
              var t3 = (function(e4) {
                var t4 = { serviceKey: e4.serviceKey, redirect_uri: e4.redirect_uri };
                return e4.devAppDomain && (t4.widgetDomain = e4.devAppDomain), t4.frameId = e4.options.frameId, e4.options.locale && (t4.language = e4.options.locale), t4;
              })(e3), n3 = new URL(window.location.origin + e3.urlContext + "/verification/load");
              return Object.entries(t3).forEach((e4) => {
                var [t4, r5] = e4;
                void 0 !== r5 && n3.searchParams.set(t4, r5);
              }), n3.toString();
            })(c3);
            us || Se.pushPlugin(((o3 = c3.urlContext).endsWith("/") && (o3 = o3.slice(0, -1)), { name: "prefixURLPlugin", requestInterceptor(e3) {
              var { url: t3 } = e3;
              return fe(fe({}, e3), {}, { url: t3.startsWith("http") ? t3 : o3 + "".concat(t3.startsWith("/") ? "" : "/").concat(t3) });
            } }));
            var f2 = yield (function(e3) {
              return cs.apply(this, arguments);
            })(s2);
            !(function() {
              var e3 = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : "", t3 = document.getElementsByTagName("head")[0], n3 = document.createElement("link");
              n3.href = "https://www.apple.com/wss/fonts?families=SF+Pro,v3|SF+Pro+Icons,v3".concat(e3), n3.type = "text/css", n3.rel = "stylesheet", t3.append(n3);
            })(f2.locale.localeFontFile), (function(e3) {
              if (e3) {
                var t3 = document.getElementsByTagName("head")[0], n3 = document.createElement("link");
                n3.href = e3, n3.type = "text/css", n3.rel = "stylesheet", t3.append(n3);
              }
            })(f2.locale.localeFontPath), (function(e3) {
              var t3;
              null === (t3 = document.getElementById("loading")) || void 0 === t3 || t3.remove();
              var n3 = document.getElementsByTagName("html")[0];
              n3.dir = e3.locale.rtl ? "rtl" : "ltr", n3.lang = e3.locale.languagePrefix;
            })(f2), a2 || (a2 = t2.createRoot(n2)), l2.emit("widgetWillRender", {}), a2.render(e2.createElement(Lc, { bootData: f2, data: c3, connection: l2 }, e2.createElement(es, null))), i2 && i2(a2, l2);
          });
          return function(e3) {
            return r3.apply(this, arguments);
          };
        })();
        o2 ? yield c2(o2) : l2.on("config", (e3) => {
          c2(e3).catch((e4) => {
            console.error("Error rendering app from config event:", e4);
          });
        });
      }), ss.apply(this, arguments);
    }
    function fs(e3) {
      switch (e3) {
        case "dark":
        default:
          return "light";
        case "light":
        case "dark-standard":
          return "dark";
      }
    }
    function ds(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function ps(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? ds(Object(n2), true).forEach(function(t4) {
          hs(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : ds(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function hs(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function vs() {
      if ("undefined" != typeof crypto && crypto.randomUUID) return crypto.randomUUID();
      if ("undefined" != typeof crypto && crypto.getRandomValues) {
        var e3 = new Uint8Array(16);
        return crypto.getRandomValues(e3), Array.from(e3, (e4) => e4.toString(16).padStart(2, "0")).join("");
      }
      throw new Error("Cryptographically secure random number generator not available");
    }
    function ms(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    function ys(e3) {
      return function() {
        var t3 = this, n2 = arguments;
        return new Promise(function(r2, o2) {
          var i2 = e3.apply(t3, n2);
          function a2(e4) {
            ms(i2, r2, o2, a2, l2, "next", e4);
          }
          function l2(e4) {
            ms(i2, r2, o2, a2, l2, "throw", e4);
          }
          a2(void 0);
        });
      };
    }
    function gs(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    n(56175), n(82953), n(18356), n(6665), n(6244), n(11244), n(67415), n(20838), n(94165), n(66557), n(9685), n(57530), n(79229), n(20714);
    class bs {
      constructor(e3) {
        gs(this, "container", null), gs(this, "containerId", null), gs(this, "config", null), gs(this, "initialized", false), gs(this, "authContainer", null), gs(this, "verifyContainer", null), gs(this, "authInitialized", false), gs(this, "verifyRoot", null), gs(this, "verifyConnection", null), this.callbacks = e3.callbacks, this.resolveContainer(e3.container);
      }
      resolveContainer(e3) {
        if ("string" == typeof e3) {
          if (this.containerId = e3, this.container = document.getElementById(e3), !this.container) throw new Error('Container element with id "'.concat(e3, '" not found'));
        } else this.container = e3, e3.id || (e3.id = "identity-widget-".concat(Date.now())), this.containerId = e3.id;
      }
      initialize() {
        var e3 = this;
        return ys(function* () {
          if (!e3.initialized) {
            e3.initialized = true;
            try {
              var t3, n2, r2, o2;
              if (null === (t3 = window.idms) || void 0 === t3 || !t3.getConfigFromConsumer) throw new Error("IDMS SDK not loaded");
              var i2 = yield window.idms.getConfigFromConsumer;
              e3.config = i2.returnValue.data, null === (n2 = e3.callbacks) || void 0 === n2 || null === (r2 = n2.onConfigReceived) || void 0 === r2 || r2.call(n2, e3.config);
              var a2, l2, u2 = null === (o2 = e3.config.identityWidget) || void 0 === o2 ? void 0 : o2.startFlow;
              if (!e3.container) throw new Error("Container element is not available");
              yield e3.routeToFlow(u2), "verify" !== u2 && (null === (a2 = e3.callbacks) || void 0 === a2 || null === (l2 = a2.onReady) || void 0 === l2 || l2.call(a2));
            } catch (t4) {
              var c2, s2;
              e3.initialized = false;
              var f2 = t4 instanceof Error ? t4 : new Error(String(t4));
              throw null === (c2 = e3.callbacks) || void 0 === c2 || null === (s2 = c2.onError) || void 0 === s2 || s2.call(c2, f2), f2;
            }
          }
        })();
      }
      ensureSubContainers() {
        this.authContainer && this.verifyContainer || this.container && this.containerId && (this.authContainer = document.createElement("div"), this.authContainer.id = "".concat(this.containerId, "-auth"), this.authContainer.style.height = "100%", this.authContainer.style.display = "none", this.verifyContainer = document.createElement("div"), this.verifyContainer.id = "".concat(this.containerId, "-verify"), this.verifyContainer.style.height = "100%", this.verifyContainer.style.display = "none", this.willResize() && (this.authContainer.style.overflowY = "hidden", this.verifyContainer.style.overflowY = "hidden"), this.container.appendChild(this.authContainer), this.container.appendChild(this.verifyContainer));
      }
      willResize() {
        var e3, t3, n2, r2, o2, i2, a2, l2, u2 = null === (e3 = this.config) || void 0 === e3 || null === (e3 = e3.features) || void 0 === e3 ? void 0 : e3.autoResize, c2 = null === (t3 = this.config) || void 0 === t3 ? void 0 : t3.signInVersion, s2 = null === (n2 = this.config) || void 0 === n2 || null === (n2 = n2.signInV2Config) || void 0 === n2 ? void 0 : n2.height, f2 = null === (r2 = this.config) || void 0 === r2 || null === (r2 = r2.signInV2Config) || void 0 === r2 ? void 0 : r2.autoLayoutDetection, d2 = null !== (o2 = null === (i2 = this.config) || void 0 === i2 || null === (i2 = i2.signInV2Config) || void 0 === i2 ? void 0 : i2.mobileBreakpoint) && void 0 !== o2 ? o2 : 667, p2 = null !== (a2 = null === (l2 = this.config) || void 0 === l2 || null === (l2 = l2.signInV2Config) || void 0 === l2 ? void 0 : l2.screenWidth) && void 0 !== a2 ? a2 : window.innerWidth;
        return (u2 || "2" === c2) && !("100%" === s2 || f2 && p2 <= d2);
      }
      showFlow(e3) {
        this.authContainer && (this.authContainer.style.display = "auth" === e3 ? "" : "none"), this.verifyContainer && (this.verifyContainer.style.display = "verify" === e3 ? "" : "none");
      }
      routeToFlow(e3, t3) {
        var n2 = this;
        return ys(function* () {
          switch (e3) {
            case "auth":
            default:
              yield n2.initAuthFlow();
              break;
            case "verify":
              yield n2.initVerifyFlow(t3);
              break;
            case "repair":
            case "create":
              throw new Error('Flow "'.concat(e3, '" is not yet implemented'));
          }
        })();
      }
      initAuthFlow() {
        var e3 = arguments, t3 = this;
        return ys(function* () {
          var n2, r2, o2 = e3.length > 0 && void 0 !== e3[0] && e3[0];
          if (!t3.container) throw new Error("Container element is required for auth flow");
          t3.ensureSubContainers(), t3.authInitialized ? t3.showFlow("auth") : (null !== (n2 = window.idms) && void 0 !== n2 && n2.appInitInlineMessage || (yield Promise.race([new Promise((e4) => {
            window.addEventListener("idms:appInitReady", () => e4(), { once: true });
          }), new Promise((e4, t4) => setTimeout(() => t4(new Error("IDMS SDK appInitInlineMessage timed out")), 3e4))])), t3.showFlow("auth"), window.idms.appInitInlineMessage("#" + (null === (r2 = t3.authContainer) || void 0 === r2 ? void 0 : r2.id), { routeToflow: (e4, n3) => {
            t3.routeToFlow(e4, n3);
          } }, o2), t3.authInitialized = true);
        })();
      }
      initVerifyFlow(e3) {
        var t3 = this;
        return ys(function* () {
          if (!t3.container) throw new Error("Container element is required for verify flow");
          var n2, r2, o2, i2, a2, l2, u2, c2, s2, f2, d2, p2, h2, v2, m2, b2, w2, E2, S2, k2, x2, C2, O2, P2, T2, N2, A2, R2, _2, j2, L2, D2, I2 = e3 || t3.config;
          if (!I2) throw new Error("Config is required for verify flow");
          if (t3.ensureSubContainers(), !t3.verifyContainer) throw new Error("Verify container is not available");
          t3.showFlow("verify"), t3.verifyRoot && (t3.verifyRoot.unmount(), t3.verifyRoot = null), t3.verifyConnection && (t3.verifyConnection.close(), t3.verifyConnection = null), t3.verifyContainer.innerHTML = "", yield (function(e4, t4, n3, r3) {
            return ss.apply(this, arguments);
          })(t3.verifyContainer, void 0, void 0, (e4, n3) => {
            t3.verifyRoot = e4, t3.verifyConnection = n3;
          }), ((e4, t4 = window) => {
            g && g.tearDown(), g = new y({ ...e4 }, t4, "aid-verify-widget"), e4.callbacks.onSubmitHandle && g.registerRPC("HandleSubmit", "onSubmitHandle"), g.connect();
          })((n2 = I2, r2 = t3.verifyContainer.id, o2 = { onReady: () => {
            var e4, n3;
            null === (e4 = t3.callbacks) || void 0 === e4 || null === (n3 = e4.onReady) || void 0 === n3 || n3.call(e4);
          }, onComplete: (e4) => {
            var n3, r3;
            null === (n3 = t3.callbacks) || void 0 === n3 || null === (r3 = n3.onComplete) || void 0 === r3 || r3.call(n3, e4);
          }, onFail: (e4) => {
            var n3, r3;
            null === (n3 = t3.callbacks) || void 0 === n3 || null === (r3 = n3.onError) || void 0 === r3 || r3.call(n3, e4);
          }, onCancel: () => {
            var e4, n3;
            null === (e4 = t3.callbacks) || void 0 === e4 || null === (n3 = e4.onError) || void 0 === n3 || n3.call(e4, new Error("Verification cancelled"));
          }, onSkipVerification: (e4) => {
            var n3, r3, o3;
            "5" === (null == e4 || null === (n3 = e4.data) || void 0 === n3 ? void 0 : n3.reasonCode) ? (t3.verifyRoot && (t3.verifyRoot.unmount(), t3.verifyRoot = null), t3.verifyConnection && (t3.verifyConnection.close(), t3.verifyConnection = null), t3.verifyContainer && (t3.verifyContainer.innerHTML = ""), t3.container && t3.initAuthFlow()) : null === (r3 = t3.callbacks) || void 0 === r3 || null === (o3 = r3.onComplete) || void 0 === o3 || o3.call(r3, e4);
          }, onResize: (e4) => {
            var n3, r3;
            null === (n3 = t3.callbacks) || void 0 === n3 || null === (r3 = n3.onResize) || void 0 === r3 || r3.call(n3, e4);
          } }, j2 = String(null !== (i2 = n2.iframeId) && void 0 !== i2 ? i2 : "verify-".concat(vs())), L2 = ps(ps({}, null === (a2 = n2.identityWidget) || void 0 === a2 || null === (a2 = a2.verifyWidgetConfig) || void 0 === a2 ? void 0 : a2.options), {}, { frameId: (null === (l2 = n2.identityWidget) || void 0 === l2 || null === (l2 = l2.verifyWidgetConfig) || void 0 === l2 || null === (l2 = l2.options) || void 0 === l2 ? void 0 : l2.frameId) || n2.iframeId || j2, verifications: (null === (u2 = n2.identityWidget) || void 0 === u2 || null === (u2 = u2.verifyWidgetConfig) || void 0 === u2 || null === (u2 = u2.options) || void 0 === u2 ? void 0 : u2.verifications) || [], token: (null === (c2 = n2.identityWidget) || void 0 === c2 || null === (c2 = c2.verifyWidgetConfig) || void 0 === c2 || null === (c2 = c2.options) || void 0 === c2 ? void 0 : c2.token) || "", nonce: (null === (s2 = n2.identityWidget) || void 0 === s2 || null === (s2 = s2.verifyWidgetConfig) || void 0 === s2 || null === (s2 = s2.options) || void 0 === s2 ? void 0 : s2.nonce) || vs(), theme: { autoThemeAdjust: null !== (f2 = null !== (d2 = null === (p2 = n2.identityWidget) || void 0 === p2 || null === (p2 = p2.verifyWidgetConfig) || void 0 === p2 || null === (p2 = p2.options) || void 0 === p2 || null === (p2 = p2.theme) || void 0 === p2 ? void 0 : p2.autoThemeAdjust) && void 0 !== d2 ? d2 : null === (h2 = n2.theme) || void 0 === h2 ? void 0 : h2.autoThemeAdjust) && void 0 !== f2 && f2, defaultTheme: (null === (v2 = n2.identityWidget) || void 0 === v2 || null === (v2 = v2.verifyWidgetConfig) || void 0 === v2 || null === (v2 = v2.options) || void 0 === v2 || null === (v2 = v2.theme) || void 0 === v2 ? void 0 : v2.defaultTheme) || fs(null === (m2 = n2.theme) || void 0 === m2 ? void 0 : m2.defaultTheme) }, locale: (null === (b2 = n2.identityWidget) || void 0 === b2 || null === (b2 = b2.verifyWidgetConfig) || void 0 === b2 || null === (b2 = b2.options) || void 0 === b2 ? void 0 : b2.locale) || n2.locale || void 0 }), D2 = { serviceKey: n2.serviceKey || "", serviceURL: window.origin + "/identity", containerId: r2, options: L2, callbacks: { onComplete: null !== (w2 = o2.onComplete) && void 0 !== w2 ? w2 : () => {
          }, onResize: o2.onResize ? (e4) => {
            var t4;
            return null === (t4 = o2.onResize) || void 0 === t4 ? void 0 : t4.call(o2, e4.data, e4.frameId);
          } : void 0, onFail: o2.onFail, onReady: o2.onReady, onCancel: o2.onCancel, onSkipVerification: o2.onSkipVerification, onWidgetWillChangeFlow: o2.onWidgetWillChangeFlow, onWidgetWillRender: o2.onWidgetWillRender }, features: { mode: null !== (E2 = null === (S2 = n2.identityWidget) || void 0 === S2 || null === (S2 = S2.verifyWidgetConfig) || void 0 === S2 || null === (S2 = S2.features) || void 0 === S2 ? void 0 : S2.mode) && void 0 !== E2 ? E2 : "embed" === n2.authUIMode ? "embedded" : "modal", size: null !== (k2 = null === (x2 = n2.identityWidget) || void 0 === x2 || null === (x2 = x2.verifyWidgetConfig) || void 0 === x2 || null === (x2 = x2.features) || void 0 === x2 ? void 0 : x2.size) && void 0 !== k2 ? k2 : "100%" === (null === (C2 = n2.signInV2Config) || void 0 === C2 ? void 0 : C2.height) || null !== (O2 = n2.signInV2Config) && void 0 !== O2 && O2.autoLayoutDetection && "undefined" != typeof window && (null !== (P2 = null === (T2 = n2.signInV2Config) || void 0 === T2 ? void 0 : T2.screenWidth) && void 0 !== P2 ? P2 : screen.width) <= (null !== (N2 = null === (A2 = n2.signInV2Config) || void 0 === A2 ? void 0 : A2.mobileBreakpoint) && void 0 !== N2 ? N2 : 667) ? "fixed" : "expanded", errorAlert: true, noPadding: null === (R2 = null === (_2 = n2.identityWidget) || void 0 === _2 || null === (_2 = _2.verifyWidgetConfig) || void 0 === _2 || null === (_2 = _2.features) || void 0 === _2 ? void 0 : _2.noPadding) || void 0 === R2 || R2 } }, n2.devAppDomain && (D2.devAppDomain = n2.devAppDomain), D2), window);
        })();
      }
      getConfig() {
        return this.config;
      }
      isInitialized() {
        return this.initialized;
      }
      isReady() {
        return this.initialized;
      }
      teardown() {
        this.initialized = false, this.authInitialized = false, this.config = null, this.verifyRoot && (this.verifyRoot.unmount(), this.verifyRoot = null), this.verifyConnection && (this.verifyConnection.close(), this.verifyConnection = null), this.authContainer = null, this.verifyContainer = null, this.container && (this.container.innerHTML = "");
      }
    }
    function ws() {
      return (ws = ys(function* (e3, t3) {
        var n2 = new bs(e3);
        return t3 && (yield n2.initialize()), n2;
      })).apply(this, arguments);
    }
    function Es(e3, t3) {
      var n2 = Object.keys(e3);
      if (Object.getOwnPropertySymbols) {
        var r2 = Object.getOwnPropertySymbols(e3);
        t3 && (r2 = r2.filter(function(t4) {
          return Object.getOwnPropertyDescriptor(e3, t4).enumerable;
        })), n2.push.apply(n2, r2);
      }
      return n2;
    }
    function Ss(e3) {
      for (var t3 = 1; t3 < arguments.length; t3++) {
        var n2 = null != arguments[t3] ? arguments[t3] : {};
        t3 % 2 ? Es(Object(n2), true).forEach(function(t4) {
          ks(e3, t4, n2[t4]);
        }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e3, Object.getOwnPropertyDescriptors(n2)) : Es(Object(n2)).forEach(function(t4) {
          Object.defineProperty(e3, t4, Object.getOwnPropertyDescriptor(n2, t4));
        });
      }
      return e3;
    }
    function ks(e3, t3, n2) {
      return (t3 = (function(e4) {
        var t4 = (function(e5) {
          if ("object" != typeof e5 || !e5) return e5;
          var t5 = e5[Symbol.toPrimitive];
          if (void 0 !== t5) {
            var n3 = t5.call(e5, "string");
            if ("object" != typeof n3) return n3;
            throw new TypeError("@@toPrimitive must return a primitive value.");
          }
          return String(e5);
        })(e4);
        return "symbol" == typeof t4 ? t4 : t4 + "";
      })(t3)) in e3 ? Object.defineProperty(e3, t3, { value: n2, enumerable: true, configurable: true, writable: true }) : e3[t3] = n2, e3;
    }
    function xs(e3, t3, n2, r2, o2, i2, a2) {
      try {
        var l2 = e3[i2](a2), u2 = l2.value;
      } catch (e4) {
        return void n2(e4);
      }
      l2.done ? t3(u2) : Promise.resolve(u2).then(r2, o2);
    }
    var Cs = /* @__PURE__ */ (function() {
      var e3 = /* @__PURE__ */ (function(e4) {
        return function() {
          var t3 = this, n2 = arguments;
          return new Promise(function(r2, o2) {
            var i2 = e4.apply(t3, n2);
            function a2(e5) {
              xs(i2, r2, o2, a2, l2, "next", e5);
            }
            function l2(e5) {
              xs(i2, r2, o2, a2, l2, "throw", e5);
            }
            a2(void 0);
          });
        };
      })(function* () {
        var e4, t3, n2;
        yield (t3 = { container: "content", callbacks: { onConfigReceived: (t4) => {
          e4 = t4;
        }, onReady: () => {
        }, onComplete: (e5) => {
          var t4, n3;
          null === (t4 = (n3 = window.idms).signalComplete) || void 0 === t4 || t4.call(n3, { verification: Ss({}, e5) });
        }, onError: (e5) => {
          var t4, n3, r2 = e5;
          null === (t4 = (n3 = window.idms).signalCancel) || void 0 === t4 || t4.call(n3, Ss(Ss({}, r2), {}, { data: Ss(Ss({}, r2.data), {}, { isVerifyFlow: true }) }));
        }, onResize: (t4) => {
          var n3, r2;
          null === (n3 = (r2 = window.idms).signalResize) || void 0 === n3 || n3.call(r2, t4, e4.containerId);
        } } }, (function(e5, t4) {
          return ws.apply(this, arguments);
        })(null != t3 ? t3 : { container: "root" }, null == n2 || n2));
      });
      return function() {
        return e3.apply(this, arguments);
      };
    })();
    Cs();
  })();
})();
