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

System.register([], (function(t) {
  "use strict";
  return { execute: function() {
    t("default", M);
    var r = "undefined" != typeof globalThis ? globalThis : "undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : {};
    function e(t2, r2) {
      return t2(r2 = { exports: {} }, r2.exports), r2.exports;
    }
    var i = e((function(t2, r2) {
      var e2;
      t2.exports = e2 = e2 || (function(t3, r3) {
        var e3 = Object.create || /* @__PURE__ */ (function() {
          function t4() {
          }
          return function(r4) {
            var e4;
            return t4.prototype = r4, e4 = new t4(), t4.prototype = null, e4;
          };
        })(), i2 = {}, n2 = i2.lib = {}, o2 = n2.Base = { extend: function(t4) {
          var r4 = e3(this);
          return t4 && r4.mixIn(t4), r4.hasOwnProperty("init") && this.init !== r4.init || (r4.init = function() {
            r4.$super.init.apply(this, arguments);
          }), r4.init.prototype = r4, r4.$super = this, r4;
        }, create: function() {
          var t4 = this.extend();
          return t4.init.apply(t4, arguments), t4;
        }, init: function() {
        }, mixIn: function(t4) {
          for (var r4 in t4) t4.hasOwnProperty(r4) && (this[r4] = t4[r4]);
          t4.hasOwnProperty("toString") && (this.toString = t4.toString);
        }, clone: function() {
          return this.init.prototype.extend(this);
        } }, s2 = n2.WordArray = o2.extend({ init: function(t4, r4) {
          t4 = this.words = t4 || [], this.sigBytes = null != r4 ? r4 : 4 * t4.length;
        }, toString: function(t4) {
          return (t4 || u2).stringify(this);
        }, concat: function(t4) {
          var r4 = this.words, e4 = t4.words, i3 = this.sigBytes, n3 = t4.sigBytes;
          if (this.clamp(), i3 % 4) for (var o3 = 0; o3 < n3; o3++) r4[i3 + o3 >>> 2] |= (e4[o3 >>> 2] >>> 24 - o3 % 4 * 8 & 255) << 24 - (i3 + o3) % 4 * 8;
          else for (o3 = 0; o3 < n3; o3 += 4) r4[i3 + o3 >>> 2] = e4[o3 >>> 2];
          return this.sigBytes += n3, this;
        }, clamp: function() {
          var r4 = this.words, e4 = this.sigBytes;
          r4[e4 >>> 2] &= 4294967295 << 32 - e4 % 4 * 8, r4.length = t3.ceil(e4 / 4);
        }, clone: function() {
          var t4 = o2.clone.call(this);
          return t4.words = this.words.slice(0), t4;
        }, random: function(r4) {
          for (var e4, i3 = [], n3 = function(r5) {
            r5 = r5;
            var e5 = 987654321, i4 = 4294967295;
            return function() {
              var n4 = ((e5 = 36969 * (65535 & e5) + (e5 >> 16) & i4) << 16) + (r5 = 18e3 * (65535 & r5) + (r5 >> 16) & i4) & i4;
              return n4 /= 4294967296, (n4 += 0.5) * (t3.random() > 0.5 ? 1 : -1);
            };
          }, o3 = 0; o3 < r4; o3 += 4) {
            var h3 = n3(4294967296 * (e4 || t3.random()));
            e4 = 987654071 * h3(), i3.push(4294967296 * h3() | 0);
          }
          return new s2.init(i3, r4);
        } }), h2 = i2.enc = {}, u2 = h2.Hex = { stringify: function(t4) {
          for (var r4 = t4.words, e4 = t4.sigBytes, i3 = [], n3 = 0; n3 < e4; n3++) {
            var o3 = r4[n3 >>> 2] >>> 24 - n3 % 4 * 8 & 255;
            i3.push((o3 >>> 4).toString(16)), i3.push((15 & o3).toString(16));
          }
          return i3.join("");
        }, parse: function(t4) {
          for (var r4 = t4.length, e4 = [], i3 = 0; i3 < r4; i3 += 2) e4[i3 >>> 3] |= parseInt(t4.substr(i3, 2), 16) << 24 - i3 % 8 * 4;
          return new s2.init(e4, r4 / 2);
        } }, a2 = h2.Latin1 = { stringify: function(t4) {
          for (var r4 = t4.words, e4 = t4.sigBytes, i3 = [], n3 = 0; n3 < e4; n3++) i3.push(String.fromCharCode(r4[n3 >>> 2] >>> 24 - n3 % 4 * 8 & 255));
          return i3.join("");
        }, parse: function(t4) {
          for (var r4 = t4.length, e4 = [], i3 = 0; i3 < r4; i3++) e4[i3 >>> 2] |= (255 & t4.charCodeAt(i3)) << 24 - i3 % 4 * 8;
          return new s2.init(e4, r4);
        } }, f2 = h2.Utf8 = { stringify: function(t4) {
          try {
            return decodeURIComponent(escape(a2.stringify(t4)));
          } catch (t5) {
            throw new Error("Malformed UTF-8 data");
          }
        }, parse: function(t4) {
          return a2.parse(unescape(encodeURIComponent(t4)));
        } }, c2 = n2.BufferedBlockAlgorithm = o2.extend({ reset: function() {
          this._data = new s2.init(), this._nDataBytes = 0;
        }, _append: function(t4) {
          "string" == typeof t4 && (t4 = f2.parse(t4)), this._data.concat(t4), this._nDataBytes += t4.sigBytes;
        }, _process: function(r4) {
          var e4 = this._data, i3 = e4.words, n3 = e4.sigBytes, o3 = this.blockSize, h3 = n3 / (4 * o3), u3 = (h3 = r4 ? t3.ceil(h3) : t3.max((0 | h3) - this._minBufferSize, 0)) * o3, a3 = t3.min(4 * u3, n3);
          if (u3) {
            for (var f3 = 0; f3 < u3; f3 += o3) this._doProcessBlock(i3, f3);
            var c3 = i3.splice(0, u3);
            e4.sigBytes -= a3;
          }
          return new s2.init(c3, a3);
        }, clone: function() {
          var t4 = o2.clone.call(this);
          return t4._data = this._data.clone(), t4;
        }, _minBufferSize: 0 }), p2 = (n2.Hasher = c2.extend({ cfg: o2.extend(), init: function(t4) {
          this.cfg = this.cfg.extend(t4), this.reset();
        }, reset: function() {
          c2.reset.call(this), this._doReset();
        }, update: function(t4) {
          return this._append(t4), this._process(), this;
        }, finalize: function(t4) {
          return t4 && this._append(t4), this._doFinalize();
        }, blockSize: 16, _createHelper: function(t4) {
          return function(r4, e4) {
            return new t4.init(e4).finalize(r4);
          };
        }, _createHmacHelper: function(t4) {
          return function(r4, e4) {
            return new p2.HMAC.init(t4, e4).finalize(r4);
          };
        } }), i2.algo = {});
        return i2;
      })(Math);
    })), n = e((function(t2, r2) {
      var e2;
      t2.exports = (e2 = i, (function(t3) {
        var r3 = e2, i2 = r3.lib, n2 = i2.WordArray, o2 = i2.Hasher, s2 = r3.algo, h2 = [], u2 = [];
        !(function() {
          function r4(r5) {
            for (var e4 = t3.sqrt(r5), i4 = 2; i4 <= e4; i4++) if (!(r5 % i4)) return false;
            return true;
          }
          function e3(t4) {
            return 4294967296 * (t4 - (0 | t4)) | 0;
          }
          for (var i3 = 2, n3 = 0; n3 < 64; ) r4(i3) && (n3 < 8 && (h2[n3] = e3(t3.pow(i3, 0.5))), u2[n3] = e3(t3.pow(i3, 1 / 3)), n3++), i3++;
        })();
        var a2 = [], f2 = s2.SHA256 = o2.extend({ _doReset: function() {
          this._hash = new n2.init(h2.slice(0));
        }, _doProcessBlock: function(t4, r4) {
          for (var e3 = this._hash.words, i3 = e3[0], n3 = e3[1], o3 = e3[2], s3 = e3[3], h3 = e3[4], f3 = e3[5], c2 = e3[6], p2 = e3[7], l2 = 0; l2 < 64; l2++) {
            if (l2 < 16) a2[l2] = 0 | t4[r4 + l2];
            else {
              var d2 = a2[l2 - 15], v2 = a2[l2 - 2];
              a2[l2] = ((d2 << 25 | d2 >>> 7) ^ (d2 << 14 | d2 >>> 18) ^ d2 >>> 3) + a2[l2 - 7] + ((v2 << 15 | v2 >>> 17) ^ (v2 << 13 | v2 >>> 19) ^ v2 >>> 10) + a2[l2 - 16];
            }
            var y2 = i3 & n3 ^ i3 & o3 ^ n3 & o3, m2 = p2 + ((h3 << 26 | h3 >>> 6) ^ (h3 << 21 | h3 >>> 11) ^ (h3 << 7 | h3 >>> 25)) + (h3 & f3 ^ ~h3 & c2) + u2[l2] + a2[l2];
            p2 = c2, c2 = f3, f3 = h3, h3 = s3 + m2 | 0, s3 = o3, o3 = n3, n3 = i3, i3 = m2 + (((i3 << 30 | i3 >>> 2) ^ (i3 << 19 | i3 >>> 13) ^ (i3 << 10 | i3 >>> 22)) + y2) | 0;
          }
          e3[0] = e3[0] + i3 | 0, e3[1] = e3[1] + n3 | 0, e3[2] = e3[2] + o3 | 0, e3[3] = e3[3] + s3 | 0, e3[4] = e3[4] + h3 | 0, e3[5] = e3[5] + f3 | 0, e3[6] = e3[6] + c2 | 0, e3[7] = e3[7] + p2 | 0;
        }, _doFinalize: function() {
          var r4 = this._data, e3 = r4.words, i3 = 8 * this._nDataBytes, n3 = 8 * r4.sigBytes;
          return e3[n3 >>> 5] |= 128 << 24 - n3 % 32, e3[14 + (n3 + 64 >>> 9 << 4)] = t3.floor(i3 / 4294967296), e3[15 + (n3 + 64 >>> 9 << 4)] = i3, r4.sigBytes = 4 * e3.length, this._process(), this._hash;
        }, clone: function() {
          var t4 = o2.clone.call(this);
          return t4._hash = this._hash.clone(), t4;
        } });
        r3.SHA256 = o2._createHelper(f2), r3.HmacSHA256 = o2._createHmacHelper(f2);
      })(Math), e2.SHA256);
    })), o = e((function(t2, r2) {
      var e2, n2;
      t2.exports = (n2 = (e2 = i).lib.WordArray, e2.enc.Base64 = { stringify: function(t3) {
        var r3 = t3.words, e3 = t3.sigBytes, i2 = this._map;
        t3.clamp();
        for (var n3 = [], o2 = 0; o2 < e3; o2 += 3) for (var s2 = (r3[o2 >>> 2] >>> 24 - o2 % 4 * 8 & 255) << 16 | (r3[o2 + 1 >>> 2] >>> 24 - (o2 + 1) % 4 * 8 & 255) << 8 | r3[o2 + 2 >>> 2] >>> 24 - (o2 + 2) % 4 * 8 & 255, h2 = 0; h2 < 4 && o2 + 0.75 * h2 < e3; h2++) n3.push(i2.charAt(s2 >>> 6 * (3 - h2) & 63));
        var u2 = i2.charAt(64);
        if (u2) for (; n3.length % 4; ) n3.push(u2);
        return n3.join("");
      }, parse: function(t3) {
        var r3 = t3.length, e3 = this._map, i2 = this._reverseMap;
        if (!i2) {
          i2 = this._reverseMap = [];
          for (var o2 = 0; o2 < e3.length; o2++) i2[e3.charCodeAt(o2)] = o2;
        }
        var s2 = e3.charAt(64);
        if (s2) {
          var h2 = t3.indexOf(s2);
          -1 !== h2 && (r3 = h2);
        }
        return (function(t4, r4, e4) {
          for (var i3 = [], o3 = 0, s3 = 0; s3 < r4; s3++) if (s3 % 4) {
            var h3 = e4[t4.charCodeAt(s3 - 1)] << s3 % 4 * 2, u2 = e4[t4.charCodeAt(s3)] >>> 6 - s3 % 4 * 2;
            i3[o3 >>> 2] |= (h3 | u2) << 24 - o3 % 4 * 8, o3++;
          }
          return n2.create(i3, o3);
        })(t3, r3, i2);
      }, _map: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=" }, e2.enc.Base64);
    })), s = e((function(t2, r2) {
      t2.exports = i.enc.Hex;
    })), h = e((function(t2, e2) {
      (function() {
        var r2;
        function e3(t3, r3, e4) {
          null != t3 && ("number" == typeof t3 ? this.fromNumber(t3, r3, e4) : this.fromString(t3, null == r3 && "string" != typeof t3 ? 256 : r3));
        }
        function i2() {
          return new e3(null);
        }
        var n2 = "undefined" != typeof navigator;
        n2 && "Microsoft Internet Explorer" == navigator.appName ? (e3.prototype.am = function(t3, r3, e4, i3, n3, o3) {
          for (var s3 = 32767 & r3, h3 = r3 >> 15; --o3 >= 0; ) {
            var u3 = 32767 & this[t3], a3 = this[t3++] >> 15, f3 = h3 * u3 + a3 * s3;
            n3 = ((u3 = s3 * u3 + ((32767 & f3) << 15) + e4[i3] + (1073741823 & n3)) >>> 30) + (f3 >>> 15) + h3 * a3 + (n3 >>> 30), e4[i3++] = 1073741823 & u3;
          }
          return n3;
        }, r2 = 30) : n2 && "Netscape" != navigator.appName ? (e3.prototype.am = function(t3, r3, e4, i3, n3, o3) {
          for (; --o3 >= 0; ) {
            var s3 = r3 * this[t3++] + e4[i3] + n3;
            n3 = Math.floor(s3 / 67108864), e4[i3++] = 67108863 & s3;
          }
          return n3;
        }, r2 = 26) : (e3.prototype.am = function(t3, r3, e4, i3, n3, o3) {
          for (var s3 = 16383 & r3, h3 = r3 >> 14; --o3 >= 0; ) {
            var u3 = 16383 & this[t3], a3 = this[t3++] >> 14, f3 = h3 * u3 + a3 * s3;
            n3 = ((u3 = s3 * u3 + ((16383 & f3) << 14) + e4[i3] + n3) >> 28) + (f3 >> 14) + h3 * a3, e4[i3++] = 268435455 & u3;
          }
          return n3;
        }, r2 = 28), e3.prototype.DB = r2, e3.prototype.DM = (1 << r2) - 1, e3.prototype.DV = 1 << r2, e3.prototype.FV = Math.pow(2, 52), e3.prototype.F1 = 52 - r2, e3.prototype.F2 = 2 * r2 - 52;
        var o2, s2, h2 = new Array();
        for (o2 = "0".charCodeAt(0), s2 = 0; s2 <= 9; ++s2) h2[o2++] = s2;
        for (o2 = "a".charCodeAt(0), s2 = 10; s2 < 36; ++s2) h2[o2++] = s2;
        for (o2 = "A".charCodeAt(0), s2 = 10; s2 < 36; ++s2) h2[o2++] = s2;
        function u2(t3) {
          return "0123456789abcdefghijklmnopqrstuvwxyz".charAt(t3);
        }
        function a2(t3, r3) {
          var e4 = h2[t3.charCodeAt(r3)];
          return null == e4 ? -1 : e4;
        }
        function f2(t3) {
          var r3 = i2();
          return r3.fromInt(t3), r3;
        }
        function c2(t3) {
          var r3, e4 = 1;
          return 0 != (r3 = t3 >>> 16) && (t3 = r3, e4 += 16), 0 != (r3 = t3 >> 8) && (t3 = r3, e4 += 8), 0 != (r3 = t3 >> 4) && (t3 = r3, e4 += 4), 0 != (r3 = t3 >> 2) && (t3 = r3, e4 += 2), 0 != (r3 = t3 >> 1) && (t3 = r3, e4 += 1), e4;
        }
        function p2(t3) {
          this.m = t3;
        }
        function l2(t3) {
          this.m = t3, this.mp = t3.invDigit(), this.mpl = 32767 & this.mp, this.mph = this.mp >> 15, this.um = (1 << t3.DB - 15) - 1, this.mt2 = 2 * t3.t;
        }
        function d2(t3, r3) {
          return t3 & r3;
        }
        function v2(t3, r3) {
          return t3 | r3;
        }
        function y2(t3, r3) {
          return t3 ^ r3;
        }
        function m2(t3, r3) {
          return t3 & ~r3;
        }
        function g2(t3) {
          if (0 == t3) return -1;
          var r3 = 0;
          return 0 == (65535 & t3) && (t3 >>= 16, r3 += 16), 0 == (255 & t3) && (t3 >>= 8, r3 += 8), 0 == (15 & t3) && (t3 >>= 4, r3 += 4), 0 == (3 & t3) && (t3 >>= 2, r3 += 2), 0 == (1 & t3) && ++r3, r3;
        }
        function w2(t3) {
          for (var r3 = 0; 0 != t3; ) t3 &= t3 - 1, ++r3;
          return r3;
        }
        function T2() {
        }
        function b2(t3) {
          return t3;
        }
        function _2(t3) {
          this.r2 = i2(), this.q3 = i2(), e3.ONE.dlShiftTo(2 * t3.t, this.r2), this.mu = this.r2.divide(t3), this.m = t3;
        }
        p2.prototype.convert = function(t3) {
          return t3.s < 0 || t3.compareTo(this.m) >= 0 ? t3.mod(this.m) : t3;
        }, p2.prototype.revert = function(t3) {
          return t3;
        }, p2.prototype.reduce = function(t3) {
          t3.divRemTo(this.m, null, t3);
        }, p2.prototype.mulTo = function(t3, r3, e4) {
          t3.multiplyTo(r3, e4), this.reduce(e4);
        }, p2.prototype.sqrTo = function(t3, r3) {
          t3.squareTo(r3), this.reduce(r3);
        }, l2.prototype.convert = function(t3) {
          var r3 = i2();
          return t3.abs().dlShiftTo(this.m.t, r3), r3.divRemTo(this.m, null, r3), t3.s < 0 && r3.compareTo(e3.ZERO) > 0 && this.m.subTo(r3, r3), r3;
        }, l2.prototype.revert = function(t3) {
          var r3 = i2();
          return t3.copyTo(r3), this.reduce(r3), r3;
        }, l2.prototype.reduce = function(t3) {
          for (; t3.t <= this.mt2; ) t3[t3.t++] = 0;
          for (var r3 = 0; r3 < this.m.t; ++r3) {
            var e4 = 32767 & t3[r3], i3 = e4 * this.mpl + ((e4 * this.mph + (t3[r3] >> 15) * this.mpl & this.um) << 15) & t3.DM;
            for (t3[e4 = r3 + this.m.t] += this.m.am(0, i3, t3, r3, 0, this.m.t); t3[e4] >= t3.DV; ) t3[e4] -= t3.DV, t3[++e4]++;
          }
          t3.clamp(), t3.drShiftTo(this.m.t, t3), t3.compareTo(this.m) >= 0 && t3.subTo(this.m, t3);
        }, l2.prototype.mulTo = function(t3, r3, e4) {
          t3.multiplyTo(r3, e4), this.reduce(e4);
        }, l2.prototype.sqrTo = function(t3, r3) {
          t3.squareTo(r3), this.reduce(r3);
        }, e3.prototype.copyTo = function(t3) {
          for (var r3 = this.t - 1; r3 >= 0; --r3) t3[r3] = this[r3];
          t3.t = this.t, t3.s = this.s;
        }, e3.prototype.fromInt = function(t3) {
          this.t = 1, this.s = t3 < 0 ? -1 : 0, t3 > 0 ? this[0] = t3 : t3 < -1 ? this[0] = t3 + this.DV : this.t = 0;
        }, e3.prototype.fromString = function(t3, r3) {
          var i3;
          if (16 == r3) i3 = 4;
          else if (8 == r3) i3 = 3;
          else if (256 == r3) i3 = 8;
          else if (2 == r3) i3 = 1;
          else if (32 == r3) i3 = 5;
          else {
            if (4 != r3) return void this.fromRadix(t3, r3);
            i3 = 2;
          }
          this.t = 0, this.s = 0;
          for (var n3 = t3.length, o3 = false, s3 = 0; --n3 >= 0; ) {
            var h3 = 8 == i3 ? 255 & t3[n3] : a2(t3, n3);
            h3 < 0 ? "-" == t3.charAt(n3) && (o3 = true) : (o3 = false, 0 == s3 ? this[this.t++] = h3 : s3 + i3 > this.DB ? (this[this.t - 1] |= (h3 & (1 << this.DB - s3) - 1) << s3, this[this.t++] = h3 >> this.DB - s3) : this[this.t - 1] |= h3 << s3, (s3 += i3) >= this.DB && (s3 -= this.DB));
          }
          8 == i3 && 0 != (128 & t3[0]) && (this.s = -1, s3 > 0 && (this[this.t - 1] |= (1 << this.DB - s3) - 1 << s3)), this.clamp(), o3 && e3.ZERO.subTo(this, this);
        }, e3.prototype.clamp = function() {
          for (var t3 = this.s & this.DM; this.t > 0 && this[this.t - 1] == t3; ) --this.t;
        }, e3.prototype.dlShiftTo = function(t3, r3) {
          var e4;
          for (e4 = this.t - 1; e4 >= 0; --e4) r3[e4 + t3] = this[e4];
          for (e4 = t3 - 1; e4 >= 0; --e4) r3[e4] = 0;
          r3.t = this.t + t3, r3.s = this.s;
        }, e3.prototype.drShiftTo = function(t3, r3) {
          for (var e4 = t3; e4 < this.t; ++e4) r3[e4 - t3] = this[e4];
          r3.t = Math.max(this.t - t3, 0), r3.s = this.s;
        }, e3.prototype.lShiftTo = function(t3, r3) {
          var e4, i3 = t3 % this.DB, n3 = this.DB - i3, o3 = (1 << n3) - 1, s3 = Math.floor(t3 / this.DB), h3 = this.s << i3 & this.DM;
          for (e4 = this.t - 1; e4 >= 0; --e4) r3[e4 + s3 + 1] = this[e4] >> n3 | h3, h3 = (this[e4] & o3) << i3;
          for (e4 = s3 - 1; e4 >= 0; --e4) r3[e4] = 0;
          r3[s3] = h3, r3.t = this.t + s3 + 1, r3.s = this.s, r3.clamp();
        }, e3.prototype.rShiftTo = function(t3, r3) {
          r3.s = this.s;
          var e4 = Math.floor(t3 / this.DB);
          if (e4 >= this.t) r3.t = 0;
          else {
            var i3 = t3 % this.DB, n3 = this.DB - i3, o3 = (1 << i3) - 1;
            r3[0] = this[e4] >> i3;
            for (var s3 = e4 + 1; s3 < this.t; ++s3) r3[s3 - e4 - 1] |= (this[s3] & o3) << n3, r3[s3 - e4] = this[s3] >> i3;
            i3 > 0 && (r3[this.t - e4 - 1] |= (this.s & o3) << n3), r3.t = this.t - e4, r3.clamp();
          }
        }, e3.prototype.subTo = function(t3, r3) {
          for (var e4 = 0, i3 = 0, n3 = Math.min(t3.t, this.t); e4 < n3; ) i3 += this[e4] - t3[e4], r3[e4++] = i3 & this.DM, i3 >>= this.DB;
          if (t3.t < this.t) {
            for (i3 -= t3.s; e4 < this.t; ) i3 += this[e4], r3[e4++] = i3 & this.DM, i3 >>= this.DB;
            i3 += this.s;
          } else {
            for (i3 += this.s; e4 < t3.t; ) i3 -= t3[e4], r3[e4++] = i3 & this.DM, i3 >>= this.DB;
            i3 -= t3.s;
          }
          r3.s = i3 < 0 ? -1 : 0, i3 < -1 ? r3[e4++] = this.DV + i3 : i3 > 0 && (r3[e4++] = i3), r3.t = e4, r3.clamp();
        }, e3.prototype.multiplyTo = function(t3, r3) {
          var i3 = this.abs(), n3 = t3.abs(), o3 = i3.t;
          for (r3.t = o3 + n3.t; --o3 >= 0; ) r3[o3] = 0;
          for (o3 = 0; o3 < n3.t; ++o3) r3[o3 + i3.t] = i3.am(0, n3[o3], r3, o3, 0, i3.t);
          r3.s = 0, r3.clamp(), this.s != t3.s && e3.ZERO.subTo(r3, r3);
        }, e3.prototype.squareTo = function(t3) {
          for (var r3 = this.abs(), e4 = t3.t = 2 * r3.t; --e4 >= 0; ) t3[e4] = 0;
          for (e4 = 0; e4 < r3.t - 1; ++e4) {
            var i3 = r3.am(e4, r3[e4], t3, 2 * e4, 0, 1);
            (t3[e4 + r3.t] += r3.am(e4 + 1, 2 * r3[e4], t3, 2 * e4 + 1, i3, r3.t - e4 - 1)) >= r3.DV && (t3[e4 + r3.t] -= r3.DV, t3[e4 + r3.t + 1] = 1);
          }
          t3.t > 0 && (t3[t3.t - 1] += r3.am(e4, r3[e4], t3, 2 * e4, 0, 1)), t3.s = 0, t3.clamp();
        }, e3.prototype.divRemTo = function(t3, r3, n3) {
          var o3 = t3.abs();
          if (!(o3.t <= 0)) {
            var s3 = this.abs();
            if (s3.t < o3.t) return null != r3 && r3.fromInt(0), void (null != n3 && this.copyTo(n3));
            null == n3 && (n3 = i2());
            var h3 = i2(), u3 = this.s, a3 = t3.s, f3 = this.DB - c2(o3[o3.t - 1]);
            f3 > 0 ? (o3.lShiftTo(f3, h3), s3.lShiftTo(f3, n3)) : (o3.copyTo(h3), s3.copyTo(n3));
            var p3 = h3.t, l3 = h3[p3 - 1];
            if (0 != l3) {
              var d3 = l3 * (1 << this.F1) + (p3 > 1 ? h3[p3 - 2] >> this.F2 : 0), v3 = this.FV / d3, y3 = (1 << this.F1) / d3, m3 = 1 << this.F2, g3 = n3.t, w3 = g3 - p3, T3 = null == r3 ? i2() : r3;
              for (h3.dlShiftTo(w3, T3), n3.compareTo(T3) >= 0 && (n3[n3.t++] = 1, n3.subTo(T3, n3)), e3.ONE.dlShiftTo(p3, T3), T3.subTo(h3, h3); h3.t < p3; ) h3[h3.t++] = 0;
              for (; --w3 >= 0; ) {
                var b3 = n3[--g3] == l3 ? this.DM : Math.floor(n3[g3] * v3 + (n3[g3 - 1] + m3) * y3);
                if ((n3[g3] += h3.am(0, b3, n3, w3, 0, p3)) < b3) for (h3.dlShiftTo(w3, T3), n3.subTo(T3, n3); n3[g3] < --b3; ) n3.subTo(T3, n3);
              }
              null != r3 && (n3.drShiftTo(p3, r3), u3 != a3 && e3.ZERO.subTo(r3, r3)), n3.t = p3, n3.clamp(), f3 > 0 && n3.rShiftTo(f3, n3), u3 < 0 && e3.ZERO.subTo(n3, n3);
            }
          }
        }, e3.prototype.invDigit = function() {
          if (this.t < 1) return 0;
          var t3 = this[0];
          if (0 == (1 & t3)) return 0;
          var r3 = 3 & t3;
          return (r3 = (r3 = (r3 = (r3 = r3 * (2 - (15 & t3) * r3) & 15) * (2 - (255 & t3) * r3) & 255) * (2 - ((65535 & t3) * r3 & 65535)) & 65535) * (2 - t3 * r3 % this.DV) % this.DV) > 0 ? this.DV - r3 : -r3;
        }, e3.prototype.isEven = function() {
          return 0 == (this.t > 0 ? 1 & this[0] : this.s);
        }, e3.prototype.exp = function(t3, r3) {
          if (t3 > 4294967295 || t3 < 1) return e3.ONE;
          var n3 = i2(), o3 = i2(), s3 = r3.convert(this), h3 = c2(t3) - 1;
          for (s3.copyTo(n3); --h3 >= 0; ) if (r3.sqrTo(n3, o3), (t3 & 1 << h3) > 0) r3.mulTo(o3, s3, n3);
          else {
            var u3 = n3;
            n3 = o3, o3 = u3;
          }
          return r3.revert(n3);
        }, e3.prototype.toString = function(t3) {
          if (this.s < 0) return "-" + this.negate().toString(t3);
          var r3;
          if (16 == t3) r3 = 4;
          else if (8 == t3) r3 = 3;
          else if (2 == t3) r3 = 1;
          else if (32 == t3) r3 = 5;
          else {
            if (4 != t3) return this.toRadix(t3);
            r3 = 2;
          }
          var e4, i3 = (1 << r3) - 1, n3 = false, o3 = "", s3 = this.t, h3 = this.DB - s3 * this.DB % r3;
          if (s3-- > 0) for (h3 < this.DB && (e4 = this[s3] >> h3) > 0 && (n3 = true, o3 = u2(e4)); s3 >= 0; ) h3 < r3 ? (e4 = (this[s3] & (1 << h3) - 1) << r3 - h3, e4 |= this[--s3] >> (h3 += this.DB - r3)) : (e4 = this[s3] >> (h3 -= r3) & i3, h3 <= 0 && (h3 += this.DB, --s3)), e4 > 0 && (n3 = true), n3 && (o3 += u2(e4));
          return n3 ? o3 : "0";
        }, e3.prototype.negate = function() {
          var t3 = i2();
          return e3.ZERO.subTo(this, t3), t3;
        }, e3.prototype.abs = function() {
          return this.s < 0 ? this.negate() : this;
        }, e3.prototype.compareTo = function(t3) {
          var r3 = this.s - t3.s;
          if (0 != r3) return r3;
          var e4 = this.t;
          if (0 != (r3 = e4 - t3.t)) return this.s < 0 ? -r3 : r3;
          for (; --e4 >= 0; ) if (0 != (r3 = this[e4] - t3[e4])) return r3;
          return 0;
        }, e3.prototype.bitLength = function() {
          return this.t <= 0 ? 0 : this.DB * (this.t - 1) + c2(this[this.t - 1] ^ this.s & this.DM);
        }, e3.prototype.mod = function(t3) {
          var r3 = i2();
          return this.abs().divRemTo(t3, null, r3), this.s < 0 && r3.compareTo(e3.ZERO) > 0 && t3.subTo(r3, r3), r3;
        }, e3.prototype.modPowInt = function(t3, r3) {
          var e4;
          return e4 = t3 < 256 || r3.isEven() ? new p2(r3) : new l2(r3), this.exp(t3, e4);
        }, e3.ZERO = f2(0), e3.ONE = f2(1), T2.prototype.convert = b2, T2.prototype.revert = b2, T2.prototype.mulTo = function(t3, r3, e4) {
          t3.multiplyTo(r3, e4);
        }, T2.prototype.sqrTo = function(t3, r3) {
          t3.squareTo(r3);
        }, _2.prototype.convert = function(t3) {
          if (t3.s < 0 || t3.t > 2 * this.m.t) return t3.mod(this.m);
          if (t3.compareTo(this.m) < 0) return t3;
          var r3 = i2();
          return t3.copyTo(r3), this.reduce(r3), r3;
        }, _2.prototype.revert = function(t3) {
          return t3;
        }, _2.prototype.reduce = function(t3) {
          for (t3.drShiftTo(this.m.t - 1, this.r2), t3.t > this.m.t + 1 && (t3.t = this.m.t + 1, t3.clamp()), this.mu.multiplyUpperTo(this.r2, this.m.t + 1, this.q3), this.m.multiplyLowerTo(this.q3, this.m.t + 1, this.r2); t3.compareTo(this.r2) < 0; ) t3.dAddOffset(1, this.m.t + 1);
          for (t3.subTo(this.r2, t3); t3.compareTo(this.m) >= 0; ) t3.subTo(this.m, t3);
        }, _2.prototype.mulTo = function(t3, r3, e4) {
          t3.multiplyTo(r3, e4), this.reduce(e4);
        }, _2.prototype.sqrTo = function(t3, r3) {
          t3.squareTo(r3), this.reduce(r3);
        };
        var S2, A2, B2, D2 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997], x2 = (1 << 26) / D2[D2.length - 1];
        function E2() {
          var t3;
          t3 = (/* @__PURE__ */ new Date()).getTime(), A2[B2++] ^= 255 & t3, A2[B2++] ^= t3 >> 8 & 255, A2[B2++] ^= t3 >> 16 & 255, A2[B2++] ^= t3 >> 24 & 255, B2 >= I && (B2 -= I);
        }
        if (e3.prototype.chunkSize = function(t3) {
          return Math.floor(Math.LN2 * this.DB / Math.log(t3));
        }, e3.prototype.toRadix = function(t3) {
          if (null == t3 && (t3 = 10), 0 == this.signum() || t3 < 2 || t3 > 36) return "0";
          var r3 = this.chunkSize(t3), e4 = Math.pow(t3, r3), n3 = f2(e4), o3 = i2(), s3 = i2(), h3 = "";
          for (this.divRemTo(n3, o3, s3); o3.signum() > 0; ) h3 = (e4 + s3.intValue()).toString(t3).substr(1) + h3, o3.divRemTo(n3, o3, s3);
          return s3.intValue().toString(t3) + h3;
        }, e3.prototype.fromRadix = function(t3, r3) {
          this.fromInt(0), null == r3 && (r3 = 10);
          for (var i3 = this.chunkSize(r3), n3 = Math.pow(r3, i3), o3 = false, s3 = 0, h3 = 0, u3 = 0; u3 < t3.length; ++u3) {
            var f3 = a2(t3, u3);
            f3 < 0 ? "-" == t3.charAt(u3) && 0 == this.signum() && (o3 = true) : (h3 = r3 * h3 + f3, ++s3 >= i3 && (this.dMultiply(n3), this.dAddOffset(h3, 0), s3 = 0, h3 = 0));
          }
          s3 > 0 && (this.dMultiply(Math.pow(r3, s3)), this.dAddOffset(h3, 0)), o3 && e3.ZERO.subTo(this, this);
        }, e3.prototype.fromNumber = function(t3, r3, i3) {
          if ("number" == typeof r3) if (t3 < 2) this.fromInt(1);
          else for (this.fromNumber(t3, i3), this.testBit(t3 - 1) || this.bitwiseTo(e3.ONE.shiftLeft(t3 - 1), v2, this), this.isEven() && this.dAddOffset(1, 0); !this.isProbablePrime(r3); ) this.dAddOffset(2, 0), this.bitLength() > t3 && this.subTo(e3.ONE.shiftLeft(t3 - 1), this);
          else {
            var n3 = new Array(), o3 = 7 & t3;
            n3.length = 1 + (t3 >> 3), r3.nextBytes(n3), o3 > 0 ? n3[0] &= (1 << o3) - 1 : n3[0] = 0, this.fromString(n3, 256);
          }
        }, e3.prototype.bitwiseTo = function(t3, r3, e4) {
          var i3, n3, o3 = Math.min(t3.t, this.t);
          for (i3 = 0; i3 < o3; ++i3) e4[i3] = r3(this[i3], t3[i3]);
          if (t3.t < this.t) {
            for (n3 = t3.s & this.DM, i3 = o3; i3 < this.t; ++i3) e4[i3] = r3(this[i3], n3);
            e4.t = this.t;
          } else {
            for (n3 = this.s & this.DM, i3 = o3; i3 < t3.t; ++i3) e4[i3] = r3(n3, t3[i3]);
            e4.t = t3.t;
          }
          e4.s = r3(this.s, t3.s), e4.clamp();
        }, e3.prototype.changeBit = function(t3, r3) {
          var i3 = e3.ONE.shiftLeft(t3);
          return this.bitwiseTo(i3, r3, i3), i3;
        }, e3.prototype.addTo = function(t3, r3) {
          for (var e4 = 0, i3 = 0, n3 = Math.min(t3.t, this.t); e4 < n3; ) i3 += this[e4] + t3[e4], r3[e4++] = i3 & this.DM, i3 >>= this.DB;
          if (t3.t < this.t) {
            for (i3 += t3.s; e4 < this.t; ) i3 += this[e4], r3[e4++] = i3 & this.DM, i3 >>= this.DB;
            i3 += this.s;
          } else {
            for (i3 += this.s; e4 < t3.t; ) i3 += t3[e4], r3[e4++] = i3 & this.DM, i3 >>= this.DB;
            i3 += t3.s;
          }
          r3.s = i3 < 0 ? -1 : 0, i3 > 0 ? r3[e4++] = i3 : i3 < -1 && (r3[e4++] = this.DV + i3), r3.t = e4, r3.clamp();
        }, e3.prototype.dMultiply = function(t3) {
          this[this.t] = this.am(0, t3 - 1, this, 0, 0, this.t), ++this.t, this.clamp();
        }, e3.prototype.dAddOffset = function(t3, r3) {
          if (0 != t3) {
            for (; this.t <= r3; ) this[this.t++] = 0;
            for (this[r3] += t3; this[r3] >= this.DV; ) this[r3] -= this.DV, ++r3 >= this.t && (this[this.t++] = 0), ++this[r3];
          }
        }, e3.prototype.multiplyLowerTo = function(t3, r3, e4) {
          var i3, n3 = Math.min(this.t + t3.t, r3);
          for (e4.s = 0, e4.t = n3; n3 > 0; ) e4[--n3] = 0;
          for (i3 = e4.t - this.t; n3 < i3; ++n3) e4[n3 + this.t] = this.am(0, t3[n3], e4, n3, 0, this.t);
          for (i3 = Math.min(t3.t, r3); n3 < i3; ++n3) this.am(0, t3[n3], e4, n3, 0, r3 - n3);
          e4.clamp();
        }, e3.prototype.multiplyUpperTo = function(t3, r3, e4) {
          var i3 = e4.t = this.t + t3.t - --r3;
          for (e4.s = 0; --i3 >= 0; ) e4[i3] = 0;
          for (i3 = Math.max(r3 - this.t, 0); i3 < t3.t; ++i3) e4[this.t + i3 - r3] = this.am(r3 - i3, t3[i3], e4, 0, 0, this.t + i3 - r3);
          e4.clamp(), e4.drShiftTo(1, e4);
        }, e3.prototype.modInt = function(t3) {
          if (t3 <= 0) return 0;
          var r3 = this.DV % t3, e4 = this.s < 0 ? t3 - 1 : 0;
          if (this.t > 0) if (0 == r3) e4 = this[0] % t3;
          else for (var i3 = this.t - 1; i3 >= 0; --i3) e4 = (r3 * e4 + this[i3]) % t3;
          return e4;
        }, e3.prototype.millerRabin = function(t3) {
          var r3 = this.subtract(e3.ONE), n3 = r3.getLowestSetBit();
          if (n3 <= 0) return false;
          var o3 = r3.shiftRight(n3);
          (t3 = t3 + 1 >> 1) > D2.length && (t3 = D2.length);
          for (var s3 = i2(), h3 = 0; h3 < t3; ++h3) {
            s3.fromInt(D2[Math.floor(Math.random() * D2.length)]);
            var u3 = s3.modPow(o3, this);
            if (0 != u3.compareTo(e3.ONE) && 0 != u3.compareTo(r3)) {
              for (var a3 = 1; a3++ < n3 && 0 != u3.compareTo(r3); ) if (0 == (u3 = u3.modPowInt(2, this)).compareTo(e3.ONE)) return false;
              if (0 != u3.compareTo(r3)) return false;
            }
          }
          return true;
        }, e3.prototype.clone = function() {
          var t3 = i2();
          return this.copyTo(t3), t3;
        }, e3.prototype.intValue = function() {
          if (this.s < 0) {
            if (1 == this.t) return this[0] - this.DV;
            if (0 == this.t) return -1;
          } else {
            if (1 == this.t) return this[0];
            if (0 == this.t) return 0;
          }
          return (this[1] & (1 << 32 - this.DB) - 1) << this.DB | this[0];
        }, e3.prototype.byteValue = function() {
          return 0 == this.t ? this.s : this[0] << 24 >> 24;
        }, e3.prototype.shortValue = function() {
          return 0 == this.t ? this.s : this[0] << 16 >> 16;
        }, e3.prototype.signum = function() {
          return this.s < 0 ? -1 : this.t <= 0 || 1 == this.t && this[0] <= 0 ? 0 : 1;
        }, e3.prototype.toByteArray = function() {
          var t3 = this.t, r3 = new Array();
          r3[0] = this.s;
          var e4, i3 = this.DB - t3 * this.DB % 8, n3 = 0;
          if (t3-- > 0) for (i3 < this.DB && (e4 = this[t3] >> i3) != (this.s & this.DM) >> i3 && (r3[n3++] = e4 | this.s << this.DB - i3); t3 >= 0; ) i3 < 8 ? (e4 = (this[t3] & (1 << i3) - 1) << 8 - i3, e4 |= this[--t3] >> (i3 += this.DB - 8)) : (e4 = this[t3] >> (i3 -= 8) & 255, i3 <= 0 && (i3 += this.DB, --t3)), 0 != (128 & e4) && (e4 |= -256), 0 == n3 && (128 & this.s) != (128 & e4) && ++n3, (n3 > 0 || e4 != this.s) && (r3[n3++] = e4);
          return r3;
        }, e3.prototype.equals = function(t3) {
          return 0 == this.compareTo(t3);
        }, e3.prototype.min = function(t3) {
          return this.compareTo(t3) < 0 ? this : t3;
        }, e3.prototype.max = function(t3) {
          return this.compareTo(t3) > 0 ? this : t3;
        }, e3.prototype.and = function(t3) {
          var r3 = i2();
          return this.bitwiseTo(t3, d2, r3), r3;
        }, e3.prototype.or = function(t3) {
          var r3 = i2();
          return this.bitwiseTo(t3, v2, r3), r3;
        }, e3.prototype.xor = function(t3) {
          var r3 = i2();
          return this.bitwiseTo(t3, y2, r3), r3;
        }, e3.prototype.andNot = function(t3) {
          var r3 = i2();
          return this.bitwiseTo(t3, m2, r3), r3;
        }, e3.prototype.not = function() {
          for (var t3 = i2(), r3 = 0; r3 < this.t; ++r3) t3[r3] = this.DM & ~this[r3];
          return t3.t = this.t, t3.s = ~this.s, t3;
        }, e3.prototype.shiftLeft = function(t3) {
          var r3 = i2();
          return t3 < 0 ? this.rShiftTo(-t3, r3) : this.lShiftTo(t3, r3), r3;
        }, e3.prototype.shiftRight = function(t3) {
          var r3 = i2();
          return t3 < 0 ? this.lShiftTo(-t3, r3) : this.rShiftTo(t3, r3), r3;
        }, e3.prototype.getLowestSetBit = function() {
          for (var t3 = 0; t3 < this.t; ++t3) if (0 != this[t3]) return t3 * this.DB + g2(this[t3]);
          return this.s < 0 ? this.t * this.DB : -1;
        }, e3.prototype.bitCount = function() {
          for (var t3 = 0, r3 = this.s & this.DM, e4 = 0; e4 < this.t; ++e4) t3 += w2(this[e4] ^ r3);
          return t3;
        }, e3.prototype.testBit = function(t3) {
          var r3 = Math.floor(t3 / this.DB);
          return r3 >= this.t ? 0 != this.s : 0 != (this[r3] & 1 << t3 % this.DB);
        }, e3.prototype.setBit = function(t3) {
          return this.changeBit(t3, v2);
        }, e3.prototype.clearBit = function(t3) {
          return this.changeBit(t3, m2);
        }, e3.prototype.flipBit = function(t3) {
          return this.changeBit(t3, y2);
        }, e3.prototype.add = function(t3) {
          var r3 = i2();
          return this.addTo(t3, r3), r3;
        }, e3.prototype.subtract = function(t3) {
          var r3 = i2();
          return this.subTo(t3, r3), r3;
        }, e3.prototype.multiply = function(t3) {
          var r3 = i2();
          return this.multiplyTo(t3, r3), r3;
        }, e3.prototype.divide = function(t3) {
          var r3 = i2();
          return this.divRemTo(t3, r3, null), r3;
        }, e3.prototype.remainder = function(t3) {
          var r3 = i2();
          return this.divRemTo(t3, null, r3), r3;
        }, e3.prototype.divideAndRemainder = function(t3) {
          var r3 = i2(), e4 = i2();
          return this.divRemTo(t3, r3, e4), new Array(r3, e4);
        }, e3.prototype.modPow = function(t3, r3) {
          var e4, n3, o3 = t3.bitLength(), s3 = f2(1);
          if (o3 <= 0) return s3;
          e4 = o3 < 18 ? 1 : o3 < 48 ? 3 : o3 < 144 ? 4 : o3 < 768 ? 5 : 6, n3 = o3 < 8 ? new p2(r3) : r3.isEven() ? new _2(r3) : new l2(r3);
          var h3 = new Array(), u3 = 3, a3 = e4 - 1, d3 = (1 << e4) - 1;
          if (h3[1] = n3.convert(this), e4 > 1) {
            var v3 = i2();
            for (n3.sqrTo(h3[1], v3); u3 <= d3; ) h3[u3] = i2(), n3.mulTo(v3, h3[u3 - 2], h3[u3]), u3 += 2;
          }
          var y3, m3, g3 = t3.t - 1, w3 = true, T3 = i2();
          for (o3 = c2(t3[g3]) - 1; g3 >= 0; ) {
            for (o3 >= a3 ? y3 = t3[g3] >> o3 - a3 & d3 : (y3 = (t3[g3] & (1 << o3 + 1) - 1) << a3 - o3, g3 > 0 && (y3 |= t3[g3 - 1] >> this.DB + o3 - a3)), u3 = e4; 0 == (1 & y3); ) y3 >>= 1, --u3;
            if ((o3 -= u3) < 0 && (o3 += this.DB, --g3), w3) h3[y3].copyTo(s3), w3 = false;
            else {
              for (; u3 > 1; ) n3.sqrTo(s3, T3), n3.sqrTo(T3, s3), u3 -= 2;
              u3 > 0 ? n3.sqrTo(s3, T3) : (m3 = s3, s3 = T3, T3 = m3), n3.mulTo(T3, h3[y3], s3);
            }
            for (; g3 >= 0 && 0 == (t3[g3] & 1 << o3); ) n3.sqrTo(s3, T3), m3 = s3, s3 = T3, T3 = m3, --o3 < 0 && (o3 = this.DB - 1, --g3);
          }
          return n3.revert(s3);
        }, e3.prototype.modInverse = function(t3) {
          var r3 = t3.isEven();
          if (this.isEven() && r3 || 0 == t3.signum()) return e3.ZERO;
          for (var i3 = t3.clone(), n3 = this.clone(), o3 = f2(1), s3 = f2(0), h3 = f2(0), u3 = f2(1); 0 != i3.signum(); ) {
            for (; i3.isEven(); ) i3.rShiftTo(1, i3), r3 ? (o3.isEven() && s3.isEven() || (o3.addTo(this, o3), s3.subTo(t3, s3)), o3.rShiftTo(1, o3)) : s3.isEven() || s3.subTo(t3, s3), s3.rShiftTo(1, s3);
            for (; n3.isEven(); ) n3.rShiftTo(1, n3), r3 ? (h3.isEven() && u3.isEven() || (h3.addTo(this, h3), u3.subTo(t3, u3)), h3.rShiftTo(1, h3)) : u3.isEven() || u3.subTo(t3, u3), u3.rShiftTo(1, u3);
            i3.compareTo(n3) >= 0 ? (i3.subTo(n3, i3), r3 && o3.subTo(h3, o3), s3.subTo(u3, s3)) : (n3.subTo(i3, n3), r3 && h3.subTo(o3, h3), u3.subTo(s3, u3));
          }
          return 0 != n3.compareTo(e3.ONE) ? e3.ZERO : u3.compareTo(t3) >= 0 ? u3.subtract(t3) : u3.signum() < 0 ? (u3.addTo(t3, u3), u3.signum() < 0 ? u3.add(t3) : u3) : u3;
        }, e3.prototype.pow = function(t3) {
          return this.exp(t3, new T2());
        }, e3.prototype.gcd = function(t3) {
          var r3 = this.s < 0 ? this.negate() : this.clone(), e4 = t3.s < 0 ? t3.negate() : t3.clone();
          if (r3.compareTo(e4) < 0) {
            var i3 = r3;
            r3 = e4, e4 = i3;
          }
          var n3 = r3.getLowestSetBit(), o3 = e4.getLowestSetBit();
          if (o3 < 0) return r3;
          for (n3 < o3 && (o3 = n3), o3 > 0 && (r3.rShiftTo(o3, r3), e4.rShiftTo(o3, e4)); r3.signum() > 0; ) (n3 = r3.getLowestSetBit()) > 0 && r3.rShiftTo(n3, r3), (n3 = e4.getLowestSetBit()) > 0 && e4.rShiftTo(n3, e4), r3.compareTo(e4) >= 0 ? (r3.subTo(e4, r3), r3.rShiftTo(1, r3)) : (e4.subTo(r3, e4), e4.rShiftTo(1, e4));
          return o3 > 0 && e4.lShiftTo(o3, e4), e4;
        }, e3.prototype.isProbablePrime = function(t3) {
          var r3, e4 = this.abs();
          if (1 == e4.t && e4[0] <= D2[D2.length - 1]) {
            for (r3 = 0; r3 < D2.length; ++r3) if (e4[0] == D2[r3]) return true;
            return false;
          }
          if (e4.isEven()) return false;
          for (r3 = 1; r3 < D2.length; ) {
            for (var i3 = D2[r3], n3 = r3 + 1; n3 < D2.length && i3 < x2; ) i3 *= D2[n3++];
            for (i3 = e4.modInt(i3); r3 < n3; ) if (i3 % D2[r3++] == 0) return false;
          }
          return e4.millerRabin(t3);
        }, e3.prototype.square = function() {
          var t3 = i2();
          return this.squareTo(t3), t3;
        }, e3.prototype.Barrett = _2, null == A2) {
          var M2;
          if (A2 = new Array(), B2 = 0, "undefined" != typeof window && window.crypto) {
            if (window.crypto.getRandomValues) {
              var C = new Uint8Array(32);
              for (window.crypto.getRandomValues(C), M2 = 0; M2 < 32; ++M2) A2[B2++] = C[M2];
            } else if ("Netscape" == navigator.appName && navigator.appVersion < "5") {
              var R = window.crypto.random(32);
              for (M2 = 0; M2 < R.length; ++M2) A2[B2++] = 255 & R.charCodeAt(M2);
            }
          }
          for (; B2 < I; ) M2 = Math.floor(65536 * Math.random()), A2[B2++] = M2 >>> 8, A2[B2++] = 255 & M2;
          B2 = 0, E2();
        }
        function k() {
          if (null == S2) {
            for (E2(), (S2 = new O()).init(A2), B2 = 0; B2 < A2.length; ++B2) A2[B2] = 0;
            B2 = 0;
          }
          return S2.next();
        }
        function j() {
        }
        function O() {
          this.i = 0, this.j = 0, this.S = new Array();
        }
        j.prototype.nextBytes = function(t3) {
          var r3;
          for (r3 = 0; r3 < t3.length; ++r3) t3[r3] = k();
        }, O.prototype.init = function(t3) {
          var r3, e4, i3;
          for (r3 = 0; r3 < 256; ++r3) this.S[r3] = r3;
          for (e4 = 0, r3 = 0; r3 < 256; ++r3) i3 = this.S[r3], this.S[r3] = this.S[e4 = e4 + this.S[r3] + t3[r3 % t3.length] & 255], this.S[e4] = i3;
          this.i = 0, this.j = 0;
        }, O.prototype.next = function() {
          var t3;
          return this.i = this.i + 1 & 255, this.j = this.j + this.S[this.i] & 255, t3 = this.S[this.i], this.S[this.i] = this.S[this.j], this.S[this.j] = t3, this.S[t3 + this.S[this.i] & 255];
        };
        var I = 256;
        t2.exports = { default: e3, BigInteger: e3, SecureRandom: j };
      }).call(r);
    })).BigInteger, u = { sha1: "3021300906052b0e03021a05000414", sha224: "302d300d06096086480165030402040500041c", sha256: "3031300d060960864801650304020105000420", sha384: "3041300d060960864801650304020205000430", sha512: "3051300d060960864801650304020305000440", md2: "3020300c06082a864886f70d020205000410", md5: "3020300c06082a864886f70d020505000410", ripemd160: "3021300906052b2403020105000414" }, a = { sha256: n };
    function f(t2, r2) {
      if (this.n = null, this.e = 0, !(null != t2 && null != r2 && t2.length > 0 && r2.length > 0)) throw new Error("Invalid key data");
      this.n = new h(t2, 16), this.e = parseInt(r2, 16);
    }
    f.prototype.verify = function(t2, r2) {
      r2 = r2.replace(/[^0-9a-f]|[\s\n]]/gi, "");
      var e2 = new h(r2, 16);
      if (e2.bitLength() > this.n.bitLength()) throw new Error("Signature does not match with the key modulus.");
      var i2 = (function(t3) {
        for (var r3 in u) {
          var e3 = u[r3], i3 = e3.length;
          if (t3.substring(0, i3) === e3) return { alg: r3, hash: t3.substring(i3) };
        }
        return [];
      })(e2.modPowInt(this.e, this.n).toString(16).replace(/^1f+00/, ""));
      if (0 === i2.length) return false;
      if (!a.hasOwnProperty(i2.alg)) throw new Error("Hashing algorithm is not supported.");
      var n2 = a[i2.alg](t2).toString();
      return i2.hash === n2;
    };
    for (var c = [], p = [], l = "undefined" != typeof Uint8Array ? Uint8Array : Array, d = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", v = 0, y = d.length; v < y; ++v) c[v] = d[v], p[d.charCodeAt(v)] = v;
    function m(t2) {
      var r2 = t2.length;
      if (r2 % 4 > 0) throw new Error("Invalid string. Length must be a multiple of 4");
      var e2 = t2.indexOf("=");
      return -1 === e2 && (e2 = r2), [e2, e2 === r2 ? 0 : 4 - e2 % 4];
    }
    p["-".charCodeAt(0)] = 62, p["_".charCodeAt(0)] = 63;
    var g = function(t2) {
      var r2, e2, i2 = m(t2), n2 = i2[0], o2 = i2[1], s2 = new l((function(t3, r3, e3) {
        return 3 * (r3 + e3) / 4 - e3;
      })(0, n2, o2)), h2 = 0, u2 = o2 > 0 ? n2 - 4 : n2;
      for (e2 = 0; e2 < u2; e2 += 4) r2 = p[t2.charCodeAt(e2)] << 18 | p[t2.charCodeAt(e2 + 1)] << 12 | p[t2.charCodeAt(e2 + 2)] << 6 | p[t2.charCodeAt(e2 + 3)], s2[h2++] = r2 >> 16 & 255, s2[h2++] = r2 >> 8 & 255, s2[h2++] = 255 & r2;
      return 2 === o2 && (r2 = p[t2.charCodeAt(e2)] << 2 | p[t2.charCodeAt(e2 + 1)] >> 4, s2[h2++] = 255 & r2), 1 === o2 && (r2 = p[t2.charCodeAt(e2)] << 10 | p[t2.charCodeAt(e2 + 1)] << 4 | p[t2.charCodeAt(e2 + 2)] >> 2, s2[h2++] = r2 >> 8 & 255, s2[h2++] = 255 & r2), s2;
    };
    function w(t2) {
      var r2 = t2.length % 4;
      return 0 === r2 ? t2 : t2 + new Array(4 - r2 + 1).join("=");
    }
    function T(t2) {
      return t2 = w(t2).replace(/\-/g, "+").replace(/_/g, "/"), decodeURIComponent((function(t3) {
        for (var r2 = "", e2 = 0; e2 < t3.length; e2++) r2 += String.fromCharCode(t3[e2]);
        return r2;
      })(g(t2)).split("").map((function(t3) {
        return "%" + ("00" + t3.charCodeAt(0).toString(16)).slice(-2);
      })).join(""));
    }
    function b(t2) {
      return (function(t3) {
        for (var r2 = "", e2 = 0; e2 < t3.length; e2++) {
          var i2 = t3[e2].toString(16);
          r2 += 2 === i2.length ? i2 : "0" + i2;
        }
        return r2;
      })(g(w(t2)));
    }
    var _ = e((function(t2, e2) {
      t2.exports = (function() {
        function t3(t4) {
          return "function" == typeof t4;
        }
        var e3 = Array.isArray ? Array.isArray : function(t4) {
          return "[object Array]" === Object.prototype.toString.call(t4);
        }, i2 = 0, n2 = void 0, o2 = void 0, s2 = function(t4, r2) {
          l2[i2] = t4, l2[i2 + 1] = r2, 2 === (i2 += 2) && (o2 ? o2(d2) : w2());
        }, h2 = "undefined" != typeof window ? window : void 0, u2 = h2 || {}, a2 = u2.MutationObserver || u2.WebKitMutationObserver, f2 = "undefined" == typeof self && "undefined" != typeof process && "[object process]" === {}.toString.call(process), c2 = "undefined" != typeof Uint8ClampedArray && "undefined" != typeof importScripts && "undefined" != typeof MessageChannel;
        function p2() {
          var t4 = setTimeout;
          return function() {
            return t4(d2, 1);
          };
        }
        var l2 = new Array(1e3);
        function d2() {
          for (var t4 = 0; t4 < i2; t4 += 2) (0, l2[t4])(l2[t4 + 1]), l2[t4] = void 0, l2[t4 + 1] = void 0;
          i2 = 0;
        }
        var v2, y2, m2, g2, w2 = void 0;
        function T2(t4, r2) {
          var e4 = this, i3 = new this.constructor(S2);
          void 0 === i3[_2] && O(i3);
          var n3 = e4._state;
          if (n3) {
            var o3 = arguments[n3 - 1];
            s2((function() {
              return k(n3, i3, o3, e4._result);
            }));
          } else C(e4, i3, t4, r2);
          return i3;
        }
        function b2(t4) {
          if (t4 && "object" == typeof t4 && t4.constructor === this) return t4;
          var r2 = new this(S2);
          return D2(r2, t4), r2;
        }
        f2 ? w2 = function() {
          return process.nextTick(d2);
        } : a2 ? (y2 = 0, m2 = new a2(d2), g2 = document.createTextNode(""), m2.observe(g2, { characterData: true }), w2 = function() {
          g2.data = y2 = ++y2 % 2;
        }) : c2 ? ((v2 = new MessageChannel()).port1.onmessage = d2, w2 = function() {
          return v2.port2.postMessage(0);
        }) : w2 = void 0 === h2 ? (function() {
          try {
            var t4 = Function("return this")().require("vertx");
            return void 0 !== (n2 = t4.runOnLoop || t4.runOnContext) ? function() {
              n2(d2);
            } : p2();
          } catch (t5) {
            return p2();
          }
        })() : p2();
        var _2 = Math.random().toString(36).substring(2);
        function S2() {
        }
        var A2 = void 0;
        function B2(r2, e4, i3) {
          e4.constructor === r2.constructor && i3 === T2 && e4.constructor.resolve === b2 ? (function(t4, r3) {
            1 === r3._state ? E2(t4, r3._result) : 2 === r3._state ? M2(t4, r3._result) : C(r3, void 0, (function(r4) {
              return D2(t4, r4);
            }), (function(r4) {
              return M2(t4, r4);
            }));
          })(r2, e4) : void 0 === i3 ? E2(r2, e4) : t3(i3) ? (function(t4, r3, e5) {
            s2((function(t5) {
              var i4 = false, n3 = (function(e6, n4, o3, s3) {
                try {
                  e6.call(n4, (function(e7) {
                    i4 || (i4 = true, r3 !== e7 ? D2(t5, e7) : E2(t5, e7));
                  }), (function(r4) {
                    i4 || (i4 = true, M2(t5, r4));
                  }));
                } catch (t6) {
                  return t6;
                }
              })(e5, r3);
              !i4 && n3 && (i4 = true, M2(t5, n3));
            }), t4);
          })(r2, e4, i3) : E2(r2, e4);
        }
        function D2(t4, r2) {
          if (t4 === r2) M2(t4, new TypeError("You cannot resolve a promise with itself"));
          else if (n3 = typeof (i3 = r2), null === i3 || "object" !== n3 && "function" !== n3) E2(t4, r2);
          else {
            var e4 = void 0;
            try {
              e4 = r2.then;
            } catch (r3) {
              return void M2(t4, r3);
            }
            B2(t4, r2, e4);
          }
          var i3, n3;
        }
        function x2(t4) {
          t4._onerror && t4._onerror(t4._result), R(t4);
        }
        function E2(t4, r2) {
          t4._state === A2 && (t4._result = r2, t4._state = 1, 0 !== t4._subscribers.length && s2(R, t4));
        }
        function M2(t4, r2) {
          t4._state === A2 && (t4._state = 2, t4._result = r2, s2(x2, t4));
        }
        function C(t4, r2, e4, i3) {
          var n3 = t4._subscribers, o3 = n3.length;
          t4._onerror = null, n3[o3] = r2, n3[o3 + 1] = e4, n3[o3 + 2] = i3, 0 === o3 && t4._state && s2(R, t4);
        }
        function R(t4) {
          var r2 = t4._subscribers, e4 = t4._state;
          if (0 !== r2.length) {
            for (var i3 = void 0, n3 = void 0, o3 = t4._result, s3 = 0; s3 < r2.length; s3 += 3) n3 = r2[s3 + e4], (i3 = r2[s3]) ? k(e4, i3, n3, o3) : n3(o3);
            t4._subscribers.length = 0;
          }
        }
        function k(r2, e4, i3, n3) {
          var o3 = t3(i3), s3 = void 0, h3 = void 0, u3 = true;
          if (o3) {
            try {
              s3 = i3(n3);
            } catch (r3) {
              u3 = false, h3 = r3;
            }
            if (e4 === s3) return void M2(e4, new TypeError("A promises callback cannot return that same promise."));
          } else s3 = n3;
          e4._state !== A2 || (o3 && u3 ? D2(e4, s3) : false === u3 ? M2(e4, h3) : 1 === r2 ? E2(e4, s3) : 2 === r2 && M2(e4, s3));
        }
        var j = 0;
        function O(t4) {
          t4[_2] = j++, t4._state = void 0, t4._result = void 0, t4._subscribers = [];
        }
        var I = (function() {
          function t4(t5, r2) {
            this._instanceConstructor = t5, this.promise = new t5(S2), this.promise[_2] || O(this.promise), e3(r2) ? (this.length = r2.length, this._remaining = r2.length, this._result = new Array(this.length), 0 === this.length ? E2(this.promise, this._result) : (this.length = this.length || 0, this._enumerate(r2), 0 === this._remaining && E2(this.promise, this._result))) : M2(this.promise, new Error("Array Methods must be provided an Array"));
          }
          return t4.prototype._enumerate = function(t5) {
            for (var r2 = 0; this._state === A2 && r2 < t5.length; r2++) this._eachEntry(t5[r2], r2);
          }, t4.prototype._eachEntry = function(t5, r2) {
            var e4 = this._instanceConstructor, i3 = e4.resolve;
            if (i3 === b2) {
              var n3 = void 0, o3 = void 0, s3 = false;
              try {
                n3 = t5.then;
              } catch (t6) {
                s3 = true, o3 = t6;
              }
              if (n3 === T2 && t5._state !== A2) this._settledAt(t5._state, r2, t5._result);
              else if ("function" != typeof n3) this._remaining--, this._result[r2] = t5;
              else if (e4 === N) {
                var h3 = new e4(S2);
                s3 ? M2(h3, o3) : B2(h3, t5, n3), this._willSettleAt(h3, r2);
              } else this._willSettleAt(new e4((function(r3) {
                return r3(t5);
              })), r2);
            } else this._willSettleAt(i3(t5), r2);
          }, t4.prototype._settledAt = function(t5, r2, e4) {
            var i3 = this.promise;
            i3._state === A2 && (this._remaining--, 2 === t5 ? M2(i3, e4) : this._result[r2] = e4), 0 === this._remaining && E2(i3, this._result);
          }, t4.prototype._willSettleAt = function(t5, r2) {
            var e4 = this;
            C(t5, void 0, (function(t6) {
              return e4._settledAt(1, r2, t6);
            }), (function(t6) {
              return e4._settledAt(2, r2, t6);
            }));
          }, t4;
        })(), N = (function() {
          function r2(t4) {
            this[_2] = j++, this._result = this._state = void 0, this._subscribers = [], S2 !== t4 && ("function" != typeof t4 && (function() {
              throw new TypeError("You must pass a resolver function as the first argument to the promise constructor");
            })(), this instanceof r2 ? (function(t5, r3) {
              try {
                r3((function(r4) {
                  D2(t5, r4);
                }), (function(r4) {
                  M2(t5, r4);
                }));
              } catch (r4) {
                M2(t5, r4);
              }
            })(this, t4) : (function() {
              throw new TypeError("Failed to construct 'Promise': Please use the 'new' operator, this object constructor cannot be called as a function.");
            })());
          }
          return r2.prototype.catch = function(t4) {
            return this.then(null, t4);
          }, r2.prototype.finally = function(r3) {
            var e4 = this.constructor;
            return t3(r3) ? this.then((function(t4) {
              return e4.resolve(r3()).then((function() {
                return t4;
              }));
            }), (function(t4) {
              return e4.resolve(r3()).then((function() {
                throw t4;
              }));
            })) : this.then(r3, r3);
          }, r2;
        })();
        return N.prototype.then = T2, N.all = function(t4) {
          return new I(this, t4).promise;
        }, N.race = function(t4) {
          var r2 = this;
          return e3(t4) ? new r2((function(e4, i3) {
            for (var n3 = t4.length, o3 = 0; o3 < n3; o3++) r2.resolve(t4[o3]).then(e4, i3);
          })) : new r2((function(t5, r3) {
            return r3(new TypeError("You must pass an array to race."));
          }));
        }, N.resolve = b2, N.reject = function(t4) {
          var r2 = new this(S2);
          return M2(r2, t4), r2;
        }, N._setScheduler = function(t4) {
          o2 = t4;
        }, N._setAsap = function(t4) {
          s2 = t4;
        }, N._asap = s2, N.polyfill = function() {
          var t4 = void 0;
          if (void 0 !== r) t4 = r;
          else if ("undefined" != typeof self) t4 = self;
          else try {
            t4 = Function("return this")();
          } catch (r2) {
            throw new Error("polyfill failed because global object is unavailable in this environment");
          }
          var e4 = t4.Promise;
          if (e4) {
            var i3 = null;
            try {
              i3 = Object.prototype.toString.call(e4.resolve());
            } catch (r2) {
            }
            if ("[object Promise]" === i3 && !e4.cast) return;
          }
          t4.Promise = N;
        }, N.Promise = N, N;
      })();
    })), S = e((function(t2) {
      var e2, i2;
      e2 = r, i2 = function() {
        return function() {
          return (function(t3) {
            var r2 = [];
            if (0 === t3.length) return "";
            if ("string" != typeof t3[0]) throw new TypeError("Url must be a string. Received " + t3[0]);
            if (t3[0].match(/^[^/:]+:\/*$/) && t3.length > 1) {
              var e3 = t3.shift();
              t3[0] = e3 + t3[0];
            }
            t3[0] = t3[0].match(/^file:\/\/\//) ? t3[0].replace(/^([^/:]+):\/*/, "$1:///") : t3[0].replace(/^([^/:]+):\/*/, "$1://");
            for (var i3 = 0; i3 < t3.length; i3++) {
              var n2 = t3[i3];
              if ("string" != typeof n2) throw new TypeError("Url must be a string. Received " + n2);
              "" !== n2 && (i3 > 0 && (n2 = n2.replace(/^[\/]+/, "")), n2 = n2.replace(/[\/]+$/, i3 < t3.length - 1 ? "" : "/"), r2.push(n2));
            }
            var o2 = r2.join("/"), s2 = (o2 = o2.replace(/\/(\?|&|#[^!])/g, "$1")).split("?");
            return s2.shift() + (s2.length > 0 ? "?" : "") + s2.join("&");
          })("object" == typeof arguments[0] ? arguments[0] : [].slice.call(arguments));
        };
      }, t2.exports ? t2.exports = i2() : e2.urljoin = i2();
    }));
    function A(t2) {
      if (t2.ok) return t2.json();
      var r2 = new Error(t2.statusText);
      return r2.response = t2, Promise.reject(r2);
    }
    function B(t2) {
      this.name = "ConfigurationError", this.message = t2 || "";
    }
    function D(t2) {
      this.name = "TokenValidationError", this.message = t2 || "";
    }
    _.polyfill(), B.prototype = Error.prototype, D.prototype = Error.prototype;
    var x = function() {
    };
    x.prototype.get = function() {
      return null;
    }, x.prototype.has = function() {
      return null;
    }, x.prototype.set = function() {
      return null;
    };
    var E = ["RS256"];
    function M(t2) {
      var r2 = t2 || {};
      if (this.jwksCache = r2.jwksCache || new x(), this.expectedAlg = r2.expectedAlg || "RS256", this.issuer = r2.issuer, this.audience = r2.audience, this.leeway = r2.leeway || 0, this.__disableExpirationCheck = r2.__disableExpirationCheck || false, this.jwksURI = r2.jwksURI, this.leeway < 0 || this.leeway > 300) throw new B("The leeway should be positive and lower than five minutes.");
      if (-1 === E.indexOf(this.expectedAlg)) throw new B("Algorithm " + this.expectedAlg + " is not supported. (Expected algs: [" + E.join(",") + "])");
    }
    M.prototype.verify = function(t2, r2, e2) {
      var i2 = this.decode(t2);
      if (i2 instanceof Error) return e2(i2, false);
      var n2 = i2.encoded.header + "." + i2.encoded.payload, o2 = b(i2.encoded.signature), s2 = i2.header.alg, h2 = i2.header.kid, u2 = i2.payload.aud, a2 = i2.payload.iss, f2 = i2.payload.exp, c2 = i2.payload.nbf, p2 = i2.payload.nonce || null, l2 = this;
      if (l2.expectedAlg !== s2) return e2(new D("Algorithm " + s2 + " is not supported. (Expected algs: [" + E.join(",") + "])"), false);
      this.getRsaVerifier(a2, h2, (function(t3, s3) {
        if (t3) return e2(t3);
        if (s3.verify(n2, o2)) {
          if (l2.issuer !== a2) return e2(new D("Issuer " + a2 + " is not valid."), false);
          if (l2.audience !== u2) return e2(new D("Audience " + u2 + " is not valid."), false);
          if (p2 !== r2) return e2(new D("Nonce does not match."), false);
          var h3 = l2.verifyExpAndNbf(f2, c2);
          return h3 ? e2(h3, false) : e2(null, i2.payload);
        }
        return e2(new D("Invalid signature."));
      }));
    }, M.prototype.verifyExpAndNbf = function(t2, r2) {
      console.warn("This method is deprecated and will be removed in the next major version");
      var e2 = /* @__PURE__ */ new Date(), i2 = /* @__PURE__ */ new Date(0), n2 = /* @__PURE__ */ new Date(0);
      return this.__disableExpirationCheck ? null : (i2.setUTCSeconds(t2 + this.leeway), e2 > i2 ? new D("Expired token.") : void 0 === r2 ? null : (n2.setUTCSeconds(r2 - this.leeway), e2 < n2 ? new D("The token is not valid until later in the future. Please check your computed clock.") : null));
    }, M.prototype.verifyExpAndIat = function(t2, r2) {
      console.warn("This method is deprecated and will be removed in the next major version");
      var e2 = /* @__PURE__ */ new Date(), i2 = /* @__PURE__ */ new Date(0), n2 = /* @__PURE__ */ new Date(0);
      return this.__disableExpirationCheck ? null : (i2.setUTCSeconds(t2 + this.leeway), e2 > i2 ? new D("Expired token.") : (n2.setUTCSeconds(r2 - this.leeway), e2 < n2 ? new D("The token was issued in the future. Please check your computed clock.") : null));
    }, M.prototype.getRsaVerifier = function(t2, r2, e2) {
      var i2 = this, n2 = t2 + r2;
      if (this.jwksCache.has(n2)) {
        var o2 = this.jwksCache.get(n2);
        e2(null, new f(o2.modulus, o2.exp));
      } else !(function(t3, r3) {
        ("undefined" == typeof fetch ? function(t4, r4) {
          return r4 = r4 || {}, new Promise((function(e3, i3) {
            var n3 = new XMLHttpRequest(), o3 = [], s2 = [], h2 = {}, u2 = function() {
              return { ok: 2 == (n3.status / 100 | 0), statusText: n3.statusText, status: n3.status, url: n3.responseURL, text: function() {
                return Promise.resolve(n3.responseText);
              }, json: function() {
                return Promise.resolve(JSON.parse(n3.responseText));
              }, blob: function() {
                return Promise.resolve(new Blob([n3.response]));
              }, clone: u2, headers: { keys: function() {
                return o3;
              }, entries: function() {
                return s2;
              }, get: function(t5) {
                return h2[t5.toLowerCase()];
              }, has: function(t5) {
                return t5.toLowerCase() in h2;
              } } };
            };
            for (var a2 in n3.open(r4.method || "get", t4, true), n3.onload = function() {
              n3.getAllResponseHeaders().replace(/^(.*?):[^\S\n]*([\s\S]*?)$/gm, (function(t5, r5, e4) {
                o3.push(r5 = r5.toLowerCase()), s2.push([r5, e4]), h2[r5] = h2[r5] ? h2[r5] + "," + e4 : e4;
              })), e3(u2());
            }, n3.onerror = i3, n3.withCredentials = "include" == r4.credentials, r4.headers) n3.setRequestHeader(a2, r4.headers[a2]);
            n3.send(r4.body || null);
          }));
        } : fetch)(t3.jwksURI || S(t3.iss, ".well-known", "jwks.json")).then(A).then((function(e3) {
          var i3, n3, o3, s2 = null;
          for (i3 = 0; i3 < e3.keys.length && null === s2; i3++) (n3 = e3.keys[i3]).kid === t3.kid && (s2 = n3);
          return r3(null, { modulus: b((o3 = s2).n), exp: b(o3.e) });
        })).catch((function(t4) {
          r3(t4);
        }));
      })({ jwksURI: this.jwksURI, iss: t2, kid: r2 }, (function(t3, r3) {
        return t3 ? e2(t3) : (i2.jwksCache.set(n2, r3), e2(null, new f(r3.modulus, r3.exp)));
      }));
    }, M.prototype.decode = function(t2) {
      var r2, e2, i2 = t2.split(".");
      if (3 !== i2.length) return new D("Cannot decode a malformed JWT");
      try {
        r2 = JSON.parse(T(i2[0])), e2 = JSON.parse(T(i2[1]));
      } catch (t3) {
        return new D("Token header or payload is not valid JSON");
      }
      return { header: r2, payload: e2, encoded: { header: i2[0], payload: i2[1], signature: i2[2] } };
    }, M.prototype.validateAccessToken = function(t2, r2, e2, i2) {
      if (this.expectedAlg !== r2) return i2(new D("Algorithm " + r2 + " is not supported. (Expected alg: " + this.expectedAlg + ")"));
      var h2, u2 = n(t2), a2 = s.stringify(u2), f2 = a2.substring(0, a2.length / 2), c2 = s.parse(f2), p2 = o.stringify(c2);
      return i2((h2 = { "+": "-", "/": "_", "=": "" }, p2.replace(/[+/=]/g, (function(t3) {
        return h2[t3];
      })) !== e2 ? new D("Invalid access_token") : null));
    };
  } };
}));
