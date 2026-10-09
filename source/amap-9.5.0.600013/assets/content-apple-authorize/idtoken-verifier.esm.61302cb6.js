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

var ut = typeof globalThis != "undefined" ? globalThis : typeof window != "undefined" ? window : typeof global != "undefined" ? global : typeof self != "undefined" ? self : {};
function X(l, p) {
  return l(p = { exports: {} }, p.exports), p.exports;
}
var yt = X(function(l, p) {
  var c;
  l.exports = c = c || (function(n, f) {
    var T = Object.create || /* @__PURE__ */ (function() {
      function a() {
      }
      return function(d) {
        var b;
        return a.prototype = d, b = new a(), a.prototype = null, b;
      };
    })(), m = {}, v = m.lib = {}, S = v.Base = { extend: function(a) {
      var d = T(this);
      return a && d.mixIn(a), d.hasOwnProperty("init") && this.init !== d.init || (d.init = function() {
        d.$super.init.apply(this, arguments);
      }), d.init.prototype = d, d.$super = this, d;
    }, create: function() {
      var a = this.extend();
      return a.init.apply(a, arguments), a;
    }, init: function() {
    }, mixIn: function(a) {
      for (var d in a) a.hasOwnProperty(d) && (this[d] = a[d]);
      a.hasOwnProperty("toString") && (this.toString = a.toString);
    }, clone: function() {
      return this.init.prototype.extend(this);
    } }, g = v.WordArray = S.extend({ init: function(a, d) {
      a = this.words = a || [], this.sigBytes = d != null ? d : 4 * a.length;
    }, toString: function(a) {
      return (a || E).stringify(this);
    }, concat: function(a) {
      var d = this.words, b = a.words, w = this.sigBytes, _ = a.sigBytes;
      if (this.clamp(), w % 4) for (var R = 0; R < _; R++) d[w + R >>> 2] |= (b[R >>> 2] >>> 24 - R % 4 * 8 & 255) << 24 - (w + R) % 4 * 8;
      else for (R = 0; R < _; R += 4) d[w + R >>> 2] = b[R >>> 2];
      return this.sigBytes += _, this;
    }, clamp: function() {
      var a = this.words, d = this.sigBytes;
      a[d >>> 2] &= 4294967295 << 32 - d % 4 * 8, a.length = n.ceil(d / 4);
    }, clone: function() {
      var a = S.clone.call(this);
      return a.words = this.words.slice(0), a;
    }, random: function(a) {
      for (var d, b = [], w = function(C) {
        C = C;
        var U = 987654321, x = 4294967295;
        return function() {
          var P = ((U = 36969 * (65535 & U) + (U >> 16) & x) << 16) + (C = 18e3 * (65535 & C) + (C >> 16) & x) & x;
          return P /= 4294967296, (P += 0.5) * (n.random() > 0.5 ? 1 : -1);
        };
      }, _ = 0; _ < a; _ += 4) {
        var R = w(4294967296 * (d || n.random()));
        d = 987654071 * R(), b.push(4294967296 * R() | 0);
      }
      return new g.init(b, a);
    } }), k = m.enc = {}, E = k.Hex = { stringify: function(a) {
      for (var d = a.words, b = a.sigBytes, w = [], _ = 0; _ < b; _++) {
        var R = d[_ >>> 2] >>> 24 - _ % 4 * 8 & 255;
        w.push((R >>> 4).toString(16)), w.push((15 & R).toString(16));
      }
      return w.join("");
    }, parse: function(a) {
      for (var d = a.length, b = [], w = 0; w < d; w += 2) b[w >>> 3] |= parseInt(a.substr(w, 2), 16) << 24 - w % 8 * 4;
      return new g.init(b, d / 2);
    } }, A = k.Latin1 = { stringify: function(a) {
      for (var d = a.words, b = a.sigBytes, w = [], _ = 0; _ < b; _++) w.push(String.fromCharCode(d[_ >>> 2] >>> 24 - _ % 4 * 8 & 255));
      return w.join("");
    }, parse: function(a) {
      for (var d = a.length, b = [], w = 0; w < d; w++) b[w >>> 2] |= (255 & a.charCodeAt(w)) << 24 - w % 4 * 8;
      return new g.init(b, d);
    } }, M = k.Utf8 = { stringify: function(a) {
      try {
        return decodeURIComponent(escape(A.stringify(a)));
      } catch {
        throw new Error("Malformed UTF-8 data");
      }
    }, parse: function(a) {
      return A.parse(unescape(encodeURIComponent(a)));
    } }, D = v.BufferedBlockAlgorithm = S.extend({ reset: function() {
      this._data = new g.init(), this._nDataBytes = 0;
    }, _append: function(a) {
      typeof a == "string" && (a = M.parse(a)), this._data.concat(a), this._nDataBytes += a.sigBytes;
    }, _process: function(a) {
      var d = this._data, b = d.words, w = d.sigBytes, _ = this.blockSize, R = w / (4 * _), C = (R = a ? n.ceil(R) : n.max((0 | R) - this._minBufferSize, 0)) * _, U = n.min(4 * C, w);
      if (C) {
        for (var x = 0; x < C; x += _) this._doProcessBlock(b, x);
        var P = b.splice(0, C);
        d.sigBytes -= U;
      }
      return new g.init(P, U);
    }, clone: function() {
      var a = S.clone.call(this);
      return a._data = this._data.clone(), a;
    }, _minBufferSize: 0 }), y = (v.Hasher = D.extend({ cfg: S.extend(), init: function(a) {
      this.cfg = this.cfg.extend(a), this.reset();
    }, reset: function() {
      D.reset.call(this), this._doReset();
    }, update: function(a) {
      return this._append(a), this._process(), this;
    }, finalize: function(a) {
      return a && this._append(a), this._doFinalize();
    }, blockSize: 16, _createHelper: function(a) {
      return function(d, b) {
        return new a.init(b).finalize(d);
      };
    }, _createHmacHelper: function(a) {
      return function(d, b) {
        return new y.HMAC.init(a, b).finalize(d);
      };
    } }), m.algo = {});
    return m;
  })(Math);
}), _t = X(function(l, p) {
  var c;
  l.exports = (c = yt, (function(n) {
    var f = c, T = f.lib, m = T.WordArray, v = T.Hasher, S = f.algo, g = [], k = [];
    (function() {
      function M(d) {
        for (var b = n.sqrt(d), w = 2; w <= b; w++) if (!(d % w)) return false;
        return true;
      }
      function D(d) {
        return 4294967296 * (d - (0 | d)) | 0;
      }
      for (var y = 2, a = 0; a < 64; ) M(y) && (a < 8 && (g[a] = D(n.pow(y, 0.5))), k[a] = D(n.pow(y, 1 / 3)), a++), y++;
    })();
    var E = [], A = S.SHA256 = v.extend({ _doReset: function() {
      this._hash = new m.init(g.slice(0));
    }, _doProcessBlock: function(M, D) {
      for (var y = this._hash.words, a = y[0], d = y[1], b = y[2], w = y[3], _ = y[4], R = y[5], C = y[6], U = y[7], x = 0; x < 64; x++) {
        if (x < 16) E[x] = 0 | M[D + x];
        else {
          var P = E[x - 15], I = E[x - 2];
          E[x] = ((P << 25 | P >>> 7) ^ (P << 14 | P >>> 18) ^ P >>> 3) + E[x - 7] + ((I << 15 | I >>> 17) ^ (I << 13 | I >>> 19) ^ I >>> 10) + E[x - 16];
        }
        var O = a & d ^ a & b ^ d & b, V = U + ((_ << 26 | _ >>> 6) ^ (_ << 21 | _ >>> 11) ^ (_ << 7 | _ >>> 25)) + (_ & R ^ ~_ & C) + k[x] + E[x];
        U = C, C = R, R = _, _ = w + V | 0, w = b, b = d, d = a, a = V + (((a << 30 | a >>> 2) ^ (a << 19 | a >>> 13) ^ (a << 10 | a >>> 22)) + O) | 0;
      }
      y[0] = y[0] + a | 0, y[1] = y[1] + d | 0, y[2] = y[2] + b | 0, y[3] = y[3] + w | 0, y[4] = y[4] + _ | 0, y[5] = y[5] + R | 0, y[6] = y[6] + C | 0, y[7] = y[7] + U | 0;
    }, _doFinalize: function() {
      var M = this._data, D = M.words, y = 8 * this._nDataBytes, a = 8 * M.sigBytes;
      return D[a >>> 5] |= 128 << 24 - a % 32, D[14 + (a + 64 >>> 9 << 4)] = n.floor(y / 4294967296), D[15 + (a + 64 >>> 9 << 4)] = y, M.sigBytes = 4 * D.length, this._process(), this._hash;
    }, clone: function() {
      var M = v.clone.call(this);
      return M._hash = this._hash.clone(), M;
    } });
    f.SHA256 = v._createHelper(A), f.HmacSHA256 = v._createHmacHelper(A);
  })(Math), c.SHA256);
}), Dt = X(function(l, p) {
  var c, n;
  l.exports = (n = (c = yt).lib.WordArray, c.enc.Base64 = { stringify: function(f) {
    var T = f.words, m = f.sigBytes, v = this._map;
    f.clamp();
    for (var S = [], g = 0; g < m; g += 3) for (var k = (T[g >>> 2] >>> 24 - g % 4 * 8 & 255) << 16 | (T[g + 1 >>> 2] >>> 24 - (g + 1) % 4 * 8 & 255) << 8 | T[g + 2 >>> 2] >>> 24 - (g + 2) % 4 * 8 & 255, E = 0; E < 4 && g + 0.75 * E < m; E++) S.push(v.charAt(k >>> 6 * (3 - E) & 63));
    var A = v.charAt(64);
    if (A) for (; S.length % 4; ) S.push(A);
    return S.join("");
  }, parse: function(f) {
    var T = f.length, m = this._map, v = this._reverseMap;
    if (!v) {
      v = this._reverseMap = [];
      for (var S = 0; S < m.length; S++) v[m.charCodeAt(S)] = S;
    }
    var g = m.charAt(64);
    if (g) {
      var k = f.indexOf(g);
      k !== -1 && (T = k);
    }
    return (function(E, A, M) {
      for (var D = [], y = 0, a = 0; a < A; a++) if (a % 4) {
        var d = M[E.charCodeAt(a - 1)] << a % 4 * 2, b = M[E.charCodeAt(a)] >>> 6 - a % 4 * 2;
        D[y >>> 2] |= (d | b) << 24 - y % 4 * 8, y++;
      }
      return n.create(D, y);
    })(f, T, v);
  }, _map: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=" }, c.enc.Base64);
}), mt = X(function(l, p) {
  l.exports = yt.enc.Hex;
}), St = X(function(l, p) {
  (function() {
    var c;
    function n(t, e, r) {
      t != null && (typeof t == "number" ? this.fromNumber(t, e, r) : this.fromString(t, e == null && typeof t != "string" ? 256 : e));
    }
    function f() {
      return new n(null);
    }
    var T = typeof navigator != "undefined";
    T && navigator.appName == "Microsoft Internet Explorer" ? (n.prototype.am = function(t, e, r, i, o, s) {
      for (var h = 32767 & e, u = e >> 15; --s >= 0; ) {
        var B = 32767 & this[t], j = this[t++] >> 15, q = u * B + j * h;
        o = ((B = h * B + ((32767 & q) << 15) + r[i] + (1073741823 & o)) >>> 30) + (q >>> 15) + u * j + (o >>> 30), r[i++] = 1073741823 & B;
      }
      return o;
    }, c = 30) : T && navigator.appName != "Netscape" ? (n.prototype.am = function(t, e, r, i, o, s) {
      for (; --s >= 0; ) {
        var h = e * this[t++] + r[i] + o;
        o = Math.floor(h / 67108864), r[i++] = 67108863 & h;
      }
      return o;
    }, c = 26) : (n.prototype.am = function(t, e, r, i, o, s) {
      for (var h = 16383 & e, u = e >> 14; --s >= 0; ) {
        var B = 16383 & this[t], j = this[t++] >> 14, q = u * B + j * h;
        o = ((B = h * B + ((16383 & q) << 14) + r[i] + o) >> 28) + (q >> 14) + u * j, r[i++] = 268435455 & B;
      }
      return o;
    }, c = 28), n.prototype.DB = c, n.prototype.DM = (1 << c) - 1, n.prototype.DV = 1 << c, n.prototype.FV = Math.pow(2, 52), n.prototype.F1 = 52 - c, n.prototype.F2 = 2 * c - 52;
    var m, v, S = "0123456789abcdefghijklmnopqrstuvwxyz", g = new Array();
    for (m = "0".charCodeAt(0), v = 0; v <= 9; ++v) g[m++] = v;
    for (m = "a".charCodeAt(0), v = 10; v < 36; ++v) g[m++] = v;
    for (m = "A".charCodeAt(0), v = 10; v < 36; ++v) g[m++] = v;
    function k(t) {
      return S.charAt(t);
    }
    function E(t, e) {
      var r = g[t.charCodeAt(e)];
      return r == null ? -1 : r;
    }
    function A(t) {
      var e = f();
      return e.fromInt(t), e;
    }
    function M(t) {
      var e, r = 1;
      return (e = t >>> 16) != 0 && (t = e, r += 16), (e = t >> 8) != 0 && (t = e, r += 8), (e = t >> 4) != 0 && (t = e, r += 4), (e = t >> 2) != 0 && (t = e, r += 2), (e = t >> 1) != 0 && (t = e, r += 1), r;
    }
    function D(t) {
      this.m = t;
    }
    function y(t) {
      this.m = t, this.mp = t.invDigit(), this.mpl = 32767 & this.mp, this.mph = this.mp >> 15, this.um = (1 << t.DB - 15) - 1, this.mt2 = 2 * t.t;
    }
    function a(t, e) {
      return t & e;
    }
    function d(t, e) {
      return t | e;
    }
    function b(t, e) {
      return t ^ e;
    }
    function w(t, e) {
      return t & ~e;
    }
    function _(t) {
      if (t == 0) return -1;
      var e = 0;
      return (65535 & t) == 0 && (t >>= 16, e += 16), (255 & t) == 0 && (t >>= 8, e += 8), (15 & t) == 0 && (t >>= 4, e += 4), (3 & t) == 0 && (t >>= 2, e += 2), (1 & t) == 0 && ++e, e;
    }
    function R(t) {
      for (var e = 0; t != 0; ) t &= t - 1, ++e;
      return e;
    }
    function C() {
    }
    function U(t) {
      return t;
    }
    function x(t) {
      this.r2 = f(), this.q3 = f(), n.ONE.dlShiftTo(2 * t.t, this.r2), this.mu = this.r2.divide(t), this.m = t;
    }
    D.prototype.convert = function(t) {
      return t.s < 0 || t.compareTo(this.m) >= 0 ? t.mod(this.m) : t;
    }, D.prototype.revert = function(t) {
      return t;
    }, D.prototype.reduce = function(t) {
      t.divRemTo(this.m, null, t);
    }, D.prototype.mulTo = function(t, e, r) {
      t.multiplyTo(e, r), this.reduce(r);
    }, D.prototype.sqrTo = function(t, e) {
      t.squareTo(e), this.reduce(e);
    }, y.prototype.convert = function(t) {
      var e = f();
      return t.abs().dlShiftTo(this.m.t, e), e.divRemTo(this.m, null, e), t.s < 0 && e.compareTo(n.ZERO) > 0 && this.m.subTo(e, e), e;
    }, y.prototype.revert = function(t) {
      var e = f();
      return t.copyTo(e), this.reduce(e), e;
    }, y.prototype.reduce = function(t) {
      for (; t.t <= this.mt2; ) t[t.t++] = 0;
      for (var e = 0; e < this.m.t; ++e) {
        var r = 32767 & t[e], i = r * this.mpl + ((r * this.mph + (t[e] >> 15) * this.mpl & this.um) << 15) & t.DM;
        for (t[r = e + this.m.t] += this.m.am(0, i, t, e, 0, this.m.t); t[r] >= t.DV; ) t[r] -= t.DV, t[++r]++;
      }
      t.clamp(), t.drShiftTo(this.m.t, t), t.compareTo(this.m) >= 0 && t.subTo(this.m, t);
    }, y.prototype.mulTo = function(t, e, r) {
      t.multiplyTo(e, r), this.reduce(r);
    }, y.prototype.sqrTo = function(t, e) {
      t.squareTo(e), this.reduce(e);
    }, n.prototype.copyTo = function(t) {
      for (var e = this.t - 1; e >= 0; --e) t[e] = this[e];
      t.t = this.t, t.s = this.s;
    }, n.prototype.fromInt = function(t) {
      this.t = 1, this.s = t < 0 ? -1 : 0, t > 0 ? this[0] = t : t < -1 ? this[0] = t + this.DV : this.t = 0;
    }, n.prototype.fromString = function(t, e) {
      var r;
      if (e == 16) r = 4;
      else if (e == 8) r = 3;
      else if (e == 256) r = 8;
      else if (e == 2) r = 1;
      else if (e == 32) r = 5;
      else {
        if (e != 4) return void this.fromRadix(t, e);
        r = 2;
      }
      this.t = 0, this.s = 0;
      for (var i = t.length, o = false, s = 0; --i >= 0; ) {
        var h = r == 8 ? 255 & t[i] : E(t, i);
        h < 0 ? t.charAt(i) == "-" && (o = true) : (o = false, s == 0 ? this[this.t++] = h : s + r > this.DB ? (this[this.t - 1] |= (h & (1 << this.DB - s) - 1) << s, this[this.t++] = h >> this.DB - s) : this[this.t - 1] |= h << s, (s += r) >= this.DB && (s -= this.DB));
      }
      r == 8 && (128 & t[0]) != 0 && (this.s = -1, s > 0 && (this[this.t - 1] |= (1 << this.DB - s) - 1 << s)), this.clamp(), o && n.ZERO.subTo(this, this);
    }, n.prototype.clamp = function() {
      for (var t = this.s & this.DM; this.t > 0 && this[this.t - 1] == t; ) --this.t;
    }, n.prototype.dlShiftTo = function(t, e) {
      var r;
      for (r = this.t - 1; r >= 0; --r) e[r + t] = this[r];
      for (r = t - 1; r >= 0; --r) e[r] = 0;
      e.t = this.t + t, e.s = this.s;
    }, n.prototype.drShiftTo = function(t, e) {
      for (var r = t; r < this.t; ++r) e[r - t] = this[r];
      e.t = Math.max(this.t - t, 0), e.s = this.s;
    }, n.prototype.lShiftTo = function(t, e) {
      var r, i = t % this.DB, o = this.DB - i, s = (1 << o) - 1, h = Math.floor(t / this.DB), u = this.s << i & this.DM;
      for (r = this.t - 1; r >= 0; --r) e[r + h + 1] = this[r] >> o | u, u = (this[r] & s) << i;
      for (r = h - 1; r >= 0; --r) e[r] = 0;
      e[h] = u, e.t = this.t + h + 1, e.s = this.s, e.clamp();
    }, n.prototype.rShiftTo = function(t, e) {
      e.s = this.s;
      var r = Math.floor(t / this.DB);
      if (r >= this.t) e.t = 0;
      else {
        var i = t % this.DB, o = this.DB - i, s = (1 << i) - 1;
        e[0] = this[r] >> i;
        for (var h = r + 1; h < this.t; ++h) e[h - r - 1] |= (this[h] & s) << o, e[h - r] = this[h] >> i;
        i > 0 && (e[this.t - r - 1] |= (this.s & s) << o), e.t = this.t - r, e.clamp();
      }
    }, n.prototype.subTo = function(t, e) {
      for (var r = 0, i = 0, o = Math.min(t.t, this.t); r < o; ) i += this[r] - t[r], e[r++] = i & this.DM, i >>= this.DB;
      if (t.t < this.t) {
        for (i -= t.s; r < this.t; ) i += this[r], e[r++] = i & this.DM, i >>= this.DB;
        i += this.s;
      } else {
        for (i += this.s; r < t.t; ) i -= t[r], e[r++] = i & this.DM, i >>= this.DB;
        i -= t.s;
      }
      e.s = i < 0 ? -1 : 0, i < -1 ? e[r++] = this.DV + i : i > 0 && (e[r++] = i), e.t = r, e.clamp();
    }, n.prototype.multiplyTo = function(t, e) {
      var r = this.abs(), i = t.abs(), o = r.t;
      for (e.t = o + i.t; --o >= 0; ) e[o] = 0;
      for (o = 0; o < i.t; ++o) e[o + r.t] = r.am(0, i[o], e, o, 0, r.t);
      e.s = 0, e.clamp(), this.s != t.s && n.ZERO.subTo(e, e);
    }, n.prototype.squareTo = function(t) {
      for (var e = this.abs(), r = t.t = 2 * e.t; --r >= 0; ) t[r] = 0;
      for (r = 0; r < e.t - 1; ++r) {
        var i = e.am(r, e[r], t, 2 * r, 0, 1);
        (t[r + e.t] += e.am(r + 1, 2 * e[r], t, 2 * r + 1, i, e.t - r - 1)) >= e.DV && (t[r + e.t] -= e.DV, t[r + e.t + 1] = 1);
      }
      t.t > 0 && (t[t.t - 1] += e.am(r, e[r], t, 2 * r, 0, 1)), t.s = 0, t.clamp();
    }, n.prototype.divRemTo = function(t, e, r) {
      var i = t.abs();
      if (!(i.t <= 0)) {
        var o = this.abs();
        if (o.t < i.t) return e != null && e.fromInt(0), void (r != null && this.copyTo(r));
        r == null && (r = f());
        var s = f(), h = this.s, u = t.s, B = this.DB - M(i[i.t - 1]);
        B > 0 ? (i.lShiftTo(B, s), o.lShiftTo(B, r)) : (i.copyTo(s), o.copyTo(r));
        var j = s.t, q = s[j - 1];
        if (q != 0) {
          var F = q * (1 << this.F1) + (j > 1 ? s[j - 2] >> this.F2 : 0), W = this.FV / F, Z = (1 << this.F1) / F, ot = 1 << this.F2, N = r.t, ht = N - j, Y = e == null ? f() : e;
          for (s.dlShiftTo(ht, Y), r.compareTo(Y) >= 0 && (r[r.t++] = 1, r.subTo(Y, r)), n.ONE.dlShiftTo(j, Y), Y.subTo(s, s); s.t < j; ) s[s.t++] = 0;
          for (; --ht >= 0; ) {
            var ft = r[--N] == q ? this.DM : Math.floor(r[N] * W + (r[N - 1] + ot) * Z);
            if ((r[N] += s.am(0, ft, r, ht, 0, j)) < ft) for (s.dlShiftTo(ht, Y), r.subTo(Y, r); r[N] < --ft; ) r.subTo(Y, r);
          }
          e != null && (r.drShiftTo(j, e), h != u && n.ZERO.subTo(e, e)), r.t = j, r.clamp(), B > 0 && r.rShiftTo(B, r), h < 0 && n.ZERO.subTo(r, r);
        }
      }
    }, n.prototype.invDigit = function() {
      if (this.t < 1) return 0;
      var t = this[0];
      if ((1 & t) == 0) return 0;
      var e = 3 & t;
      return (e = (e = (e = (e = e * (2 - (15 & t) * e) & 15) * (2 - (255 & t) * e) & 255) * (2 - ((65535 & t) * e & 65535)) & 65535) * (2 - t * e % this.DV) % this.DV) > 0 ? this.DV - e : -e;
    }, n.prototype.isEven = function() {
      return (this.t > 0 ? 1 & this[0] : this.s) == 0;
    }, n.prototype.exp = function(t, e) {
      if (t > 4294967295 || t < 1) return n.ONE;
      var r = f(), i = f(), o = e.convert(this), s = M(t) - 1;
      for (o.copyTo(r); --s >= 0; ) if (e.sqrTo(r, i), (t & 1 << s) > 0) e.mulTo(i, o, r);
      else {
        var h = r;
        r = i, i = h;
      }
      return e.revert(r);
    }, n.prototype.toString = function(t) {
      if (this.s < 0) return "-" + this.negate().toString(t);
      var e;
      if (t == 16) e = 4;
      else if (t == 8) e = 3;
      else if (t == 2) e = 1;
      else if (t == 32) e = 5;
      else {
        if (t != 4) return this.toRadix(t);
        e = 2;
      }
      var r, i = (1 << e) - 1, o = false, s = "", h = this.t, u = this.DB - h * this.DB % e;
      if (h-- > 0) for (u < this.DB && (r = this[h] >> u) > 0 && (o = true, s = k(r)); h >= 0; ) u < e ? (r = (this[h] & (1 << u) - 1) << e - u, r |= this[--h] >> (u += this.DB - e)) : (r = this[h] >> (u -= e) & i, u <= 0 && (u += this.DB, --h)), r > 0 && (o = true), o && (s += k(r));
      return o ? s : "0";
    }, n.prototype.negate = function() {
      var t = f();
      return n.ZERO.subTo(this, t), t;
    }, n.prototype.abs = function() {
      return this.s < 0 ? this.negate() : this;
    }, n.prototype.compareTo = function(t) {
      var e = this.s - t.s;
      if (e != 0) return e;
      var r = this.t;
      if ((e = r - t.t) != 0) return this.s < 0 ? -e : e;
      for (; --r >= 0; ) if ((e = this[r] - t[r]) != 0) return e;
      return 0;
    }, n.prototype.bitLength = function() {
      return this.t <= 0 ? 0 : this.DB * (this.t - 1) + M(this[this.t - 1] ^ this.s & this.DM);
    }, n.prototype.mod = function(t) {
      var e = f();
      return this.abs().divRemTo(t, null, e), this.s < 0 && e.compareTo(n.ZERO) > 0 && t.subTo(e, e), e;
    }, n.prototype.modPowInt = function(t, e) {
      var r;
      return r = t < 256 || e.isEven() ? new D(e) : new y(e), this.exp(t, r);
    }, n.ZERO = A(0), n.ONE = A(1), C.prototype.convert = U, C.prototype.revert = U, C.prototype.mulTo = function(t, e, r) {
      t.multiplyTo(e, r);
    }, C.prototype.sqrTo = function(t, e) {
      t.squareTo(e);
    }, x.prototype.convert = function(t) {
      if (t.s < 0 || t.t > 2 * this.m.t) return t.mod(this.m);
      if (t.compareTo(this.m) < 0) return t;
      var e = f();
      return t.copyTo(e), this.reduce(e), e;
    }, x.prototype.revert = function(t) {
      return t;
    }, x.prototype.reduce = function(t) {
      for (t.drShiftTo(this.m.t - 1, this.r2), t.t > this.m.t + 1 && (t.t = this.m.t + 1, t.clamp()), this.mu.multiplyUpperTo(this.r2, this.m.t + 1, this.q3), this.m.multiplyLowerTo(this.q3, this.m.t + 1, this.r2); t.compareTo(this.r2) < 0; ) t.dAddOffset(1, this.m.t + 1);
      for (t.subTo(this.r2, t); t.compareTo(this.m) >= 0; ) t.subTo(this.m, t);
    }, x.prototype.mulTo = function(t, e, r) {
      t.multiplyTo(e, r), this.reduce(r);
    }, x.prototype.sqrTo = function(t, e) {
      t.squareTo(e), this.reduce(e);
    };
    var P, I, O, V = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997], K = (1 << 26) / V[V.length - 1];
    function st() {
      var t;
      t = (/* @__PURE__ */ new Date()).getTime(), I[O++] ^= 255 & t, I[O++] ^= t >> 8 & 255, I[O++] ^= t >> 16 & 255, I[O++] ^= t >> 24 & 255, O >= tt && (O -= tt);
    }
    if (n.prototype.chunkSize = function(t) {
      return Math.floor(Math.LN2 * this.DB / Math.log(t));
    }, n.prototype.toRadix = function(t) {
      if (t == null && (t = 10), this.signum() == 0 || t < 2 || t > 36) return "0";
      var e = this.chunkSize(t), r = Math.pow(t, e), i = A(r), o = f(), s = f(), h = "";
      for (this.divRemTo(i, o, s); o.signum() > 0; ) h = (r + s.intValue()).toString(t).substr(1) + h, o.divRemTo(i, o, s);
      return s.intValue().toString(t) + h;
    }, n.prototype.fromRadix = function(t, e) {
      this.fromInt(0), e == null && (e = 10);
      for (var r = this.chunkSize(e), i = Math.pow(e, r), o = false, s = 0, h = 0, u = 0; u < t.length; ++u) {
        var B = E(t, u);
        B < 0 ? t.charAt(u) == "-" && this.signum() == 0 && (o = true) : (h = e * h + B, ++s >= r && (this.dMultiply(i), this.dAddOffset(h, 0), s = 0, h = 0));
      }
      s > 0 && (this.dMultiply(Math.pow(e, s)), this.dAddOffset(h, 0)), o && n.ZERO.subTo(this, this);
    }, n.prototype.fromNumber = function(t, e, r) {
      if (typeof e == "number") if (t < 2) this.fromInt(1);
      else for (this.fromNumber(t, r), this.testBit(t - 1) || this.bitwiseTo(n.ONE.shiftLeft(t - 1), d, this), this.isEven() && this.dAddOffset(1, 0); !this.isProbablePrime(e); ) this.dAddOffset(2, 0), this.bitLength() > t && this.subTo(n.ONE.shiftLeft(t - 1), this);
      else {
        var i = new Array(), o = 7 & t;
        i.length = 1 + (t >> 3), e.nextBytes(i), o > 0 ? i[0] &= (1 << o) - 1 : i[0] = 0, this.fromString(i, 256);
      }
    }, n.prototype.bitwiseTo = function(t, e, r) {
      var i, o, s = Math.min(t.t, this.t);
      for (i = 0; i < s; ++i) r[i] = e(this[i], t[i]);
      if (t.t < this.t) {
        for (o = t.s & this.DM, i = s; i < this.t; ++i) r[i] = e(this[i], o);
        r.t = this.t;
      } else {
        for (o = this.s & this.DM, i = s; i < t.t; ++i) r[i] = e(o, t[i]);
        r.t = t.t;
      }
      r.s = e(this.s, t.s), r.clamp();
    }, n.prototype.changeBit = function(t, e) {
      var r = n.ONE.shiftLeft(t);
      return this.bitwiseTo(r, e, r), r;
    }, n.prototype.addTo = function(t, e) {
      for (var r = 0, i = 0, o = Math.min(t.t, this.t); r < o; ) i += this[r] + t[r], e[r++] = i & this.DM, i >>= this.DB;
      if (t.t < this.t) {
        for (i += t.s; r < this.t; ) i += this[r], e[r++] = i & this.DM, i >>= this.DB;
        i += this.s;
      } else {
        for (i += this.s; r < t.t; ) i += t[r], e[r++] = i & this.DM, i >>= this.DB;
        i += t.s;
      }
      e.s = i < 0 ? -1 : 0, i > 0 ? e[r++] = i : i < -1 && (e[r++] = this.DV + i), e.t = r, e.clamp();
    }, n.prototype.dMultiply = function(t) {
      this[this.t] = this.am(0, t - 1, this, 0, 0, this.t), ++this.t, this.clamp();
    }, n.prototype.dAddOffset = function(t, e) {
      if (t != 0) {
        for (; this.t <= e; ) this[this.t++] = 0;
        for (this[e] += t; this[e] >= this.DV; ) this[e] -= this.DV, ++e >= this.t && (this[this.t++] = 0), ++this[e];
      }
    }, n.prototype.multiplyLowerTo = function(t, e, r) {
      var i, o = Math.min(this.t + t.t, e);
      for (r.s = 0, r.t = o; o > 0; ) r[--o] = 0;
      for (i = r.t - this.t; o < i; ++o) r[o + this.t] = this.am(0, t[o], r, o, 0, this.t);
      for (i = Math.min(t.t, e); o < i; ++o) this.am(0, t[o], r, o, 0, e - o);
      r.clamp();
    }, n.prototype.multiplyUpperTo = function(t, e, r) {
      var i = r.t = this.t + t.t - --e;
      for (r.s = 0; --i >= 0; ) r[i] = 0;
      for (i = Math.max(e - this.t, 0); i < t.t; ++i) r[this.t + i - e] = this.am(e - i, t[i], r, 0, 0, this.t + i - e);
      r.clamp(), r.drShiftTo(1, r);
    }, n.prototype.modInt = function(t) {
      if (t <= 0) return 0;
      var e = this.DV % t, r = this.s < 0 ? t - 1 : 0;
      if (this.t > 0) if (e == 0) r = this[0] % t;
      else for (var i = this.t - 1; i >= 0; --i) r = (e * r + this[i]) % t;
      return r;
    }, n.prototype.millerRabin = function(t) {
      var e = this.subtract(n.ONE), r = e.getLowestSetBit();
      if (r <= 0) return false;
      var i = e.shiftRight(r);
      (t = t + 1 >> 1) > V.length && (t = V.length);
      for (var o = f(), s = 0; s < t; ++s) {
        o.fromInt(V[Math.floor(Math.random() * V.length)]);
        var h = o.modPow(i, this);
        if (h.compareTo(n.ONE) != 0 && h.compareTo(e) != 0) {
          for (var u = 1; u++ < r && h.compareTo(e) != 0; ) if ((h = h.modPowInt(2, this)).compareTo(n.ONE) == 0) return false;
          if (h.compareTo(e) != 0) return false;
        }
      }
      return true;
    }, n.prototype.clone = function() {
      var t = f();
      return this.copyTo(t), t;
    }, n.prototype.intValue = function() {
      if (this.s < 0) {
        if (this.t == 1) return this[0] - this.DV;
        if (this.t == 0) return -1;
      } else {
        if (this.t == 1) return this[0];
        if (this.t == 0) return 0;
      }
      return (this[1] & (1 << 32 - this.DB) - 1) << this.DB | this[0];
    }, n.prototype.byteValue = function() {
      return this.t == 0 ? this.s : this[0] << 24 >> 24;
    }, n.prototype.shortValue = function() {
      return this.t == 0 ? this.s : this[0] << 16 >> 16;
    }, n.prototype.signum = function() {
      return this.s < 0 ? -1 : this.t <= 0 || this.t == 1 && this[0] <= 0 ? 0 : 1;
    }, n.prototype.toByteArray = function() {
      var t = this.t, e = new Array();
      e[0] = this.s;
      var r, i = this.DB - t * this.DB % 8, o = 0;
      if (t-- > 0) for (i < this.DB && (r = this[t] >> i) != (this.s & this.DM) >> i && (e[o++] = r | this.s << this.DB - i); t >= 0; ) i < 8 ? (r = (this[t] & (1 << i) - 1) << 8 - i, r |= this[--t] >> (i += this.DB - 8)) : (r = this[t] >> (i -= 8) & 255, i <= 0 && (i += this.DB, --t)), (128 & r) != 0 && (r |= -256), o == 0 && (128 & this.s) != (128 & r) && ++o, (o > 0 || r != this.s) && (e[o++] = r);
      return e;
    }, n.prototype.equals = function(t) {
      return this.compareTo(t) == 0;
    }, n.prototype.min = function(t) {
      return this.compareTo(t) < 0 ? this : t;
    }, n.prototype.max = function(t) {
      return this.compareTo(t) > 0 ? this : t;
    }, n.prototype.and = function(t) {
      var e = f();
      return this.bitwiseTo(t, a, e), e;
    }, n.prototype.or = function(t) {
      var e = f();
      return this.bitwiseTo(t, d, e), e;
    }, n.prototype.xor = function(t) {
      var e = f();
      return this.bitwiseTo(t, b, e), e;
    }, n.prototype.andNot = function(t) {
      var e = f();
      return this.bitwiseTo(t, w, e), e;
    }, n.prototype.not = function() {
      for (var t = f(), e = 0; e < this.t; ++e) t[e] = this.DM & ~this[e];
      return t.t = this.t, t.s = ~this.s, t;
    }, n.prototype.shiftLeft = function(t) {
      var e = f();
      return t < 0 ? this.rShiftTo(-t, e) : this.lShiftTo(t, e), e;
    }, n.prototype.shiftRight = function(t) {
      var e = f();
      return t < 0 ? this.lShiftTo(-t, e) : this.rShiftTo(t, e), e;
    }, n.prototype.getLowestSetBit = function() {
      for (var t = 0; t < this.t; ++t) if (this[t] != 0) return t * this.DB + _(this[t]);
      return this.s < 0 ? this.t * this.DB : -1;
    }, n.prototype.bitCount = function() {
      for (var t = 0, e = this.s & this.DM, r = 0; r < this.t; ++r) t += R(this[r] ^ e);
      return t;
    }, n.prototype.testBit = function(t) {
      var e = Math.floor(t / this.DB);
      return e >= this.t ? this.s != 0 : (this[e] & 1 << t % this.DB) != 0;
    }, n.prototype.setBit = function(t) {
      return this.changeBit(t, d);
    }, n.prototype.clearBit = function(t) {
      return this.changeBit(t, w);
    }, n.prototype.flipBit = function(t) {
      return this.changeBit(t, b);
    }, n.prototype.add = function(t) {
      var e = f();
      return this.addTo(t, e), e;
    }, n.prototype.subtract = function(t) {
      var e = f();
      return this.subTo(t, e), e;
    }, n.prototype.multiply = function(t) {
      var e = f();
      return this.multiplyTo(t, e), e;
    }, n.prototype.divide = function(t) {
      var e = f();
      return this.divRemTo(t, e, null), e;
    }, n.prototype.remainder = function(t) {
      var e = f();
      return this.divRemTo(t, null, e), e;
    }, n.prototype.divideAndRemainder = function(t) {
      var e = f(), r = f();
      return this.divRemTo(t, e, r), new Array(e, r);
    }, n.prototype.modPow = function(t, e) {
      var r, i, o = t.bitLength(), s = A(1);
      if (o <= 0) return s;
      r = o < 18 ? 1 : o < 48 ? 3 : o < 144 ? 4 : o < 768 ? 5 : 6, i = o < 8 ? new D(e) : e.isEven() ? new x(e) : new y(e);
      var h = new Array(), u = 3, B = r - 1, j = (1 << r) - 1;
      if (h[1] = i.convert(this), r > 1) {
        var q = f();
        for (i.sqrTo(h[1], q); u <= j; ) h[u] = f(), i.mulTo(q, h[u - 2], h[u]), u += 2;
      }
      var F, W, Z = t.t - 1, ot = true, N = f();
      for (o = M(t[Z]) - 1; Z >= 0; ) {
        for (o >= B ? F = t[Z] >> o - B & j : (F = (t[Z] & (1 << o + 1) - 1) << B - o, Z > 0 && (F |= t[Z - 1] >> this.DB + o - B)), u = r; (1 & F) == 0; ) F >>= 1, --u;
        if ((o -= u) < 0 && (o += this.DB, --Z), ot) h[F].copyTo(s), ot = false;
        else {
          for (; u > 1; ) i.sqrTo(s, N), i.sqrTo(N, s), u -= 2;
          u > 0 ? i.sqrTo(s, N) : (W = s, s = N, N = W), i.mulTo(N, h[F], s);
        }
        for (; Z >= 0 && (t[Z] & 1 << o) == 0; ) i.sqrTo(s, N), W = s, s = N, N = W, --o < 0 && (o = this.DB - 1, --Z);
      }
      return i.revert(s);
    }, n.prototype.modInverse = function(t) {
      var e = t.isEven();
      if (this.isEven() && e || t.signum() == 0) return n.ZERO;
      for (var r = t.clone(), i = this.clone(), o = A(1), s = A(0), h = A(0), u = A(1); r.signum() != 0; ) {
        for (; r.isEven(); ) r.rShiftTo(1, r), e ? (o.isEven() && s.isEven() || (o.addTo(this, o), s.subTo(t, s)), o.rShiftTo(1, o)) : s.isEven() || s.subTo(t, s), s.rShiftTo(1, s);
        for (; i.isEven(); ) i.rShiftTo(1, i), e ? (h.isEven() && u.isEven() || (h.addTo(this, h), u.subTo(t, u)), h.rShiftTo(1, h)) : u.isEven() || u.subTo(t, u), u.rShiftTo(1, u);
        r.compareTo(i) >= 0 ? (r.subTo(i, r), e && o.subTo(h, o), s.subTo(u, s)) : (i.subTo(r, i), e && h.subTo(o, h), u.subTo(s, u));
      }
      return i.compareTo(n.ONE) != 0 ? n.ZERO : u.compareTo(t) >= 0 ? u.subtract(t) : u.signum() < 0 ? (u.addTo(t, u), u.signum() < 0 ? u.add(t) : u) : u;
    }, n.prototype.pow = function(t) {
      return this.exp(t, new C());
    }, n.prototype.gcd = function(t) {
      var e = this.s < 0 ? this.negate() : this.clone(), r = t.s < 0 ? t.negate() : t.clone();
      if (e.compareTo(r) < 0) {
        var i = e;
        e = r, r = i;
      }
      var o = e.getLowestSetBit(), s = r.getLowestSetBit();
      if (s < 0) return e;
      for (o < s && (s = o), s > 0 && (e.rShiftTo(s, e), r.rShiftTo(s, r)); e.signum() > 0; ) (o = e.getLowestSetBit()) > 0 && e.rShiftTo(o, e), (o = r.getLowestSetBit()) > 0 && r.rShiftTo(o, r), e.compareTo(r) >= 0 ? (e.subTo(r, e), e.rShiftTo(1, e)) : (r.subTo(e, r), r.rShiftTo(1, r));
      return s > 0 && r.lShiftTo(s, r), r;
    }, n.prototype.isProbablePrime = function(t) {
      var e, r = this.abs();
      if (r.t == 1 && r[0] <= V[V.length - 1]) {
        for (e = 0; e < V.length; ++e) if (r[0] == V[e]) return true;
        return false;
      }
      if (r.isEven()) return false;
      for (e = 1; e < V.length; ) {
        for (var i = V[e], o = e + 1; o < V.length && i < K; ) i *= V[o++];
        for (i = r.modInt(i); e < o; ) if (i % V[e++] == 0) return false;
      }
      return r.millerRabin(t);
    }, n.prototype.square = function() {
      var t = f();
      return this.squareTo(t), t;
    }, n.prototype.Barrett = x, I == null) {
      var L;
      if (I = new Array(), O = 0, typeof window != "undefined" && window.crypto) {
        if (window.crypto.getRandomValues) {
          var H = new Uint8Array(32);
          for (window.crypto.getRandomValues(H), L = 0; L < 32; ++L) I[O++] = H[L];
        } else if (navigator.appName == "Netscape" && navigator.appVersion < "5") {
          var G = window.crypto.random(32);
          for (L = 0; L < G.length; ++L) I[O++] = 255 & G.charCodeAt(L);
        }
      }
      for (; O < tt; ) L = Math.floor(65536 * Math.random()), I[O++] = L >>> 8, I[O++] = 255 & L;
      O = 0, st();
    }
    function it() {
      if (P == null) {
        for (st(), (P = new Q()).init(I), O = 0; O < I.length; ++O) I[O] = 0;
        O = 0;
      }
      return P.next();
    }
    function nt() {
    }
    function Q() {
      this.i = 0, this.j = 0, this.S = new Array();
    }
    nt.prototype.nextBytes = function(t) {
      var e;
      for (e = 0; e < t.length; ++e) t[e] = it();
    }, Q.prototype.init = function(t) {
      var e, r, i;
      for (e = 0; e < 256; ++e) this.S[e] = e;
      for (r = 0, e = 0; e < 256; ++e) i = this.S[e], this.S[e] = this.S[r = r + this.S[e] + t[e % t.length] & 255], this.S[r] = i;
      this.i = 0, this.j = 0;
    }, Q.prototype.next = function() {
      var t;
      return this.i = this.i + 1 & 255, this.j = this.j + this.S[this.i] & 255, t = this.S[this.i], this.S[this.i] = this.S[this.j], this.S[this.j] = t, this.S[t + this.S[this.i] & 255];
    };
    var tt = 256;
    l.exports = { default: n, BigInteger: n, SecureRandom: nt };
  }).call(ut);
}).BigInteger, gt = { sha1: "3021300906052b0e03021a05000414", sha224: "302d300d06096086480165030402040500041c", sha256: "3031300d060960864801650304020105000420", sha384: "3041300d060960864801650304020205000430", sha512: "3051300d060960864801650304020305000440", md2: "3020300c06082a864886f70d020205000410", md5: "3020300c06082a864886f70d020505000410", ripemd160: "3021300906052b2403020105000414" }, wt = { sha256: _t };
function lt(l, p) {
  if (this.n = null, this.e = 0, !(l != null && p != null && l.length > 0 && p.length > 0)) throw new Error("Invalid key data");
  this.n = new St(l, 16), this.e = parseInt(p, 16);
}
lt.prototype.verify = function(l, p) {
  p = p.replace(/[^0-9a-f]|[\s\n]]/gi, "");
  var c = new St(p, 16);
  if (c.bitLength() > this.n.bitLength()) throw new Error("Signature does not match with the key modulus.");
  var n = (function(T) {
    for (var m in gt) {
      var v = gt[m], S = v.length;
      if (T.substring(0, S) === v) return { alg: m, hash: T.substring(S) };
    }
    return [];
  })(c.modPowInt(this.e, this.n).toString(16).replace(/^1f+00/, ""));
  if (n.length === 0) return false;
  if (!wt.hasOwnProperty(n.alg)) throw new Error("Hashing algorithm is not supported.");
  var f = wt[n.alg](l).toString();
  return n.hash === f;
};
for (var J = [], $ = [], xt = typeof Uint8Array != "undefined" ? Uint8Array : Array, ct = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", rt = 0, Et = ct.length; rt < Et; ++rt) J[rt] = ct[rt], $[ct.charCodeAt(rt)] = rt;
function Tt(l) {
  var p = l.length;
  if (p % 4 > 0) throw new Error("Invalid string. Length must be a multiple of 4");
  var c = l.indexOf("=");
  return c === -1 && (c = p), [c, c === p ? 0 : 4 - c % 4];
}
function Mt(l, p, c) {
  for (var n, f = [], T = p; T < c; T += 3) f.push(J[(n = (l[T] << 16 & 16711680) + (l[T + 1] << 8 & 65280) + (255 & l[T + 2])) >> 18 & 63] + J[n >> 12 & 63] + J[n >> 6 & 63] + J[63 & n]);
  return f.join("");
}
$["-".charCodeAt(0)] = 62, $["_".charCodeAt(0)] = 63;
var At = { byteLength: function(l) {
  var p = Tt(l), c = p[1];
  return 3 * (p[0] + c) / 4 - c;
}, toByteArray: function(l) {
  var p, c, n = Tt(l), f = n[0], T = n[1], m = new xt((function(g, k, E) {
    return 3 * (k + E) / 4 - E;
  })(0, f, T)), v = 0, S = T > 0 ? f - 4 : f;
  for (c = 0; c < S; c += 4) p = $[l.charCodeAt(c)] << 18 | $[l.charCodeAt(c + 1)] << 12 | $[l.charCodeAt(c + 2)] << 6 | $[l.charCodeAt(c + 3)], m[v++] = p >> 16 & 255, m[v++] = p >> 8 & 255, m[v++] = 255 & p;
  return T === 2 && (p = $[l.charCodeAt(c)] << 2 | $[l.charCodeAt(c + 1)] >> 4, m[v++] = 255 & p), T === 1 && (p = $[l.charCodeAt(c)] << 10 | $[l.charCodeAt(c + 1)] << 4 | $[l.charCodeAt(c + 2)] >> 2, m[v++] = p >> 8 & 255, m[v++] = 255 & p), m;
}, fromByteArray: function(l) {
  for (var p, c = l.length, n = c % 3, f = [], T = 0, m = c - n; T < m; T += 16383) f.push(Mt(l, T, T + 16383 > m ? m : T + 16383));
  return n === 1 ? f.push(J[(p = l[c - 1]) >> 2] + J[p << 4 & 63] + "==") : n === 2 && f.push(J[(p = (l[c - 2] << 8) + l[c - 1]) >> 10] + J[p >> 4 & 63] + J[p << 2 & 63] + "="), f.join("");
} };
function Bt(l) {
  var p = l.length % 4;
  return p === 0 ? l : l + new Array(4 - p + 1).join("=");
}
function bt(l) {
  return l = Bt(l).replace(/\-/g, "+").replace(/_/g, "/"), decodeURIComponent((function(p) {
    for (var c = "", n = 0; n < p.length; n++) c += String.fromCharCode(p[n]);
    return c;
  })(At.toByteArray(l)).split("").map(function(p) {
    return "%" + ("00" + p.charCodeAt(0).toString(16)).slice(-2);
  }).join(""));
}
function pt(l) {
  return (function(p) {
    for (var c = "", n = 0; n < p.length; n++) {
      var f = p[n].toString(16);
      c += f.length === 2 ? f : "0" + f;
    }
    return c;
  })(At.toByteArray(Bt(l)));
}
var Rt = X(function(l, p) {
  l.exports = (function() {
    function c(r) {
      return typeof r == "function";
    }
    var n = Array.isArray ? Array.isArray : function(r) {
      return Object.prototype.toString.call(r) === "[object Array]";
    }, f = 0, T = void 0, m = void 0, v = function(r, i) {
      D[f] = r, D[f + 1] = i, (f += 2) === 2 && (m ? m(y) : _());
    }, S = typeof window != "undefined" ? window : void 0, g = S || {}, k = g.MutationObserver || g.WebKitMutationObserver, E = typeof self == "undefined" && typeof process != "undefined" && {}.toString.call(process) === "[object process]", A = typeof Uint8ClampedArray != "undefined" && typeof importScripts != "undefined" && typeof MessageChannel != "undefined";
    function M() {
      var r = setTimeout;
      return function() {
        return r(y, 1);
      };
    }
    var D = new Array(1e3);
    function y() {
      for (var r = 0; r < f; r += 2) (0, D[r])(D[r + 1]), D[r] = void 0, D[r + 1] = void 0;
      f = 0;
    }
    var a, d, b, w, _ = void 0;
    function R(r, i) {
      var o = this, s = new this.constructor(x);
      s[U] === void 0 && tt(s);
      var h = o._state;
      if (h) {
        var u = arguments[h - 1];
        v(function() {
          return nt(h, s, u, o._result);
        });
      } else G(o, s, r, i);
      return s;
    }
    function C(r) {
      if (r && typeof r == "object" && r.constructor === this) return r;
      var i = new this(x);
      return K(i, r), i;
    }
    E ? _ = function() {
      return process.nextTick(y);
    } : k ? (d = 0, b = new k(y), w = document.createTextNode(""), b.observe(w, { characterData: true }), _ = function() {
      w.data = d = ++d % 2;
    }) : A ? ((a = new MessageChannel()).port1.onmessage = y, _ = function() {
      return a.port2.postMessage(0);
    }) : _ = S === void 0 ? (function() {
      try {
        var r = Function("return this")().require("vertx");
        return (T = r.runOnLoop || r.runOnContext) !== void 0 ? function() {
          T(y);
        } : M();
      } catch {
        return M();
      }
    })() : M();
    var U = Math.random().toString(36).substring(2);
    function x() {
    }
    var P = void 0, I = 1, O = 2;
    function V(r, i, o) {
      i.constructor === r.constructor && o === R && i.constructor.resolve === C ? (function(s, h) {
        h._state === I ? L(s, h._result) : h._state === O ? H(s, h._result) : G(h, void 0, function(u) {
          return K(s, u);
        }, function(u) {
          return H(s, u);
        });
      })(r, i) : o === void 0 ? L(r, i) : c(o) ? (function(s, h, u) {
        v(function(B) {
          var j = false, q = (function(F, W, Z, ot) {
            try {
              F.call(W, function(N) {
                j || (j = true, h !== N ? K(B, N) : L(B, N));
              }, function(N) {
                j || (j = true, H(B, N));
              });
            } catch (N) {
              return N;
            }
          })(u, h);
          !j && q && (j = true, H(B, q));
        }, s);
      })(r, i, o) : L(r, i);
    }
    function K(r, i) {
      if (r === i) H(r, new TypeError("You cannot resolve a promise with itself"));
      else if (h = typeof (s = i), s === null || h !== "object" && h !== "function") L(r, i);
      else {
        var o = void 0;
        try {
          o = i.then;
        } catch (u) {
          return void H(r, u);
        }
        V(r, i, o);
      }
      var s, h;
    }
    function st(r) {
      r._onerror && r._onerror(r._result), it(r);
    }
    function L(r, i) {
      r._state === P && (r._result = i, r._state = I, r._subscribers.length !== 0 && v(it, r));
    }
    function H(r, i) {
      r._state === P && (r._state = O, r._result = i, v(st, r));
    }
    function G(r, i, o, s) {
      var h = r._subscribers, u = h.length;
      r._onerror = null, h[u] = i, h[u + I] = o, h[u + O] = s, u === 0 && r._state && v(it, r);
    }
    function it(r) {
      var i = r._subscribers, o = r._state;
      if (i.length !== 0) {
        for (var s = void 0, h = void 0, u = r._result, B = 0; B < i.length; B += 3) h = i[B + o], (s = i[B]) ? nt(o, s, h, u) : h(u);
        r._subscribers.length = 0;
      }
    }
    function nt(r, i, o, s) {
      var h = c(o), u = void 0, B = void 0, j = true;
      if (h) {
        try {
          u = o(s);
        } catch (q) {
          j = false, B = q;
        }
        if (i === u) return void H(i, new TypeError("A promises callback cannot return that same promise."));
      } else u = s;
      i._state !== P || (h && j ? K(i, u) : j === false ? H(i, B) : r === I ? L(i, u) : r === O && H(i, u));
    }
    var Q = 0;
    function tt(r) {
      r[U] = Q++, r._state = void 0, r._result = void 0, r._subscribers = [];
    }
    var t = (function() {
      function r(i, o) {
        this._instanceConstructor = i, this.promise = new i(x), this.promise[U] || tt(this.promise), n(o) ? (this.length = o.length, this._remaining = o.length, this._result = new Array(this.length), this.length === 0 ? L(this.promise, this._result) : (this.length = this.length || 0, this._enumerate(o), this._remaining === 0 && L(this.promise, this._result))) : H(this.promise, new Error("Array Methods must be provided an Array"));
      }
      return r.prototype._enumerate = function(i) {
        for (var o = 0; this._state === P && o < i.length; o++) this._eachEntry(i[o], o);
      }, r.prototype._eachEntry = function(i, o) {
        var s = this._instanceConstructor, h = s.resolve;
        if (h === C) {
          var u = void 0, B = void 0, j = false;
          try {
            u = i.then;
          } catch (F) {
            j = true, B = F;
          }
          if (u === R && i._state !== P) this._settledAt(i._state, o, i._result);
          else if (typeof u != "function") this._remaining--, this._result[o] = i;
          else if (s === e) {
            var q = new s(x);
            j ? H(q, B) : V(q, i, u), this._willSettleAt(q, o);
          } else this._willSettleAt(new s(function(F) {
            return F(i);
          }), o);
        } else this._willSettleAt(h(i), o);
      }, r.prototype._settledAt = function(i, o, s) {
        var h = this.promise;
        h._state === P && (this._remaining--, i === O ? H(h, s) : this._result[o] = s), this._remaining === 0 && L(h, this._result);
      }, r.prototype._willSettleAt = function(i, o) {
        var s = this;
        G(i, void 0, function(h) {
          return s._settledAt(I, o, h);
        }, function(h) {
          return s._settledAt(O, o, h);
        });
      }, r;
    })(), e = (function() {
      function r(i) {
        this[U] = Q++, this._result = this._state = void 0, this._subscribers = [], x !== i && (typeof i != "function" && (function() {
          throw new TypeError("You must pass a resolver function as the first argument to the promise constructor");
        })(), this instanceof r ? (function(o, s) {
          try {
            s(function(h) {
              K(o, h);
            }, function(h) {
              H(o, h);
            });
          } catch (h) {
            H(o, h);
          }
        })(this, i) : (function() {
          throw new TypeError("Failed to construct 'Promise': Please use the 'new' operator, this object constructor cannot be called as a function.");
        })());
      }
      return r.prototype.catch = function(i) {
        return this.then(null, i);
      }, r.prototype.finally = function(i) {
        var o = this.constructor;
        return c(i) ? this.then(function(s) {
          return o.resolve(i()).then(function() {
            return s;
          });
        }, function(s) {
          return o.resolve(i()).then(function() {
            throw s;
          });
        }) : this.then(i, i);
      }, r;
    })();
    return e.prototype.then = R, e.all = function(r) {
      return new t(this, r).promise;
    }, e.race = function(r) {
      var i = this;
      return n(r) ? new i(function(o, s) {
        for (var h = r.length, u = 0; u < h; u++) i.resolve(r[u]).then(o, s);
      }) : new i(function(o, s) {
        return s(new TypeError("You must pass an array to race."));
      });
    }, e.resolve = C, e.reject = function(r) {
      var i = new this(x);
      return H(i, r), i;
    }, e._setScheduler = function(r) {
      m = r;
    }, e._setAsap = function(r) {
      v = r;
    }, e._asap = v, e.polyfill = function() {
      var r = void 0;
      if (ut !== void 0) r = ut;
      else if (typeof self != "undefined") r = self;
      else try {
        r = Function("return this")();
      } catch {
        throw new Error("polyfill failed because global object is unavailable in this environment");
      }
      var i = r.Promise;
      if (i) {
        var o = null;
        try {
          o = Object.prototype.toString.call(i.resolve());
        } catch {
        }
        if (o === "[object Promise]" && !i.cast) return;
      }
      r.Promise = e;
    }, e.Promise = e, e;
  })();
}), jt = X(function(l) {
  var p, c;
  p = ut, c = function() {
    return function() {
      return (function(n) {
        var f = [];
        if (n.length === 0) return "";
        if (typeof n[0] != "string") throw new TypeError("Url must be a string. Received " + n[0]);
        if (n[0].match(/^[^/:]+:\/*$/) && n.length > 1) {
          var T = n.shift();
          n[0] = T + n[0];
        }
        n[0] = n[0].match(/^file:\/\/\//) ? n[0].replace(/^([^/:]+):\/*/, "$1:///") : n[0].replace(/^([^/:]+):\/*/, "$1://");
        for (var m = 0; m < n.length; m++) {
          var v = n[m];
          if (typeof v != "string") throw new TypeError("Url must be a string. Received " + v);
          v !== "" && (m > 0 && (v = v.replace(/^[\/]+/, "")), v = v.replace(/[\/]+$/, m < n.length - 1 ? "" : "/"), f.push(v));
        }
        var S = f.join("/"), g = (S = S.replace(/\/(\?|&|#[^!])/g, "$1")).split("?");
        return g.shift() + (g.length > 0 ? "?" : "") + g.join("&");
      })(typeof arguments[0] == "object" ? arguments[0] : [].slice.call(arguments));
    };
  }, l.exports ? l.exports = c() : p.urljoin = c();
});
function kt(l) {
  if (l.ok) return l.json();
  var p = new Error(l.statusText);
  return p.response = l, Promise.reject(p);
}
function dt(l) {
  this.name = "ConfigurationError", this.message = l || "";
}
function z(l) {
  this.name = "TokenValidationError", this.message = l || "";
}
Rt.polyfill(), dt.prototype = Error.prototype, z.prototype = Error.prototype;
var at = function() {
};
at.prototype.get = function() {
  return null;
}, at.prototype.has = function() {
  return null;
}, at.prototype.set = function() {
  return null;
};
var vt = ["RS256"];
function et(l) {
  var p = l || {};
  if (this.jwksCache = p.jwksCache || new at(), this.expectedAlg = p.expectedAlg || "RS256", this.issuer = p.issuer, this.audience = p.audience, this.leeway = p.leeway || 0, this.__disableExpirationCheck = p.__disableExpirationCheck || false, this.jwksURI = p.jwksURI, this.leeway < 0 || this.leeway > 300) throw new dt("The leeway should be positive and lower than five minutes.");
  if (vt.indexOf(this.expectedAlg) === -1) throw new dt("Algorithm " + this.expectedAlg + " is not supported. (Expected algs: [" + vt.join(",") + "])");
}
et.prototype.verify = function(l, p, c) {
  var n = this.decode(l);
  if (n instanceof Error) return c(n, false);
  var f = n.encoded.header + "." + n.encoded.payload, T = pt(n.encoded.signature), m = n.header.alg, v = n.header.kid, S = n.payload.aud, g = n.payload.iss, k = n.payload.exp, E = n.payload.nbf, A = n.payload.nonce || null, M = this;
  if (M.expectedAlg !== m) return c(new z("Algorithm " + m + " is not supported. (Expected algs: [" + vt.join(",") + "])"), false);
  this.getRsaVerifier(g, v, function(D, y) {
    if (D) return c(D);
    if (y.verify(f, T)) {
      if (M.issuer !== g) return c(new z("Issuer " + g + " is not valid."), false);
      if (M.audience !== S) return c(new z("Audience " + S + " is not valid."), false);
      if (A !== p) return c(new z("Nonce does not match."), false);
      var a = M.verifyExpAndNbf(k, E);
      return a ? c(a, false) : c(null, n.payload);
    }
    return c(new z("Invalid signature."));
  });
}, et.prototype.verifyExpAndNbf = function(l, p) {
  console.warn("This method is deprecated and will be removed in the next major version");
  var c = /* @__PURE__ */ new Date(), n = /* @__PURE__ */ new Date(0), f = /* @__PURE__ */ new Date(0);
  return this.__disableExpirationCheck ? null : (n.setUTCSeconds(l + this.leeway), c > n ? new z("Expired token.") : p === void 0 ? null : (f.setUTCSeconds(p - this.leeway), c < f ? new z("The token is not valid until later in the future. Please check your computed clock.") : null));
}, et.prototype.verifyExpAndIat = function(l, p) {
  console.warn("This method is deprecated and will be removed in the next major version");
  var c = /* @__PURE__ */ new Date(), n = /* @__PURE__ */ new Date(0), f = /* @__PURE__ */ new Date(0);
  return this.__disableExpirationCheck ? null : (n.setUTCSeconds(l + this.leeway), c > n ? new z("Expired token.") : (f.setUTCSeconds(p - this.leeway), c < f ? new z("The token was issued in the future. Please check your computed clock.") : null));
}, et.prototype.getRsaVerifier = function(l, p, c) {
  var n = this, f = l + p;
  if (this.jwksCache.has(f)) {
    var T = this.jwksCache.get(f);
    c(null, new lt(T.modulus, T.exp));
  } else (function(m, v) {
    (typeof fetch == "undefined" ? function(S, g) {
      return g = g || {}, new Promise(function(k, E) {
        var A = new XMLHttpRequest(), M = [], D = [], y = {}, a = function() {
          return { ok: (A.status / 100 | 0) == 2, statusText: A.statusText, status: A.status, url: A.responseURL, text: function() {
            return Promise.resolve(A.responseText);
          }, json: function() {
            return Promise.resolve(JSON.parse(A.responseText));
          }, blob: function() {
            return Promise.resolve(new Blob([A.response]));
          }, clone: a, headers: { keys: function() {
            return M;
          }, entries: function() {
            return D;
          }, get: function(b) {
            return y[b.toLowerCase()];
          }, has: function(b) {
            return b.toLowerCase() in y;
          } } };
        };
        for (var d in A.open(g.method || "get", S, true), A.onload = function() {
          A.getAllResponseHeaders().replace(/^(.*?):[^\S\n]*([\s\S]*?)$/gm, function(b, w, _) {
            M.push(w = w.toLowerCase()), D.push([w, _]), y[w] = y[w] ? y[w] + "," + _ : _;
          }), k(a());
        }, A.onerror = E, A.withCredentials = g.credentials == "include", g.headers) A.setRequestHeader(d, g.headers[d]);
        A.send(g.body || null);
      });
    } : fetch)(m.jwksURI || jt(m.iss, ".well-known", "jwks.json")).then(kt).then(function(S) {
      var g, k, E, A = null;
      for (g = 0; g < S.keys.length && A === null; g++) (k = S.keys[g]).kid === m.kid && (A = k);
      return v(null, { modulus: pt((E = A).n), exp: pt(E.e) });
    }).catch(function(S) {
      v(S);
    });
  })({ jwksURI: this.jwksURI, iss: l, kid: p }, function(m, v) {
    return m ? c(m) : (n.jwksCache.set(f, v), c(null, new lt(v.modulus, v.exp)));
  });
}, et.prototype.decode = function(l) {
  var p, c, n = l.split(".");
  if (n.length !== 3) return new z("Cannot decode a malformed JWT");
  try {
    p = JSON.parse(bt(n[0])), c = JSON.parse(bt(n[1]));
  } catch {
    return new z("Token header or payload is not valid JSON");
  }
  return { header: p, payload: c, encoded: { header: n[0], payload: n[1], signature: n[2] } };
}, et.prototype.validateAccessToken = function(l, p, c, n) {
  if (this.expectedAlg !== p) return n(new z("Algorithm " + p + " is not supported. (Expected alg: " + this.expectedAlg + ")"));
  var f, T = _t(l), m = mt.stringify(T), v = m.substring(0, m.length / 2), S = mt.parse(v), g = Dt.stringify(S);
  return n((f = { "+": "-", "/": "_", "=": "" }, g.replace(/[+/=]/g, function(k) {
    return f[k];
  }) !== c ? new z("Invalid access_token") : null));
};
export { et as default };
