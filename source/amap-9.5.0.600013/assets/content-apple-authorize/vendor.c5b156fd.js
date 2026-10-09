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

var yl = Object.defineProperty, El = Object.defineProperties;
var bl = Object.getOwnPropertyDescriptors;
var To = Object.getOwnPropertySymbols;
var Sl = Object.prototype.hasOwnProperty, Tl = Object.prototype.propertyIsEnumerable;
var Ao = (e2, t, n) => t in e2 ? yl(e2, t, { enumerable: true, configurable: true, writable: true, value: n }) : e2[t] = n, Q = (e2, t) => {
  for (var n in t || (t = {})) Sl.call(t, n) && Ao(e2, n, t[n]);
  if (To) for (var n of To(t)) Tl.call(t, n) && Ao(e2, n, t[n]);
  return e2;
}, rn = (e2, t) => El(e2, bl(t));
function Pa(e2, t) {
  const n = /* @__PURE__ */ Object.create(null), r = e2.split(",");
  for (let i = 0; i < r.length; i++) n[r[i]] = true;
  return t ? (i) => !!n[i.toLowerCase()] : (i) => !!n[i];
}
const me = {}, fn = [], it = () => {
}, Al = () => false, ws = (e2) => e2.charCodeAt(0) === 111 && e2.charCodeAt(1) === 110 && (e2.charCodeAt(2) > 122 || e2.charCodeAt(2) < 97), Na = (e2) => e2.startsWith("onUpdate:"), ke = Object.assign, Os = (e2, t) => {
  const n = e2.indexOf(t);
  n > -1 && e2.splice(n, 1);
}, wl = Object.prototype.hasOwnProperty, ie = (e2, t) => wl.call(e2, t), Z = Array.isArray, dn = (e2) => Xr(e2) === "[object Map]", Ma = (e2) => Xr(e2) === "[object Set]", ee = (e2) => typeof e2 == "function", $e = (e2) => typeof e2 == "string", wn = (e2) => typeof e2 == "symbol", Ee = (e2) => e2 !== null && typeof e2 == "object", La = (e2) => (Ee(e2) || ee(e2)) && ee(e2.then) && ee(e2.catch), ka = Object.prototype.toString, Xr = (e2) => ka.call(e2), Ol = (e2) => Xr(e2).slice(8, -1), Ua = (e2) => Xr(e2) === "[object Object]", Is = (e2) => $e(e2) && e2 !== "NaN" && e2[0] !== "-" && "" + parseInt(e2, 10) === e2, Pr = Pa(",key,ref,ref_for,ref_key,onVnodeBeforeMount,onVnodeMounted,onVnodeBeforeUpdate,onVnodeUpdated,onVnodeBeforeUnmount,onVnodeUnmounted"), Zr = (e2) => {
  const t = /* @__PURE__ */ Object.create(null);
  return (n) => t[n] || (t[n] = e2(n));
}, Il = /-(\w)/g, _t = Zr((e2) => e2.replace(Il, (t, n) => n ? n.toUpperCase() : "")), Rl = /\B([A-Z])/g, ei = Zr((e2) => e2.replace(Rl, "-$1").toLowerCase()), Rs = Zr((e2) => e2.charAt(0).toUpperCase() + e2.slice(1)), Ni = Zr((e2) => e2 ? `on${Rs(e2)}` : ""), Yt = (e2, t) => !Object.is(e2, t), Mi = (e2, t) => {
  for (let n = 0; n < e2.length; n++) e2[n](t);
}, xr = (e2, t, n) => {
  Object.defineProperty(e2, t, { configurable: true, enumerable: false, value: n });
}, Cl = (e2) => {
  const t = parseFloat(e2);
  return isNaN(t) ? e2 : t;
};
let wo;
const Ji = () => wo || (wo = typeof globalThis != "undefined" ? globalThis : typeof self != "undefined" ? self : typeof window != "undefined" ? window : typeof global != "undefined" ? global : {});
function Cs(e2) {
  if (Z(e2)) {
    const t = {};
    for (let n = 0; n < e2.length; n++) {
      const r = e2[n], i = $e(r) ? Ml(r) : Cs(r);
      if (i) for (const s in i) t[s] = i[s];
    }
    return t;
  } else if ($e(e2) || Ee(e2)) return e2;
}
const Dl = /;(?![^(]*\))/g, Pl = /:([^]+)/, Nl = /\/\*[^]*?\*\//g;
function Ml(e2) {
  const t = {};
  return e2.replace(Nl, "").split(Dl).forEach((n) => {
    if (n) {
      const r = n.split(Pl);
      r.length > 1 && (t[r[0].trim()] = r[1].trim());
    }
  }), t;
}
function Ds(e2) {
  let t = "";
  if ($e(e2)) t = e2;
  else if (Z(e2)) for (let n = 0; n < e2.length; n++) {
    const r = Ds(e2[n]);
    r && (t += r + " ");
  }
  else if (Ee(e2)) for (const n in e2) e2[n] && (t += n + " ");
  return t.trim();
}
const s_ = (e2) => $e(e2) ? e2 : e2 == null ? "" : Z(e2) || Ee(e2) && (e2.toString === ka || !ee(e2.toString)) ? JSON.stringify(e2, Fa, 2) : String(e2), Fa = (e2, t) => t && t.__v_isRef ? Fa(e2, t.value) : dn(t) ? { [`Map(${t.size})`]: [...t.entries()].reduce((n, [r, i], s) => (n[Li(r, s) + " =>"] = i, n), {}) } : Ma(t) ? { [`Set(${t.size})`]: [...t.values()].map((n) => Li(n)) } : wn(t) ? Li(t) : Ee(t) && !Z(t) && !Ua(t) ? String(t) : t, Li = (e2, t = "") => {
  var n;
  return wn(e2) ? `Symbol(${(n = e2.description) != null ? n : t})` : e2;
};
let Ze;
class Ll {
  constructor(t = false) {
    this.detached = t, this._active = true, this.effects = [], this.cleanups = [], this.parent = Ze, !t && Ze && (this.index = (Ze.scopes || (Ze.scopes = [])).push(this) - 1);
  }
  get active() {
    return this._active;
  }
  run(t) {
    if (this._active) {
      const n = Ze;
      try {
        return Ze = this, t();
      } finally {
        Ze = n;
      }
    }
  }
  on() {
    Ze = this;
  }
  off() {
    Ze = this.parent;
  }
  stop(t) {
    if (this._active) {
      let n, r;
      for (n = 0, r = this.effects.length; n < r; n++) this.effects[n].stop();
      for (n = 0, r = this.cleanups.length; n < r; n++) this.cleanups[n]();
      if (this.scopes) for (n = 0, r = this.scopes.length; n < r; n++) this.scopes[n].stop(true);
      if (!this.detached && this.parent && !t) {
        const i = this.parent.scopes.pop();
        i && i !== this && (this.parent.scopes[this.index] = i, i.index = this.index);
      }
      this.parent = void 0, this._active = false;
    }
  }
}
function kl(e2, t = Ze) {
  t && t.active && t.effects.push(e2);
}
function Ul() {
  return Ze;
}
const Ps = (e2) => {
  const t = new Set(e2);
  return t.w = 0, t.n = 0, t;
}, Ba = (e2) => (e2.w & Ft) > 0, xa = (e2) => (e2.n & Ft) > 0, Fl = ({ deps: e2 }) => {
  if (e2.length) for (let t = 0; t < e2.length; t++) e2[t].w |= Ft;
}, Bl = (e2) => {
  const { deps: t } = e2;
  if (t.length) {
    let n = 0;
    for (let r = 0; r < t.length; r++) {
      const i = t[r];
      Ba(i) && !xa(i) ? i.delete(e2) : t[n++] = i, i.w &= ~Ft, i.n &= ~Ft;
    }
    t.length = n;
  }
}, Xi = /* @__PURE__ */ new WeakMap();
let Vn = 0, Ft = 1;
const Zi = 30;
let tt;
const zt = Symbol(""), es = Symbol("");
class Ns {
  constructor(t, n = null, r) {
    this.fn = t, this.scheduler = n, this.active = true, this.deps = [], this.parent = void 0, kl(this, r);
  }
  run() {
    if (!this.active) return this.fn();
    let t = tt, n = Lt;
    for (; t; ) {
      if (t === this) return;
      t = t.parent;
    }
    try {
      return this.parent = tt, tt = this, Lt = true, Ft = 1 << ++Vn, Vn <= Zi ? Fl(this) : Oo(this), this.fn();
    } finally {
      Vn <= Zi && Bl(this), Ft = 1 << --Vn, tt = this.parent, Lt = n, this.parent = void 0, this.deferStop && this.stop();
    }
  }
  stop() {
    tt === this ? this.deferStop = true : this.active && (Oo(this), this.onStop && this.onStop(), this.active = false);
  }
}
function Oo(e2) {
  const { deps: t } = e2;
  if (t.length) {
    for (let n = 0; n < t.length; n++) t[n].delete(e2);
    t.length = 0;
  }
}
let Lt = true;
const Ka = [];
function On() {
  Ka.push(Lt), Lt = false;
}
function In() {
  const e2 = Ka.pop();
  Lt = e2 === void 0 ? true : e2;
}
function Ge(e2, t, n) {
  if (Lt && tt) {
    let r = Xi.get(e2);
    r || Xi.set(e2, r = /* @__PURE__ */ new Map());
    let i = r.get(n);
    i || r.set(n, i = Ps()), ja(i);
  }
}
function ja(e2, t) {
  let n = false;
  Vn <= Zi ? xa(e2) || (e2.n |= Ft, n = !Ba(e2)) : n = !e2.has(tt), n && (e2.add(tt), tt.deps.push(e2));
}
function St(e2, t, n, r, i, s) {
  const o = Xi.get(e2);
  if (!o) return;
  let a = [];
  if (t === "clear") a = [...o.values()];
  else if (n === "length" && Z(e2)) {
    const c = Number(r);
    o.forEach((u, l) => {
      (l === "length" || !wn(l) && l >= c) && a.push(u);
    });
  } else switch (n !== void 0 && a.push(o.get(n)), t) {
    case "add":
      Z(e2) ? Is(n) && a.push(o.get("length")) : (a.push(o.get(zt)), dn(e2) && a.push(o.get(es)));
      break;
    case "delete":
      Z(e2) || (a.push(o.get(zt)), dn(e2) && a.push(o.get(es)));
      break;
    case "set":
      dn(e2) && a.push(o.get(zt));
      break;
  }
  if (a.length === 1) a[0] && ts(a[0]);
  else {
    const c = [];
    for (const u of a) u && c.push(...u);
    ts(Ps(c));
  }
}
function ts(e2, t) {
  const n = Z(e2) ? e2 : [...e2];
  for (const r of n) r.computed && Io(r);
  for (const r of n) r.computed || Io(r);
}
function Io(e2, t) {
  (e2 !== tt || e2.allowRecurse) && (e2.scheduler ? e2.scheduler() : e2.run());
}
const xl = Pa("__proto__,__v_isRef,__isVue"), Va = new Set(Object.getOwnPropertyNames(Symbol).filter((e2) => e2 !== "arguments" && e2 !== "caller").map((e2) => Symbol[e2]).filter(wn)), Ro = Kl();
function Kl() {
  const e2 = {};
  return ["includes", "indexOf", "lastIndexOf"].forEach((t) => {
    e2[t] = function(...n) {
      const r = ce(this);
      for (let s = 0, o = this.length; s < o; s++) Ge(r, "get", s + "");
      const i = r[t](...n);
      return i === -1 || i === false ? r[t](...n.map(ce)) : i;
    };
  }), ["push", "pop", "shift", "unshift", "splice"].forEach((t) => {
    e2[t] = function(...n) {
      On();
      const r = ce(this)[t].apply(this, n);
      return In(), r;
    };
  }), e2;
}
function jl(e2) {
  const t = ce(this);
  return Ge(t, "has", e2), t.hasOwnProperty(e2);
}
class Ha {
  constructor(t = false, n = false) {
    this._isReadonly = t, this._shallow = n;
  }
  get(t, n, r) {
    const i = this._isReadonly, s = this._shallow;
    if (n === "__v_isReactive") return !i;
    if (n === "__v_isReadonly") return i;
    if (n === "__v_isShallow") return s;
    if (n === "__v_raw") return r === (i ? s ? ef : Wa : s ? za : Ga).get(t) || Object.getPrototypeOf(t) === Object.getPrototypeOf(r) ? t : void 0;
    const o = Z(t);
    if (!i) {
      if (o && ie(Ro, n)) return Reflect.get(Ro, n, r);
      if (n === "hasOwnProperty") return jl;
    }
    const a = Reflect.get(t, n, r);
    return (wn(n) ? Va.has(n) : xl(n)) || (i || Ge(t, "get", n), s) ? a : ze(a) ? o && Is(n) ? a : a.value : Ee(a) ? i ? Ya(a) : dr(a) : a;
  }
}
class $a extends Ha {
  constructor(t = false) {
    super(false, t);
  }
  set(t, n, r, i) {
    let s = t[n];
    if (!this._shallow) {
      const c = yn(s);
      if (!Kr(r) && !yn(r) && (s = ce(s), r = ce(r)), !Z(t) && ze(s) && !ze(r)) return c ? false : (s.value = r, true);
    }
    const o = Z(t) && Is(n) ? Number(n) < t.length : ie(t, n), a = Reflect.set(t, n, r, i);
    return t === ce(i) && (o ? Yt(r, s) && St(t, "set", n, r) : St(t, "add", n, r)), a;
  }
  deleteProperty(t, n) {
    const r = ie(t, n);
    t[n];
    const i = Reflect.deleteProperty(t, n);
    return i && r && St(t, "delete", n, void 0), i;
  }
  has(t, n) {
    const r = Reflect.has(t, n);
    return (!wn(n) || !Va.has(n)) && Ge(t, "has", n), r;
  }
  ownKeys(t) {
    return Ge(t, "iterate", Z(t) ? "length" : zt), Reflect.ownKeys(t);
  }
}
class Vl extends Ha {
  constructor(t = false) {
    super(true, t);
  }
  set(t, n) {
    return true;
  }
  deleteProperty(t, n) {
    return true;
  }
}
const Hl = new $a(), $l = new Vl(), Gl = new $a(true), Ms = (e2) => e2, ti = (e2) => Reflect.getPrototypeOf(e2);
function br(e2, t, n = false, r = false) {
  e2 = e2.__v_raw;
  const i = ce(e2), s = ce(t);
  n || (Yt(t, s) && Ge(i, "get", t), Ge(i, "get", s));
  const { has: o } = ti(i), a = r ? Ms : n ? Us : er;
  if (o.call(i, t)) return a(e2.get(t));
  if (o.call(i, s)) return a(e2.get(s));
  e2 !== i && e2.get(t);
}
function Sr(e2, t = false) {
  const n = this.__v_raw, r = ce(n), i = ce(e2);
  return t || (Yt(e2, i) && Ge(r, "has", e2), Ge(r, "has", i)), e2 === i ? n.has(e2) : n.has(e2) || n.has(i);
}
function Tr(e2, t = false) {
  return e2 = e2.__v_raw, !t && Ge(ce(e2), "iterate", zt), Reflect.get(e2, "size", e2);
}
function Co(e2) {
  e2 = ce(e2);
  const t = ce(this);
  return ti(t).has.call(t, e2) || (t.add(e2), St(t, "add", e2, e2)), this;
}
function Do(e2, t) {
  t = ce(t);
  const n = ce(this), { has: r, get: i } = ti(n);
  let s = r.call(n, e2);
  s || (e2 = ce(e2), s = r.call(n, e2));
  const o = i.call(n, e2);
  return n.set(e2, t), s ? Yt(t, o) && St(n, "set", e2, t) : St(n, "add", e2, t), this;
}
function Po(e2) {
  const t = ce(this), { has: n, get: r } = ti(t);
  let i = n.call(t, e2);
  i || (e2 = ce(e2), i = n.call(t, e2)), r && r.call(t, e2);
  const s = t.delete(e2);
  return i && St(t, "delete", e2, void 0), s;
}
function No() {
  const e2 = ce(this), t = e2.size !== 0, n = e2.clear();
  return t && St(e2, "clear", void 0, void 0), n;
}
function Ar(e2, t) {
  return function(r, i) {
    const s = this, o = s.__v_raw, a = ce(o), c = t ? Ms : e2 ? Us : er;
    return !e2 && Ge(a, "iterate", zt), o.forEach((u, l) => r.call(i, c(u), c(l), s));
  };
}
function wr(e2, t, n) {
  return function(...r) {
    const i = this.__v_raw, s = ce(i), o = dn(s), a = e2 === "entries" || e2 === Symbol.iterator && o, c = e2 === "keys" && o, u = i[e2](...r), l = n ? Ms : t ? Us : er;
    return !t && Ge(s, "iterate", c ? es : zt), { next() {
      const { value: d, done: h } = u.next();
      return h ? { value: d, done: h } : { value: a ? [l(d[0]), l(d[1])] : l(d), done: h };
    }, [Symbol.iterator]() {
      return this;
    } };
  };
}
function Ct(e2) {
  return function(...t) {
    return e2 === "delete" ? false : e2 === "clear" ? void 0 : this;
  };
}
function zl() {
  const e2 = { get(s) {
    return br(this, s);
  }, get size() {
    return Tr(this);
  }, has: Sr, add: Co, set: Do, delete: Po, clear: No, forEach: Ar(false, false) }, t = { get(s) {
    return br(this, s, false, true);
  }, get size() {
    return Tr(this);
  }, has: Sr, add: Co, set: Do, delete: Po, clear: No, forEach: Ar(false, true) }, n = { get(s) {
    return br(this, s, true);
  }, get size() {
    return Tr(this, true);
  }, has(s) {
    return Sr.call(this, s, true);
  }, add: Ct("add"), set: Ct("set"), delete: Ct("delete"), clear: Ct("clear"), forEach: Ar(true, false) }, r = { get(s) {
    return br(this, s, true, true);
  }, get size() {
    return Tr(this, true);
  }, has(s) {
    return Sr.call(this, s, true);
  }, add: Ct("add"), set: Ct("set"), delete: Ct("delete"), clear: Ct("clear"), forEach: Ar(true, true) };
  return ["keys", "values", "entries", Symbol.iterator].forEach((s) => {
    e2[s] = wr(s, false, false), n[s] = wr(s, true, false), t[s] = wr(s, false, true), r[s] = wr(s, true, true);
  }), [e2, n, t, r];
}
const [Wl, Yl, ql, Ql] = zl();
function Ls(e2, t) {
  const n = t ? e2 ? Ql : ql : e2 ? Yl : Wl;
  return (r, i, s) => i === "__v_isReactive" ? !e2 : i === "__v_isReadonly" ? e2 : i === "__v_raw" ? r : Reflect.get(ie(n, i) && i in r ? n : r, i, s);
}
const Jl = { get: Ls(false, false) }, Xl = { get: Ls(false, true) }, Zl = { get: Ls(true, false) }, Ga = /* @__PURE__ */ new WeakMap(), za = /* @__PURE__ */ new WeakMap(), Wa = /* @__PURE__ */ new WeakMap(), ef = /* @__PURE__ */ new WeakMap();
function tf(e2) {
  switch (e2) {
    case "Object":
    case "Array":
      return 1;
    case "Map":
    case "Set":
    case "WeakMap":
    case "WeakSet":
      return 2;
    default:
      return 0;
  }
}
function nf(e2) {
  return e2.__v_skip || !Object.isExtensible(e2) ? 0 : tf(Ol(e2));
}
function dr(e2) {
  return yn(e2) ? e2 : ks(e2, false, Hl, Jl, Ga);
}
function rf(e2) {
  return ks(e2, false, Gl, Xl, za);
}
function Ya(e2) {
  return ks(e2, true, $l, Zl, Wa);
}
function ks(e2, t, n, r, i) {
  if (!Ee(e2) || e2.__v_raw && !(t && e2.__v_isReactive)) return e2;
  const s = i.get(e2);
  if (s) return s;
  const o = nf(e2);
  if (o === 0) return e2;
  const a = new Proxy(e2, o === 2 ? r : n);
  return i.set(e2, a), a;
}
function hn(e2) {
  return yn(e2) ? hn(e2.__v_raw) : !!(e2 && e2.__v_isReactive);
}
function yn(e2) {
  return !!(e2 && e2.__v_isReadonly);
}
function Kr(e2) {
  return !!(e2 && e2.__v_isShallow);
}
function qa(e2) {
  return hn(e2) || yn(e2);
}
function ce(e2) {
  const t = e2 && e2.__v_raw;
  return t ? ce(t) : e2;
}
function Qa(e2) {
  return xr(e2, "__v_skip", true), e2;
}
const er = (e2) => Ee(e2) ? dr(e2) : e2, Us = (e2) => Ee(e2) ? Ya(e2) : e2;
function Ja(e2) {
  Lt && tt && (e2 = ce(e2), ja(e2.dep || (e2.dep = Ps())));
}
function Xa(e2, t) {
  e2 = ce(e2);
  const n = e2.dep;
  n && ts(n);
}
function ze(e2) {
  return !!(e2 && e2.__v_isRef === true);
}
function sf(e2) {
  return Za(e2, false);
}
function of(e2) {
  return Za(e2, true);
}
function Za(e2, t) {
  return ze(e2) ? e2 : new af(e2, t);
}
class af {
  constructor(t, n) {
    this.__v_isShallow = n, this.dep = void 0, this.__v_isRef = true, this._rawValue = n ? t : ce(t), this._value = n ? t : er(t);
  }
  get value() {
    return Ja(this), this._value;
  }
  set value(t) {
    const n = this.__v_isShallow || Kr(t) || yn(t);
    t = n ? t : ce(t), Yt(t, this._rawValue) && (this._rawValue = t, this._value = n ? t : er(t), Xa(this));
  }
}
function pn(e2) {
  return ze(e2) ? e2.value : e2;
}
const cf = { get: (e2, t, n) => pn(Reflect.get(e2, t, n)), set: (e2, t, n, r) => {
  const i = e2[t];
  return ze(i) && !ze(n) ? (i.value = n, true) : Reflect.set(e2, t, n, r);
} };
function ec(e2) {
  return hn(e2) ? e2 : new Proxy(e2, cf);
}
class uf {
  constructor(t, n, r, i) {
    this._setter = n, this.dep = void 0, this.__v_isRef = true, this.__v_isReadonly = false, this._dirty = true, this.effect = new Ns(t, () => {
      this._dirty || (this._dirty = true, Xa(this));
    }), this.effect.computed = this, this.effect.active = this._cacheable = !i, this.__v_isReadonly = r;
  }
  get value() {
    const t = ce(this);
    return Ja(t), (t._dirty || !t._cacheable) && (t._dirty = false, t._value = t.effect.run()), t._value;
  }
  set value(t) {
    this._setter(t);
  }
}
function lf(e2, t, n = false) {
  let r, i;
  const s = ee(e2);
  return s ? (r = e2, i = it) : (r = e2.get, i = e2.set), new uf(r, i, s || !i, n);
}
function kt(e2, t, n, r) {
  let i;
  try {
    i = r ? e2(...r) : e2();
  } catch (s) {
    ni(s, t, n);
  }
  return i;
}
function st(e2, t, n, r) {
  if (ee(e2)) {
    const s = kt(e2, t, n, r);
    return s && La(s) && s.catch((o) => {
      ni(o, t, n);
    }), s;
  }
  const i = [];
  for (let s = 0; s < e2.length; s++) i.push(st(e2[s], t, n, r));
  return i;
}
function ni(e2, t, n, r = true) {
  const i = t ? t.vnode : null;
  if (t) {
    let s = t.parent;
    const o = t.proxy, a = n;
    for (; s; ) {
      const u = s.ec;
      if (u) {
        for (let l = 0; l < u.length; l++) if (u[l](e2, o, a) === false) return;
      }
      s = s.parent;
    }
    const c = t.appContext.config.errorHandler;
    if (c) {
      kt(c, null, 10, [e2, o, a]);
      return;
    }
  }
  ff(e2, n, i, r);
}
function ff(e2, t, n, r = true) {
  console.error(e2);
}
let tr = false, ns = false;
const Le = [];
let ht = 0;
const gn = [];
let Et = null, Ht = 0;
const tc = Promise.resolve();
let Fs = null;
function nc(e2) {
  const t = Fs || tc;
  return e2 ? t.then(this ? e2.bind(this) : e2) : t;
}
function df(e2) {
  let t = ht + 1, n = Le.length;
  for (; t < n; ) {
    const r = t + n >>> 1, i = Le[r], s = nr(i);
    s < e2 || s === e2 && i.pre ? t = r + 1 : n = r;
  }
  return t;
}
function Bs(e2) {
  (!Le.length || !Le.includes(e2, tr && e2.allowRecurse ? ht + 1 : ht)) && (e2.id == null ? Le.push(e2) : Le.splice(df(e2.id), 0, e2), rc());
}
function rc() {
  !tr && !ns && (ns = true, Fs = tc.then(sc));
}
function hf(e2) {
  const t = Le.indexOf(e2);
  t > ht && Le.splice(t, 1);
}
function pf(e2) {
  Z(e2) ? gn.push(...e2) : (!Et || !Et.includes(e2, e2.allowRecurse ? Ht + 1 : Ht)) && gn.push(e2), rc();
}
function Mo(e2, t, n = tr ? ht + 1 : 0) {
  for (; n < Le.length; n++) {
    const r = Le[n];
    if (r && r.pre) {
      if (e2 && r.id !== e2.uid) continue;
      Le.splice(n, 1), n--, r();
    }
  }
}
function ic(e2) {
  if (gn.length) {
    const t = [...new Set(gn)];
    if (gn.length = 0, Et) {
      Et.push(...t);
      return;
    }
    for (Et = t, Et.sort((n, r) => nr(n) - nr(r)), Ht = 0; Ht < Et.length; Ht++) Et[Ht]();
    Et = null, Ht = 0;
  }
}
const nr = (e2) => e2.id == null ? 1 / 0 : e2.id, gf = (e2, t) => {
  const n = nr(e2) - nr(t);
  if (n === 0) {
    if (e2.pre && !t.pre) return -1;
    if (t.pre && !e2.pre) return 1;
  }
  return n;
};
function sc(e2) {
  ns = false, tr = true, Le.sort(gf);
  const t = it;
  try {
    for (ht = 0; ht < Le.length; ht++) {
      const n = Le[ht];
      n && n.active !== false && kt(n, null, 14);
    }
  } finally {
    ht = 0, Le.length = 0, ic(), tr = false, Fs = null, (Le.length || gn.length) && sc();
  }
}
function mf(e2, t, ...n) {
  if (e2.isUnmounted) return;
  const r = e2.vnode.props || me;
  let i = n;
  const s = t.startsWith("update:"), o = s && t.slice(7);
  if (o && o in r) {
    const l = `${o === "modelValue" ? "model" : o}Modifiers`, { number: d, trim: h } = r[l] || me;
    h && (i = n.map((g) => $e(g) ? g.trim() : g)), d && (i = n.map(Cl));
  }
  let a, c = r[a = Ni(t)] || r[a = Ni(_t(t))];
  !c && s && (c = r[a = Ni(ei(t))]), c && st(c, e2, 6, i);
  const u = r[a + "Once"];
  if (u) {
    if (!e2.emitted) e2.emitted = {};
    else if (e2.emitted[a]) return;
    e2.emitted[a] = true, st(u, e2, 6, i);
  }
}
function oc(e2, t, n = false) {
  const r = t.emitsCache, i = r.get(e2);
  if (i !== void 0) return i;
  const s = e2.emits;
  let o = {}, a = false;
  if (!ee(e2)) {
    const c = (u) => {
      const l = oc(u, t, true);
      l && (a = true, ke(o, l));
    };
    !n && t.mixins.length && t.mixins.forEach(c), e2.extends && c(e2.extends), e2.mixins && e2.mixins.forEach(c);
  }
  return !s && !a ? (Ee(e2) && r.set(e2, null), null) : (Z(s) ? s.forEach((c) => o[c] = null) : ke(o, s), Ee(e2) && r.set(e2, o), o);
}
function ri(e2, t) {
  return !e2 || !ws(t) ? false : (t = t.slice(2).replace(/Once$/, ""), ie(e2, t[0].toLowerCase() + t.slice(1)) || ie(e2, ei(t)) || ie(e2, t));
}
let Be = null, ac = null;
function jr(e2) {
  const t = Be;
  return Be = e2, ac = e2 && e2.type.__scopeId || null, t;
}
function vf(e2, t = Be, n) {
  if (!t || e2._n) return e2;
  const r = (...i) => {
    r._d && $o(-1);
    const s = jr(t);
    let o;
    try {
      o = e2(...i);
    } finally {
      jr(s), r._d && $o(1);
    }
    return o;
  };
  return r._n = true, r._c = true, r._d = true, r;
}
function ki(e2) {
  const { type: t, vnode: n, proxy: r, withProxy: i, props: s, propsOptions: [o], slots: a, attrs: c, emit: u, render: l, renderCache: d, data: h, setupState: g, ctx: E, inheritAttrs: A } = e2;
  let N, L;
  const P = jr(e2);
  try {
    if (n.shapeFlag & 4) {
      const v = i || r, F = v;
      N = dt(l.call(F, v, d, s, g, h, E)), L = c;
    } else {
      const v = t;
      N = dt(v.length > 1 ? v(s, { attrs: c, slots: a, emit: u }) : v(s, null)), L = t.props ? c : _f(c);
    }
  } catch (v) {
    Yn.length = 0, ni(v, e2, 1), N = xe(Bt);
  }
  let b = N;
  if (L && A !== false) {
    const v = Object.keys(L), { shapeFlag: F } = b;
    v.length && F & 7 && (o && v.some(Na) && (L = yf(L, o)), b = En(b, L));
  }
  return n.dirs && (b = En(b), b.dirs = b.dirs ? b.dirs.concat(n.dirs) : n.dirs), n.transition && (b.transition = n.transition), N = b, jr(P), N;
}
const _f = (e2) => {
  let t;
  for (const n in e2) (n === "class" || n === "style" || ws(n)) && ((t || (t = {}))[n] = e2[n]);
  return t;
}, yf = (e2, t) => {
  const n = {};
  for (const r in e2) (!Na(r) || !(r.slice(9) in t)) && (n[r] = e2[r]);
  return n;
};
function Ef(e2, t, n) {
  const { props: r, children: i, component: s } = e2, { props: o, children: a, patchFlag: c } = t, u = s.emitsOptions;
  if (t.dirs || t.transition) return true;
  if (n && c >= 0) {
    if (c & 1024) return true;
    if (c & 16) return r ? Lo(r, o, u) : !!o;
    if (c & 8) {
      const l = t.dynamicProps;
      for (let d = 0; d < l.length; d++) {
        const h = l[d];
        if (o[h] !== r[h] && !ri(u, h)) return true;
      }
    }
  } else return (i || a) && (!a || !a.$stable) ? true : r === o ? false : r ? o ? Lo(r, o, u) : true : !!o;
  return false;
}
function Lo(e2, t, n) {
  const r = Object.keys(t);
  if (r.length !== Object.keys(e2).length) return true;
  for (let i = 0; i < r.length; i++) {
    const s = r[i];
    if (t[s] !== e2[s] && !ri(n, s)) return true;
  }
  return false;
}
function bf({ vnode: e2, parent: t }, n) {
  for (; t && t.subTree === e2; ) (e2 = t.vnode).el = n, t = t.parent;
}
const cc = "components";
function o_(e2, t) {
  return Tf(cc, e2, true, t) || e2;
}
const Sf = Symbol.for("v-ndc");
function Tf(e2, t, n = true, r = false) {
  const i = Be || Ce;
  if (i) {
    const s = i.type;
    if (e2 === cc) {
      const a = gd(s, false);
      if (a && (a === t || a === _t(t) || a === Rs(_t(t)))) return s;
    }
    const o = ko(i[e2] || s[e2], t) || ko(i.appContext[e2], t);
    return !o && r ? s : o;
  }
}
function ko(e2, t) {
  return e2 && (e2[t] || e2[_t(t)] || e2[Rs(_t(t))]);
}
const Af = (e2) => e2.__isSuspense;
function wf(e2, t) {
  t && t.pendingBranch ? Z(e2) ? t.effects.push(...e2) : t.effects.push(e2) : pf(e2);
}
const Or = {};
function Nr(e2, t, n) {
  return uc(e2, t, n);
}
function uc(e2, t, { immediate: n, deep: r, flush: i, onTrack: s, onTrigger: o } = me) {
  var a;
  const c = Ul() === ((a = Ce) == null ? void 0 : a.scope) ? Ce : null;
  let u, l = false, d = false;
  if (ze(e2) ? (u = () => e2.value, l = Kr(e2)) : hn(e2) ? (u = () => e2, r = true) : Z(e2) ? (d = true, l = e2.some((v) => hn(v) || Kr(v)), u = () => e2.map((v) => {
    if (ze(v)) return v.value;
    if (hn(v)) return ln(v);
    if (ee(v)) return kt(v, c, 2);
  })) : ee(e2) ? t ? u = () => kt(e2, c, 2) : u = () => {
    if (!(c && c.isUnmounted)) return h && h(), st(e2, c, 3, [g]);
  } : u = it, t && r) {
    const v = u;
    u = () => ln(v());
  }
  let h, g = (v) => {
    h = P.onStop = () => {
      kt(v, c, 4), h = P.onStop = void 0;
    };
  }, E;
  if (ir) if (g = it, t ? n && st(t, c, 3, [u(), d ? [] : void 0, g]) : u(), i === "sync") {
    const v = _d();
    E = v.__watcherHandles || (v.__watcherHandles = []);
  } else return it;
  let A = d ? new Array(e2.length).fill(Or) : Or;
  const N = () => {
    if (!!P.active) if (t) {
      const v = P.run();
      (r || l || (d ? v.some((F, k) => Yt(F, A[k])) : Yt(v, A))) && (h && h(), st(t, c, 3, [v, A === Or ? void 0 : d && A[0] === Or ? [] : A, g]), A = v);
    } else P.run();
  };
  N.allowRecurse = !!t;
  let L;
  i === "sync" ? L = N : i === "post" ? L = () => je(N, c && c.suspense) : (N.pre = true, c && (N.id = c.uid), L = () => Bs(N));
  const P = new Ns(u, L);
  t ? n ? N() : A = P.run() : i === "post" ? je(P.run.bind(P), c && c.suspense) : P.run();
  const b = () => {
    P.stop(), c && c.scope && Os(c.scope.effects, P);
  };
  return E && E.push(b), b;
}
function Of(e2, t, n) {
  const r = this.proxy, i = $e(e2) ? e2.includes(".") ? lc(r, e2) : () => r[e2] : e2.bind(r, r);
  let s;
  ee(t) ? s = t : (s = t.handler, n = t);
  const o = Ce;
  bn(this);
  const a = uc(i, s.bind(r), n);
  return o ? bn(o) : Wt(), a;
}
function lc(e2, t) {
  const n = t.split(".");
  return () => {
    let r = e2;
    for (let i = 0; i < n.length && r; i++) r = r[n[i]];
    return r;
  };
}
function ln(e2, t) {
  if (!Ee(e2) || e2.__v_skip || (t = t || /* @__PURE__ */ new Set(), t.has(e2))) return e2;
  if (t.add(e2), ze(e2)) ln(e2.value, t);
  else if (Z(e2)) for (let n = 0; n < e2.length; n++) ln(e2[n], t);
  else if (Ma(e2) || dn(e2)) e2.forEach((n) => {
    ln(n, t);
  });
  else if (Ua(e2)) for (const n in e2) ln(e2[n], t);
  return e2;
}
function jt(e2, t, n, r) {
  const i = e2.dirs, s = t && t.dirs;
  for (let o = 0; o < i.length; o++) {
    const a = i[o];
    s && (a.oldValue = s[o].value);
    let c = a.dir[r];
    c && (On(), st(c, n, 8, [e2.el, a, e2, t]), In());
  }
}
/*! #__NO_SIDE_EFFECTS__ */
// @__NO_SIDE_EFFECTS__
function fc(e2, t) {
  return ee(e2) ? (() => ke({ name: e2.name }, t, { setup: e2 }))() : e2;
}
const zn = (e2) => !!e2.type.__asyncLoader, dc = (e2) => e2.type.__isKeepAlive;
function If(e2, t) {
  hc(e2, "a", t);
}
function Rf(e2, t) {
  hc(e2, "da", t);
}
function hc(e2, t, n = Ce) {
  const r = e2.__wdc || (e2.__wdc = () => {
    let i = n;
    for (; i; ) {
      if (i.isDeactivated) return;
      i = i.parent;
    }
    return e2();
  });
  if (ii(t, r, n), n) {
    let i = n.parent;
    for (; i && i.parent; ) dc(i.parent.vnode) && Cf(r, t, n, i), i = i.parent;
  }
}
function Cf(e2, t, n, r) {
  const i = ii(t, e2, r, true);
  pc(() => {
    Os(r[t], i);
  }, n);
}
function ii(e2, t, n = Ce, r = false) {
  if (n) {
    const i = n[e2] || (n[e2] = []), s = t.__weh || (t.__weh = (...o) => {
      if (n.isUnmounted) return;
      On(), bn(n);
      const a = st(t, n, e2, o);
      return Wt(), In(), a;
    });
    return r ? i.unshift(s) : i.push(s), s;
  }
}
const Ot = (e2) => (t, n = Ce) => (!ir || e2 === "sp") && ii(e2, (...r) => t(...r), n), Df = Ot("bm"), Pf = Ot("m"), Nf = Ot("bu"), Mf = Ot("u"), Lf = Ot("bum"), pc = Ot("um"), kf = Ot("sp"), Uf = Ot("rtg"), Ff = Ot("rtc");
function Bf(e2, t = Ce) {
  ii("ec", e2, t);
}
function a_(e2, t, n = {}, r, i) {
  if (Be.isCE || Be.parent && zn(Be.parent) && Be.parent.isCE) return t !== "default" && (n.name = t), xe("slot", n, r && r());
  let s = e2[t];
  s && s._c && (s._d = false), Ac();
  const o = s && gc(s(n)), a = Oc(et, { key: n.key || o && o.key || `_${t}` }, o || (r ? r() : []), o && e2._ === 1 ? 64 : -2);
  return !i && a.scopeId && (a.slotScopeIds = [a.scopeId + "-s"]), s && s._c && (s._d = true), a;
}
function gc(e2) {
  return e2.some((t) => $r(t) ? !(t.type === Bt || t.type === et && !gc(t.children)) : true) ? e2 : null;
}
const rs = (e2) => e2 ? Cc(e2) ? Hs(e2) || e2.proxy : rs(e2.parent) : null, Wn = ke(/* @__PURE__ */ Object.create(null), { $: (e2) => e2, $el: (e2) => e2.vnode.el, $data: (e2) => e2.data, $props: (e2) => e2.props, $attrs: (e2) => e2.attrs, $slots: (e2) => e2.slots, $refs: (e2) => e2.refs, $parent: (e2) => rs(e2.parent), $root: (e2) => rs(e2.root), $emit: (e2) => e2.emit, $options: (e2) => xs(e2), $forceUpdate: (e2) => e2.f || (e2.f = () => Bs(e2.update)), $nextTick: (e2) => e2.n || (e2.n = nc.bind(e2.proxy)), $watch: (e2) => Of.bind(e2) }), Ui = (e2, t) => e2 !== me && !e2.__isScriptSetup && ie(e2, t), xf = { get({ _: e2 }, t) {
  const { ctx: n, setupState: r, data: i, props: s, accessCache: o, type: a, appContext: c } = e2;
  let u;
  if (t[0] !== "$") {
    const g = o[t];
    if (g !== void 0) switch (g) {
      case 1:
        return r[t];
      case 2:
        return i[t];
      case 4:
        return n[t];
      case 3:
        return s[t];
    }
    else {
      if (Ui(r, t)) return o[t] = 1, r[t];
      if (i !== me && ie(i, t)) return o[t] = 2, i[t];
      if ((u = e2.propsOptions[0]) && ie(u, t)) return o[t] = 3, s[t];
      if (n !== me && ie(n, t)) return o[t] = 4, n[t];
      is && (o[t] = 0);
    }
  }
  const l = Wn[t];
  let d, h;
  if (l) return t === "$attrs" && Ge(e2, "get", t), l(e2);
  if ((d = a.__cssModules) && (d = d[t])) return d;
  if (n !== me && ie(n, t)) return o[t] = 4, n[t];
  if (h = c.config.globalProperties, ie(h, t)) return h[t];
}, set({ _: e2 }, t, n) {
  const { data: r, setupState: i, ctx: s } = e2;
  return Ui(i, t) ? (i[t] = n, true) : r !== me && ie(r, t) ? (r[t] = n, true) : ie(e2.props, t) || t[0] === "$" && t.slice(1) in e2 ? false : (s[t] = n, true);
}, has({ _: { data: e2, setupState: t, accessCache: n, ctx: r, appContext: i, propsOptions: s } }, o) {
  let a;
  return !!n[o] || e2 !== me && ie(e2, o) || Ui(t, o) || (a = s[0]) && ie(a, o) || ie(r, o) || ie(Wn, o) || ie(i.config.globalProperties, o);
}, defineProperty(e2, t, n) {
  return n.get != null ? e2._.accessCache[t] = 0 : ie(n, "value") && this.set(e2, t, n.value, null), Reflect.defineProperty(e2, t, n);
} };
function Uo(e2) {
  return Z(e2) ? e2.reduce((t, n) => (t[n] = null, t), {}) : e2;
}
let is = true;
function Kf(e2) {
  const t = xs(e2), n = e2.proxy, r = e2.ctx;
  is = false, t.beforeCreate && Fo(t.beforeCreate, e2, "bc");
  const { data: i, computed: s, methods: o, watch: a, provide: c, inject: u, created: l, beforeMount: d, mounted: h, beforeUpdate: g, updated: E, activated: A, deactivated: N, beforeDestroy: L, beforeUnmount: P, destroyed: b, unmounted: v, render: F, renderTracked: k, renderTriggered: J, errorCaptured: de, serverPrefetch: Oe, expose: ve, inheritAttrs: _e, components: re, directives: m, filters: I } = t;
  if (u && jf(u, r, null), o) for (const z in o) {
    const H = o[z];
    ee(H) && (r[z] = H.bind(n));
  }
  if (i) {
    const z = i.call(n, n);
    Ee(z) && (e2.data = dr(z));
  }
  if (is = true, s) for (const z in s) {
    const H = s[z], pe = ee(H) ? H.bind(n, n) : ee(H.get) ? H.get.bind(n, n) : it, Ne = !ee(H) && ee(H.set) ? H.set.bind(n) : it, ge = qe({ get: pe, set: Ne });
    Object.defineProperty(r, z, { enumerable: true, configurable: true, get: () => ge.value, set: (ue) => ge.value = ue });
  }
  if (a) for (const z in a) mc(a[z], r, n, z);
  if (c) {
    const z = ee(c) ? c.call(n) : c;
    Reflect.ownKeys(z).forEach((H) => {
      Mr(H, z[H]);
    });
  }
  l && Fo(l, e2, "c");
  function $(z, H) {
    Z(H) ? H.forEach((pe) => z(pe.bind(n))) : H && z(H.bind(n));
  }
  if ($(Df, d), $(Pf, h), $(Nf, g), $(Mf, E), $(If, A), $(Rf, N), $(Bf, de), $(Ff, k), $(Uf, J), $(Lf, P), $(pc, v), $(kf, Oe), Z(ve)) if (ve.length) {
    const z = e2.exposed || (e2.exposed = {});
    ve.forEach((H) => {
      Object.defineProperty(z, H, { get: () => n[H], set: (pe) => n[H] = pe });
    });
  } else e2.exposed || (e2.exposed = {});
  F && e2.render === it && (e2.render = F), _e != null && (e2.inheritAttrs = _e), re && (e2.components = re), m && (e2.directives = m);
}
function jf(e2, t, n = it) {
  Z(e2) && (e2 = ss(e2));
  for (const r in e2) {
    const i = e2[r];
    let s;
    Ee(i) ? "default" in i ? s = mt(i.from || r, i.default, true) : s = mt(i.from || r) : s = mt(i), ze(s) ? Object.defineProperty(t, r, { enumerable: true, configurable: true, get: () => s.value, set: (o) => s.value = o }) : t[r] = s;
  }
}
function Fo(e2, t, n) {
  st(Z(e2) ? e2.map((r) => r.bind(t.proxy)) : e2.bind(t.proxy), t, n);
}
function mc(e2, t, n, r) {
  const i = r.includes(".") ? lc(n, r) : () => n[r];
  if ($e(e2)) {
    const s = t[e2];
    ee(s) && Nr(i, s);
  } else if (ee(e2)) Nr(i, e2.bind(n));
  else if (Ee(e2)) if (Z(e2)) e2.forEach((s) => mc(s, t, n, r));
  else {
    const s = ee(e2.handler) ? e2.handler.bind(n) : t[e2.handler];
    ee(s) && Nr(i, s, e2);
  }
}
function xs(e2) {
  const t = e2.type, { mixins: n, extends: r } = t, { mixins: i, optionsCache: s, config: { optionMergeStrategies: o } } = e2.appContext, a = s.get(t);
  let c;
  return a ? c = a : !i.length && !n && !r ? c = t : (c = {}, i.length && i.forEach((u) => Vr(c, u, o, true)), Vr(c, t, o)), Ee(t) && s.set(t, c), c;
}
function Vr(e2, t, n, r = false) {
  const { mixins: i, extends: s } = t;
  s && Vr(e2, s, n, true), i && i.forEach((o) => Vr(e2, o, n, true));
  for (const o in t) if (!(r && o === "expose")) {
    const a = Vf[o] || n && n[o];
    e2[o] = a ? a(e2[o], t[o]) : t[o];
  }
  return e2;
}
const Vf = { data: Bo, props: xo, emits: xo, methods: Hn, computed: Hn, beforeCreate: Ue, created: Ue, beforeMount: Ue, mounted: Ue, beforeUpdate: Ue, updated: Ue, beforeDestroy: Ue, beforeUnmount: Ue, destroyed: Ue, unmounted: Ue, activated: Ue, deactivated: Ue, errorCaptured: Ue, serverPrefetch: Ue, components: Hn, directives: Hn, watch: $f, provide: Bo, inject: Hf };
function Bo(e2, t) {
  return t ? e2 ? function() {
    return ke(ee(e2) ? e2.call(this, this) : e2, ee(t) ? t.call(this, this) : t);
  } : t : e2;
}
function Hf(e2, t) {
  return Hn(ss(e2), ss(t));
}
function ss(e2) {
  if (Z(e2)) {
    const t = {};
    for (let n = 0; n < e2.length; n++) t[e2[n]] = e2[n];
    return t;
  }
  return e2;
}
function Ue(e2, t) {
  return e2 ? [...new Set([].concat(e2, t))] : t;
}
function Hn(e2, t) {
  return e2 ? ke(/* @__PURE__ */ Object.create(null), e2, t) : t;
}
function xo(e2, t) {
  return e2 ? Z(e2) && Z(t) ? [.../* @__PURE__ */ new Set([...e2, ...t])] : ke(/* @__PURE__ */ Object.create(null), Uo(e2), Uo(t != null ? t : {})) : t;
}
function $f(e2, t) {
  if (!e2) return t;
  if (!t) return e2;
  const n = ke(/* @__PURE__ */ Object.create(null), e2);
  for (const r in t) n[r] = Ue(e2[r], t[r]);
  return n;
}
function vc() {
  return { app: null, config: { isNativeTag: Al, performance: false, globalProperties: {}, optionMergeStrategies: {}, errorHandler: void 0, warnHandler: void 0, compilerOptions: {} }, mixins: [], components: {}, directives: {}, provides: /* @__PURE__ */ Object.create(null), optionsCache: /* @__PURE__ */ new WeakMap(), propsCache: /* @__PURE__ */ new WeakMap(), emitsCache: /* @__PURE__ */ new WeakMap() };
}
let Gf = 0;
function zf(e2, t) {
  return function(r, i = null) {
    ee(r) || (r = ke({}, r)), i != null && !Ee(i) && (i = null);
    const s = vc(), o = /* @__PURE__ */ new WeakSet();
    let a = false;
    const c = s.app = { _uid: Gf++, _component: r, _props: i, _container: null, _context: s, _instance: null, version: yd, get config() {
      return s.config;
    }, set config(u) {
    }, use(u, ...l) {
      return o.has(u) || (u && ee(u.install) ? (o.add(u), u.install(c, ...l)) : ee(u) && (o.add(u), u(c, ...l))), c;
    }, mixin(u) {
      return s.mixins.includes(u) || s.mixins.push(u), c;
    }, component(u, l) {
      return l ? (s.components[u] = l, c) : s.components[u];
    }, directive(u, l) {
      return l ? (s.directives[u] = l, c) : s.directives[u];
    }, mount(u, l, d) {
      if (!a) {
        const h = xe(r, i);
        return h.appContext = s, l && t ? t(h, u) : e2(h, u, d), a = true, c._container = u, u.__vue_app__ = c, Hs(h.component) || h.component.proxy;
      }
    }, unmount() {
      a && (e2(null, c._container), delete c._container.__vue_app__);
    }, provide(u, l) {
      return s.provides[u] = l, c;
    }, runWithContext(u) {
      Hr = c;
      try {
        return u();
      } finally {
        Hr = null;
      }
    } };
    return c;
  };
}
let Hr = null;
function Mr(e2, t) {
  if (Ce) {
    let n = Ce.provides;
    const r = Ce.parent && Ce.parent.provides;
    r === n && (n = Ce.provides = Object.create(r)), n[e2] = t;
  }
}
function mt(e2, t, n = false) {
  const r = Ce || Be;
  if (r || Hr) {
    const i = r ? r.parent == null ? r.vnode.appContext && r.vnode.appContext.provides : r.parent.provides : Hr._context.provides;
    if (i && e2 in i) return i[e2];
    if (arguments.length > 1) return n && ee(t) ? t.call(r && r.proxy) : t;
  }
}
function Wf(e2, t, n, r = false) {
  const i = {}, s = {};
  xr(s, oi, 1), e2.propsDefaults = /* @__PURE__ */ Object.create(null), _c(e2, t, i, s);
  for (const o in e2.propsOptions[0]) o in i || (i[o] = void 0);
  n ? e2.props = r ? i : rf(i) : e2.type.props ? e2.props = i : e2.props = s, e2.attrs = s;
}
function Yf(e2, t, n, r) {
  const { props: i, attrs: s, vnode: { patchFlag: o } } = e2, a = ce(i), [c] = e2.propsOptions;
  let u = false;
  if ((r || o > 0) && !(o & 16)) {
    if (o & 8) {
      const l = e2.vnode.dynamicProps;
      for (let d = 0; d < l.length; d++) {
        let h = l[d];
        if (ri(e2.emitsOptions, h)) continue;
        const g = t[h];
        if (c) if (ie(s, h)) g !== s[h] && (s[h] = g, u = true);
        else {
          const E = _t(h);
          i[E] = os(c, a, E, g, e2, false);
        }
        else g !== s[h] && (s[h] = g, u = true);
      }
    }
  } else {
    _c(e2, t, i, s) && (u = true);
    let l;
    for (const d in a) (!t || !ie(t, d) && ((l = ei(d)) === d || !ie(t, l))) && (c ? n && (n[d] !== void 0 || n[l] !== void 0) && (i[d] = os(c, a, d, void 0, e2, true)) : delete i[d]);
    if (s !== a) for (const d in s) (!t || !ie(t, d) && true) && (delete s[d], u = true);
  }
  u && St(e2, "set", "$attrs");
}
function _c(e2, t, n, r) {
  const [i, s] = e2.propsOptions;
  let o = false, a;
  if (t) for (let c in t) {
    if (Pr(c)) continue;
    const u = t[c];
    let l;
    i && ie(i, l = _t(c)) ? !s || !s.includes(l) ? n[l] = u : (a || (a = {}))[l] = u : ri(e2.emitsOptions, c) || (!(c in r) || u !== r[c]) && (r[c] = u, o = true);
  }
  if (s) {
    const c = ce(n), u = a || me;
    for (let l = 0; l < s.length; l++) {
      const d = s[l];
      n[d] = os(i, c, d, u[d], e2, !ie(u, d));
    }
  }
  return o;
}
function os(e2, t, n, r, i, s) {
  const o = e2[n];
  if (o != null) {
    const a = ie(o, "default");
    if (a && r === void 0) {
      const c = o.default;
      if (o.type !== Function && !o.skipFactory && ee(c)) {
        const { propsDefaults: u } = i;
        n in u ? r = u[n] : (bn(i), r = u[n] = c.call(null, t), Wt());
      } else r = c;
    }
    o[0] && (s && !a ? r = false : o[1] && (r === "" || r === ei(n)) && (r = true));
  }
  return r;
}
function yc(e2, t, n = false) {
  const r = t.propsCache, i = r.get(e2);
  if (i) return i;
  const s = e2.props, o = {}, a = [];
  let c = false;
  if (!ee(e2)) {
    const l = (d) => {
      c = true;
      const [h, g] = yc(d, t, true);
      ke(o, h), g && a.push(...g);
    };
    !n && t.mixins.length && t.mixins.forEach(l), e2.extends && l(e2.extends), e2.mixins && e2.mixins.forEach(l);
  }
  if (!s && !c) return Ee(e2) && r.set(e2, fn), fn;
  if (Z(s)) for (let l = 0; l < s.length; l++) {
    const d = _t(s[l]);
    Ko(d) && (o[d] = me);
  }
  else if (s) for (const l in s) {
    const d = _t(l);
    if (Ko(d)) {
      const h = s[l], g = o[d] = Z(h) || ee(h) ? { type: h } : ke({}, h);
      if (g) {
        const E = Ho(Boolean, g.type), A = Ho(String, g.type);
        g[0] = E > -1, g[1] = A < 0 || E < A, (E > -1 || ie(g, "default")) && a.push(d);
      }
    }
  }
  const u = [o, a];
  return Ee(e2) && r.set(e2, u), u;
}
function Ko(e2) {
  return e2[0] !== "$";
}
function jo(e2) {
  const t = e2 && e2.toString().match(/^\s*(function|class) (\w+)/);
  return t ? t[2] : e2 === null ? "null" : "";
}
function Vo(e2, t) {
  return jo(e2) === jo(t);
}
function Ho(e2, t) {
  return Z(t) ? t.findIndex((n) => Vo(n, e2)) : ee(t) && Vo(t, e2) ? 0 : -1;
}
const Ec = (e2) => e2[0] === "_" || e2 === "$stable", Ks = (e2) => Z(e2) ? e2.map(dt) : [dt(e2)], qf = (e2, t, n) => {
  if (t._n) return t;
  const r = vf((...i) => Ks(t(...i)), n);
  return r._c = false, r;
}, bc = (e2, t, n) => {
  const r = e2._ctx;
  for (const i in e2) {
    if (Ec(i)) continue;
    const s = e2[i];
    if (ee(s)) t[i] = qf(i, s, r);
    else if (s != null) {
      const o = Ks(s);
      t[i] = () => o;
    }
  }
}, Sc = (e2, t) => {
  const n = Ks(t);
  e2.slots.default = () => n;
}, Qf = (e2, t) => {
  if (e2.vnode.shapeFlag & 32) {
    const n = t._;
    n ? (e2.slots = ce(t), xr(t, "_", n)) : bc(t, e2.slots = {});
  } else e2.slots = {}, t && Sc(e2, t);
  xr(e2.slots, oi, 1);
}, Jf = (e2, t, n) => {
  const { vnode: r, slots: i } = e2;
  let s = true, o = me;
  if (r.shapeFlag & 32) {
    const a = t._;
    a ? n && a === 1 ? s = false : (ke(i, t), !n && a === 1 && delete i._) : (s = !t.$stable, bc(t, i)), o = t;
  } else t && (Sc(e2, t), o = { default: 1 });
  if (s) for (const a in i) !Ec(a) && o[a] == null && delete i[a];
};
function as(e2, t, n, r, i = false) {
  if (Z(e2)) {
    e2.forEach((h, g) => as(h, t && (Z(t) ? t[g] : t), n, r, i));
    return;
  }
  if (zn(r) && !i) return;
  const s = r.shapeFlag & 4 ? Hs(r.component) || r.component.proxy : r.el, o = i ? null : s, { i: a, r: c } = e2, u = t && t.r, l = a.refs === me ? a.refs = {} : a.refs, d = a.setupState;
  if (u != null && u !== c && ($e(u) ? (l[u] = null, ie(d, u) && (d[u] = null)) : ze(u) && (u.value = null)), ee(c)) kt(c, a, 12, [o, l]);
  else {
    const h = $e(c), g = ze(c);
    if (h || g) {
      const E = () => {
        if (e2.f) {
          const A = h ? ie(d, c) ? d[c] : l[c] : c.value;
          i ? Z(A) && Os(A, s) : Z(A) ? A.includes(s) || A.push(s) : h ? (l[c] = [s], ie(d, c) && (d[c] = l[c])) : (c.value = [s], e2.k && (l[e2.k] = c.value));
        } else h ? (l[c] = o, ie(d, c) && (d[c] = o)) : g && (c.value = o, e2.k && (l[e2.k] = o));
      };
      o ? (E.id = -1, je(E, n)) : E();
    }
  }
}
const je = wf;
function Xf(e2) {
  return Zf(e2);
}
function Zf(e2, t) {
  const n = Ji();
  n.__VUE__ = true;
  const { insert: r, remove: i, patchProp: s, createElement: o, createText: a, createComment: c, setText: u, setElementText: l, parentNode: d, nextSibling: h, setScopeId: g = it, insertStaticContent: E } = e2, A = (f, p, y, S = null, w = null, C = null, B = false, R = null, M = !!p.dynamicChildren) => {
    if (f === p) return;
    f && !Bn(f, p) && (S = U(f), ue(f, w, C, true), f = null), p.patchFlag === -2 && (M = false, p.dynamicChildren = null);
    const { type: O, ref: W, shapeFlag: j } = p;
    switch (O) {
      case si:
        N(f, p, y, S);
        break;
      case Bt:
        L(f, p, y, S);
        break;
      case Lr:
        f == null && P(p, y, S, B);
        break;
      case et:
        re(f, p, y, S, w, C, B, R, M);
        break;
      default:
        j & 1 ? F(f, p, y, S, w, C, B, R, M) : j & 6 ? m(f, p, y, S, w, C, B, R, M) : (j & 64 || j & 128) && O.process(f, p, y, S, w, C, B, R, M, ae);
    }
    W != null && w && as(W, f && f.ref, C, p || f, !p);
  }, N = (f, p, y, S) => {
    if (f == null) r(p.el = a(p.children), y, S);
    else {
      const w = p.el = f.el;
      p.children !== f.children && u(w, p.children);
    }
  }, L = (f, p, y, S) => {
    f == null ? r(p.el = c(p.children || ""), y, S) : p.el = f.el;
  }, P = (f, p, y, S) => {
    [f.el, f.anchor] = E(f.children, p, y, S, f.el, f.anchor);
  }, b = ({ el: f, anchor: p }, y, S) => {
    let w;
    for (; f && f !== p; ) w = h(f), r(f, y, S), f = w;
    r(p, y, S);
  }, v = ({ el: f, anchor: p }) => {
    let y;
    for (; f && f !== p; ) y = h(f), i(f), f = y;
    i(p);
  }, F = (f, p, y, S, w, C, B, R, M) => {
    B = B || p.type === "svg", f == null ? k(p, y, S, w, C, B, R, M) : Oe(f, p, w, C, B, R, M);
  }, k = (f, p, y, S, w, C, B, R) => {
    let M, O;
    const { type: W, props: j, shapeFlag: Y, transition: X, dirs: ne } = f;
    if (M = f.el = o(f.type, C, j && j.is, j), Y & 8 ? l(M, f.children) : Y & 16 && de(f.children, M, null, S, w, C && W !== "foreignObject", B, R), ne && jt(f, null, S, "created"), J(M, f, f.scopeId, B, S), j) {
      for (const le in j) le !== "value" && !Pr(le) && s(M, le, null, j[le], C, f.children, S, w, x);
      "value" in j && s(M, "value", null, j.value), (O = j.onVnodeBeforeMount) && ut(O, S, f);
    }
    ne && jt(f, null, S, "beforeMount");
    const he = ed(w, X);
    he && X.beforeEnter(M), r(M, p, y), ((O = j && j.onVnodeMounted) || he || ne) && je(() => {
      O && ut(O, S, f), he && X.enter(M), ne && jt(f, null, S, "mounted");
    }, w);
  }, J = (f, p, y, S, w) => {
    if (y && g(f, y), S) for (let C = 0; C < S.length; C++) g(f, S[C]);
    if (w) {
      let C = w.subTree;
      if (p === C) {
        const B = w.vnode;
        J(f, B, B.scopeId, B.slotScopeIds, w.parent);
      }
    }
  }, de = (f, p, y, S, w, C, B, R, M = 0) => {
    for (let O = M; O < f.length; O++) {
      const W = f[O] = R ? Nt(f[O]) : dt(f[O]);
      A(null, W, p, y, S, w, C, B, R);
    }
  }, Oe = (f, p, y, S, w, C, B) => {
    const R = p.el = f.el;
    let { patchFlag: M, dynamicChildren: O, dirs: W } = p;
    M |= f.patchFlag & 16;
    const j = f.props || me, Y = p.props || me;
    let X;
    y && Vt(y, false), (X = Y.onVnodeBeforeUpdate) && ut(X, y, p, f), W && jt(p, f, y, "beforeUpdate"), y && Vt(y, true);
    const ne = w && p.type !== "foreignObject";
    if (O ? ve(f.dynamicChildren, O, R, y, S, ne, C) : B || H(f, p, R, null, y, S, ne, C, false), M > 0) {
      if (M & 16) _e(R, p, j, Y, y, S, w);
      else if (M & 2 && j.class !== Y.class && s(R, "class", null, Y.class, w), M & 4 && s(R, "style", j.style, Y.style, w), M & 8) {
        const he = p.dynamicProps;
        for (let le = 0; le < he.length; le++) {
          const Se = he[le], Xe = j[Se], nn = Y[Se];
          (nn !== Xe || Se === "value") && s(R, Se, Xe, nn, w, f.children, y, S, x);
        }
      }
      M & 1 && f.children !== p.children && l(R, p.children);
    } else !B && O == null && _e(R, p, j, Y, y, S, w);
    ((X = Y.onVnodeUpdated) || W) && je(() => {
      X && ut(X, y, p, f), W && jt(p, f, y, "updated");
    }, S);
  }, ve = (f, p, y, S, w, C, B) => {
    for (let R = 0; R < p.length; R++) {
      const M = f[R], O = p[R], W = M.el && (M.type === et || !Bn(M, O) || M.shapeFlag & 70) ? d(M.el) : y;
      A(M, O, W, null, S, w, C, B, true);
    }
  }, _e = (f, p, y, S, w, C, B) => {
    if (y !== S) {
      if (y !== me) for (const R in y) !Pr(R) && !(R in S) && s(f, R, y[R], null, B, p.children, w, C, x);
      for (const R in S) {
        if (Pr(R)) continue;
        const M = S[R], O = y[R];
        M !== O && R !== "value" && s(f, R, O, M, B, p.children, w, C, x);
      }
      "value" in S && s(f, "value", y.value, S.value);
    }
  }, re = (f, p, y, S, w, C, B, R, M) => {
    const O = p.el = f ? f.el : a(""), W = p.anchor = f ? f.anchor : a("");
    let { patchFlag: j, dynamicChildren: Y, slotScopeIds: X } = p;
    X && (R = R ? R.concat(X) : X), f == null ? (r(O, y, S), r(W, y, S), de(p.children, y, W, w, C, B, R, M)) : j > 0 && j & 64 && Y && f.dynamicChildren ? (ve(f.dynamicChildren, Y, y, w, C, B, R), (p.key != null || w && p === w.subTree) && Tc(f, p, true)) : H(f, p, y, W, w, C, B, R, M);
  }, m = (f, p, y, S, w, C, B, R, M) => {
    p.slotScopeIds = R, f == null ? p.shapeFlag & 512 ? w.ctx.activate(p, y, S, B, M) : I(p, y, S, w, C, B, M) : q(f, p, M);
  }, I = (f, p, y, S, w, C, B) => {
    const R = f.component = ld(f, S, w);
    if (dc(f) && (R.ctx.renderer = ae), fd(R), R.asyncDep) {
      if (w && w.registerDep(R, $), !f.el) {
        const M = R.subTree = xe(Bt);
        L(null, M, p, y);
      }
      return;
    }
    $(R, f, p, y, w, C, B);
  }, q = (f, p, y) => {
    const S = p.component = f.component;
    if (Ef(f, p, y)) if (S.asyncDep && !S.asyncResolved) {
      z(S, p, y);
      return;
    } else S.next = p, hf(S.update), S.update();
    else p.el = f.el, S.vnode = p;
  }, $ = (f, p, y, S, w, C, B) => {
    const R = () => {
      if (f.isMounted) {
        let { next: W, bu: j, u: Y, parent: X, vnode: ne } = f, he = W, le;
        Vt(f, false), W ? (W.el = ne.el, z(f, W, B)) : W = ne, j && Mi(j), (le = W.props && W.props.onVnodeBeforeUpdate) && ut(le, X, W, ne), Vt(f, true);
        const Se = ki(f), Xe = f.subTree;
        f.subTree = Se, A(Xe, Se, d(Xe.el), U(Xe), f, w, C), W.el = Se.el, he === null && bf(f, Se.el), Y && je(Y, w), (le = W.props && W.props.onVnodeUpdated) && je(() => ut(le, X, W, ne), w);
      } else {
        let W;
        const { el: j, props: Y } = p, { bm: X, m: ne, parent: he } = f, le = zn(p);
        if (Vt(f, false), X && Mi(X), !le && (W = Y && Y.onVnodeBeforeMount) && ut(W, he, p), Vt(f, true), j && te) {
          const Se = () => {
            f.subTree = ki(f), te(j, f.subTree, f, w, null);
          };
          le ? p.type.__asyncLoader().then(() => !f.isUnmounted && Se()) : Se();
        } else {
          const Se = f.subTree = ki(f);
          A(null, Se, y, S, f, w, C), p.el = Se.el;
        }
        if (ne && je(ne, w), !le && (W = Y && Y.onVnodeMounted)) {
          const Se = p;
          je(() => ut(W, he, Se), w);
        }
        (p.shapeFlag & 256 || he && zn(he.vnode) && he.vnode.shapeFlag & 256) && f.a && je(f.a, w), f.isMounted = true, p = y = S = null;
      }
    }, M = f.effect = new Ns(R, () => Bs(O), f.scope), O = f.update = () => M.run();
    O.id = f.uid, Vt(f, true), O();
  }, z = (f, p, y) => {
    p.component = f;
    const S = f.vnode.props;
    f.vnode = p, f.next = null, Yf(f, p.props, S, y), Jf(f, p.children, y), On(), Mo(f), In();
  }, H = (f, p, y, S, w, C, B, R, M = false) => {
    const O = f && f.children, W = f ? f.shapeFlag : 0, j = p.children, { patchFlag: Y, shapeFlag: X } = p;
    if (Y > 0) {
      if (Y & 128) {
        Ne(O, j, y, S, w, C, B, R, M);
        return;
      } else if (Y & 256) {
        pe(O, j, y, S, w, C, B, R, M);
        return;
      }
    }
    X & 8 ? (W & 16 && x(O, w, C), j !== O && l(y, j)) : W & 16 ? X & 16 ? Ne(O, j, y, S, w, C, B, R, M) : x(O, w, C, true) : (W & 8 && l(y, ""), X & 16 && de(j, y, S, w, C, B, R, M));
  }, pe = (f, p, y, S, w, C, B, R, M) => {
    f = f || fn, p = p || fn;
    const O = f.length, W = p.length, j = Math.min(O, W);
    let Y;
    for (Y = 0; Y < j; Y++) {
      const X = p[Y] = M ? Nt(p[Y]) : dt(p[Y]);
      A(f[Y], X, y, null, w, C, B, R, M);
    }
    O > W ? x(f, w, C, true, false, j) : de(p, y, S, w, C, B, R, M, j);
  }, Ne = (f, p, y, S, w, C, B, R, M) => {
    let O = 0;
    const W = p.length;
    let j = f.length - 1, Y = W - 1;
    for (; O <= j && O <= Y; ) {
      const X = f[O], ne = p[O] = M ? Nt(p[O]) : dt(p[O]);
      if (Bn(X, ne)) A(X, ne, y, null, w, C, B, R, M);
      else break;
      O++;
    }
    for (; O <= j && O <= Y; ) {
      const X = f[j], ne = p[Y] = M ? Nt(p[Y]) : dt(p[Y]);
      if (Bn(X, ne)) A(X, ne, y, null, w, C, B, R, M);
      else break;
      j--, Y--;
    }
    if (O > j) {
      if (O <= Y) {
        const X = Y + 1, ne = X < W ? p[X].el : S;
        for (; O <= Y; ) A(null, p[O] = M ? Nt(p[O]) : dt(p[O]), y, ne, w, C, B, R, M), O++;
      }
    } else if (O > Y) for (; O <= j; ) ue(f[O], w, C, true), O++;
    else {
      const X = O, ne = O, he = /* @__PURE__ */ new Map();
      for (O = ne; O <= Y; O++) {
        const We = p[O] = M ? Nt(p[O]) : dt(p[O]);
        We.key != null && he.set(We.key, O);
      }
      let le, Se = 0;
      const Xe = Y - ne + 1;
      let nn = false, Eo = 0;
      const Fn = new Array(Xe);
      for (O = 0; O < Xe; O++) Fn[O] = 0;
      for (O = X; O <= j; O++) {
        const We = f[O];
        if (Se >= Xe) {
          ue(We, w, C, true);
          continue;
        }
        let ct;
        if (We.key != null) ct = he.get(We.key);
        else for (le = ne; le <= Y; le++) if (Fn[le - ne] === 0 && Bn(We, p[le])) {
          ct = le;
          break;
        }
        ct === void 0 ? ue(We, w, C, true) : (Fn[ct - ne] = O + 1, ct >= Eo ? Eo = ct : nn = true, A(We, p[ct], y, null, w, C, B, R, M), Se++);
      }
      const bo = nn ? td(Fn) : fn;
      for (le = bo.length - 1, O = Xe - 1; O >= 0; O--) {
        const We = ne + O, ct = p[We], So = We + 1 < W ? p[We + 1].el : S;
        Fn[O] === 0 ? A(null, ct, y, So, w, C, B, R, M) : nn && (le < 0 || O !== bo[le] ? ge(ct, y, So, 2) : le--);
      }
    }
  }, ge = (f, p, y, S, w = null) => {
    const { el: C, type: B, transition: R, children: M, shapeFlag: O } = f;
    if (O & 6) {
      ge(f.component.subTree, p, y, S);
      return;
    }
    if (O & 128) {
      f.suspense.move(p, y, S);
      return;
    }
    if (O & 64) {
      B.move(f, p, y, ae);
      return;
    }
    if (B === et) {
      r(C, p, y);
      for (let j = 0; j < M.length; j++) ge(M[j], p, y, S);
      r(f.anchor, p, y);
      return;
    }
    if (B === Lr) {
      b(f, p, y);
      return;
    }
    if (S !== 2 && O & 1 && R) if (S === 0) R.beforeEnter(C), r(C, p, y), je(() => R.enter(C), w);
    else {
      const { leave: j, delayLeave: Y, afterLeave: X } = R, ne = () => r(C, p, y), he = () => {
        j(C, () => {
          ne(), X && X();
        });
      };
      Y ? Y(C, ne, he) : he();
    }
    else r(C, p, y);
  }, ue = (f, p, y, S = false, w = false) => {
    const { type: C, props: B, ref: R, children: M, dynamicChildren: O, shapeFlag: W, patchFlag: j, dirs: Y } = f;
    if (R != null && as(R, null, y, f, true), W & 256) {
      p.ctx.deactivate(f);
      return;
    }
    const X = W & 1 && Y, ne = !zn(f);
    let he;
    if (ne && (he = B && B.onVnodeBeforeUnmount) && ut(he, p, f), W & 6) T(f.component, y, S);
    else {
      if (W & 128) {
        f.suspense.unmount(y, S);
        return;
      }
      X && jt(f, null, p, "beforeUnmount"), W & 64 ? f.type.remove(f, p, y, w, ae, S) : O && (C !== et || j > 0 && j & 64) ? x(O, p, y, false, true) : (C === et && j & 384 || !w && W & 16) && x(M, p, y), S && Je(f);
    }
    (ne && (he = B && B.onVnodeUnmounted) || X) && je(() => {
      he && ut(he, p, f), X && jt(f, null, p, "unmounted");
    }, y);
  }, Je = (f) => {
    const { type: p, el: y, anchor: S, transition: w } = f;
    if (p === et) {
      Er(y, S);
      return;
    }
    if (p === Lr) {
      v(f);
      return;
    }
    const C = () => {
      i(y), w && !w.persisted && w.afterLeave && w.afterLeave();
    };
    if (f.shapeFlag & 1 && w && !w.persisted) {
      const { leave: B, delayLeave: R } = w, M = () => B(y, C);
      R ? R(f.el, C, M) : M();
    } else C();
  }, Er = (f, p) => {
    let y;
    for (; f !== p; ) y = h(f), i(f), f = y;
    i(p);
  }, T = (f, p, y) => {
    const { bum: S, scope: w, update: C, subTree: B, um: R } = f;
    S && Mi(S), w.stop(), C && (C.active = false, ue(B, f, p, y)), R && je(R, p), je(() => {
      f.isUnmounted = true;
    }, p), p && p.pendingBranch && !p.isUnmounted && f.asyncDep && !f.asyncResolved && f.suspenseId === p.pendingId && (p.deps--, p.deps === 0 && p.resolve());
  }, x = (f, p, y, S = false, w = false, C = 0) => {
    for (let B = C; B < f.length; B++) ue(f[B], p, y, S, w);
  }, U = (f) => f.shapeFlag & 6 ? U(f.component.subTree) : f.shapeFlag & 128 ? f.suspense.next() : h(f.anchor || f.el), G = (f, p, y) => {
    f == null ? p._vnode && ue(p._vnode, null, null, true) : A(p._vnode || null, f, p, null, null, null, y), Mo(), ic(), p._vnode = f;
  }, ae = { p: A, um: ue, m: ge, r: Je, mt: I, mc: de, pc: H, pbc: ve, n: U, o: e2 };
  let ye, te;
  return t && ([ye, te] = t(ae)), { render: G, hydrate: ye, createApp: zf(G, ye) };
}
function Vt({ effect: e2, update: t }, n) {
  e2.allowRecurse = t.allowRecurse = n;
}
function ed(e2, t) {
  return (!e2 || e2 && !e2.pendingBranch) && t && !t.persisted;
}
function Tc(e2, t, n = false) {
  const r = e2.children, i = t.children;
  if (Z(r) && Z(i)) for (let s = 0; s < r.length; s++) {
    const o = r[s];
    let a = i[s];
    a.shapeFlag & 1 && !a.dynamicChildren && ((a.patchFlag <= 0 || a.patchFlag === 32) && (a = i[s] = Nt(i[s]), a.el = o.el), n || Tc(o, a)), a.type === si && (a.el = o.el);
  }
}
function td(e2) {
  const t = e2.slice(), n = [0];
  let r, i, s, o, a;
  const c = e2.length;
  for (r = 0; r < c; r++) {
    const u = e2[r];
    if (u !== 0) {
      if (i = n[n.length - 1], e2[i] < u) {
        t[r] = i, n.push(r);
        continue;
      }
      for (s = 0, o = n.length - 1; s < o; ) a = s + o >> 1, e2[n[a]] < u ? s = a + 1 : o = a;
      u < e2[n[s]] && (s > 0 && (t[r] = n[s - 1]), n[s] = r);
    }
  }
  for (s = n.length, o = n[s - 1]; s-- > 0; ) n[s] = o, o = t[o];
  return n;
}
const nd = (e2) => e2.__isTeleport, et = Symbol.for("v-fgt"), si = Symbol.for("v-txt"), Bt = Symbol.for("v-cmt"), Lr = Symbol.for("v-stc"), Yn = [];
let nt = null;
function Ac(e2 = false) {
  Yn.push(nt = e2 ? null : []);
}
function rd() {
  Yn.pop(), nt = Yn[Yn.length - 1] || null;
}
let rr = 1;
function $o(e2) {
  rr += e2;
}
function wc(e2) {
  return e2.dynamicChildren = rr > 0 ? nt || fn : null, rd(), rr > 0 && nt && nt.push(e2), e2;
}
function c_(e2, t, n, r, i, s) {
  return wc(Rc(e2, t, n, r, i, s, true));
}
function Oc(e2, t, n, r, i) {
  return wc(xe(e2, t, n, r, i, true));
}
function $r(e2) {
  return e2 ? e2.__v_isVNode === true : false;
}
function Bn(e2, t) {
  return e2.type === t.type && e2.key === t.key;
}
const oi = "__vInternal", Ic = ({ key: e2 }) => e2 != null ? e2 : null, kr = ({ ref: e2, ref_key: t, ref_for: n }) => (typeof e2 == "number" && (e2 = "" + e2), e2 != null ? $e(e2) || ze(e2) || ee(e2) ? { i: Be, r: e2, k: t, f: !!n } : e2 : null);
function Rc(e2, t = null, n = null, r = 0, i = null, s = e2 === et ? 0 : 1, o = false, a = false) {
  const c = { __v_isVNode: true, __v_skip: true, type: e2, props: t, key: t && Ic(t), ref: t && kr(t), scopeId: ac, slotScopeIds: null, children: n, component: null, suspense: null, ssContent: null, ssFallback: null, dirs: null, transition: null, el: null, anchor: null, target: null, targetAnchor: null, staticCount: 0, shapeFlag: s, patchFlag: r, dynamicProps: i, dynamicChildren: null, appContext: null, ctx: Be };
  return a ? (js(c, n), s & 128 && e2.normalize(c)) : n && (c.shapeFlag |= $e(n) ? 8 : 16), rr > 0 && !o && nt && (c.patchFlag > 0 || s & 6) && c.patchFlag !== 32 && nt.push(c), c;
}
const xe = id;
function id(e2, t = null, n = null, r = 0, i = null, s = false) {
  if ((!e2 || e2 === Sf) && (e2 = Bt), $r(e2)) {
    const a = En(e2, t, true);
    return n && js(a, n), rr > 0 && !s && nt && (a.shapeFlag & 6 ? nt[nt.indexOf(e2)] = a : nt.push(a)), a.patchFlag |= -2, a;
  }
  if (md(e2) && (e2 = e2.__vccOpts), t) {
    t = sd(t);
    let { class: a, style: c } = t;
    a && !$e(a) && (t.class = Ds(a)), Ee(c) && (qa(c) && !Z(c) && (c = ke({}, c)), t.style = Cs(c));
  }
  const o = $e(e2) ? 1 : Af(e2) ? 128 : nd(e2) ? 64 : Ee(e2) ? 4 : ee(e2) ? 2 : 0;
  return Rc(e2, t, n, r, i, o, s, true);
}
function sd(e2) {
  return e2 ? qa(e2) || oi in e2 ? ke({}, e2) : e2 : null;
}
function En(e2, t, n = false) {
  const { props: r, ref: i, patchFlag: s, children: o } = e2, a = t ? ad(r || {}, t) : r;
  return { __v_isVNode: true, __v_skip: true, type: e2.type, props: a, key: a && Ic(a), ref: t && t.ref ? n && i ? Z(i) ? i.concat(kr(t)) : [i, kr(t)] : kr(t) : i, scopeId: e2.scopeId, slotScopeIds: e2.slotScopeIds, children: o, target: e2.target, targetAnchor: e2.targetAnchor, staticCount: e2.staticCount, shapeFlag: e2.shapeFlag, patchFlag: t && e2.type !== et ? s === -1 ? 16 : s | 16 : s, dynamicProps: e2.dynamicProps, dynamicChildren: e2.dynamicChildren, appContext: e2.appContext, dirs: e2.dirs, transition: e2.transition, component: e2.component, suspense: e2.suspense, ssContent: e2.ssContent && En(e2.ssContent), ssFallback: e2.ssFallback && En(e2.ssFallback), el: e2.el, anchor: e2.anchor, ctx: e2.ctx, ce: e2.ce };
}
function od(e2 = " ", t = 0) {
  return xe(si, null, e2, t);
}
function u_(e2, t) {
  const n = xe(Lr, null, e2);
  return n.staticCount = t, n;
}
function l_(e2 = "", t = false) {
  return t ? (Ac(), Oc(Bt, null, e2)) : xe(Bt, null, e2);
}
function dt(e2) {
  return e2 == null || typeof e2 == "boolean" ? xe(Bt) : Z(e2) ? xe(et, null, e2.slice()) : typeof e2 == "object" ? Nt(e2) : xe(si, null, String(e2));
}
function Nt(e2) {
  return e2.el === null && e2.patchFlag !== -1 || e2.memo ? e2 : En(e2);
}
function js(e2, t) {
  let n = 0;
  const { shapeFlag: r } = e2;
  if (t == null) t = null;
  else if (Z(t)) n = 16;
  else if (typeof t == "object") if (r & 65) {
    const i = t.default;
    i && (i._c && (i._d = false), js(e2, i()), i._c && (i._d = true));
    return;
  } else {
    n = 32;
    const i = t._;
    !i && !(oi in t) ? t._ctx = Be : i === 3 && Be && (Be.slots._ === 1 ? t._ = 1 : (t._ = 2, e2.patchFlag |= 1024));
  }
  else ee(t) ? (t = { default: t, _ctx: Be }, n = 32) : (t = String(t), r & 64 ? (n = 16, t = [od(t)]) : n = 8);
  e2.children = t, e2.shapeFlag |= n;
}
function ad(...e2) {
  const t = {};
  for (let n = 0; n < e2.length; n++) {
    const r = e2[n];
    for (const i in r) if (i === "class") t.class !== r.class && (t.class = Ds([t.class, r.class]));
    else if (i === "style") t.style = Cs([t.style, r.style]);
    else if (ws(i)) {
      const s = t[i], o = r[i];
      o && s !== o && !(Z(s) && s.includes(o)) && (t[i] = s ? [].concat(s, o) : o);
    } else i !== "" && (t[i] = r[i]);
  }
  return t;
}
function ut(e2, t, n, r = null) {
  st(e2, t, 7, [n, r]);
}
const cd = vc();
let ud = 0;
function ld(e2, t, n) {
  const r = e2.type, i = (t ? t.appContext : e2.appContext) || cd, s = { uid: ud++, vnode: e2, type: r, parent: t, appContext: i, root: null, next: null, subTree: null, effect: null, update: null, scope: new Ll(true), render: null, proxy: null, exposed: null, exposeProxy: null, withProxy: null, provides: t ? t.provides : Object.create(i.provides), accessCache: null, renderCache: [], components: null, directives: null, propsOptions: yc(r, i), emitsOptions: oc(r, i), emit: null, emitted: null, propsDefaults: me, inheritAttrs: r.inheritAttrs, ctx: me, data: me, props: me, attrs: me, slots: me, refs: me, setupState: me, setupContext: null, attrsProxy: null, slotsProxy: null, suspense: n, suspenseId: n ? n.pendingId : 0, asyncDep: null, asyncResolved: false, isMounted: false, isUnmounted: false, isDeactivated: false, bc: null, c: null, bm: null, m: null, bu: null, u: null, um: null, bum: null, da: null, a: null, rtg: null, rtc: null, ec: null, sp: null };
  return s.ctx = { _: s }, s.root = t ? t.root : s, s.emit = mf.bind(null, s), e2.ce && e2.ce(s), s;
}
let Ce = null, Vs, sn, Go = "__VUE_INSTANCE_SETTERS__";
(sn = Ji()[Go]) || (sn = Ji()[Go] = []), sn.push((e2) => Ce = e2), Vs = (e2) => {
  sn.length > 1 ? sn.forEach((t) => t(e2)) : sn[0](e2);
};
const bn = (e2) => {
  Vs(e2), e2.scope.on();
}, Wt = () => {
  Ce && Ce.scope.off(), Vs(null);
};
function Cc(e2) {
  return e2.vnode.shapeFlag & 4;
}
let ir = false;
function fd(e2, t = false) {
  ir = t;
  const { props: n, children: r } = e2.vnode, i = Cc(e2);
  Wf(e2, n, i, t), Qf(e2, r);
  const s = i ? dd(e2, t) : void 0;
  return ir = false, s;
}
function dd(e2, t) {
  const n = e2.type;
  e2.accessCache = /* @__PURE__ */ Object.create(null), e2.proxy = Qa(new Proxy(e2.ctx, xf));
  const { setup: r } = n;
  if (r) {
    const i = e2.setupContext = r.length > 1 ? pd(e2) : null;
    bn(e2), On();
    const s = kt(r, e2, 0, [e2.props, i]);
    if (In(), Wt(), La(s)) {
      if (s.then(Wt, Wt), t) return s.then((o) => {
        zo(e2, o, t);
      }).catch((o) => {
        ni(o, e2, 0);
      });
      e2.asyncDep = s;
    } else zo(e2, s, t);
  } else Dc(e2, t);
}
function zo(e2, t, n) {
  ee(t) ? e2.type.__ssrInlineRender ? e2.ssrRender = t : e2.render = t : Ee(t) && (e2.setupState = ec(t)), Dc(e2, n);
}
let Wo;
function Dc(e2, t, n) {
  const r = e2.type;
  if (!e2.render) {
    if (!t && Wo && !r.render) {
      const i = r.template || xs(e2).template;
      if (i) {
        const { isCustomElement: s, compilerOptions: o } = e2.appContext.config, { delimiters: a, compilerOptions: c } = r, u = ke(ke({ isCustomElement: s, delimiters: a }, o), c);
        r.render = Wo(i, u);
      }
    }
    e2.render = r.render || it;
  }
  {
    bn(e2), On();
    try {
      Kf(e2);
    } finally {
      In(), Wt();
    }
  }
}
function hd(e2) {
  return e2.attrsProxy || (e2.attrsProxy = new Proxy(e2.attrs, { get(t, n) {
    return Ge(e2, "get", "$attrs"), t[n];
  } }));
}
function pd(e2) {
  const t = (n) => {
    e2.exposed = n || {};
  };
  return { get attrs() {
    return hd(e2);
  }, slots: e2.slots, emit: e2.emit, expose: t };
}
function Hs(e2) {
  if (e2.exposed) return e2.exposeProxy || (e2.exposeProxy = new Proxy(ec(Qa(e2.exposed)), { get(t, n) {
    if (n in t) return t[n];
    if (n in Wn) return Wn[n](e2);
  }, has(t, n) {
    return n in t || n in Wn;
  } }));
}
function gd(e2, t = true) {
  return ee(e2) ? e2.displayName || e2.name : e2.name || t && e2.__name;
}
function md(e2) {
  return ee(e2) && "__vccOpts" in e2;
}
const qe = (e2, t) => lf(e2, t, ir);
function Pc(e2, t, n) {
  const r = arguments.length;
  return r === 2 ? Ee(t) && !Z(t) ? $r(t) ? xe(e2, null, [t]) : xe(e2, t) : xe(e2, null, t) : (r > 3 ? n = Array.prototype.slice.call(arguments, 2) : r === 3 && $r(n) && (n = [n]), xe(e2, t, n));
}
const vd = Symbol.for("v-scx"), _d = () => mt(vd), yd = "3.3.13";
function Ed(e2, t) {
  const n = /* @__PURE__ */ Object.create(null), r = e2.split(",");
  for (let i = 0; i < r.length; i++) n[r[i]] = true;
  return t ? (i) => !!n[i.toLowerCase()] : (i) => !!n[i];
}
const bd = (e2) => e2.charCodeAt(0) === 111 && e2.charCodeAt(1) === 110 && (e2.charCodeAt(2) > 122 || e2.charCodeAt(2) < 97), Sd = (e2) => e2.startsWith("onUpdate:"), Td = Object.assign, Nc = Array.isArray, Mc = (e2) => typeof e2 == "function", Gr = (e2) => typeof e2 == "string", Lc = (e2) => {
  const t = /* @__PURE__ */ Object.create(null);
  return (n) => t[n] || (t[n] = e2(n));
}, Ad = /\B([A-Z])/g, kc = Lc((e2) => e2.replace(Ad, "-$1").toLowerCase()), wd = Lc((e2) => e2.charAt(0).toUpperCase() + e2.slice(1)), Od = "itemscope,allowfullscreen,formnovalidate,ismap,nomodule,novalidate,readonly", Id = Ed(Od);
function Uc(e2) {
  return !!e2 || e2 === "";
}
const Rd = "http://www.w3.org/2000/svg", $t = typeof document != "undefined" ? document : null, Yo = $t && $t.createElement("template"), Cd = { insert: (e2, t, n) => {
  t.insertBefore(e2, n || null);
}, remove: (e2) => {
  const t = e2.parentNode;
  t && t.removeChild(e2);
}, createElement: (e2, t, n, r) => {
  const i = t ? $t.createElementNS(Rd, e2) : $t.createElement(e2, n ? { is: n } : void 0);
  return e2 === "select" && r && r.multiple != null && i.setAttribute("multiple", r.multiple), i;
}, createText: (e2) => $t.createTextNode(e2), createComment: (e2) => $t.createComment(e2), setText: (e2, t) => {
  e2.nodeValue = t;
}, setElementText: (e2, t) => {
  e2.textContent = t;
}, parentNode: (e2) => e2.parentNode, nextSibling: (e2) => e2.nextSibling, querySelector: (e2) => $t.querySelector(e2), setScopeId(e2, t) {
  e2.setAttribute(t, "");
}, insertStaticContent(e2, t, n, r, i, s) {
  const o = n ? n.previousSibling : t.lastChild;
  if (i && (i === s || i.nextSibling)) for (; t.insertBefore(i.cloneNode(true), n), !(i === s || !(i = i.nextSibling)); ) ;
  else {
    Yo.innerHTML = r ? `<svg>${e2}</svg>` : e2;
    const a = Yo.content;
    if (r) {
      const c = a.firstChild;
      for (; c.firstChild; ) a.appendChild(c.firstChild);
      a.removeChild(c);
    }
    t.insertBefore(a, n);
  }
  return [o ? o.nextSibling : t.firstChild, n ? n.previousSibling : t.lastChild];
} }, Dd = Symbol("_vtc");
function Pd(e2, t, n) {
  const r = e2[Dd];
  r && (t = (t ? [t, ...r] : [...r]).join(" ")), t == null ? e2.removeAttribute("class") : n ? e2.setAttribute("class", t) : e2.className = t;
}
const Nd = Symbol("_vod"), Md = Symbol("");
function Ld(e2, t, n) {
  const r = e2.style, i = Gr(n);
  if (n && !i) {
    if (t && !Gr(t)) for (const s in t) n[s] == null && cs(r, s, "");
    for (const s in n) cs(r, s, n[s]);
  } else {
    const s = r.display;
    if (i) {
      if (t !== n) {
        const o = r[Md];
        o && (n += ";" + o), r.cssText = n;
      }
    } else t && e2.removeAttribute("style");
    Nd in e2 && (r.display = s);
  }
}
const qo = /\s*!important$/;
function cs(e2, t, n) {
  if (Nc(n)) n.forEach((r) => cs(e2, t, r));
  else if (n == null && (n = ""), t.startsWith("--")) e2.setProperty(t, n);
  else {
    const r = kd(e2, t);
    qo.test(n) ? e2.setProperty(kc(r), n.replace(qo, ""), "important") : e2[r] = n;
  }
}
const Qo = ["Webkit", "Moz", "ms"], Fi = {};
function kd(e2, t) {
  const n = Fi[t];
  if (n) return n;
  let r = _t(t);
  if (r !== "filter" && r in e2) return Fi[t] = r;
  r = wd(r);
  for (let i = 0; i < Qo.length; i++) {
    const s = Qo[i] + r;
    if (s in e2) return Fi[t] = s;
  }
  return t;
}
const Jo = "http://www.w3.org/1999/xlink";
function Ud(e2, t, n, r, i) {
  if (r && t.startsWith("xlink:")) n == null ? e2.removeAttributeNS(Jo, t.slice(6, t.length)) : e2.setAttributeNS(Jo, t, n);
  else {
    const s = Id(t);
    n == null || s && !Uc(n) ? e2.removeAttribute(t) : e2.setAttribute(t, s ? "" : n);
  }
}
function Fd(e2, t, n, r, i, s, o) {
  if (t === "innerHTML" || t === "textContent") {
    r && o(r, i, s), e2[t] = n == null ? "" : n;
    return;
  }
  const a = e2.tagName;
  if (t === "value" && a !== "PROGRESS" && !a.includes("-")) {
    e2._value = n;
    const u = a === "OPTION" ? e2.getAttribute("value") : e2.value, l = n == null ? "" : n;
    u !== l && (e2.value = l), n == null && e2.removeAttribute(t);
    return;
  }
  let c = false;
  if (n === "" || n == null) {
    const u = typeof e2[t];
    u === "boolean" ? n = Uc(n) : n == null && u === "string" ? (n = "", c = true) : u === "number" && (n = 0, c = true);
  }
  try {
    e2[t] = n;
  } catch {
  }
  c && e2.removeAttribute(t);
}
function Bd(e2, t, n, r) {
  e2.addEventListener(t, n, r);
}
function xd(e2, t, n, r) {
  e2.removeEventListener(t, n, r);
}
const Xo = Symbol("_vei");
function Kd(e2, t, n, r, i = null) {
  const s = e2[Xo] || (e2[Xo] = {}), o = s[t];
  if (r && o) o.value = r;
  else {
    const [a, c] = jd(t);
    if (r) {
      const u = s[t] = $d(r, i);
      Bd(e2, a, u, c);
    } else o && (xd(e2, a, o, c), s[t] = void 0);
  }
}
const Zo = /(?:Once|Passive|Capture)$/;
function jd(e2) {
  let t;
  if (Zo.test(e2)) {
    t = {};
    let r;
    for (; r = e2.match(Zo); ) e2 = e2.slice(0, e2.length - r[0].length), t[r[0].toLowerCase()] = true;
  }
  return [e2[2] === ":" ? e2.slice(3) : kc(e2.slice(2)), t];
}
let Bi = 0;
const Vd = Promise.resolve(), Hd = () => Bi || (Vd.then(() => Bi = 0), Bi = Date.now());
function $d(e2, t) {
  const n = (r) => {
    if (!r._vts) r._vts = Date.now();
    else if (r._vts <= n.attached) return;
    st(Gd(r, n.value), t, 5, [r]);
  };
  return n.value = e2, n.attached = Hd(), n;
}
function Gd(e2, t) {
  if (Nc(t)) {
    const n = e2.stopImmediatePropagation;
    return e2.stopImmediatePropagation = () => {
      n.call(e2), e2._stopped = true;
    }, t.map((r) => (i) => !i._stopped && r && r(i));
  } else return t;
}
const ea = (e2) => e2.charCodeAt(0) === 111 && e2.charCodeAt(1) === 110 && e2.charCodeAt(2) > 96 && e2.charCodeAt(2) < 123, zd = (e2, t, n, r, i = false, s, o, a, c) => {
  t === "class" ? Pd(e2, r, i) : t === "style" ? Ld(e2, n, r) : bd(t) ? Sd(t) || Kd(e2, t, n, r, o) : (t[0] === "." ? (t = t.slice(1), true) : t[0] === "^" ? (t = t.slice(1), false) : Wd(e2, t, r, i)) ? Fd(e2, t, r, s, o, a, c) : (t === "true-value" ? e2._trueValue = r : t === "false-value" && (e2._falseValue = r), Ud(e2, t, r, i));
};
function Wd(e2, t, n, r) {
  if (r) return !!(t === "innerHTML" || t === "textContent" || t in e2 && ea(t) && Mc(n));
  if (t === "spellcheck" || t === "draggable" || t === "translate" || t === "form" || t === "list" && e2.tagName === "INPUT" || t === "type" && e2.tagName === "TEXTAREA") return false;
  if (t === "width" || t === "height") {
    const i = e2.tagName;
    if (i === "IMG" || i === "VIDEO" || i === "CANVAS" || i === "SOURCE") return false;
  }
  return ea(t) && Gr(n) ? false : t in e2;
}
const Yd = ["ctrl", "shift", "alt", "meta"], qd = { stop: (e2) => e2.stopPropagation(), prevent: (e2) => e2.preventDefault(), self: (e2) => e2.target !== e2.currentTarget, ctrl: (e2) => !e2.ctrlKey, shift: (e2) => !e2.shiftKey, alt: (e2) => !e2.altKey, meta: (e2) => !e2.metaKey, left: (e2) => "button" in e2 && e2.button !== 0, middle: (e2) => "button" in e2 && e2.button !== 1, right: (e2) => "button" in e2 && e2.button !== 2, exact: (e2, t) => Yd.some((n) => e2[`${n}Key`] && !t.includes(n)) }, f_ = (e2, t) => {
  const n = e2._withMods || (e2._withMods = {}), r = t.join(".");
  return n[r] || (n[r] = (i, ...s) => {
    for (let o = 0; o < t.length; o++) {
      const a = qd[t[o]];
      if (a && a(i, t)) return;
    }
    return e2(i, ...s);
  });
}, Qd = Td({ patchProp: zd }, Cd);
let ta;
function Jd() {
  return ta || (ta = Xf(Qd));
}
const d_ = (...e2) => {
  const t = Jd().createApp(...e2), { mount: n } = t;
  return t.mount = (r) => {
    const i = Xd(r);
    if (!i) return;
    const s = t._component;
    !Mc(s) && !s.render && !s.template && (s.template = i.innerHTML), i.innerHTML = "";
    const o = n(i, false, i instanceof SVGElement);
    return i instanceof Element && (i.removeAttribute("v-cloak"), i.setAttribute("data-v-app", "")), o;
  }, t;
};
function Xd(e2) {
  return Gr(e2) ? document.querySelector(e2) : e2;
}
var Me = typeof globalThis != "undefined" && globalThis || typeof self != "undefined" && self || typeof Me != "undefined" && Me, Ve = { searchParams: "URLSearchParams" in Me, iterable: "Symbol" in Me && "iterator" in Symbol, blob: "FileReader" in Me && "Blob" in Me && (function() {
  try {
    return new Blob(), true;
  } catch {
    return false;
  }
})(), formData: "FormData" in Me, arrayBuffer: "ArrayBuffer" in Me };
function Zd(e2) {
  return e2 && DataView.prototype.isPrototypeOf(e2);
}
if (Ve.arrayBuffer) var eh = ["[object Int8Array]", "[object Uint8Array]", "[object Uint8ClampedArray]", "[object Int16Array]", "[object Uint16Array]", "[object Int32Array]", "[object Uint32Array]", "[object Float32Array]", "[object Float64Array]"], th = ArrayBuffer.isView || function(e2) {
  return e2 && eh.indexOf(Object.prototype.toString.call(e2)) > -1;
};
function hr(e2) {
  if (typeof e2 != "string" && (e2 = String(e2)), /[^a-z0-9\-#$%&'*+.^_`|~!]/i.test(e2) || e2 === "") throw new TypeError('Invalid character in header field name: "' + e2 + '"');
  return e2.toLowerCase();
}
function $s(e2) {
  return typeof e2 != "string" && (e2 = String(e2)), e2;
}
function Gs(e2) {
  var t = { next: function() {
    var n = e2.shift();
    return { done: n === void 0, value: n };
  } };
  return Ve.iterable && (t[Symbol.iterator] = function() {
    return t;
  }), t;
}
function Re(e2) {
  this.map = {}, e2 instanceof Re ? e2.forEach(function(t, n) {
    this.append(n, t);
  }, this) : Array.isArray(e2) ? e2.forEach(function(t) {
    this.append(t[0], t[1]);
  }, this) : e2 && Object.getOwnPropertyNames(e2).forEach(function(t) {
    this.append(t, e2[t]);
  }, this);
}
Re.prototype.append = function(e2, t) {
  e2 = hr(e2), t = $s(t);
  var n = this.map[e2];
  this.map[e2] = n ? n + ", " + t : t;
};
Re.prototype.delete = function(e2) {
  delete this.map[hr(e2)];
};
Re.prototype.get = function(e2) {
  return e2 = hr(e2), this.has(e2) ? this.map[e2] : null;
};
Re.prototype.has = function(e2) {
  return this.map.hasOwnProperty(hr(e2));
};
Re.prototype.set = function(e2, t) {
  this.map[hr(e2)] = $s(t);
};
Re.prototype.forEach = function(e2, t) {
  for (var n in this.map) this.map.hasOwnProperty(n) && e2.call(t, this.map[n], n, this);
};
Re.prototype.keys = function() {
  var e2 = [];
  return this.forEach(function(t, n) {
    e2.push(n);
  }), Gs(e2);
};
Re.prototype.values = function() {
  var e2 = [];
  return this.forEach(function(t) {
    e2.push(t);
  }), Gs(e2);
};
Re.prototype.entries = function() {
  var e2 = [];
  return this.forEach(function(t, n) {
    e2.push([n, t]);
  }), Gs(e2);
};
Ve.iterable && (Re.prototype[Symbol.iterator] = Re.prototype.entries);
function xi(e2) {
  if (e2.bodyUsed) return Promise.reject(new TypeError("Already read"));
  e2.bodyUsed = true;
}
function Fc(e2) {
  return new Promise(function(t, n) {
    e2.onload = function() {
      t(e2.result);
    }, e2.onerror = function() {
      n(e2.error);
    };
  });
}
function nh(e2) {
  var t = new FileReader(), n = Fc(t);
  return t.readAsArrayBuffer(e2), n;
}
function rh(e2) {
  var t = new FileReader(), n = Fc(t);
  return t.readAsText(e2), n;
}
function ih(e2) {
  for (var t = new Uint8Array(e2), n = new Array(t.length), r = 0; r < t.length; r++) n[r] = String.fromCharCode(t[r]);
  return n.join("");
}
function na(e2) {
  if (e2.slice) return e2.slice(0);
  var t = new Uint8Array(e2.byteLength);
  return t.set(new Uint8Array(e2)), t.buffer;
}
function Bc() {
  return this.bodyUsed = false, this._initBody = function(e2) {
    this.bodyUsed = this.bodyUsed, this._bodyInit = e2, e2 ? typeof e2 == "string" ? this._bodyText = e2 : Ve.blob && Blob.prototype.isPrototypeOf(e2) ? this._bodyBlob = e2 : Ve.formData && FormData.prototype.isPrototypeOf(e2) ? this._bodyFormData = e2 : Ve.searchParams && URLSearchParams.prototype.isPrototypeOf(e2) ? this._bodyText = e2.toString() : Ve.arrayBuffer && Ve.blob && Zd(e2) ? (this._bodyArrayBuffer = na(e2.buffer), this._bodyInit = new Blob([this._bodyArrayBuffer])) : Ve.arrayBuffer && (ArrayBuffer.prototype.isPrototypeOf(e2) || th(e2)) ? this._bodyArrayBuffer = na(e2) : this._bodyText = e2 = Object.prototype.toString.call(e2) : this._bodyText = "", this.headers.get("content-type") || (typeof e2 == "string" ? this.headers.set("content-type", "text/plain;charset=UTF-8") : this._bodyBlob && this._bodyBlob.type ? this.headers.set("content-type", this._bodyBlob.type) : Ve.searchParams && URLSearchParams.prototype.isPrototypeOf(e2) && this.headers.set("content-type", "application/x-www-form-urlencoded;charset=UTF-8"));
  }, Ve.blob && (this.blob = function() {
    var e2 = xi(this);
    if (e2) return e2;
    if (this._bodyBlob) return Promise.resolve(this._bodyBlob);
    if (this._bodyArrayBuffer) return Promise.resolve(new Blob([this._bodyArrayBuffer]));
    if (this._bodyFormData) throw new Error("could not read FormData body as blob");
    return Promise.resolve(new Blob([this._bodyText]));
  }, this.arrayBuffer = function() {
    if (this._bodyArrayBuffer) {
      var e2 = xi(this);
      return e2 || (ArrayBuffer.isView(this._bodyArrayBuffer) ? Promise.resolve(this._bodyArrayBuffer.buffer.slice(this._bodyArrayBuffer.byteOffset, this._bodyArrayBuffer.byteOffset + this._bodyArrayBuffer.byteLength)) : Promise.resolve(this._bodyArrayBuffer));
    } else return this.blob().then(nh);
  }), this.text = function() {
    var e2 = xi(this);
    if (e2) return e2;
    if (this._bodyBlob) return rh(this._bodyBlob);
    if (this._bodyArrayBuffer) return Promise.resolve(ih(this._bodyArrayBuffer));
    if (this._bodyFormData) throw new Error("could not read FormData body as text");
    return Promise.resolve(this._bodyText);
  }, Ve.formData && (this.formData = function() {
    return this.text().then(ah);
  }), this.json = function() {
    return this.text().then(JSON.parse);
  }, this;
}
var sh = ["DELETE", "GET", "HEAD", "OPTIONS", "POST", "PUT"];
function oh(e2) {
  var t = e2.toUpperCase();
  return sh.indexOf(t) > -1 ? t : e2;
}
function qt(e2, t) {
  if (!(this instanceof qt)) throw new TypeError('Please use the "new" operator, this DOM object constructor cannot be called as a function.');
  t = t || {};
  var n = t.body;
  if (e2 instanceof qt) {
    if (e2.bodyUsed) throw new TypeError("Already read");
    this.url = e2.url, this.credentials = e2.credentials, t.headers || (this.headers = new Re(e2.headers)), this.method = e2.method, this.mode = e2.mode, this.signal = e2.signal, !n && e2._bodyInit != null && (n = e2._bodyInit, e2.bodyUsed = true);
  } else this.url = String(e2);
  if (this.credentials = t.credentials || this.credentials || "same-origin", (t.headers || !this.headers) && (this.headers = new Re(t.headers)), this.method = oh(t.method || this.method || "GET"), this.mode = t.mode || this.mode || null, this.signal = t.signal || this.signal, this.referrer = null, (this.method === "GET" || this.method === "HEAD") && n) throw new TypeError("Body not allowed for GET or HEAD requests");
  if (this._initBody(n), (this.method === "GET" || this.method === "HEAD") && (t.cache === "no-store" || t.cache === "no-cache")) {
    var r = /([?&])_=[^&]*/;
    if (r.test(this.url)) this.url = this.url.replace(r, "$1_=" + (/* @__PURE__ */ new Date()).getTime());
    else {
      var i = /\?/;
      this.url += (i.test(this.url) ? "&" : "?") + "_=" + (/* @__PURE__ */ new Date()).getTime();
    }
  }
}
qt.prototype.clone = function() {
  return new qt(this, { body: this._bodyInit });
};
function ah(e2) {
  var t = new FormData();
  return e2.trim().split("&").forEach(function(n) {
    if (n) {
      var r = n.split("="), i = r.shift().replace(/\+/g, " "), s = r.join("=").replace(/\+/g, " ");
      t.append(decodeURIComponent(i), decodeURIComponent(s));
    }
  }), t;
}
function ch(e2) {
  var t = new Re(), n = e2.replace(/\r?\n[\t ]+/g, " ");
  return n.split("\r").map(function(r) {
    return r.indexOf(`
`) === 0 ? r.substr(1, r.length) : r;
  }).forEach(function(r) {
    var i = r.split(":"), s = i.shift().trim();
    if (s) {
      var o = i.join(":").trim();
      t.append(s, o);
    }
  }), t;
}
Bc.call(qt.prototype);
function yt(e2, t) {
  if (!(this instanceof yt)) throw new TypeError('Please use the "new" operator, this DOM object constructor cannot be called as a function.');
  t || (t = {}), this.type = "default", this.status = t.status === void 0 ? 200 : t.status, this.ok = this.status >= 200 && this.status < 300, this.statusText = t.statusText === void 0 ? "" : "" + t.statusText, this.headers = new Re(t.headers), this.url = t.url || "", this._initBody(e2);
}
Bc.call(yt.prototype);
yt.prototype.clone = function() {
  return new yt(this._bodyInit, { status: this.status, statusText: this.statusText, headers: new Re(this.headers), url: this.url });
};
yt.error = function() {
  var e2 = new yt(null, { status: 0, statusText: "" });
  return e2.type = "error", e2;
};
var uh = [301, 302, 303, 307, 308];
yt.redirect = function(e2, t) {
  if (uh.indexOf(t) === -1) throw new RangeError("Invalid status code");
  return new yt(null, { status: t, headers: { location: e2 } });
};
var Gt = Me.DOMException;
try {
  new Gt();
} catch {
  Gt = function(t, n) {
    this.message = t, this.name = n;
    var r = Error(t);
    this.stack = r.stack;
  }, Gt.prototype = Object.create(Error.prototype), Gt.prototype.constructor = Gt;
}
function xc(e2, t) {
  return new Promise(function(n, r) {
    var i = new qt(e2, t);
    if (i.signal && i.signal.aborted) return r(new Gt("Aborted", "AbortError"));
    var s = new XMLHttpRequest();
    function o() {
      s.abort();
    }
    s.onload = function() {
      var c = { status: s.status, statusText: s.statusText, headers: ch(s.getAllResponseHeaders() || "") };
      c.url = "responseURL" in s ? s.responseURL : c.headers.get("X-Request-URL");
      var u = "response" in s ? s.response : s.responseText;
      setTimeout(function() {
        n(new yt(u, c));
      }, 0);
    }, s.onerror = function() {
      setTimeout(function() {
        r(new TypeError("Network request failed"));
      }, 0);
    }, s.ontimeout = function() {
      setTimeout(function() {
        r(new TypeError("Network request failed"));
      }, 0);
    }, s.onabort = function() {
      setTimeout(function() {
        r(new Gt("Aborted", "AbortError"));
      }, 0);
    };
    function a(c) {
      try {
        return c === "" && Me.location.href ? Me.location.href : c;
      } catch {
        return c;
      }
    }
    s.open(i.method, a(i.url), true), i.credentials === "include" ? s.withCredentials = true : i.credentials === "omit" && (s.withCredentials = false), "responseType" in s && (Ve.blob ? s.responseType = "blob" : Ve.arrayBuffer && i.headers.get("Content-Type") && i.headers.get("Content-Type").indexOf("application/octet-stream") !== -1 && (s.responseType = "arraybuffer")), t && typeof t.headers == "object" && !(t.headers instanceof Re) ? Object.getOwnPropertyNames(t.headers).forEach(function(c) {
      s.setRequestHeader(c, $s(t.headers[c]));
    }) : i.headers.forEach(function(c, u) {
      s.setRequestHeader(u, c);
    }), i.signal && (i.signal.addEventListener("abort", o), s.onreadystatechange = function() {
      s.readyState === 4 && i.signal.removeEventListener("abort", o);
    }), s.send(typeof i._bodyInit == "undefined" ? null : i._bodyInit);
  });
}
xc.polyfill = true;
Me.fetch || (Me.fetch = xc, Me.Headers = Re, Me.Request = qt, Me.Response = yt);
var h_ = ["ar-dz", "ar-bh", "ar-eg", "ar-iq", "ar-jo", "ar-kw", "ar-lb", "ar-ly", "ar-ma", "ar-om", "ar-qa", "ar-sa", "ar-sd", "ar-sy", "ar-tn", "ar-ae", "ar-ye", "bn-bd", "he-il", "iw-il", "ca-es", "cs-cz", "da-dk", "de-ch", "de-de", "el-gr", "en-au", "en-ca", "en-gb", "en-us", "es-419", "es-es", "es-mx", "es-xl", "et-ee", "fi-fi", "fr-ca", "fr-fr", "gu-in", "hi-in", "hr-hr", "hu-hu", "id-id", "is-is", "it-it", "iw-il", "ja-jp", "kn-in", "ko-kr", "lt-lt", "lv-lv", "ml-in", "mr-in", "ms-my", "nl-nl", "no-no", "no-nb", "nb-no", "or-in", "pa-in", "pl-pl", "pt-br", "pt-pt", "ro-ro", "ru-ru", "sk-sk", "sl-si", "sv-se", "ta-in", "te-in", "th-th", "tr-tr", "uk-ua", "ur-pk", "vi-vi", "vi-vn", "zh-cn", "zh-hans", "zh-hans-cn", "zh-hant", "zh-hant-hk", "zh-hant-tw", "zh-hk", "zh-tw", "ar", "bn", "ca", "cs", "da", "de", "el", "en", "es", "fi", "fr", "gu", "he", "hi", "hr", "hu", "id", "is", "it", "ja", "kn", "ko", "lt", "lv", "ml", "mr", "ms", "nb", "nl", "no", "or", "pa", "pl", "pt", "ro", "ru", "sk", "sl", "sv", "ta", "te", "th", "tr", "uk", "ur", "vi", "zh"];
const lh = Object.prototype.toString;
function fh(e2, t) {
  return lh.call(e2) === `[object ${t}]`;
}
function Kc(e2) {
  return fh(e2, "Object");
}
function jc(e2) {
  return Boolean(e2 && e2.then && typeof e2.then == "function");
}
function Ir(e2) {
  return e2 && e2.Math == Math ? e2 : void 0;
}
const vt = typeof globalThis == "object" && Ir(globalThis) || typeof window == "object" && Ir(window) || typeof self == "object" && Ir(self) || typeof global == "object" && Ir(global) || /* @__PURE__ */ (function() {
  return this;
})() || {};
function dh() {
  return vt;
}
function zs(e2, t, n) {
  const r = n || vt, i = r.__SENTRY__ = r.__SENTRY__ || {};
  return i[e2] || (i[e2] = t());
}
const hh = "Sentry Logger ", us = ["debug", "info", "warn", "error", "log", "assert", "trace"];
function Vc(e2) {
  if (!("console" in vt)) return e2();
  const t = vt.console, n = {};
  us.forEach((r) => {
    const i = t[r] && t[r].__sentry_original__;
    r in t && i && (n[r] = t[r], t[r] = i);
  });
  try {
    return e2();
  } finally {
    Object.keys(n).forEach((r) => {
      t[r] = n[r];
    });
  }
}
function ra() {
  let e2 = false;
  const t = { enable: () => {
    e2 = true;
  }, disable: () => {
    e2 = false;
  } };
  return typeof __SENTRY_DEBUG__ == "undefined" || __SENTRY_DEBUG__ ? us.forEach((n) => {
    t[n] = (...r) => {
      e2 && Vc(() => {
        vt.console[n](`${hh}[${n}]:`, ...r);
      });
    };
  }) : us.forEach((n) => {
    t[n] = () => {
    };
  }), t;
}
let sr;
typeof __SENTRY_DEBUG__ == "undefined" || __SENTRY_DEBUG__ ? sr = zs("logger", ra) : sr = ra();
function ph(e2) {
  return ls(e2, /* @__PURE__ */ new Map());
}
function ls(e2, t) {
  if (Kc(e2)) {
    const n = t.get(e2);
    if (n !== void 0) return n;
    const r = {};
    t.set(e2, r);
    for (const i of Object.keys(e2)) typeof e2[i] != "undefined" && (r[i] = ls(e2[i], t));
    return r;
  }
  if (Array.isArray(e2)) {
    const n = t.get(e2);
    if (n !== void 0) return n;
    const r = [];
    return t.set(e2, r), e2.forEach((i) => {
      r.push(ls(i, t));
    }), r;
  }
  return e2;
}
function qn() {
  const e2 = vt, t = e2.crypto || e2.msCrypto;
  if (t && t.randomUUID) return t.randomUUID().replace(/-/g, "");
  const n = t && t.getRandomValues ? () => t.getRandomValues(new Uint8Array(1))[0] : () => Math.random() * 16;
  return ("10000000100040008000" + 1e11).replace(/[018]/g, (r) => (r ^ (n() & 15) >> r / 4).toString(16));
}
function gh(e2) {
  return Array.isArray(e2) ? e2 : [e2];
}
function mh() {
  return typeof __SENTRY_BROWSER_BUNDLE__ != "undefined" && !!__SENTRY_BROWSER_BUNDLE__;
}
function vh() {
  return !mh() && Object.prototype.toString.call(typeof process != "undefined" ? process : 0) === "[object process]";
}
function _h(e2, t) {
  return e2.require(t);
}
var bt;
(function(e2) {
  e2[e2.PENDING = 0] = "PENDING";
  const n = 1;
  e2[e2.RESOLVED = n] = "RESOLVED";
  const r = 2;
  e2[e2.REJECTED = r] = "REJECTED";
})(bt || (bt = {}));
class ft {
  __init() {
    this._state = bt.PENDING;
  }
  __init2() {
    this._handlers = [];
  }
  constructor(t) {
    ft.prototype.__init.call(this), ft.prototype.__init2.call(this), ft.prototype.__init3.call(this), ft.prototype.__init4.call(this), ft.prototype.__init5.call(this), ft.prototype.__init6.call(this);
    try {
      t(this._resolve, this._reject);
    } catch (n) {
      this._reject(n);
    }
  }
  then(t, n) {
    return new ft((r, i) => {
      this._handlers.push([false, (s) => {
        if (!t) r(s);
        else try {
          r(t(s));
        } catch (o) {
          i(o);
        }
      }, (s) => {
        if (!n) i(s);
        else try {
          r(n(s));
        } catch (o) {
          i(o);
        }
      }]), this._executeHandlers();
    });
  }
  catch(t) {
    return this.then((n) => n, t);
  }
  finally(t) {
    return new ft((n, r) => {
      let i, s;
      return this.then((o) => {
        s = false, i = o, t && t();
      }, (o) => {
        s = true, i = o, t && t();
      }).then(() => {
        if (s) {
          r(i);
          return;
        }
        n(i);
      });
    });
  }
  __init3() {
    this._resolve = (t) => {
      this._setResult(bt.RESOLVED, t);
    };
  }
  __init4() {
    this._reject = (t) => {
      this._setResult(bt.REJECTED, t);
    };
  }
  __init5() {
    this._setResult = (t, n) => {
      if (this._state === bt.PENDING) {
        if (jc(n)) {
          n.then(this._resolve, this._reject);
          return;
        }
        this._state = t, this._value = n, this._executeHandlers();
      }
    };
  }
  __init6() {
    this._executeHandlers = () => {
      if (this._state === bt.PENDING) return;
      const t = this._handlers.slice();
      this._handlers = [], t.forEach((n) => {
        n[0] || (this._state === bt.RESOLVED && n[1](this._value), this._state === bt.REJECTED && n[2](this._value), n[0] = true);
      });
    };
  }
}
const Hc = dh(), fs = { nowSeconds: () => Date.now() / 1e3 };
function yh() {
  const { performance: e2 } = Hc;
  if (!e2 || !e2.now) return;
  const t = Date.now() - e2.now();
  return { now: () => e2.now(), timeOrigin: t };
}
function Eh() {
  try {
    return _h(module, "perf_hooks").performance;
  } catch {
    return;
  }
}
const Ki = vh() ? Eh() : yh(), ia = Ki === void 0 ? fs : { nowSeconds: () => (Ki.timeOrigin + Ki.now()) / 1e3 }, $c = fs.nowSeconds.bind(fs), Gc = ia.nowSeconds.bind(ia);
(() => {
  const { performance: e2 } = Hc;
  if (!e2 || !e2.now) return;
  const t = 3600 * 1e3, n = e2.now(), r = Date.now(), i = e2.timeOrigin ? Math.abs(e2.timeOrigin + n - r) : t, s = i < t, o = e2.timing && e2.timing.navigationStart, c = typeof o == "number" ? Math.abs(o + n - r) : t, u = c < t;
  return s || u ? i <= c ? e2.timeOrigin : o : r;
})();
const bh = "production";
function Sh(e2) {
  const t = Gc(), n = { sid: qn(), init: true, timestamp: t, started: t, duration: 0, status: "ok", errors: 0, ignoreDuration: false, toJSON: () => Ah(n) };
  return e2 && ai(n, e2), n;
}
function ai(e2, t = {}) {
  if (t.user && (!e2.ipAddress && t.user.ip_address && (e2.ipAddress = t.user.ip_address), !e2.did && !t.did && (e2.did = t.user.id || t.user.email || t.user.username)), e2.timestamp = t.timestamp || Gc(), t.ignoreDuration && (e2.ignoreDuration = t.ignoreDuration), t.sid && (e2.sid = t.sid.length === 32 ? t.sid : qn()), t.init !== void 0 && (e2.init = t.init), !e2.did && t.did && (e2.did = `${t.did}`), typeof t.started == "number" && (e2.started = t.started), e2.ignoreDuration) e2.duration = void 0;
  else if (typeof t.duration == "number") e2.duration = t.duration;
  else {
    const n = e2.timestamp - e2.started;
    e2.duration = n >= 0 ? n : 0;
  }
  t.release && (e2.release = t.release), t.environment && (e2.environment = t.environment), !e2.ipAddress && t.ipAddress && (e2.ipAddress = t.ipAddress), !e2.userAgent && t.userAgent && (e2.userAgent = t.userAgent), typeof t.errors == "number" && (e2.errors = t.errors), t.status && (e2.status = t.status);
}
function Th(e2, t) {
  let n = {};
  t ? n = { status: t } : e2.status === "ok" && (n = { status: "exited" }), ai(e2, n);
}
function Ah(e2) {
  return ph({ sid: `${e2.sid}`, init: e2.init, started: new Date(e2.started * 1e3).toISOString(), timestamp: new Date(e2.timestamp * 1e3).toISOString(), status: e2.status, errors: e2.errors, did: typeof e2.did == "number" || typeof e2.did == "string" ? `${e2.did}` : void 0, duration: e2.duration, attrs: { release: e2.release, environment: e2.environment, ip_address: e2.ipAddress, user_agent: e2.userAgent } });
}
const wh = 100;
class mn {
  constructor() {
    this._notifyingListeners = false, this._scopeListeners = [], this._eventProcessors = [], this._breadcrumbs = [], this._attachments = [], this._user = {}, this._tags = {}, this._extra = {}, this._contexts = {}, this._sdkProcessingMetadata = {};
  }
  static clone(t) {
    const n = new mn();
    return t && (n._breadcrumbs = [...t._breadcrumbs], n._tags = Q({}, t._tags), n._extra = Q({}, t._extra), n._contexts = Q({}, t._contexts), n._user = t._user, n._level = t._level, n._span = t._span, n._session = t._session, n._transactionName = t._transactionName, n._fingerprint = t._fingerprint, n._eventProcessors = [...t._eventProcessors], n._requestSession = t._requestSession, n._attachments = [...t._attachments], n._sdkProcessingMetadata = Q({}, t._sdkProcessingMetadata)), n;
  }
  addScopeListener(t) {
    this._scopeListeners.push(t);
  }
  addEventProcessor(t) {
    return this._eventProcessors.push(t), this;
  }
  setUser(t) {
    return this._user = t || {}, this._session && ai(this._session, { user: t }), this._notifyScopeListeners(), this;
  }
  getUser() {
    return this._user;
  }
  getRequestSession() {
    return this._requestSession;
  }
  setRequestSession(t) {
    return this._requestSession = t, this;
  }
  setTags(t) {
    return this._tags = Q(Q({}, this._tags), t), this._notifyScopeListeners(), this;
  }
  setTag(t, n) {
    return this._tags = rn(Q({}, this._tags), { [t]: n }), this._notifyScopeListeners(), this;
  }
  setExtras(t) {
    return this._extra = Q(Q({}, this._extra), t), this._notifyScopeListeners(), this;
  }
  setExtra(t, n) {
    return this._extra = rn(Q({}, this._extra), { [t]: n }), this._notifyScopeListeners(), this;
  }
  setFingerprint(t) {
    return this._fingerprint = t, this._notifyScopeListeners(), this;
  }
  setLevel(t) {
    return this._level = t, this._notifyScopeListeners(), this;
  }
  setTransactionName(t) {
    return this._transactionName = t, this._notifyScopeListeners(), this;
  }
  setContext(t, n) {
    return n === null ? delete this._contexts[t] : this._contexts[t] = n, this._notifyScopeListeners(), this;
  }
  setSpan(t) {
    return this._span = t, this._notifyScopeListeners(), this;
  }
  getSpan() {
    return this._span;
  }
  getTransaction() {
    const t = this.getSpan();
    return t && t.transaction;
  }
  setSession(t) {
    return t ? this._session = t : delete this._session, this._notifyScopeListeners(), this;
  }
  getSession() {
    return this._session;
  }
  update(t) {
    if (!t) return this;
    if (typeof t == "function") {
      const n = t(this);
      return n instanceof mn ? n : this;
    }
    return t instanceof mn ? (this._tags = Q(Q({}, this._tags), t._tags), this._extra = Q(Q({}, this._extra), t._extra), this._contexts = Q(Q({}, this._contexts), t._contexts), t._user && Object.keys(t._user).length && (this._user = t._user), t._level && (this._level = t._level), t._fingerprint && (this._fingerprint = t._fingerprint), t._requestSession && (this._requestSession = t._requestSession)) : Kc(t) && (t = t, this._tags = Q(Q({}, this._tags), t.tags), this._extra = Q(Q({}, this._extra), t.extra), this._contexts = Q(Q({}, this._contexts), t.contexts), t.user && (this._user = t.user), t.level && (this._level = t.level), t.fingerprint && (this._fingerprint = t.fingerprint), t.requestSession && (this._requestSession = t.requestSession)), this;
  }
  clear() {
    return this._breadcrumbs = [], this._tags = {}, this._extra = {}, this._user = {}, this._contexts = {}, this._level = void 0, this._transactionName = void 0, this._fingerprint = void 0, this._requestSession = void 0, this._span = void 0, this._session = void 0, this._notifyScopeListeners(), this._attachments = [], this;
  }
  addBreadcrumb(t, n) {
    const r = typeof n == "number" ? n : wh;
    if (r <= 0) return this;
    const i = Q({ timestamp: $c() }, t);
    return this._breadcrumbs = [...this._breadcrumbs, i].slice(-r), this._notifyScopeListeners(), this;
  }
  getLastBreadcrumb() {
    return this._breadcrumbs[this._breadcrumbs.length - 1];
  }
  clearBreadcrumbs() {
    return this._breadcrumbs = [], this._notifyScopeListeners(), this;
  }
  addAttachment(t) {
    return this._attachments.push(t), this;
  }
  getAttachments() {
    return this._attachments;
  }
  clearAttachments() {
    return this._attachments = [], this;
  }
  applyToEvent(t, n = {}) {
    if (this._extra && Object.keys(this._extra).length && (t.extra = Q(Q({}, this._extra), t.extra)), this._tags && Object.keys(this._tags).length && (t.tags = Q(Q({}, this._tags), t.tags)), this._user && Object.keys(this._user).length && (t.user = Q(Q({}, this._user), t.user)), this._contexts && Object.keys(this._contexts).length && (t.contexts = Q(Q({}, this._contexts), t.contexts)), this._level && (t.level = this._level), this._transactionName && (t.transaction = this._transactionName), this._span) {
      t.contexts = Q({ trace: this._span.getTraceContext() }, t.contexts);
      const r = this._span.transaction;
      if (r) {
        t.sdkProcessingMetadata = Q({ dynamicSamplingContext: r.getDynamicSamplingContext() }, t.sdkProcessingMetadata);
        const i = r.name;
        i && (t.tags = Q({ transaction: i }, t.tags));
      }
    }
    return this._applyFingerprint(t), t.breadcrumbs = [...t.breadcrumbs || [], ...this._breadcrumbs], t.breadcrumbs = t.breadcrumbs.length > 0 ? t.breadcrumbs : void 0, t.sdkProcessingMetadata = Q(Q({}, t.sdkProcessingMetadata), this._sdkProcessingMetadata), this._notifyEventProcessors([...Oh(), ...this._eventProcessors], t, n);
  }
  setSDKProcessingMetadata(t) {
    return this._sdkProcessingMetadata = Q(Q({}, this._sdkProcessingMetadata), t), this;
  }
  _notifyEventProcessors(t, n, r, i = 0) {
    return new ft((s, o) => {
      const a = t[i];
      if (n === null || typeof a != "function") s(n);
      else {
        const c = a(Q({}, n), r);
        (typeof __SENTRY_DEBUG__ == "undefined" || __SENTRY_DEBUG__) && a.id && c === null && sr.log(`Event processor "${a.id}" dropped event`), jc(c) ? c.then((u) => this._notifyEventProcessors(t, u, r, i + 1).then(s)).then(null, o) : this._notifyEventProcessors(t, c, r, i + 1).then(s).then(null, o);
      }
    });
  }
  _notifyScopeListeners() {
    this._notifyingListeners || (this._notifyingListeners = true, this._scopeListeners.forEach((t) => {
      t(this);
    }), this._notifyingListeners = false);
  }
  _applyFingerprint(t) {
    t.fingerprint = t.fingerprint ? gh(t.fingerprint) : [], this._fingerprint && (t.fingerprint = t.fingerprint.concat(this._fingerprint)), t.fingerprint && !t.fingerprint.length && delete t.fingerprint;
  }
}
function Oh() {
  return zs("globalEventProcessors", () => []);
}
const zc = 4, Ih = 100;
class Wc {
  constructor(t, n = new mn(), r = zc) {
    this._version = r, this._stack = [{ scope: n }], t && this.bindClient(t);
  }
  isOlderThan(t) {
    return this._version < t;
  }
  bindClient(t) {
    const n = this.getStackTop();
    n.client = t, t && t.setupIntegrations && t.setupIntegrations();
  }
  pushScope() {
    const t = mn.clone(this.getScope());
    return this.getStack().push({ client: this.getClient(), scope: t }), t;
  }
  popScope() {
    return this.getStack().length <= 1 ? false : !!this.getStack().pop();
  }
  withScope(t) {
    const n = this.pushScope();
    try {
      t(n);
    } finally {
      this.popScope();
    }
  }
  getClient() {
    return this.getStackTop().client;
  }
  getScope() {
    return this.getStackTop().scope;
  }
  getStack() {
    return this._stack;
  }
  getStackTop() {
    return this._stack[this._stack.length - 1];
  }
  captureException(t, n) {
    const r = this._lastEventId = n && n.event_id ? n.event_id : qn(), i = new Error("Sentry syntheticException");
    return this._withClient((s, o) => {
      s.captureException(t, rn(Q({ originalException: t, syntheticException: i }, n), { event_id: r }), o);
    }), r;
  }
  captureMessage(t, n, r) {
    const i = this._lastEventId = r && r.event_id ? r.event_id : qn(), s = new Error(t);
    return this._withClient((o, a) => {
      o.captureMessage(t, n, rn(Q({ originalException: t, syntheticException: s }, r), { event_id: i }), a);
    }), i;
  }
  captureEvent(t, n) {
    const r = n && n.event_id ? n.event_id : qn();
    return t.type || (this._lastEventId = r), this._withClient((i, s) => {
      i.captureEvent(t, rn(Q({}, n), { event_id: r }), s);
    }), r;
  }
  lastEventId() {
    return this._lastEventId;
  }
  addBreadcrumb(t, n) {
    const { scope: r, client: i } = this.getStackTop();
    if (!i) return;
    const { beforeBreadcrumb: s = null, maxBreadcrumbs: o = Ih } = i.getOptions && i.getOptions() || {};
    if (o <= 0) return;
    const a = $c(), c = Q({ timestamp: a }, t), u = s ? Vc(() => s(c, n)) : c;
    u !== null && (i.emit && i.emit("beforeAddBreadcrumb", u, n), r.addBreadcrumb(u, o));
  }
  setUser(t) {
    this.getScope().setUser(t);
  }
  setTags(t) {
    this.getScope().setTags(t);
  }
  setExtras(t) {
    this.getScope().setExtras(t);
  }
  setTag(t, n) {
    this.getScope().setTag(t, n);
  }
  setExtra(t, n) {
    this.getScope().setExtra(t, n);
  }
  setContext(t, n) {
    this.getScope().setContext(t, n);
  }
  configureScope(t) {
    const { scope: n, client: r } = this.getStackTop();
    r && t(n);
  }
  run(t) {
    const n = sa(this);
    try {
      t(this);
    } finally {
      sa(n);
    }
  }
  getIntegration(t) {
    const n = this.getClient();
    if (!n) return null;
    try {
      return n.getIntegration(t);
    } catch {
      return (typeof __SENTRY_DEBUG__ == "undefined" || __SENTRY_DEBUG__) && sr.warn(`Cannot retrieve integration ${t.id} from the current Hub`), null;
    }
  }
  startTransaction(t, n) {
    const r = this._callExtensionMethod("startTransaction", t, n);
    return (typeof __SENTRY_DEBUG__ == "undefined" || __SENTRY_DEBUG__) && !r && console.warn(`Tracing extension 'startTransaction' has not been added. Call 'addTracingExtensions' before calling 'init':
Sentry.addTracingExtensions();
Sentry.init({...});
`), r;
  }
  traceHeaders() {
    return this._callExtensionMethod("traceHeaders");
  }
  captureSession(t = false) {
    if (t) return this.endSession();
    this._sendSessionUpdate();
  }
  endSession() {
    const n = this.getStackTop().scope, r = n.getSession();
    r && Th(r), this._sendSessionUpdate(), n.setSession();
  }
  startSession(t) {
    const { scope: n, client: r } = this.getStackTop(), { release: i, environment: s = bh } = r && r.getOptions() || {}, { userAgent: o } = vt.navigator || {}, a = Sh(Q(Q({ release: i, environment: s, user: n.getUser() }, o && { userAgent: o }), t)), c = n.getSession && n.getSession();
    return c && c.status === "ok" && ai(c, { status: "exited" }), this.endSession(), n.setSession(a), a;
  }
  shouldSendDefaultPii() {
    const t = this.getClient(), n = t && t.getOptions();
    return Boolean(n && n.sendDefaultPii);
  }
  _sendSessionUpdate() {
    const { scope: t, client: n } = this.getStackTop(), r = t.getSession();
    r && n && n.captureSession && n.captureSession(r);
  }
  _withClient(t) {
    const { scope: n, client: r } = this.getStackTop();
    r && t(r, n);
  }
  _callExtensionMethod(t, ...n) {
    const i = ci().__SENTRY__;
    if (i && i.extensions && typeof i.extensions[t] == "function") return i.extensions[t].apply(this, n);
    (typeof __SENTRY_DEBUG__ == "undefined" || __SENTRY_DEBUG__) && sr.warn(`Extension method ${t} couldn't be found, doing nothing.`);
  }
}
function ci() {
  return vt.__SENTRY__ = vt.__SENTRY__ || { extensions: {}, hub: void 0 }, vt;
}
function sa(e2) {
  const t = ci(), n = ds(t);
  return Yc(t, e2), n;
}
function Rh() {
  const e2 = ci();
  if (e2.__SENTRY__ && e2.__SENTRY__.acs) {
    const t = e2.__SENTRY__.acs.getCurrentHub();
    if (t) return t;
  }
  return Ch(e2);
}
function Ch(e2 = ci()) {
  return (!Dh(e2) || ds(e2).isOlderThan(zc)) && Yc(e2, new Wc()), ds(e2);
}
function Dh(e2) {
  return !!(e2 && e2.__SENTRY__ && e2.__SENTRY__.hub);
}
function ds(e2) {
  return zs("hub", () => new Wc(), e2);
}
function Yc(e2, t) {
  if (!e2) return false;
  const n = e2.__SENTRY__ = e2.__SENTRY__ || {};
  return n.hub = t, true;
}
function p_(e2, t) {
  return Rh().captureException(e2, { captureContext: t });
}
/*!
* vue-router v4.1.2
* (c) 2022 Eduardo San Martin Morote
* @license MIT
*/
const un = typeof window != "undefined";
function Ph(e2) {
  return e2.__esModule || e2[Symbol.toStringTag] === "Module";
}
const fe = Object.assign;
function ji(e2, t) {
  const n = {};
  for (const r in t) {
    const i = t[r];
    n[r] = ot(i) ? i.map(e2) : e2(i);
  }
  return n;
}
const Qn = () => {
}, ot = Array.isArray, Nh = /\/$/, Mh = (e2) => e2.replace(Nh, "");
function Vi(e2, t, n = "/") {
  let r, i = {}, s = "", o = "";
  const a = t.indexOf("#");
  let c = t.indexOf("?");
  return a < c && a >= 0 && (c = -1), c > -1 && (r = t.slice(0, c), s = t.slice(c + 1, a > -1 ? a : t.length), i = e2(s)), a > -1 && (r = r || t.slice(0, a), o = t.slice(a, t.length)), r = Fh(r != null ? r : t, n), { fullPath: r + (s && "?") + s + o, path: r, query: i, hash: o };
}
function Lh(e2, t) {
  const n = t.query ? e2(t.query) : "";
  return t.path + (n && "?") + n + (t.hash || "");
}
function oa(e2, t) {
  return !t || !e2.toLowerCase().startsWith(t.toLowerCase()) ? e2 : e2.slice(t.length) || "/";
}
function kh(e2, t, n) {
  const r = t.matched.length - 1, i = n.matched.length - 1;
  return r > -1 && r === i && Sn(t.matched[r], n.matched[i]) && qc(t.params, n.params) && e2(t.query) === e2(n.query) && t.hash === n.hash;
}
function Sn(e2, t) {
  return (e2.aliasOf || e2) === (t.aliasOf || t);
}
function qc(e2, t) {
  if (Object.keys(e2).length !== Object.keys(t).length) return false;
  for (const n in e2) if (!Uh(e2[n], t[n])) return false;
  return true;
}
function Uh(e2, t) {
  return ot(e2) ? aa(e2, t) : ot(t) ? aa(t, e2) : e2 === t;
}
function aa(e2, t) {
  return ot(t) ? e2.length === t.length && e2.every((n, r) => n === t[r]) : e2.length === 1 && e2[0] === t;
}
function Fh(e2, t) {
  if (e2.startsWith("/")) return e2;
  if (!e2) return t;
  const n = t.split("/"), r = e2.split("/");
  let i = n.length - 1, s, o;
  for (s = 0; s < r.length; s++) if (o = r[s], o !== ".") if (o === "..") i > 1 && i--;
  else break;
  return n.slice(0, i).join("/") + "/" + r.slice(s - (s === r.length ? 1 : 0)).join("/");
}
var or;
(function(e2) {
  e2.pop = "pop", e2.push = "push";
})(or || (or = {}));
var Jn;
(function(e2) {
  e2.back = "back", e2.forward = "forward", e2.unknown = "";
})(Jn || (Jn = {}));
function Bh(e2) {
  if (!e2) if (un) {
    const t = document.querySelector("base");
    e2 = t && t.getAttribute("href") || "/", e2 = e2.replace(/^\w+:\/\/[^\/]+/, "");
  } else e2 = "/";
  return e2[0] !== "/" && e2[0] !== "#" && (e2 = "/" + e2), Mh(e2);
}
const xh = /^[^#]+#/;
function Kh(e2, t) {
  return e2.replace(xh, "#") + t;
}
function jh(e2, t) {
  const n = document.documentElement.getBoundingClientRect(), r = e2.getBoundingClientRect();
  return { behavior: t.behavior, left: r.left - n.left - (t.left || 0), top: r.top - n.top - (t.top || 0) };
}
const ui = () => ({ left: window.pageXOffset, top: window.pageYOffset });
function Vh(e2) {
  let t;
  if ("el" in e2) {
    const n = e2.el, r = typeof n == "string" && n.startsWith("#"), i = typeof n == "string" ? r ? document.getElementById(n.slice(1)) : document.querySelector(n) : n;
    if (!i) return;
    t = jh(i, e2);
  } else t = e2;
  "scrollBehavior" in document.documentElement.style ? window.scrollTo(t) : window.scrollTo(t.left != null ? t.left : window.pageXOffset, t.top != null ? t.top : window.pageYOffset);
}
function ca(e2, t) {
  return (history.state ? history.state.position - t : -1) + e2;
}
const hs = /* @__PURE__ */ new Map();
function Hh(e2, t) {
  hs.set(e2, t);
}
function $h(e2) {
  const t = hs.get(e2);
  return hs.delete(e2), t;
}
let Gh = () => location.protocol + "//" + location.host;
function Qc(e2, t) {
  const { pathname: n, search: r, hash: i } = t, s = e2.indexOf("#");
  if (s > -1) {
    let a = i.includes(e2.slice(s)) ? e2.slice(s).length : 1, c = i.slice(a);
    return c[0] !== "/" && (c = "/" + c), oa(c, "");
  }
  return oa(n, e2) + r + i;
}
function zh(e2, t, n, r) {
  let i = [], s = [], o = null;
  const a = ({ state: h }) => {
    const g = Qc(e2, location), E = n.value, A = t.value;
    let N = 0;
    if (h) {
      if (n.value = g, t.value = h, o && o === E) {
        o = null;
        return;
      }
      N = A ? h.position - A.position : 0;
    } else r(g);
    i.forEach((L) => {
      L(n.value, E, { delta: N, type: or.pop, direction: N ? N > 0 ? Jn.forward : Jn.back : Jn.unknown });
    });
  };
  function c() {
    o = n.value;
  }
  function u(h) {
    i.push(h);
    const g = () => {
      const E = i.indexOf(h);
      E > -1 && i.splice(E, 1);
    };
    return s.push(g), g;
  }
  function l() {
    const { history: h } = window;
    !h.state || h.replaceState(fe({}, h.state, { scroll: ui() }), "");
  }
  function d() {
    for (const h of s) h();
    s = [], window.removeEventListener("popstate", a), window.removeEventListener("beforeunload", l);
  }
  return window.addEventListener("popstate", a), window.addEventListener("beforeunload", l), { pauseListeners: c, listen: u, destroy: d };
}
function ua(e2, t, n, r = false, i = false) {
  return { back: e2, current: t, forward: n, replaced: r, position: window.history.length, scroll: i ? ui() : null };
}
function Wh(e2) {
  const { history: t, location: n } = window, r = { value: Qc(e2, n) }, i = { value: t.state };
  i.value || s(r.value, { back: null, current: r.value, forward: null, position: t.length - 1, replaced: true, scroll: null }, true);
  function s(c, u, l) {
    const d = e2.indexOf("#"), h = d > -1 ? (n.host && document.querySelector("base") ? e2 : e2.slice(d)) + c : Gh() + e2 + c;
    try {
      t[l ? "replaceState" : "pushState"](u, "", h), i.value = u;
    } catch (g) {
      console.error(g), n[l ? "replace" : "assign"](h);
    }
  }
  function o(c, u) {
    const l = fe({}, t.state, ua(i.value.back, c, i.value.forward, true), u, { position: i.value.position });
    s(c, l, true), r.value = c;
  }
  function a(c, u) {
    const l = fe({}, i.value, t.state, { forward: c, scroll: ui() });
    s(l.current, l, true);
    const d = fe({}, ua(r.value, c, null), { position: l.position + 1 }, u);
    s(c, d, false), r.value = c;
  }
  return { location: r, state: i, push: a, replace: o };
}
function g_(e2) {
  e2 = Bh(e2);
  const t = Wh(e2), n = zh(e2, t.state, t.location, t.replace);
  function r(s, o = true) {
    o || n.pauseListeners(), history.go(s);
  }
  const i = fe({ location: "", base: e2, go: r, createHref: Kh.bind(null, e2) }, t, n);
  return Object.defineProperty(i, "location", { enumerable: true, get: () => t.location.value }), Object.defineProperty(i, "state", { enumerable: true, get: () => t.state.value }), i;
}
function Yh(e2) {
  return typeof e2 == "string" || e2 && typeof e2 == "object";
}
function Jc(e2) {
  return typeof e2 == "string" || typeof e2 == "symbol";
}
const Dt = { path: "/", name: void 0, params: {}, query: {}, hash: "", fullPath: "/", matched: [], meta: {}, redirectedFrom: void 0 }, Xc = Symbol("");
var la;
(function(e2) {
  e2[e2.aborted = 4] = "aborted", e2[e2.cancelled = 8] = "cancelled", e2[e2.duplicated = 16] = "duplicated";
})(la || (la = {}));
function Tn(e2, t) {
  return fe(new Error(), { type: e2, [Xc]: true }, t);
}
function Pt(e2, t) {
  return e2 instanceof Error && Xc in e2 && (t == null || !!(e2.type & t));
}
const fa = "[^/]+?", qh = { sensitive: false, strict: false, start: true, end: true }, Qh = /[.+*?^${}()[\]/\\]/g;
function Jh(e2, t) {
  const n = fe({}, qh, t), r = [];
  let i = n.start ? "^" : "";
  const s = [];
  for (const u of e2) {
    const l = u.length ? [] : [90];
    n.strict && !u.length && (i += "/");
    for (let d = 0; d < u.length; d++) {
      const h = u[d];
      let g = 40 + (n.sensitive ? 0.25 : 0);
      if (h.type === 0) d || (i += "/"), i += h.value.replace(Qh, "\\$&"), g += 40;
      else if (h.type === 1) {
        const { value: E, repeatable: A, optional: N, regexp: L } = h;
        s.push({ name: E, repeatable: A, optional: N });
        const P = L || fa;
        if (P !== fa) {
          g += 10;
          try {
            new RegExp(`(${P})`);
          } catch (v) {
            throw new Error(`Invalid custom RegExp for param "${E}" (${P}): ` + v.message);
          }
        }
        let b = A ? `((?:${P})(?:/(?:${P}))*)` : `(${P})`;
        d || (b = N && u.length < 2 ? `(?:/${b})` : "/" + b), N && (b += "?"), i += b, g += 20, N && (g += -8), A && (g += -20), P === ".*" && (g += -50);
      }
      l.push(g);
    }
    r.push(l);
  }
  if (n.strict && n.end) {
    const u = r.length - 1;
    r[u][r[u].length - 1] += 0.7000000000000001;
  }
  n.strict || (i += "/?"), n.end ? i += "$" : n.strict && (i += "(?:/|$)");
  const o = new RegExp(i, n.sensitive ? "" : "i");
  function a(u) {
    const l = u.match(o), d = {};
    if (!l) return null;
    for (let h = 1; h < l.length; h++) {
      const g = l[h] || "", E = s[h - 1];
      d[E.name] = g && E.repeatable ? g.split("/") : g;
    }
    return d;
  }
  function c(u) {
    let l = "", d = false;
    for (const h of e2) {
      (!d || !l.endsWith("/")) && (l += "/"), d = false;
      for (const g of h) if (g.type === 0) l += g.value;
      else if (g.type === 1) {
        const { value: E, repeatable: A, optional: N } = g, L = E in u ? u[E] : "";
        if (ot(L) && !A) throw new Error(`Provided param "${E}" is an array but it is not repeatable (* or + modifiers)`);
        const P = ot(L) ? L.join("/") : L;
        if (!P) if (N) h.length < 2 && e2.length > 1 && (l.endsWith("/") ? l = l.slice(0, -1) : d = true);
        else throw new Error(`Missing required param "${E}"`);
        l += P;
      }
    }
    return l;
  }
  return { re: o, score: r, keys: s, parse: a, stringify: c };
}
function Xh(e2, t) {
  let n = 0;
  for (; n < e2.length && n < t.length; ) {
    const r = t[n] - e2[n];
    if (r) return r;
    n++;
  }
  return e2.length < t.length ? e2.length === 1 && e2[0] === 40 + 40 ? -1 : 1 : e2.length > t.length ? t.length === 1 && t[0] === 40 + 40 ? 1 : -1 : 0;
}
function Zh(e2, t) {
  let n = 0;
  const r = e2.score, i = t.score;
  for (; n < r.length && n < i.length; ) {
    const s = Xh(r[n], i[n]);
    if (s) return s;
    n++;
  }
  if (Math.abs(i.length - r.length) === 1) {
    if (da(r)) return 1;
    if (da(i)) return -1;
  }
  return i.length - r.length;
}
function da(e2) {
  const t = e2[e2.length - 1];
  return e2.length > 0 && t[t.length - 1] < 0;
}
const ep = { type: 0, value: "" }, tp = /[a-zA-Z0-9_]/;
function np(e2) {
  if (!e2) return [[]];
  if (e2 === "/") return [[ep]];
  if (!e2.startsWith("/")) throw new Error(`Invalid path "${e2}"`);
  function t(g) {
    throw new Error(`ERR (${n})/"${u}": ${g}`);
  }
  let n = 0, r = n;
  const i = [];
  let s;
  function o() {
    s && i.push(s), s = [];
  }
  let a = 0, c, u = "", l = "";
  function d() {
    !u || (n === 0 ? s.push({ type: 0, value: u }) : n === 1 || n === 2 || n === 3 ? (s.length > 1 && (c === "*" || c === "+") && t(`A repeatable param (${u}) must be alone in its segment. eg: '/:ids+.`), s.push({ type: 1, value: u, regexp: l, repeatable: c === "*" || c === "+", optional: c === "*" || c === "?" })) : t("Invalid state to consume buffer"), u = "");
  }
  function h() {
    u += c;
  }
  for (; a < e2.length; ) {
    if (c = e2[a++], c === "\\" && n !== 2) {
      r = n, n = 4;
      continue;
    }
    switch (n) {
      case 0:
        c === "/" ? (u && d(), o()) : c === ":" ? (d(), n = 1) : h();
        break;
      case 4:
        h(), n = r;
        break;
      case 1:
        c === "(" ? n = 2 : tp.test(c) ? h() : (d(), n = 0, c !== "*" && c !== "?" && c !== "+" && a--);
        break;
      case 2:
        c === ")" ? l[l.length - 1] == "\\" ? l = l.slice(0, -1) + c : n = 3 : l += c;
        break;
      case 3:
        d(), n = 0, c !== "*" && c !== "?" && c !== "+" && a--, l = "";
        break;
      default:
        t("Unknown state");
        break;
    }
  }
  return n === 2 && t(`Unfinished custom RegExp for param "${u}"`), d(), o(), i;
}
function rp(e2, t, n) {
  const r = Jh(np(e2.path), n), i = fe(r, { record: e2, parent: t, children: [], alias: [] });
  return t && !i.record.aliasOf == !t.record.aliasOf && t.children.push(i), i;
}
function ip(e2, t) {
  const n = [], r = /* @__PURE__ */ new Map();
  t = pa({ strict: false, end: true, sensitive: false }, t);
  function i(l) {
    return r.get(l);
  }
  function s(l, d, h) {
    const g = !h, E = op(l);
    E.aliasOf = h && h.record;
    const A = pa(t, l), N = [E];
    if ("alias" in l) {
      const b = typeof l.alias == "string" ? [l.alias] : l.alias;
      for (const v of b) N.push(fe({}, E, { components: h ? h.record.components : E.components, path: v, aliasOf: h ? h.record : E }));
    }
    let L, P;
    for (const b of N) {
      const { path: v } = b;
      if (d && v[0] !== "/") {
        const F = d.record.path, k = F[F.length - 1] === "/" ? "" : "/";
        b.path = d.record.path + (v && k + v);
      }
      if (L = rp(b, d, A), h ? h.alias.push(L) : (P = P || L, P !== L && P.alias.push(L), g && l.name && !ha(L) && o(l.name)), E.children) {
        const F = E.children;
        for (let k = 0; k < F.length; k++) s(F[k], L, h && h.children[k]);
      }
      h = h || L, c(L);
    }
    return P ? () => {
      o(P);
    } : Qn;
  }
  function o(l) {
    if (Jc(l)) {
      const d = r.get(l);
      d && (r.delete(l), n.splice(n.indexOf(d), 1), d.children.forEach(o), d.alias.forEach(o));
    } else {
      const d = n.indexOf(l);
      d > -1 && (n.splice(d, 1), l.record.name && r.delete(l.record.name), l.children.forEach(o), l.alias.forEach(o));
    }
  }
  function a() {
    return n;
  }
  function c(l) {
    let d = 0;
    for (; d < n.length && Zh(l, n[d]) >= 0 && (l.record.path !== n[d].record.path || !Zc(l, n[d])); ) d++;
    n.splice(d, 0, l), l.record.name && !ha(l) && r.set(l.record.name, l);
  }
  function u(l, d) {
    let h, g = {}, E, A;
    if ("name" in l && l.name) {
      if (h = r.get(l.name), !h) throw Tn(1, { location: l });
      A = h.record.name, g = fe(sp(d.params, h.keys.filter((P) => !P.optional).map((P) => P.name)), l.params), E = h.stringify(g);
    } else if ("path" in l) E = l.path, h = n.find((P) => P.re.test(E)), h && (g = h.parse(E), A = h.record.name);
    else {
      if (h = d.name ? r.get(d.name) : n.find((P) => P.re.test(d.path)), !h) throw Tn(1, { location: l, currentLocation: d });
      A = h.record.name, g = fe({}, d.params, l.params), E = h.stringify(g);
    }
    const N = [];
    let L = h;
    for (; L; ) N.unshift(L.record), L = L.parent;
    return { name: A, path: E, params: g, matched: N, meta: cp(N) };
  }
  return e2.forEach((l) => s(l)), { addRoute: s, resolve: u, removeRoute: o, getRoutes: a, getRecordMatcher: i };
}
function sp(e2, t) {
  const n = {};
  for (const r of t) r in e2 && (n[r] = e2[r]);
  return n;
}
function op(e2) {
  return { path: e2.path, redirect: e2.redirect, name: e2.name, meta: e2.meta || {}, aliasOf: void 0, beforeEnter: e2.beforeEnter, props: ap(e2), children: e2.children || [], instances: {}, leaveGuards: /* @__PURE__ */ new Set(), updateGuards: /* @__PURE__ */ new Set(), enterCallbacks: {}, components: "components" in e2 ? e2.components || null : e2.component && { default: e2.component } };
}
function ap(e2) {
  const t = {}, n = e2.props || false;
  if ("component" in e2) t.default = n;
  else for (const r in e2.components) t[r] = typeof n == "boolean" ? n : n[r];
  return t;
}
function ha(e2) {
  for (; e2; ) {
    if (e2.record.aliasOf) return true;
    e2 = e2.parent;
  }
  return false;
}
function cp(e2) {
  return e2.reduce((t, n) => fe(t, n.meta), {});
}
function pa(e2, t) {
  const n = {};
  for (const r in e2) n[r] = r in t ? t[r] : e2[r];
  return n;
}
function Zc(e2, t) {
  return t.children.some((n) => n === e2 || Zc(e2, n));
}
const eu = /#/g, up = /&/g, lp = /\//g, fp = /=/g, dp = /\?/g, tu = /\+/g, hp = /%5B/g, pp = /%5D/g, nu = /%5E/g, gp = /%60/g, ru = /%7B/g, mp = /%7C/g, iu = /%7D/g, vp = /%20/g;
function Ws(e2) {
  return encodeURI("" + e2).replace(mp, "|").replace(hp, "[").replace(pp, "]");
}
function _p(e2) {
  return Ws(e2).replace(ru, "{").replace(iu, "}").replace(nu, "^");
}
function ps(e2) {
  return Ws(e2).replace(tu, "%2B").replace(vp, "+").replace(eu, "%23").replace(up, "%26").replace(gp, "`").replace(ru, "{").replace(iu, "}").replace(nu, "^");
}
function yp(e2) {
  return ps(e2).replace(fp, "%3D");
}
function Ep(e2) {
  return Ws(e2).replace(eu, "%23").replace(dp, "%3F");
}
function bp(e2) {
  return e2 == null ? "" : Ep(e2).replace(lp, "%2F");
}
function zr(e2) {
  try {
    return decodeURIComponent("" + e2);
  } catch {
  }
  return "" + e2;
}
function Sp(e2) {
  const t = {};
  if (e2 === "" || e2 === "?") return t;
  const r = (e2[0] === "?" ? e2.slice(1) : e2).split("&");
  for (let i = 0; i < r.length; ++i) {
    const s = r[i].replace(tu, " "), o = s.indexOf("="), a = zr(o < 0 ? s : s.slice(0, o)), c = o < 0 ? null : zr(s.slice(o + 1));
    if (a in t) {
      let u = t[a];
      ot(u) || (u = t[a] = [u]), u.push(c);
    } else t[a] = c;
  }
  return t;
}
function ga(e2) {
  let t = "";
  for (let n in e2) {
    const r = e2[n];
    if (n = yp(n), r == null) {
      r !== void 0 && (t += (t.length ? "&" : "") + n);
      continue;
    }
    (ot(r) ? r.map((s) => s && ps(s)) : [r && ps(r)]).forEach((s) => {
      s !== void 0 && (t += (t.length ? "&" : "") + n, s != null && (t += "=" + s));
    });
  }
  return t;
}
function Tp(e2) {
  const t = {};
  for (const n in e2) {
    const r = e2[n];
    r !== void 0 && (t[n] = ot(r) ? r.map((i) => i == null ? null : "" + i) : r == null ? r : "" + r);
  }
  return t;
}
const Ap = Symbol(""), ma = Symbol(""), li = Symbol(""), su = Symbol(""), gs = Symbol("");
function xn() {
  let e2 = [];
  function t(r) {
    return e2.push(r), () => {
      const i = e2.indexOf(r);
      i > -1 && e2.splice(i, 1);
    };
  }
  function n() {
    e2 = [];
  }
  return { add: t, list: () => e2, reset: n };
}
function Mt(e2, t, n, r, i) {
  const s = r && (r.enterCallbacks[i] = r.enterCallbacks[i] || []);
  return () => new Promise((o, a) => {
    const c = (d) => {
      d === false ? a(Tn(4, { from: n, to: t })) : d instanceof Error ? a(d) : Yh(d) ? a(Tn(2, { from: t, to: d })) : (s && r.enterCallbacks[i] === s && typeof d == "function" && s.push(d), o());
    }, u = e2.call(r && r.instances[i], t, n, c);
    let l = Promise.resolve(u);
    e2.length < 3 && (l = l.then(c)), l.catch((d) => a(d));
  });
}
function Hi(e2, t, n, r) {
  const i = [];
  for (const s of e2) for (const o in s.components) {
    let a = s.components[o];
    if (!(t !== "beforeRouteEnter" && !s.instances[o])) if (wp(a)) {
      const u = (a.__vccOpts || a)[t];
      u && i.push(Mt(u, n, r, s, o));
    } else {
      let c = a();
      i.push(() => c.then((u) => {
        if (!u) return Promise.reject(new Error(`Couldn't resolve component "${o}" at "${s.path}"`));
        const l = Ph(u) ? u.default : u;
        s.components[o] = l;
        const h = (l.__vccOpts || l)[t];
        return h && Mt(h, n, r, s, o)();
      }));
    }
  }
  return i;
}
function wp(e2) {
  return typeof e2 == "object" || "displayName" in e2 || "props" in e2 || "__vccOpts" in e2;
}
function va(e2) {
  const t = mt(li), n = mt(su), r = qe(() => t.resolve(pn(e2.to))), i = qe(() => {
    const { matched: c } = r.value, { length: u } = c, l = c[u - 1], d = n.matched;
    if (!l || !d.length) return -1;
    const h = d.findIndex(Sn.bind(null, l));
    if (h > -1) return h;
    const g = _a(c[u - 2]);
    return u > 1 && _a(l) === g && d[d.length - 1].path !== g ? d.findIndex(Sn.bind(null, c[u - 2])) : h;
  }), s = qe(() => i.value > -1 && Cp(n.params, r.value.params)), o = qe(() => i.value > -1 && i.value === n.matched.length - 1 && qc(n.params, r.value.params));
  function a(c = {}) {
    return Rp(c) ? t[pn(e2.replace) ? "replace" : "push"](pn(e2.to)).catch(Qn) : Promise.resolve();
  }
  return { route: r, href: qe(() => r.value.href), isActive: s, isExactActive: o, navigate: a };
}
const Op = /* @__PURE__ */ fc({ name: "RouterLink", compatConfig: { MODE: 3 }, props: { to: { type: [String, Object], required: true }, replace: Boolean, activeClass: String, exactActiveClass: String, custom: Boolean, ariaCurrentValue: { type: String, default: "page" } }, useLink: va, setup(e2, { slots: t }) {
  const n = dr(va(e2)), { options: r } = mt(li), i = qe(() => ({ [ya(e2.activeClass, r.linkActiveClass, "router-link-active")]: n.isActive, [ya(e2.exactActiveClass, r.linkExactActiveClass, "router-link-exact-active")]: n.isExactActive }));
  return () => {
    const s = t.default && t.default(n);
    return e2.custom ? s : Pc("a", { "aria-current": n.isExactActive ? e2.ariaCurrentValue : null, href: n.href, onClick: n.navigate, class: i.value }, s);
  };
} }), Ip = Op;
function Rp(e2) {
  if (!(e2.metaKey || e2.altKey || e2.ctrlKey || e2.shiftKey) && !e2.defaultPrevented && !(e2.button !== void 0 && e2.button !== 0)) {
    if (e2.currentTarget && e2.currentTarget.getAttribute) {
      const t = e2.currentTarget.getAttribute("target");
      if (/\b_blank\b/i.test(t)) return;
    }
    return e2.preventDefault && e2.preventDefault(), true;
  }
}
function Cp(e2, t) {
  for (const n in t) {
    const r = t[n], i = e2[n];
    if (typeof r == "string") {
      if (r !== i) return false;
    } else if (!ot(i) || i.length !== r.length || r.some((s, o) => s !== i[o])) return false;
  }
  return true;
}
function _a(e2) {
  return e2 ? e2.aliasOf ? e2.aliasOf.path : e2.path : "";
}
const ya = (e2, t, n) => e2 != null ? e2 : t != null ? t : n, Dp = /* @__PURE__ */ fc({ name: "RouterView", inheritAttrs: false, props: { name: { type: String, default: "default" }, route: Object }, compatConfig: { MODE: 3 }, setup(e2, { attrs: t, slots: n }) {
  const r = mt(gs), i = qe(() => e2.route || r.value), s = mt(ma, 0), o = qe(() => {
    let u = pn(s);
    const { matched: l } = i.value;
    let d;
    for (; (d = l[u]) && !d.components; ) u++;
    return u;
  }), a = qe(() => i.value.matched[o.value]);
  Mr(ma, qe(() => o.value + 1)), Mr(Ap, a), Mr(gs, i);
  const c = sf();
  return Nr(() => [c.value, a.value, e2.name], ([u, l, d], [h, g, E]) => {
    l && (l.instances[d] = u, g && g !== l && u && u === h && (l.leaveGuards.size || (l.leaveGuards = g.leaveGuards), l.updateGuards.size || (l.updateGuards = g.updateGuards))), u && l && (!g || !Sn(l, g) || !h) && (l.enterCallbacks[d] || []).forEach((A) => A(u));
  }, { flush: "post" }), () => {
    const u = i.value, l = a.value, d = l && l.components[e2.name], h = e2.name;
    if (!d) return Ea(n.default, { Component: d, route: u });
    const g = l.props[e2.name], E = g ? g === true ? u.params : typeof g == "function" ? g(u) : g : null, N = Pc(d, fe({}, E, t, { onVnodeUnmounted: (L) => {
      L.component.isUnmounted && (l.instances[h] = null);
    }, ref: c }));
    return Ea(n.default, { Component: N, route: u }) || N;
  };
} });
function Ea(e2, t) {
  if (!e2) return null;
  const n = e2(t);
  return n.length === 1 ? n[0] : n;
}
const Pp = Dp;
function m_(e2) {
  const t = ip(e2.routes, e2), n = e2.parseQuery || Sp, r = e2.stringifyQuery || ga, i = e2.history, s = xn(), o = xn(), a = xn(), c = of(Dt);
  let u = Dt;
  un && e2.scrollBehavior && "scrollRestoration" in history && (history.scrollRestoration = "manual");
  const l = ji.bind(null, (T) => "" + T), d = ji.bind(null, bp), h = ji.bind(null, zr);
  function g(T, x) {
    let U, G;
    return Jc(T) ? (U = t.getRecordMatcher(T), G = x) : G = T, t.addRoute(G, U);
  }
  function E(T) {
    const x = t.getRecordMatcher(T);
    x && t.removeRoute(x);
  }
  function A() {
    return t.getRoutes().map((T) => T.record);
  }
  function N(T) {
    return !!t.getRecordMatcher(T);
  }
  function L(T, x) {
    if (x = fe({}, x || c.value), typeof T == "string") {
      const f = Vi(n, T, x.path), p = t.resolve({ path: f.path }, x), y = i.createHref(f.fullPath);
      return fe(f, p, { params: h(p.params), hash: zr(f.hash), redirectedFrom: void 0, href: y });
    }
    let U;
    if ("path" in T) U = fe({}, T, { path: Vi(n, T.path, x.path).path });
    else {
      const f = fe({}, T.params);
      for (const p in f) f[p] == null && delete f[p];
      U = fe({}, T, { params: d(T.params) }), x.params = d(x.params);
    }
    const G = t.resolve(U, x), ae = T.hash || "";
    G.params = l(h(G.params));
    const ye = Lh(r, fe({}, T, { hash: _p(ae), path: G.path })), te = i.createHref(ye);
    return fe({ fullPath: ye, hash: ae, query: r === ga ? Tp(T.query) : T.query || {} }, G, { redirectedFrom: void 0, href: te });
  }
  function P(T) {
    return typeof T == "string" ? Vi(n, T, c.value.path) : fe({}, T);
  }
  function b(T, x) {
    if (u !== T) return Tn(8, { from: x, to: T });
  }
  function v(T) {
    return J(T);
  }
  function F(T) {
    return v(fe(P(T), { replace: true }));
  }
  function k(T) {
    const x = T.matched[T.matched.length - 1];
    if (x && x.redirect) {
      const { redirect: U } = x;
      let G = typeof U == "function" ? U(T) : U;
      return typeof G == "string" && (G = G.includes("?") || G.includes("#") ? G = P(G) : { path: G }, G.params = {}), fe({ query: T.query, hash: T.hash, params: "path" in G ? {} : T.params }, G);
    }
  }
  function J(T, x) {
    const U = u = L(T), G = c.value, ae = T.state, ye = T.force, te = T.replace === true, f = k(U);
    if (f) return J(fe(P(f), { state: ae, force: ye, replace: te }), x || U);
    const p = U;
    p.redirectedFrom = x;
    let y;
    return !ye && kh(r, G, U) && (y = Tn(16, { to: p, from: G }), Ne(G, G, true, false)), (y ? Promise.resolve(y) : Oe(p, G)).catch((S) => Pt(S) ? Pt(S, 2) ? S : pe(S) : z(S, p, G)).then((S) => {
      if (S) {
        if (Pt(S, 2)) return J(fe(P(S.to), { state: ae, force: ye, replace: te }), x || p);
      } else S = _e(p, G, true, te, ae);
      return ve(p, G, S), S;
    });
  }
  function de(T, x) {
    const U = b(T, x);
    return U ? Promise.reject(U) : Promise.resolve();
  }
  function Oe(T, x) {
    let U;
    const [G, ae, ye] = Np(T, x);
    U = Hi(G.reverse(), "beforeRouteLeave", T, x);
    for (const f of G) f.leaveGuards.forEach((p) => {
      U.push(Mt(p, T, x));
    });
    const te = de.bind(null, T, x);
    return U.push(te), on(U).then(() => {
      U = [];
      for (const f of s.list()) U.push(Mt(f, T, x));
      return U.push(te), on(U);
    }).then(() => {
      U = Hi(ae, "beforeRouteUpdate", T, x);
      for (const f of ae) f.updateGuards.forEach((p) => {
        U.push(Mt(p, T, x));
      });
      return U.push(te), on(U);
    }).then(() => {
      U = [];
      for (const f of T.matched) if (f.beforeEnter && !x.matched.includes(f)) if (ot(f.beforeEnter)) for (const p of f.beforeEnter) U.push(Mt(p, T, x));
      else U.push(Mt(f.beforeEnter, T, x));
      return U.push(te), on(U);
    }).then(() => (T.matched.forEach((f) => f.enterCallbacks = {}), U = Hi(ye, "beforeRouteEnter", T, x), U.push(te), on(U))).then(() => {
      U = [];
      for (const f of o.list()) U.push(Mt(f, T, x));
      return U.push(te), on(U);
    }).catch((f) => Pt(f, 8) ? f : Promise.reject(f));
  }
  function ve(T, x, U) {
    for (const G of a.list()) G(T, x, U);
  }
  function _e(T, x, U, G, ae) {
    const ye = b(T, x);
    if (ye) return ye;
    const te = x === Dt, f = un ? history.state : {};
    U && (G || te ? i.replace(T.fullPath, fe({ scroll: te && f && f.scroll }, ae)) : i.push(T.fullPath, ae)), c.value = T, Ne(T, x, U, te), pe();
  }
  let re;
  function m() {
    re || (re = i.listen((T, x, U) => {
      if (!Er.listening) return;
      const G = L(T), ae = k(G);
      if (ae) {
        J(fe(ae, { replace: true }), G).catch(Qn);
        return;
      }
      u = G;
      const ye = c.value;
      un && Hh(ca(ye.fullPath, U.delta), ui()), Oe(G, ye).catch((te) => Pt(te, 12) ? te : Pt(te, 2) ? (J(te.to, G).then((f) => {
        Pt(f, 20) && !U.delta && U.type === or.pop && i.go(-1, false);
      }).catch(Qn), Promise.reject()) : (U.delta && i.go(-U.delta, false), z(te, G, ye))).then((te) => {
        te = te || _e(G, ye, false), te && (U.delta ? i.go(-U.delta, false) : U.type === or.pop && Pt(te, 20) && i.go(-1, false)), ve(G, ye, te);
      }).catch(Qn);
    }));
  }
  let I = xn(), q = xn(), $;
  function z(T, x, U) {
    pe(T);
    const G = q.list();
    return G.length ? G.forEach((ae) => ae(T, x, U)) : console.error(T), Promise.reject(T);
  }
  function H() {
    return $ && c.value !== Dt ? Promise.resolve() : new Promise((T, x) => {
      I.add([T, x]);
    });
  }
  function pe(T) {
    return $ || ($ = !T, m(), I.list().forEach(([x, U]) => T ? U(T) : x()), I.reset()), T;
  }
  function Ne(T, x, U, G) {
    const { scrollBehavior: ae } = e2;
    if (!un || !ae) return Promise.resolve();
    const ye = !U && $h(ca(T.fullPath, 0)) || (G || !U) && history.state && history.state.scroll || null;
    return nc().then(() => ae(T, x, ye)).then((te) => te && Vh(te)).catch((te) => z(te, T, x));
  }
  const ge = (T) => i.go(T);
  let ue;
  const Je = /* @__PURE__ */ new Set(), Er = { currentRoute: c, listening: true, addRoute: g, removeRoute: E, hasRoute: N, getRoutes: A, resolve: L, options: e2, push: v, replace: F, go: ge, back: () => ge(-1), forward: () => ge(1), beforeEach: s.add, beforeResolve: o.add, afterEach: a.add, onError: q.add, isReady: H, install(T) {
    const x = this;
    T.component("RouterLink", Ip), T.component("RouterView", Pp), T.config.globalProperties.$router = x, Object.defineProperty(T.config.globalProperties, "$route", { enumerable: true, get: () => pn(c) }), un && !ue && c.value === Dt && (ue = true, v(i.location).catch((ae) => {
    }));
    const U = {};
    for (const ae in Dt) U[ae] = qe(() => c.value[ae]);
    T.provide(li, x), T.provide(su, dr(U)), T.provide(gs, c);
    const G = T.unmount;
    Je.add(T), T.unmount = function() {
      Je.delete(T), Je.size < 1 && (u = Dt, re && re(), re = null, c.value = Dt, ue = false, $ = false), G();
    };
  } };
  return Er;
}
function on(e2) {
  return e2.reduce((t, n) => t.then(() => n()), Promise.resolve());
}
function Np(e2, t) {
  const n = [], r = [], i = [], s = Math.max(t.matched.length, e2.matched.length);
  for (let o = 0; o < s; o++) {
    const a = t.matched[o];
    a && (e2.matched.find((u) => Sn(u, a)) ? r.push(a) : n.push(a));
    const c = e2.matched[o];
    c && (t.matched.find((u) => Sn(u, c)) || i.push(c));
  }
  return [n, r, i];
}
function v_() {
  return mt(li);
}
var Te = typeof globalThis != "undefined" ? globalThis : typeof window != "undefined" ? window : typeof global != "undefined" ? global : typeof self != "undefined" ? self : {}, Mp = {}, fi = {};
Object.defineProperty(fi, "__esModule", { value: true });
fi.COUNTRY_CODE_TO_STOREFRONT = void 0;
fi.COUNTRY_CODE_TO_STOREFRONT = { AFG: "143610", AGO: "143564", AIA: "143538", ALB: "143575", AND: "143611", ARE: "143481", ARG: "143505", ARM: "143524", ATG: "143540", AUS: "143460", AUT: "143445", AZE: "143568", BEL: "143446", BEN: "143576", BFA: "143578", BGD: "143490", BGR: "143526", BHR: "143559", BHS: "143539", BIH: "143612", BLR: "143565", BLZ: "143555", BMU: "143542", BOL: "143556", BRA: "143503", BRB: "143541", BRN: "143560", BTN: "143577", BWA: "143525", CAF: "143623", CAN: "143455", CHE: "143459", CHL: "143483", CHN: "143465", CIV: "143527", CMR: "143574", COD: "143613", COG: "143582", COL: "143501", CPV: "143580", CRI: "143495", CYM: "143544", CYP: "143557", CZE: "143489", DEU: "143443", DMA: "143545", DNK: "143458", DOM: "143508", DZA: "143563", ECU: "143509", EGY: "143516", ESP: "143454", EST: "143518", ETH: "143569", FIN: "143447", FJI: "143583", FRA: "143442", FSM: "143591", GAB: "143614", GBR: "143444", GEO: "143615", GHA: "143573", GIN: "143616", GMB: "143584", GNB: "143585", GRC: "143448", GRD: "143546", GTM: "143504", GUY: "143553", HKG: "143463", HND: "143510", HRV: "143494", HUN: "143482", IDN: "143476", IND: "143467", IRL: "143449", IRQ: "143617", ISL: "143558", ISR: "143491", ITA: "143450", JAM: "143511", JOR: "143528", JPN: "143462", KAZ: "143517", KEN: "143529", KGZ: "143586", KHM: "143579", KNA: "143548", KOR: "143466", KWT: "143493", LAO: "143587", LBN: "143497", LBR: "143588", LBY: "143567", LCA: "143549", LIE: "143522", LKA: "143486", LTU: "143520", LUX: "143451", LVA: "143519", MAC: "143515", MAR: "143620", MCO: "143618", MDA: "143523", MDG: "143531", MDV: "143488", MEX: "143468", MKD: "143530", MLI: "143532", MLT: "143521", MMR: "143570", MNE: "143619", MNG: "143592", MOZ: "143593", MRT: "143590", MSR: "143547", MUS: "143533", MWI: "143589", MYS: "143473", NAM: "143594", NER: "143534", NGA: "143561", NIC: "143512", NLD: "143452", NOR: "143457", NPL: "143484", NRU: "143606", NZL: "143461", OMN: "143562", PAK: "143477", PAN: "143485", PER: "143507", PHL: "143474", PLW: "143595", PNG: "143597", POL: "143478", PRT: "143453", PRY: "143513", PSE: "143596", QAT: "143498", ROU: "143487", RUS: "143469", RWA: "143621", SAU: "143479", SEN: "143535", SGP: "143464", SLB: "143601", SLE: "143600", SLV: "143506", SRB: "143500", STP: "143598", SUR: "143554", SVK: "143496", SVN: "143499", SWE: "143456", SWZ: "143602", SYC: "143599", TCA: "143552", TCD: "143581", THA: "143475", TJK: "143603", TKM: "143604", TON: "143608", TTO: "143551", TUN: "143536", TUR: "143480", TWN: "143470", TZA: "143572", UGA: "143537", UKR: "143492", URY: "143514", USA: "143441", UZB: "143566", VCT: "143550", VEN: "143502", VGB: "143543", VNM: "143471", VUT: "143609", WSM: "143607", XKX: "143624", YEM: "143571", ZAF: "143472", ZMB: "143622", ZWE: "143605" };
var di = {}, Lp = Te && Te.__awaiter || function(e2, t, n, r) {
  function i(s) {
    return s instanceof n ? s : new n(function(o) {
      o(s);
    });
  }
  return new (n || (n = Promise))(function(s, o) {
    function a(l) {
      try {
        u(r.next(l));
      } catch (d) {
        o(d);
      }
    }
    function c(l) {
      try {
        u(r.throw(l));
      } catch (d) {
        o(d);
      }
    }
    function u(l) {
      l.done ? s(l.value) : i(l.value).then(a, c);
    }
    u((r = r.apply(e2, t || [])).next());
  });
};
Object.defineProperty(di, "__esModule", { value: true });
di.AsyncCachedResult = void 0;
const kp = 5 * 60, Up = (e2 = kp) => (t, n, r) => {
  if (r === void 0 || typeof r.value != "function") throw new TypeError(`Only methods can be decorated with @CachedResult, but ${n} is not a method.`);
  return { configurable: true, get() {
    const i = r.value, s = e2 * 1e3;
    let o = -1, a;
    function c(...u) {
      return Lp(this, void 0, void 0, function* () {
        const l = Date.now();
        return (a === void 0 || o === -1 || o > 0 && l > o + s) && (o = l, a = yield i.apply(this, u)), a;
      });
    }
    return c.updateCache = function(u) {
      o = Date.now(), a = u;
    }, c.getCachedValue = () => a, Object.defineProperty(this, n, { value: c, configurable: true, writable: true }), c;
  } };
};
di.AsyncCachedResult = Up;
var hi = {}, oe = {}, Ys = {};
Object.defineProperty(Ys, "__esModule", { value: true });
Ys.default = typeof FastBoot != "undefined" ? FastBoot.require("buffer").Buffer : typeof process != "undefined" && process.versions !== null && process.versions.node !== null ? Buffer : window.Buffer;
var Xt = {};
Object.defineProperty(Xt, "__esModule", { value: true });
Xt.memoize = void 0;
function Fp(e2) {
  return function(...t) {
    let n = "", r = t.length;
    for (e2._memoized = e2._memoized || {}; r--; ) {
      const i = t[r];
      n += i === Object(i) ? JSON.stringify(i) : i;
    }
    return n in e2._memoized ? e2._memoized[n] : e2._memoized[n] = e2(...t);
  };
}
Xt.memoize = Fp;
var Bp = Te && Te.__importDefault || function(e2) {
  return e2 && e2.__esModule ? e2 : { default: e2 };
};
Object.defineProperty(oe, "__esModule", { value: true });
oe.parseNumber = oe.arrayEquals = oe.exceptFields = oe.debounce = oe.throttled = oe.getArtworkFromURL = oe.btoa = oe.atob = oe.isNodeEnvironment = oe.isAdamId = oe.isLibraryType = oe.generateUUID = oe.isObject = void 0;
const ou = Bp(Ys), pi = Xt;
function xp(e2) {
  return !!e2 && typeof e2 == "object" && !Array.isArray(e2);
}
oe.isObject = xp;
function Kp() {
  let e2 = $i() + $i();
  for (; e2.length < 16; ) e2 += $i();
  return e2.slice(0, 16);
}
oe.generateUUID = Kp;
function $i() {
  return Math.random().toString(16).substring(2);
}
oe.isLibraryType = pi.memoize((e2) => /^[a|i|l|p]{1}\.[a-zA-Z0-9]+$/.test(e2));
oe.isAdamId = pi.memoize((e2) => /^(a\.)?[a-zA-Z0-9]+$/.test(e2));
function qs(e2) {
  const t = (n) => typeof n != "undefined" && n !== null;
  return arguments.length === 0 && typeof process != "undefined" && (e2 = process), t(e2) && t(e2.versions) && t(e2.versions.node) || typeof FastBoot != "undefined";
}
oe.isNodeEnvironment = qs;
oe.atob = pi.memoize(qs() ? (e2) => ou.default.from(e2, "base64").toString("binary") : (e2) => window.atob(e2));
oe.btoa = pi.memoize(qs() ? (e2) => ou.default.from(e2).toString("base64") : (e2) => window.btoa(e2));
function jp(e2) {
  const n = e2.split("/").pop(), [r, i] = !!n && n.match(/\d+/g) || ["100", "100"];
  return { width: parseInt(r, 10), height: parseInt(i, 10), url: e2.replace(`${r}x${i}`, "{w}x{h}") };
}
oe.getArtworkFromURL = jp;
const Vp = (e2, t) => {
  let n = 0;
  return function(...r) {
    const i = Date.now();
    if (!(i - n < e2)) return n = i, t.apply(this, r);
  };
};
oe.throttled = Vp;
const Hp = (e2, t = 250, n = { isImmediate: false }) => {
  let r;
  return function(...i) {
    const s = this, o = function() {
      r = void 0, n.isImmediate || e2.apply(s, i);
    }, a = n.isImmediate && r === void 0;
    r !== void 0 && clearTimeout(r), r = setTimeout(o, t), a && e2.apply(s, i);
  };
};
oe.debounce = Hp;
const $p = (e2, ...t) => {
  const n = {};
  return Object.keys(e2).forEach((r) => {
    t.includes(r) || (n[r] = e2[r]);
  }), n;
};
oe.exceptFields = $p;
const Gp = (e2, t) => !!e2 && !!t && [].every.call(e2, (n, r) => n === t[r]);
oe.arrayEquals = Gp;
const zp = (e2) => {
  const t = Number(e2);
  if (!!Number.isFinite(t)) return t;
};
oe.parseNumber = zp;
Object.defineProperty(hi, "__esModule", { value: true });
hi.DeveloperToken = void 0;
const Wp = oe;
class Yp {
  constructor(t) {
    if (this.token = t, !t || !/^[a-z0-9\-\_]{16,}\.[a-z0-9\-\_]{16,}\.[a-z0-9\-\_]{16,}/i.test(t)) throw new Error("Invalid token.");
    const [n, r] = t.split("."), { exp: i, iss: s } = this._decode(r);
    if (this.expiration = i * 1e3, this.isExpired) throw new Error("Initialized with an expired token.");
    this.teamId = s;
    const { kid: o } = this._decode(n);
    this.keyId = o;
  }
  get isExpired() {
    return this.expiration < Date.now();
  }
  _decode(t) {
    return JSON.parse(Wp.atob(t));
  }
}
hi.DeveloperToken = Yp;
var gi = {};
Object.defineProperty(gi, "__esModule", { value: true });
gi.invoke = void 0;
const qp = (e2) => typeof e2 != "function";
function Qp(e2) {
  return e2 === void 0 || qp(e2) ? e2 : e2();
}
gi.invoke = Qp;
var mi = {};
Object.defineProperty(mi, "__esModule", { value: true });
mi.ISO_2_TO_3_CODES = void 0;
mi.ISO_2_TO_3_CODES = { AW: "ABW", AF: "AFG", AO: "AGO", AI: "AIA", AX: "ALA", AL: "ALB", AD: "AND", AE: "ARE", AR: "ARG", AM: "ARM", AS: "ASM", AQ: "ATA", TF: "ATF", AG: "ATG", AU: "AUS", AT: "AUT", AZ: "AZE", BI: "BDI", BE: "BEL", BJ: "BEN", BQ: "BES", BF: "BFA", BD: "BGD", BG: "BGR", BH: "BHR", BS: "BHS", BA: "BIH", BL: "BLM", BY: "BLR", BZ: "BLZ", BM: "BMU", BO: "BOL", BR: "BRA", BB: "BRB", BN: "BRN", BT: "BTN", BV: "BVT", BW: "BWA", CF: "CAF", CA: "CAN", CC: "CCK", CH: "CHE", CL: "CHL", CN: "CHN", CI: "CIV", CM: "CMR", CD: "COD", CG: "COG", CK: "COK", CO: "COL", KM: "COM", CV: "CPV", CR: "CRI", CU: "CUB", CW: "CUW", CX: "CXR", KY: "CYM", CY: "CYP", CZ: "CZE", DE: "DEU", DJ: "DJI", DM: "DMA", DK: "DNK", DO: "DOM", DZ: "DZA", EC: "ECU", EG: "EGY", ER: "ERI", EH: "ESH", ES: "ESP", EE: "EST", ET: "ETH", FI: "FIN", FJ: "FJI", FK: "FLK", FR: "FRA", FO: "FRO", FM: "FSM", GA: "GAB", GB: "GBR", GE: "GEO", GG: "GGY", GH: "GHA", GI: "GIB", GN: "GIN", GP: "GLP", GM: "GMB", GW: "GNB", GQ: "GNQ", GR: "GRC", GD: "GRD", GL: "GRL", GT: "GTM", GF: "GUF", GU: "GUM", GY: "GUY", HK: "HKG", HM: "HMD", HN: "HND", HR: "HRV", HT: "HTI", HU: "HUN", ID: "IDN", IM: "IMN", IN: "IND", IO: "IOT", IE: "IRL", IR: "IRN", IQ: "IRQ", IS: "ISL", IL: "ISR", IT: "ITA", JM: "JAM", JE: "JEY", JO: "JOR", JP: "JPN", KZ: "KAZ", KE: "KEN", KG: "KGZ", KH: "KHM", KI: "KIR", KN: "KNA", KR: "KOR", KW: "KWT", LA: "LAO", LB: "LBN", LR: "LBR", LY: "LBY", LC: "LCA", LI: "LIE", LK: "LKA", LS: "LSO", LT: "LTU", LU: "LUX", LV: "LVA", MO: "MAC", MF: "MAF", MA: "MAR", MC: "MCO", MD: "MDA", MG: "MDG", MV: "MDV", MX: "MEX", MH: "MHL", MK: "MKD", ML: "MLI", MT: "MLT", MM: "MMR", ME: "MNE", MN: "MNG", MP: "MNP", MZ: "MOZ", MR: "MRT", MS: "MSR", MQ: "MTQ", MU: "MUS", MW: "MWI", MY: "MYS", YT: "MYT", NA: "NAM", NC: "NCL", NE: "NER", NF: "NFK", NG: "NGA", NI: "NIC", NU: "NIU", NL: "NLD", NO: "NOR", NP: "NPL", NR: "NRU", NZ: "NZL", OM: "OMN", PK: "PAK", PA: "PAN", PN: "PCN", PE: "PER", PH: "PHL", PW: "PLW", PG: "PNG", PL: "POL", PR: "PRI", KP: "PRK", PT: "PRT", PY: "PRY", PS: "PSE", PF: "PYF", QA: "QAT", RE: "REU", RO: "ROU", RU: "RUS", RW: "RWA", SA: "SAU", SD: "SDN", SN: "SEN", SG: "SGP", GS: "SGS", SH: "SHN", SJ: "SJM", SB: "SLB", SL: "SLE", SV: "SLV", SM: "SMR", SO: "SOM", PM: "SPM", RS: "SRB", SS: "SSD", ST: "STP", SR: "SUR", SK: "SVK", SI: "SVN", SE: "SWE", SZ: "SWZ", SX: "SXM", SC: "SYC", SY: "SYR", TC: "TCA", TD: "TCD", TG: "TGO", TH: "THA", TJ: "TJK", TK: "TKL", TM: "TKM", TL: "TLS", TO: "TON", TT: "TTO", TN: "TUN", TR: "TUR", TV: "TUV", TW: "TWN", TZ: "TZA", UG: "UGA", UA: "UKR", UM: "UMI", UY: "URY", US: "USA", UZ: "UZB", VA: "VAT", VC: "VCT", VE: "VEN", VG: "VGB", VI: "VIR", VN: "VNM", VU: "VUT", WF: "WLF", WS: "WSM", XK: "XKX", YE: "YEM", ZA: "ZAF", ZM: "ZMB", ZW: "ZWE" };
var au = {};
(function(e2) {
  Object.defineProperty(e2, "__esModule", { value: true }), e2.LANGUAGE_TO_STOREFRONT = e2.getLanguageId = void 0;
  function t(n = "en-US") {
    const r = e2.LANGUAGE_TO_STOREFRONT[n.toLowerCase()];
    if (r) return r;
    if (n.includes("-")) {
      const s = n.split("-")[0], o = e2.LANGUAGE_TO_STOREFRONT[s.toLowerCase()];
      if (o) return o;
    }
    return e2.LANGUAGE_TO_STOREFRONT["en-us"];
  }
  e2.getLanguageId = t, e2.LANGUAGE_TO_STOREFRONT = { af: 48, sq: 1, ar: 34, eu: 1, bg: 49, be: 1, ca: 42, zh: 19, "zh-tw": 18, "zh-cn": 19, "zh-hk": 45, "zh-sg": 19, hr: 41, cs: 22, da: 11, nl: 10, "nl-be": 65, en: 1, "en-us": 1, "en-eg": 26, "en-au": 27, "en-gb": 2, "en-ca": 6, "en-nz": 27, "en-ie": 26, "en-za": 26, "en-jm": 26, "en-bz": 26, "en-tt": 26, "en-001": 26, et: 30, fo: 1, fa: 59, fi: 12, fr: 3, "fr-ca": 5, gd: 2, de: 4, "de-ch": 57, el: 23, he: 36, hi: 50, hu: 21, is: 31, id: 37, it: 7, ja: 9, ko: 13, lv: 33, lt: 32, mk: 1, mt: 1, no: 14, nb: 14, nn: 14, pl: 20, "pt-br": 15, pt: 24, rm: 1, ro: 39, ru: 16, sr: 1, sk: 40, sl: 52, es: 8, "es-mx": 28, "es-419": 44, sv: 17, th: 35, ts: 1, tn: 1, tr: 25, uk: 29, ur: 55, ve: 1, vi: 43, xh: 1, yi: 1, zu: 56, ms: 38, iw: 36, lo: 46, tl: 47, kk: 51, ta: 53, te: 54, bn: 58, ga: 60, ht: 61, la: 62, pa: 63, sa: 64 };
})(au);
var pr = {};
Object.defineProperty(pr, "__esModule", { value: true });
pr.getLanguages = void 0;
function Jp() {
  if (typeof navigator == "undefined") return [];
  if (navigator.languages) return navigator.languages;
  const e2 = navigator.language || navigator.userLanguage;
  return e2 ? [e2] : [];
}
pr.getLanguages = Jp;
var cu = {};
(function(e2) {
  Object.defineProperty(e2, "__esModule", { value: true }), e2.urlEncodeParameters = e2.rewriteLastUrlPath = e2.stableSortQueryParams = e2.getMaxAgeFromHeaders = e2.getHeader = e2.parseParams = e2.parseQueryParams = e2.mergeFetchOptions = e2.mergeFetchHeaders = e2.cloneHeaders = e2.constructURL = e2.addQueryParamsToURL = e2.addPathToURL = void 0;
  const t = oe, n = (b, v) => b === void 0 || b === "" ? v || "" : v === void 0 ? b : (b.endsWith("/") && (b = b.slice(0, -1)), v.startsWith("/") && (v = v.slice(1)), `${b}/${v}`);
  e2.addPathToURL = n;
  const r = (b, v) => {
    const F = P(v);
    return F === "" ? b : b.endsWith("&") || b.endsWith("?") ? `${b}${F}` : b.includes("?") ? `${b}&${F}` : `${b}?${F}`;
  };
  e2.addQueryParamsToURL = r;
  const i = (b, v, F) => e2.addQueryParamsToURL(e2.addPathToURL(b, v), F);
  e2.constructURL = i;
  const s = (b) => new b.constructor(b);
  e2.cloneHeaders = s;
  const o = typeof Headers != "undefined", a = (b) => o && b instanceof Headers, c = (b) => {
    let v = {};
    return a(b) ? b.forEach((F, k) => v[k] = F) : Array.isArray(b) ? b.forEach(([F, k]) => v[F] = k) : v = b, v;
  }, u = (b = {}, v = {}) => Object.assign(Object.assign({}, c(b)), c(v));
  e2.mergeFetchHeaders = u;
  const l = (b, v) => {
    if (!(!b && !v)) return (b == null ? void 0 : b.headers) && (v == null ? void 0 : v.headers) ? Object.assign(Object.assign(Object.assign({}, b), v), { headers: e2.mergeFetchHeaders(b.headers, v.headers) }) : Object.assign(Object.assign({}, b), v);
  };
  e2.mergeFetchOptions = l;
  function d(b) {
    var v;
    if (!b || b.startsWith("http") && !b.includes("?")) return {};
    try {
      const F = (v = b.split("?")[1]) !== null && v !== void 0 ? v : b;
      return h(F, "&", decodeURIComponent);
    } catch {
      return {};
    }
  }
  e2.parseQueryParams = d;
  function h(b, v = "&", F = (k) => k) {
    return typeof b != "string" ? {} : b.split(v).map((k) => k.trim().split("=", 2)).reduce((k, J) => {
      const [de, Oe] = J;
      return de === "" && Oe === void 0 || (k[F(de)] = F(Oe), Oe === void 0 && (k[F(de)] = void 0)), k;
    }, {});
  }
  e2.parseParams = h;
  function g(b, v) {
    if (v !== void 0) return o && v instanceof Headers ? v.get(b) : v[b];
  }
  e2.getHeader = g;
  function E(b) {
    const v = g("cache-control", b);
    if (v) {
      const F = h(v, ",")["max-age"];
      return t.parseNumber(F);
    }
  }
  e2.getMaxAgeFromHeaders = E;
  function A(b) {
    try {
      const [v, F] = b.split("?", 2);
      if (typeof F == "undefined") return v;
      const k = F.split("&").map((ve) => ve.split("=", 2)), J = [...Array(k.length).keys()];
      J.sort((ve, _e) => {
        const re = k[ve], m = k[_e];
        return re < m ? -1 : re > m ? 1 : ve - _e;
      });
      const Oe = J.map((ve) => k[ve]).map(([ve, _e]) => typeof _e != "undefined" ? `${ve}=${_e}` : ve).join("&");
      return `${v}?${Oe}`;
    } catch {
      return b;
    }
  }
  e2.stableSortQueryParams = A;
  function N(b, v) {
    const F = b.split("/");
    return F.pop(), F.push(v), F.join("/");
  }
  e2.rewriteLastUrlPath = N;
  const L = (b, v) => Object.keys(b).reduce((F, k) => {
    const J = b[k], de = v ? `${v}[${encodeURIComponent(k)}]` : encodeURIComponent(k), Oe = t.isObject(J) ? L(J, de) : `${de}=${encodeURIComponent(`${J}`)}`;
    return `${F}${F ? "&" : ""}${Oe}`;
  }, "");
  function P(b) {
    return b ? L(b) : "";
  }
  e2.urlEncodeParameters = P;
})(cu);
var vi = {};
Object.defineProperty(vi, "__esModule", { value: true });
vi.Notifications = void 0;
class Xp {
  constructor(t = [], n) {
    this._eventRegistry = {}, t.forEach((r) => {
      this._eventRegistry[r] = [];
    }), n && n.namespace && (this.dispatchNamespace = `com.apple.${n.namespace}`), this.shouldStorageDispatch && (this._handleGlobalStorageEvent = this._handleGlobalStorageEvent.bind(this), window.addEventListener("storage", this._handleGlobalStorageEvent));
  }
  get shouldStorageDispatch() {
    return typeof window != "undefined" && typeof sessionStorage != "undefined" && this.dispatchNamespace;
  }
  addEventListener(t, n) {
    Array.isArray(this._eventRegistry[t]) && this._eventRegistry[t].push(n);
  }
  dispatchEvent(t, n) {
    Array.isArray(this._eventRegistry[t]) && this._eventRegistry[t].forEach((r) => r(n));
  }
  dispatchDistributedEvent(t, n) {
    if (this.dispatchEvent(t, n), this.shouldStorageDispatch) {
      const r = `${this.dispatchNamespace}:${t}`;
      sessionStorage.setItem(r, JSON.stringify(n));
    }
  }
  removeEventListener(t, n) {
    if (Array.isArray(this._eventRegistry[t])) {
      const r = this._eventRegistry[t].indexOf(n);
      this._eventRegistry[t].splice(r, 1);
    }
  }
  _handleGlobalStorageEvent(t) {
    var n;
    if (this.dispatchNamespace && ((n = t.key) === null || n === void 0 ? void 0 : n.startsWith(`${this.dispatchNamespace}:`))) {
      const r = t.key.substring(this.dispatchNamespace.length + 1);
      this.dispatchEvent(r, JSON.parse(t.newValue));
    }
  }
}
vi.Notifications = Xp;
var Qs = {};
(function(e2) {
  Object.defineProperty(e2, "__esModule", { value: true }), e2.deepAssign = e2.transformKeys = e2.transform = e2.set = e2.isEmpty = e2.get = e2.deepClone = e2.hasOwn = void 0;
  function t(u, l) {
    return Object.prototype.hasOwnProperty.call(Object(u), l);
  }
  e2.hasOwn = t;
  function n(u) {
    if (typeof u != "object" || u === null) throw new TypeError("Source is not an Object");
    const l = Array.isArray(u) ? [] : {};
    for (const d in u) t(u, d) && (typeof u[d] == "object" && u[d] !== null ? l[d] = n(u[d]) : l[d] = u[d]);
    return l;
  }
  e2.deepClone = n;
  function r(u, l) {
    return l.split(".").reduce((d, h) => {
      if (d !== void 0) return d[h];
    }, u);
  }
  e2.get = r;
  function i(u) {
    if (typeof u != "object") throw new TypeError("Source is not an Object");
    for (const l in u) if (t(u, l)) return false;
    return true;
  }
  e2.isEmpty = i;
  function s(u, l, d) {
    return l.split(".").reduce((h, g, E, A) => {
      const N = E === A.length - 1, L = t(h, g), P = h[g] instanceof Object, b = h[g] === null;
      if (!N && L && (!P || b)) throw new TypeError(`Value at ${A.slice(0, E + 1).join(".")} in keypath is not an Object.`);
      return N ? (h[g] = d, u) : L ? h[g] : h[g] = {};
    }, u);
  }
  e2.set = s;
  function o(u, l, d = false) {
    return d && (u = Object.keys(u).reduce((h, g) => (h[u[g]] = g, h), {})), Object.keys(u).reduce((h, g) => {
      const E = u[g], A = typeof E == "function" ? E() : r(l, E);
      return A && s(h, g, A), h;
    }, {});
  }
  e2.transform = o;
  function a(u, l) {
    return Object.keys(u).reduce((d, h) => (d[l(h)] = u[h], d), {});
  }
  e2.transformKeys = a;
  const c = (...u) => {
    if (u.length <= 1) return u[0];
    const [l, d, ...h] = u;
    return Object.keys(d).forEach((g) => {
      const E = d[g];
      typeof E != "object" ? l[g] = E : Array.isArray(E) || !(g in l) ? l[g] = n(E) : e2.deepAssign(l[g], E);
    }), e2.deepAssign(l, ...h);
  };
  e2.deepAssign = c;
})(Qs);
var rt = {};
Object.defineProperty(rt, "__esModule", { value: true });
rt.removeCookie = rt.setCookie = rt.getCookie = rt.GenericStorage = void 0;
class Zp {
  constructor(t = {}) {
    this.data = t;
  }
  get data() {
    return this._data;
  }
  set data(t) {
    this._data = t;
  }
  get length() {
    return this.keys.length;
  }
  get keys() {
    return Object.keys(this.data);
  }
  getItem(t) {
    return this.data[t] || null;
  }
  setItem(t, n) {
    this.data[t] = n;
  }
  removeItem(t) {
    delete this.data[t];
  }
  clear() {
    this.keys.forEach((t) => this.removeItem(t));
  }
  key(t) {
    return this.keys[t] || null;
  }
}
rt.GenericStorage = Zp;
function eg(e2 = "", t = document.cookie) {
  const n = t.match(new RegExp(`(?:^|;\\s*)${e2}=([^;]*)`));
  if (n) return n[1];
}
rt.getCookie = eg;
function uu(e2, t, n = "", r = 14, i, s) {
  const o = /* @__PURE__ */ new Date();
  i = i != null ? i : window, s = s != null ? s : /\./.test(i.location.hostname) ? i.location.hostname : "";
  const a = s.length > 0 ? `domain=${s}; ` : "";
  o.setTime(o.getTime() + r * 24 * 60 * 60 * 1e3);
  let c = "";
  i.location.protocol === "https:" && (c = "; secure"), i.document.cookie = `${e2}=${t}; expires=${o.toUTCString()}; ${a}path=${n}${c}`;
}
rt.setCookie = uu;
function tg(e2, t, n) {
  uu(e2, "", "/", 0, t, n);
}
rt.removeCookie = tg;
var _i = {}, lu = {}, yi = {}, Ei = {};
Object.defineProperty(Ei, "__esModule", { value: true });
Ei.camelize = void 0;
const ng = (e2) => e2.toLowerCase().replace(/[^a-zA-Z0-9]+(.)/g, (t, n) => n.toUpperCase());
Ei.camelize = ng;
(function(e2) {
  Object.defineProperty(e2, "__esModule", { value: true }), e2.createLocalStorageFlagStub = e2.createLocalStorageFlag = e2.DevFlags = void 0;
  const t = Ei;
  e2.DevFlags = {};
  const n = (i) => {
    const s = typeof localStorage == "undefined" ? void 0 : localStorage, o = t.camelize(i);
    let a;
    return e2.DevFlags.hasOwnProperty(o) ? a = e2.DevFlags[o] : (a = { get: () => s == null ? void 0 : s.getItem(i), json: () => {
      const c = s == null ? void 0 : s.getItem(i);
      try {
        return c ? JSON.parse(c) : void 0;
      } catch {
        return;
      }
    }, setJson: (c) => {
      try {
        const u = JSON.stringify(c);
        s == null || s.setItem(i, u);
      } catch {
      }
    }, remove: () => s == null ? void 0 : s.removeItem(i), set: (c) => s == null ? void 0 : s.setItem(i, c) }, e2.DevFlags[o] = a), a;
  };
  e2.createLocalStorageFlag = n;
  const r = () => ({ get: () => "", set: () => {
  }, json: () => ({}), remove: () => {
  }, setJson: () => {
  } });
  e2.createLocalStorageFlagStub = r;
})(yi);
var bi = {};
Object.defineProperty(bi, "__esModule", { value: true });
bi.mkHlsJsAutomationConfigHelper = void 0;
const rg = yi;
bi.mkHlsJsAutomationConfigHelper = rg.createLocalStorageFlag("mk-hlsjs-automation-config");
(function(e2) {
  Object.defineProperty(e2, "__esModule", { value: true }), e2.loadScript = e2.loadScriptReset = e2.cdnBaseURL = e2.isAppleHostname = e2.getHlsJsCdnConfig = e2.determineHlsJsBuild = e2.mkHlsJsLogLevelHelper = e2.determineCdnBaseHost = e2.determineCdnBasePrefix = e2.getScriptSrcElements = e2.findScript = e2.HLSJS_VERSION = void 0;
  const t = yi, n = bi, r = oe, i = "js-cdn.music.apple.com", s = "/musickit/v3/";
  e2.HLSJS_VERSION = "2.160.5";
  const o = new RegExp(`^https://([a-z0-9]+-)?${(i + s.replace(/v3/, "(v2|v3)")).replace(/[\.\/]/g, "\\$&")}`, "i"), a = /^([a-z]+:)?\/\//;
  function c(v) {
    return r.isNodeEnvironment() || !v ? null : document.querySelector(`script[src*="${v}"]`);
  }
  e2.findScript = c;
  function u() {
    return typeof document == "undefined" || !document.querySelectorAll ? [] : Array.from(document.querySelectorAll("script[src]"));
  }
  e2.getScriptSrcElements = u;
  function l() {
    for (const v of u()) {
      const F = o.exec(v.src);
      if (F) return F[1] || "";
    }
    return "";
  }
  e2.determineCdnBasePrefix = l;
  function d() {
    return r.isNodeEnvironment() ? "" : `//${l()}${i}`;
  }
  e2.determineCdnBaseHost = d, e2.mkHlsJsLogLevelHelper = t.createLocalStorageFlag("mk-hlsjs-log-level");
  function h() {
    let v;
    switch (e2.mkHlsJsLogLevelHelper.get()) {
      case "trace":
      case "debug":
        v = "hls.dev.js";
        break;
      case "info":
      case "error":
      case "warn":
        v = "hls.production.verbose.min.js";
        break;
      default:
        v = "hls.js";
        break;
    }
    return v;
  }
  e2.determineHlsJsBuild = h;
  function g() {
    const v = { hls: "", rtc: "" };
    if (r.isNodeEnvironment()) return v;
    const F = d();
    let k = e2.HLSJS_VERSION;
    k = t.createLocalStorageFlag("mk-hlsjs-version").get() || k;
    const J = h();
    return v.hls = `https:${F}/hls.js/${k}/hls.js/${J}`, v.rtc = `https:${F}/hls.js/${k}/rtc.js/rtc.min.js`, A(v), v;
  }
  e2.getHlsJsCdnConfig = g;
  function E(v) {
    try {
      return new URL(v).hostname.endsWith(".apple.com");
    } catch {
    }
    return false;
  }
  e2.isAppleHostname = E;
  function A(v) {
    const F = n.mkHlsJsAutomationConfigHelper.json();
    if (!(F == null ? void 0 : F.url)) return;
    const { url: k } = F;
    E(k) && l() === "carry-" && (v.hls = k);
  }
  function N(v, F = window) {
    if (r.isNodeEnvironment()) return "";
    if (F.localStorage.mkCDNBaseURLOverride) return F.localStorage.mkCDNBaseURLOverride;
    const k = c(v);
    return k ? k.getAttribute("src").replace(new RegExp(`${v}$`), "") : `${d()}${s}`;
  }
  e2.cdnBaseURL = N;
  const L = /* @__PURE__ */ new Map();
  function P() {
    L.clear();
  }
  e2.loadScriptReset = P;
  function b(v, F) {
    const k = L.get(v);
    if (k) return k;
    const J = new Promise((de, Oe) => {
      if (r.isNodeEnvironment() && Oe("Dynamic script loading is unsupported in Node environments."), c(v)) return de();
      const _e = document.createElement("script");
      F && Object.keys(F).forEach((m) => {
        _e.setAttribute(m, F[m]);
      }), _e.onload = () => {
        de();
      }, _e.onerror = (m) => {
        Oe(m);
      };
      let re;
      a.test(v) ? re = v : re = `${N(v)}${v}`, _e.src = re, document.head.appendChild(_e);
    });
    return L.set(v, J), J;
  }
  e2.loadScript = b;
})(lu);
var gr = {}, fu = {}, An = {}, He = {}, Si = {}, At = {};
Object.defineProperty(At, "__esModule", { value: true });
At.isTopicLog = At.LOG_LEVELS = void 0;
At.LOG_LEVELS = ["trace", "debug", "info", "warn", "error"];
const ig = (e2) => typeof e2 == "object" && e2 !== null && typeof e2.topic == "string";
At.isTopicLog = ig;
Object.defineProperty(Si, "__esModule", { value: true });
Si.getConsole = void 0;
const sg = At;
class du {
}
sg.LOG_LEVELS.forEach((e2) => {
  du.prototype[e2] = () => {
  };
});
const og = new du(), ag = () => typeof console == "undefined" ? og : console;
Si.getConsole = ag;
var Ti = {}, xt = {};
Object.defineProperty(xt, "__esModule", { value: true });
xt.getConfiguredLevel = xt.getConfiguredTopic = void 0;
const hu = yi, cg = Xt, ug = At;
hu.createLocalStorageFlag("mk-debug");
hu.createLocalStorageFlag("mk-debug-topic");
const Rr = typeof localStorage == "undefined" ? void 0 : localStorage, lg = (e2 = "mk-debug-topic", t = "*") => pu(e2, t);
xt.getConfiguredTopic = lg;
const fg = (e2 = "mk-debug", t = ug.LOG_LEVELS.length) => parseInt(pu(e2, t), 10);
xt.getConfiguredLevel = fg;
const pu = cg.memoize((e2, t) => {
  var n, r;
  return (r = (n = Rr == null ? void 0 : Rr.getItem) === null || n === void 0 ? void 0 : n.call(Rr, e2)) !== null && r !== void 0 ? r : `${t}`;
});
Object.defineProperty(Ti, "__esModule", { value: true });
Ti.canLogLevel = void 0;
const dg = xt, hg = At, pg = (e2, t) => gg(dg.getConfiguredLevel(t)).indexOf(e2) !== -1;
Ti.canLogLevel = pg;
const gg = (e2) => isNaN(e2) || e2 < 0 ? [] : hg.LOG_LEVELS.slice(e2);
var Ai = {};
Object.defineProperty(Ai, "__esModule", { value: true });
Ai.canLogTopic = void 0;
const mg = Xt, vg = xt, _g = (e2, t) => {
  const n = vg.getConfiguredTopic(t);
  return yg(n).some((i) => i.test(e2));
};
Ai.canLogTopic = _g;
const yg = mg.memoize((e2) => e2.split(/[\s,]+/).map((n) => {
  const r = n.replace(/\*/g, ".*?");
  return new RegExp("^" + r + "$");
}));
Object.defineProperty(He, "__esModule", { value: true });
He.log = He.error = He.warn = He.info = He.debug = He.trace = void 0;
const Eg = Si, bg = Ti, Sg = Ai, Tg = (e2, ...t) => Rn(Object.assign({ level: "trace" }, e2), ...t);
He.trace = Tg;
const Ag = (e2, ...t) => Rn(Object.assign({ level: "debug" }, e2), ...t);
He.debug = Ag;
const wg = (e2, ...t) => Rn(Object.assign({ level: "info" }, e2), ...t);
He.info = wg;
const Og = (e2, ...t) => Rn(Object.assign({ level: "warn" }, e2), ...t);
He.warn = Og;
const Ig = (e2, ...t) => Rn(Object.assign({ level: "error" }, e2), ...t);
He.error = Ig;
const Rg = (e2, ...t) => Rn(e2, ...t);
He.log = Rg;
const Rn = (e2, ...t) => {
  let { level: n, levelKey: r, topic: i, topicKey: s } = e2;
  if (n = n != null ? n : "debug", !bg.canLogLevel(n, r) || !Sg.canLogTopic(i, s)) return;
  const o = Eg.getConsole();
  if (typeof o[n] != "function") return;
  let [a, ...c] = t;
  i !== void 0 && (a = `${i}: ${a}`), o[n](a, ...c);
};
Object.defineProperty(An, "__esModule", { value: true });
An.logger = An.Logger = void 0;
const an = He, Gi = xt, Cg = At, Kn = 5, Dg = 1;
class gu {
  constructor(t) {
    var n, r, i, s;
    this._levelFilterKey = "mk-debug", typeof t == "string" ? (this._levelFilterKey = t, this.level = Gi.getConfiguredLevel(this._levelFilterKey, Kn)) : typeof t == "object" ? (this._levelFilterKey = (n = t.levelFilterStorageKey) !== null && n !== void 0 ? n : this._levelFilterKey, this._topicFilterKey = (r = t.topicFilterStorageKey) !== null && r !== void 0 ? r : this.generateDefaultTopicFilterStorageKey(this._levelFilterKey), this.topic = t.topic, this.level = (i = t.level) !== null && i !== void 0 ? i : Gi.getConfiguredLevel(this._levelFilterKey, Kn)) : this.level = t != null ? t : Gi.getConfiguredLevel(this._levelFilterKey, Kn), this._topicFilterKey = (s = this._topicFilterKey) !== null && s !== void 0 ? s : this.generateDefaultTopicFilterStorageKey(this._levelFilterKey);
  }
  get enabled() {
    return this.level < Kn;
  }
  set enabled(t) {
    this.level = t ? Dg : Kn;
  }
  debug(t, ...n) {
    this.callLogMethod(an.debug, t, ...n);
  }
  error(t, ...n) {
    this.callLogMethod(an.error, t, ...n);
  }
  log(t, ...n) {
    this.callLogMethod(an.log, t, ...n);
  }
  info(t, ...n) {
    this.callLogMethod(an.info, t, ...n);
  }
  trace(t, ...n) {
    this.callLogMethod(an.trace, t, ...n);
  }
  warn(t, ...n) {
    this.callLogMethod(an.warn, t, ...n);
  }
  callLogMethod(t, n, ...r) {
    var i, s;
    const o = { levelKey: this._levelFilterKey, topicKey: this._topicFilterKey, topic: this.topic };
    let a = n;
    Cg.isTopicLog(n) && (o.topic = (i = n.topic) !== null && i !== void 0 ? i : o.topic, a = (s = n.message) !== null && s !== void 0 ? s : r.shift()), t(o, a, ...r);
  }
  generateDefaultTopicFilterStorageKey(t) {
    return `${t}-topic`;
  }
}
An.Logger = gu;
An.logger = new gu();
(function(e2) {
  var t = Te && Te.__createBinding || (Object.create ? function(r, i, s, o) {
    o === void 0 && (o = s), Object.defineProperty(r, o, { enumerable: true, get: function() {
      return i[s];
    } });
  } : function(r, i, s, o) {
    o === void 0 && (o = s), r[o] = i[s];
  }), n = Te && Te.__exportStar || function(r, i) {
    for (var s in r) s !== "default" && !Object.prototype.hasOwnProperty.call(i, s) && t(i, r, s);
  };
  Object.defineProperty(e2, "__esModule", { value: true }), n(An, e2);
})(fu);
Object.defineProperty(gr, "__esModule", { value: true });
gr.skLogger = void 0;
const Pg = fu;
gr.skLogger = new Pg.Logger("sk-debug");
var wi = {};
Object.defineProperty(wi, "__esModule", { value: true });
wi.AuthBridgeBase = void 0;
const ba = gr, zi = "mediakit";
class Ng {
  constructor() {
    this._targetOrigin = "*";
  }
  init(t, n) {
    var r;
    this._receiveWindow = t, this._sendWindow = n, this.handleMessage = this.handleMessage.bind(this), (r = this._receiveWindow) === null || r === void 0 || r.addEventListener("message", this.handleMessage);
  }
  sendMessage(t, n) {
    const r = { action: `${zi}:${t}`, data: n };
    this._sendWindow && this._sendWindow.postMessage(JSON.stringify(r), this._targetOrigin);
  }
  handleMessage(t) {
    if (!this._isOriginAllowed(t.origin)) return;
    let n;
    try {
      n = JSON.parse(t.data);
    } catch {
    }
    if (!n || !this._isNamespacedData(n)) return;
    this._targetOrigin === "*" && (this._targetOrigin = t.origin), ba.skLogger.debug("auth-bridge: handleMessage", n);
    const r = n.action.replace(`${zi}:`, "");
    this[r] ? this[r](n.data) : ba.skLogger.debug("auth-bridge: unsupported method", r);
  }
  _isOriginAllowed(t) {
    if (!t) return false;
    const [n, r] = t.split("://");
    let i = "";
    return r && (i = r.split(":")[0]), n === "https" && !!i && i.endsWith(".apple.com");
  }
  _isNamespacedData(t) {
    return t.action && t.action.indexOf(`${zi}:`) !== -1;
  }
}
wi.AuthBridgeBase = Ng;
Object.defineProperty(_i, "__esModule", { value: true });
_i.AuthBridgeApp = void 0;
const Mg = lu, Sa = rt, Lg = gr, kg = wi, Ug = "mediaauth.apple.com/auth-bridge/";
class Fg extends kg.AuthBridgeBase {
  constructor() {
    super();
    this.whenFrameInited = new Promise((t) => this._frameInitResolve = t), this.whenAuthCompleted = new Promise((t) => this._authUpdateResolve = t), this.frame = document.createElement("iframe"), this.frame.src = this._getIframeSrc(), this.frame.style.display = "none", document.body.appendChild(this.frame), this.init(window, this.frame.contentWindow);
  }
  requestAuthUpdate() {
    this.whenFrameInited.then(() => this.sendMessage("requestAuthUpdate"));
  }
  setCookieItem(t, n) {
    this.whenFrameInited.then(() => this.sendMessage("setCookieItem", { name: t, value: n }));
  }
  clearAuth() {
    this.whenFrameInited.then(() => this.sendMessage("clearAuth"));
  }
  frameInit() {
    var t;
    (t = this._frameInitResolve) === null || t === void 0 || t.call(this), this.requestAuthUpdate();
  }
  updateAuth(t) {
    if ((t == null ? void 0 : t.enabled) && (t == null ? void 0 : t.cookies)) {
      const n = t.cookies;
      Object.keys(n).forEach((r) => {
        var i;
        const s = (i = n[r]) !== null && i !== void 0 ? i : "";
        s ? Sa.setCookie(r, s, "/", 7) : Sa.removeCookie(r);
      });
    }
    this._authUpdateResolve && (this._authUpdateResolve(), this._authUpdateResolve = void 0);
  }
  authClearedFromOtherFrame() {
    Lg.skLogger.warn("Override auth-bridge/app's authClearedFromOtherFrame to trigger app-specific sign out behavior");
  }
  _getIframeSrc() {
    let t = Mg.determineCdnBasePrefix();
    return t && (t = `?env=${t.substring(0, t.length - 1)}`), `https://${Ug}${t}`;
  }
}
_i.AuthBridgeApp = Fg;
var Qt = {};
Object.defineProperty(Qt, "__esModule", { value: true });
Qt.getCommerceHostname = Qt.isItmsBuild = void 0;
const Bg = /* @__PURE__ */ new Set(["apps", "books", "music", "podcasts", "tv"]), xg = /\.apple\.com$/;
function Kg(e2) {
  if (!e2 || !xg.test(e2)) return;
  const t = e2.split(".");
  let n = t[t.length - 3];
  const r = n;
  if (n && n.includes("-")) {
    const i = n.split("-");
    n = i[i.length - 1];
  }
  if (!!Bg.has(n)) return r;
}
const jg = { variant: "$BUILD_VARIANT" };
function Vg() {
  return jg.variant === "itms";
}
Qt.isItmsBuild = Vg;
function Hg(e2, t) {
  !t && typeof location != "undefined" && location.hostname && (t = location);
  let n = `${e2}.itunes.apple.com`;
  if (!t) return n;
  const r = Kg(t.hostname);
  return r && (n = `${e2}.${r}.apple.com`), n;
}
Qt.getCommerceHostname = Hg;
var Js = {};
(function(e2) {
  Object.defineProperty(e2, "__esModule", { value: true }), e2.buildQueryParams = e2.Defaults = void 0;
  var t;
  (function(r) {
    r.APP = "music", r.P = "subscribe";
  })(t = e2.Defaults || (e2.Defaults = {}));
  function n(r = { app: t.APP, p: t.P }) {
    return typeof r.app == "undefined" && (r.app = t.APP), typeof r.p == "undefined" && (r.p = t.P), Object.keys(r).map((i) => `${encodeURIComponent(i)}=${encodeURIComponent(r[i])}`).join("&");
  }
  e2.buildQueryParams = n;
})(Js);
var Ut = {};
Object.defineProperty(Ut, "__esModule", { value: true });
Ut.SKRequiredPrivacyVersion = Ut.SKRealmCidNamespace = Ut.SKRealmBundle = void 0;
Ut.SKRealmBundle = { [2]: "com.apple.onboarding.tvapp", [0]: "com.apple.onboarding.applemusic" };
Ut.SKRealmCidNamespace = { [2]: "pltvcid", [0]: "pldfltcid" };
Ut.SKRequiredPrivacyVersion = { "com.apple.onboarding.tvapp": 5, "com.apple.onboarding.applemusic": 3 };
var mu = {}, vu = {}, _u = {};
(function(e2) {
  Object.defineProperty(e2, "__esModule", { value: true }), e2.uint8ArrayToBase64 = e2.stringToUint16Array = e2.stringToUint8Array = e2.stringToHashCode = e2.ensureArray = e2.base64ToUint8Array = e2.arrayBufferToString = void 0;
  const t = oe, n = Xt;
  e2.arrayBufferToString = n.memoize((i) => {
    const s = new Uint16Array(i), o = s.length;
    let a = "";
    for (let c = 0; c < o; c++) a += String.fromCharCode(s[c]);
    return a;
  }), e2.base64ToUint8Array = n.memoize((i) => {
    const s = t.atob(i);
    return e2.stringToUint8Array(s);
  });
  function r(i = []) {
    return Array.isArray(i) ? i : [i];
  }
  e2.ensureArray = r, e2.stringToHashCode = n.memoize((i) => {
    let s = 0;
    if (i.length !== 0) for (let o = 0; o < i.length; o++) s = (s << 5) - s + i.charCodeAt(o), s |= 0;
    return s;
  }), e2.stringToUint8Array = n.memoize((i) => {
    const s = i.length, o = new ArrayBuffer(s), a = new Uint8Array(o);
    for (let c = 0; c < s; c++) a[c] = i.charCodeAt(c);
    return a;
  }), e2.stringToUint16Array = n.memoize((i) => {
    const s = i.length, o = new ArrayBuffer(s * 2), a = new Uint16Array(o);
    for (let c = 0; c < s; c++) a[c] = i.charCodeAt(c);
    return a;
  }), e2.uint8ArrayToBase64 = n.memoize((i) => {
    let s, o, a, c, u, l, d, h = 0;
    const g = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
    let E = "";
    for (; h < i.length; ) s = i[h++], o = h < i.length ? i[h++] : Number.NaN, a = h < i.length ? i[h++] : Number.NaN, c = s >> 2, u = (s & 3) << 4 | o >> 4, l = (o & 15) << 2 | a >> 6, d = a & 63, isNaN(o) ? l = d = 64 : isNaN(a) && (d = 64), E += g.charAt(c) + g.charAt(u) + g.charAt(l) + g.charAt(d);
    return E;
  });
})(_u);
(function(e2) {
  var t = Te && Te.__awaiter || function(c, u, l, d) {
    function h(g) {
      return g instanceof l ? g : new l(function(E) {
        E(g);
      });
    }
    return new (l || (l = Promise))(function(g, E) {
      function A(P) {
        try {
          L(d.next(P));
        } catch (b) {
          E(b);
        }
      }
      function N(P) {
        try {
          L(d.throw(P));
        } catch (b) {
          E(b);
        }
      }
      function L(P) {
        P.done ? g(P.value) : h(P.value).then(A, N);
      }
      L((d = d.apply(c, u || [])).next());
    });
  };
  Object.defineProperty(e2, "__esModule", { value: true }), e2.Dispatch = e2.RPCErrorCodes = void 0;
  const n = _u, r = Qs;
  var i;
  (function(c) {
    c[c.ParseError = -32700] = "ParseError", c[c.InvalidRequest = -32600] = "InvalidRequest", c[c.MethodNotFound = -32601] = "MethodNotFound", c[c.InvalidParams = -32602] = "InvalidParams", c[c.InternalError = -32603] = "InternalError";
  })(i = e2.RPCErrorCodes || (e2.RPCErrorCodes = {}));
  const s = "*", o = "2.0";
  class a {
    constructor(u = {}) {
      this._registry = {}, this._sequence = 0, this.handle = (l) => {
        !l.data || l.data.jsonrpc !== o || this.origin !== s && this.origin !== l.origin || (l.data.method && this.destination ? this.handleRequest(l.data).then((d) => {
          this.send(this.destination, d);
        }) : (r.hasOwn(l.data, "result") || l.data.error) && this.handleResponse(l.data));
      }, this.destination = u.destination, this.methods = u.methods || {}, this.origin = u.origin || s, u.source && (this.source = u.source);
    }
    get source() {
      return this._source;
    }
    set source(u) {
      if (!u && this._source) {
        this._source.removeEventListener("message", this.handle), this._source = void 0;
        return;
      }
      u.addEventListener("message", this.handle), this._source = u;
    }
    apply(u, l) {
      if (!this.destination) throw new Error("No destination");
      const d = this._sequence++, h = new Promise((g, E) => {
        this._registry[d] = { resolve: g, reject: E };
      });
      return this.send(this.destination, { jsonrpc: o, id: d, method: u, params: l }), h;
    }
    call(u, ...l) {
      return this.apply(u, l);
    }
    handleRequest(u) {
      return t(this, void 0, void 0, function* () {
        const l = { jsonrpc: o, id: u.id }, d = this.methods[u.method];
        if (!d) return Object.assign(l, { error: { code: i.MethodNotFound, message: "Method not found" } });
        try {
          const h = yield d.apply(void 0, n.ensureArray(u.params));
          return Object.assign(l, { result: h });
        } catch (h) {
          return Object.assign(l, { error: { code: h.code || i.InternalError, message: h.message } });
        }
      });
    }
    handleResponse(u) {
      const l = this._registry[u.id];
      delete this._registry[u.id], !!l && (u.error ? l.reject(Object.assign(Error(), u.error)) : l.resolve(u.result));
    }
    send(u, l) {
      u.postMessage(l, u.window === u ? this.origin : void 0);
    }
  }
  e2.Dispatch = a;
})(vu);
(function(e2) {
  var t = Te && Te.__awaiter || function(u, l, d, h) {
    function g(E) {
      return E instanceof d ? E : new d(function(A) {
        A(E);
      });
    }
    return new (d || (d = Promise))(function(E, A) {
      function N(b) {
        try {
          P(h.next(b));
        } catch (v) {
          A(v);
        }
      }
      function L(b) {
        try {
          P(h.throw(b));
        } catch (v) {
          A(v);
        }
      }
      function P(b) {
        b.done ? E(b.value) : g(b.value).then(N, L);
      }
      P((h = h.apply(u, l || [])).next());
    });
  };
  Object.defineProperty(e2, "__esModule", { value: true }), e2.ServiceSetupView = e2.ServiceSetupAction = e2.ALLOWED_DOMAIN_REGEX = e2.SUBSCRIBE_URL = e2.SERVICE_URL = e2.AUTHENTICATE_REQUEST_URL = e2.ACTIVATE_REQUEST_URL = e2.validateToken = e2.AuthorizationStatus = void 0;
  const n = vu, r = Qt, i = Js;
  var s;
  (function(u) {
    u[u.UNAVAILABLE = -1] = "UNAVAILABLE", u[u.NOT_DETERMINED = 0] = "NOT_DETERMINED", u[u.DENIED = 1] = "DENIED", u[u.RESTRICTED = 2] = "RESTRICTED", u[u.AUTHORIZED = 3] = "AUTHORIZED";
  })(s = e2.AuthorizationStatus || (e2.AuthorizationStatus = {}));
  function o(u) {
    var l;
    if (typeof u != "string") return false;
    const d = u.match(/[a-zA-Z0-9=\/+]{32,}==$/);
    return (l = d && d.length > 0) !== null && l !== void 0 ? l : false;
  }
  e2.validateToken = o, e2.ACTIVATE_REQUEST_URL = "https://activate.apple.com/mkauth", e2.AUTHENTICATE_REQUEST_URL = `https://${r.getCommerceHostname("buy")}/commerce/account/authenticateMusicKitRequest`, e2.SERVICE_URL = "https://authorize.music.apple.com", e2.SUBSCRIBE_URL = `${e2.SERVICE_URL}/upsell`, e2.ALLOWED_DOMAIN_REGEX = /^https?:\/\/(.+\.)*(apple\.com|apps\.mzstatic\.com)(\/[\w\d]+)*$/;
  var a;
  (function(u) {
    u[u.AUTHORIZE = 0] = "AUTHORIZE", u[u.SUBSCRIBE = 1] = "SUBSCRIBE";
  })(a = e2.ServiceSetupAction || (e2.ServiceSetupAction = {}));
  class c {
    constructor(l, d = {}) {
      var h;
      if (this.developerToken = l, this.authenticateMethod = "GET", this.target = "apple-music-service-view", this.deeplinkParameters = d && d.deeplinkParameters || {}, this.iconURL = d && d.iconURL, this.authenticateMethod = d && d.authenticateMethod || "GET", this.isServiceView && window.opener !== window) {
        const g = typeof sessionStorage != "undefined" ? sessionStorage.getItem("ac") : void 0, E = g != null ? new URL(g).origin : void 0;
        E && (this.dispatch = new n.Dispatch({ destination: (h = window.opener) !== null && h !== void 0 ? h : void 0, origin: E, source: window }));
      }
    }
    get isServiceView() {
      return /(authorize\.(.+\.)*apple\.com)/i.test(window.location.hostname) || window && window.name === this.target || false;
    }
    focus() {
      this._window && window.focus && this._window.focus();
    }
    load(l = { action: a.AUTHORIZE }) {
      return t(this, void 0, void 0, function* () {
        return l.action === a.SUBSCRIBE ? this._subscribeAction(l.parameters) : this._authorizeAction(l.parameters);
      });
    }
    present(l = "", d) {
      const { height: h, left: g, top: E, width: A } = this._calculateClientDimensions(), N = { height: 650, menubar: "no", resizable: "no", scrollbars: "no", status: "no", toolbar: "no", width: 650 }, L = Object.assign(Object.assign(Object.assign({}, N), { left: A / 2 - N.width / 2 + g, top: h / 2 - N.height / 2 + E }), d), P = Object.keys(L).map((b) => `${b}=${L[b]}`).join(",");
      return /trident|msie/i.test(navigator.userAgent) ? (this._window = window.open(window.location.href, this.target, P) || void 0, this._window.location.href = l) : this._window = window.open(l, this.target, P) || void 0, /\bedge\b/i.test(navigator.userAgent) && (this._window.opener = self), this.focus(), this._window;
    }
    _authorizeAction(l = {}) {
      var d;
      return t(this, void 0, void 0, function* () {
        let h, g;
        const E = ((d = window.location) === null || d === void 0 ? void 0 : d.href) || "";
        return this.authenticateMethod === "GET" ? g = `${e2.SERVICE_URL}/woa?${i.buildQueryParams(Object.assign(Object.assign({}, this.deeplinkParameters), { a: btoa(this._thirdPartyInfo()), referrer: E }))}` : (h = this._buildFormElement(e2.AUTHENTICATE_REQUEST_URL), document.body.appendChild(h)), new Promise((A, N) => {
          const L = this.present(g);
          this.dispatch = new n.Dispatch({ methods: { authorize(P, b, v) {
            o(P) ? A({ restricted: b && b === "1", userToken: P, cid: v }) : N(s.NOT_DETERMINED);
          }, close() {
          }, decline() {
            N(s.DENIED);
          }, switchUserId() {
            N(s.NOT_DETERMINED);
          }, thirdPartyInfo: () => this._thirdPartyInfo(this.developerToken, Object.assign(Object.assign({}, this.deeplinkParameters), l)), unavailable() {
            N(s.UNAVAILABLE);
          } }, origin: e2.SERVICE_URL, source: window, destination: L }), h && h.submit();
        });
      });
    }
    _buildFormElement(l, d = this.target, h = this.developerToken) {
      const g = document.createElement("form");
      g.setAttribute("method", "post"), g.setAttribute("action", l), g.setAttribute("target", d), g.style.display = "none";
      const E = document.createElement("input");
      E.setAttribute("name", "jwtToken"), E.setAttribute("value", h), g.appendChild(E);
      const A = document.createElement("input");
      A.setAttribute("name", "isWebPlayer"), A.setAttribute("value", "true"), g.appendChild(A);
      const N = document.createElement("input");
      return N.setAttribute("name", "LogoURL"), N.setAttribute("value", ""), g.appendChild(N), g;
    }
    _calculateClientDimensions(l = window) {
      return { height: l.innerHeight ? l.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height, left: l.screenLeft ? l.screenLeft : screen.availLeft || screen.left, top: l.screenTop ? l.screenTop : screen.availTop || screen.top, width: l.innerWidth ? l.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width };
    }
    _subscribeAction(l = {}) {
      return t(this, void 0, void 0, function* () {
        return Object.assign(l, this.deeplinkParameters), new Promise((d, h) => {
          const g = `${e2.SUBSCRIBE_URL}?${i.buildQueryParams(l)}`;
          this.present(g), window.addEventListener("message", ({ data: E, origin: A, source: N }) => {
            const { closeWindow: L, launchClient: P } = typeof E == "string" ? JSON.parse(E) : E;
            (!A || e2.ALLOWED_DOMAIN_REGEX.test(A)) && (P ? P.supported === 0 ? h("Unable to subscribe on this platform.") : d(P) : h("Subscribe action error."));
          });
        });
      });
    }
    _thirdPartyInfo(l = this.developerToken, d) {
      var h;
      let g = this.iconURL;
      const E = window.location.host || document.referrer, A = [...[].slice.call(document.querySelectorAll('link[rel="apple-music-app-icon"]')), ...[].slice.call(document.querySelectorAll('link[rel="apple-touch-icon-precomposed"]')), ...[].slice.call(document.querySelectorAll('link[rel="apple-touch-icon"]'))];
      if (A && A[0] && A[0].href) {
        const N = A.find((L) => L.sizes ? L.sizes.value === "120x120" : false);
        g = (h = N == null ? void 0 : N.href) !== null && h !== void 0 ? h : A[0].href;
      }
      return JSON.stringify({ thirdPartyIconURL: g, thirdPartyName: E, thirdPartyParameters: d, thirdPartyToken: l });
    }
  }
  e2.ServiceSetupView = c;
})(mu);
var yu = {};
(function(e2) {
  var t = Te && Te.__awaiter || function(s, o, a, c) {
    function u(l) {
      return l instanceof a ? l : new a(function(d) {
        d(l);
      });
    }
    return new (a || (a = Promise))(function(l, d) {
      function h(A) {
        try {
          E(c.next(A));
        } catch (N) {
          d(N);
        }
      }
      function g(A) {
        try {
          E(c.throw(A));
        } catch (N) {
          d(N);
        }
      }
      function E(A) {
        A.done ? l(A.value) : u(A.value).then(h, g);
      }
      E((c = c.apply(s, o || [])).next());
    });
  };
  Object.defineProperty(e2, "__esModule", { value: true }), e2.Storefront = e2.fetchStorefronts = e2.Defaults = void 0;
  const n = pr;
  (function(s) {
    s.ID = "us", s.LANGUAGE_TAG = "en-gb";
  })(e2.Defaults || (e2.Defaults = {}));
  function r(s, o = "https://api.music.apple.com/v1") {
    return t(this, void 0, void 0, function* () {
      const a = new Headers({ Authorization: `Bearer ${s}` }), u = yield (yield fetch(`${o}/storefronts`, { headers: a })).json();
      return u.errors ? Promise.reject(u.errors) : u.data;
    });
  }
  e2.fetchStorefronts = r;
  class i {
    constructor(o, a, c) {
      this.id = o, this.attributes = a, this.type = "storefronts", this.href = c || `/v1/${this.type}/${o}`;
    }
    static inferFromLanguages(o, a = n.getLanguages()) {
      return t(this, void 0, void 0, function* () {
        const c = yield r(o), u = c.map((E) => E.id), l = a[0] || "en-US", [d, h] = l.toLowerCase().split(/-|_/), g = u.includes(h) ? h : "us";
        return c.find((E) => E.id === g);
      });
    }
  }
  e2.Storefront = i;
})(yu);
var Eu = {};
(function(e2) {
  Object.defineProperty(e2, "__esModule", { value: true }), e2.SKStorageKey = void 0, (function(t) {
    t.DEFAULT_CID = "pldfltcid", t.TV_CID = "pltvcid", t.RESTRICTIONS_ENABLED = "itre", t.STOREFRONT_COUNTRY_CODE = "itua", t.USER_TOKEN = "media-user-token";
  })(e2.SKStorageKey || (e2.SKStorageKey = {}));
})(Eu);
(function(e2) {
  var t = Te && Te.__decorate || function(re, m, I, q) {
    var $ = arguments.length, z = $ < 3 ? m : q === null ? q = Object.getOwnPropertyDescriptor(m, I) : q, H;
    if (typeof Reflect == "object" && typeof Reflect.decorate == "function") z = Reflect.decorate(re, m, I, q);
    else for (var pe = re.length - 1; pe >= 0; pe--) (H = re[pe]) && (z = ($ < 3 ? H(z) : $ > 3 ? H(m, I, z) : H(m, I)) || z);
    return $ > 3 && z && Object.defineProperty(m, I, z), z;
  }, n = Te && Te.__metadata || function(re, m) {
    if (typeof Reflect == "object" && typeof Reflect.metadata == "function") return Reflect.metadata(re, m);
  }, r = Te && Te.__awaiter || function(re, m, I, q) {
    function $(z) {
      return z instanceof I ? z : new I(function(H) {
        H(z);
      });
    }
    return new (I || (I = Promise))(function(z, H) {
      function pe(ue) {
        try {
          ge(q.next(ue));
        } catch (Je) {
          H(Je);
        }
      }
      function Ne(ue) {
        try {
          ge(q.throw(ue));
        } catch (Je) {
          H(Je);
        }
      }
      function ge(ue) {
        ue.done ? z(ue.value) : $(ue.value).then(pe, Ne);
      }
      ge((q = q.apply(re, m || [])).next());
    });
  };
  Object.defineProperty(e2, "__esModule", { value: true }), e2.StoreKit = e2.PLDFLTCID = e2.StoreKitNotifications = e2.SKStorageKey = e2.SKRequiredPrivacyVersion = e2.SKRealmBundle = e2.validateToken = e2.AuthorizationStatus = void 0;
  const i = fi, s = di, o = hi, a = gi, c = mi, u = au, l = pr, d = cu, h = vi, g = Qs, E = rt, A = oe, N = _i, L = Qt, P = Js, b = Ut;
  Object.defineProperty(e2, "SKRealmBundle", { enumerable: true, get: function() {
    return b.SKRealmBundle;
  } }), Object.defineProperty(e2, "SKRequiredPrivacyVersion", { enumerable: true, get: function() {
    return b.SKRequiredPrivacyVersion;
  } });
  const v = mu;
  Object.defineProperty(e2, "AuthorizationStatus", { enumerable: true, get: function() {
    return v.AuthorizationStatus;
  } }), Object.defineProperty(e2, "validateToken", { enumerable: true, get: function() {
    return v.validateToken;
  } });
  const F = yu, k = Eu;
  Object.defineProperty(e2, "SKStorageKey", { enumerable: true, get: function() {
    return k.SKStorageKey;
  } });
  var J;
  (function(re) {
    re.authorizationStatusDidChange = "authorizationStatusDidChange", re.authorizationStatusWillChange = "authorizationStatusWillChange", re.eligibleForSubscribeView = "eligibleForSubscribeView", re.needsGDPRDidChange = "needsGDPRDidChange", re.storefrontCountryCodeDidChange = "storefrontCountryCodeDidChange", re.storefrontIdentifierDidChange = "storefrontIdentifierDidChange", re.userTokenDidChange = "userTokenDidChange";
  })(J = e2.StoreKitNotifications || (e2.StoreKitNotifications = {})), e2.PLDFLTCID = k.SKStorageKey.DEFAULT_CID;
  let de = false;
  de = true;
  const Oe = `https://${L.getCommerceHostname("buy")}`, ve = `https://${L.getCommerceHostname("play")}/WebObjects/MZPlay.woa/wa`;
  class _e extends h.Notifications {
    constructor(m, I) {
      super([J.authorizationStatusDidChange, J.authorizationStatusWillChange, J.eligibleForSubscribeView, J.needsGDPRDidChange, J.storefrontCountryCodeDidChange, J.userTokenDidChange, J.storefrontIdentifierDidChange]);
      this.developerToken = m, this.apiBase = "https://api.music.apple.com/v1", this.iTunesBuyBase = Oe, this.meParameters = {}, this.persist = "localstorage", this.playBase = ve, this.prefix = "music", this.realm = 0, this.storage = window.localStorage, this._authorizationStatus = v.AuthorizationStatus.NOT_DETERMINED, this._dispatchedSubscribeView = false, this._me = null, this._cids = {}, this._gdprVersion = -1, this._needsGDPR = void 0, this._dynamicUserToken = E.getCookie(k.SKStorageKey.USER_TOKEN), I && (I.apiBase && (this.apiBase = I.apiBase), I.deeplink && (this.deeplinkParameters = I.deeplink), I.meParameters && (this.meParameters = I.meParameters), I.persist && (this.persist = I.persist), I.prefix && (this.prefix = I.prefix), I.realm !== void 0 && (this.realm = I.realm), this.bundleId = b.SKRealmBundle[this.realm]), this.cidNamespace = b.SKRealmCidNamespace[this.realm], this._developerToken = new o.DeveloperToken(m), this._serviceSetupView = new v.ServiceSetupView(m, { authenticateMethod: I && I.authenticateMethod, iconURL: I && I.iconURL, deeplinkParameters: this.deeplinkParameters }), this.storagePrefix = `${this.prefix}.${this._developerToken.teamId}`.toLocaleLowerCase();
      const q = this._getStorageItem(k.SKStorageKey.USER_TOKEN);
      this.userToken = q || void 0, this.developerToken && this.userTokenIsValid && (this._restrictedEnabled = this.restrictedEnabled, this.shouldDisplayPrivacyLink(this.bundleId).catch(() => {
      })), this._storefrontCountryCode = this.storefrontCountryCode, this.whenAuthCompleted = Promise.resolve(), A.isNodeEnvironment() || (this._processLocationHash(window.location.hash), this.persist === "cookie" && !(I == null ? void 0 : I.disableAuthBridge) && (this.authBridgeApp = new N.AuthBridgeApp(), this.authBridgeApp.authClearedFromOtherFrame = this.revokeUserToken.bind(this), this.whenAuthCompleted = this.authBridgeApp.whenAuthCompleted.then(() => {
        this.userToken = this._getStorageItem(k.SKStorageKey.USER_TOKEN) || void 0;
      })));
    }
    get authorizationStatus() {
      return this._authorizationStatus;
    }
    set authorizationStatus(m) {
      this._authorizationStatus !== m && (this._getIsActiveSubscription.updateCache(void 0), this.dispatchEvent(J.authorizationStatusWillChange, { authorizationStatus: this._authorizationStatus, newAuthorizationStatus: m }), this._authorizationStatus = m, this.dispatchEvent(J.authorizationStatusDidChange, { authorizationStatus: m }));
    }
    get cid() {
      if (!this._cids[this.cidNamespace]) {
        const m = this._getStorageItem(this.cidNamespace);
        this._cids[this.cidNamespace] = m || void 0;
      }
      return this._cids[this.cidNamespace];
    }
    set cid(m) {
      m ? this._setStorageItem(this.cidNamespace, m) : this._removeStorageItem(this.cidNamespace), this._cids[this.cidNamespace] = m;
    }
    eligibleForSubscribeView() {
      return r(this, void 0, void 0, function* () {
        const m = yield this.hasMusicSubscription();
        return (!this.hasAuthorized || this.hasAuthorized && !m) && !this._dispatchedSubscribeView;
      });
    }
    get hasAuthorized() {
      return this.authorizationStatus > v.AuthorizationStatus.DENIED;
    }
    get logoutURL() {
      return de ? `${this.iTunesBuyBase}/account/web/logout` : `${this.playBase}/webPlayerLogout`;
    }
    get parentalControls() {
      return this._parentalControls;
    }
    set parentalControls(m) {
      this._parentalControls = m, m && (this.realm === 0 ? this.restrictedEnabled = m.musicParentalControlsEnabled : this.realm === 2 && m.videoContentRestrictions && (this.authorizationStatus = v.AuthorizationStatus.RESTRICTED));
    }
    get _pldfltcid() {
      return this._cids[k.SKStorageKey.DEFAULT_CID];
    }
    set _pldfltcid(m) {
      this._cids[k.SKStorageKey.DEFAULT_CID] = m;
    }
    get privacyAcknowledgements() {
      return this._privacyAcknowledgements;
    }
    set privacyAcknowledgements(m) {
      if (this._privacyAcknowledgements = m, !m) {
        this._gdprVersion = -1, this._needsGDPR = void 0;
        return;
      }
      this.bundleId && (this._gdprVersion = m[this.bundleId] || 0, this._needsGDPR = this._gdprVersion < (b.SKRequiredPrivacyVersion[this.bundleId] || 0), this._needsGDPR && this.dispatchEvent(J.needsGDPRDidChange, { GDPRVersion: this._gdprVersion, needsGDPR: this._needsGDPR }));
    }
    get restrictedEnabled() {
      if (this.userToken && typeof this._restrictedEnabled != "boolean") {
        const m = this._getStorageItem(k.SKStorageKey.RESTRICTIONS_ENABLED);
        if (m) this._restrictedEnabled = m !== "0";
        else if (this._storefrontCountryCode) {
          const I = ["br", "ch", "gt", "hu", "id", "in", "it", "kr", "la", "lt", "my", "ru", "sg", "tr"];
          this._restrictedEnabled = I.indexOf(this._storefrontCountryCode) !== -1 || void 0;
        }
      }
      return this._restrictedEnabled;
    }
    set restrictedEnabled(m) {
      this.userToken && m !== void 0 && this._setStorageItem(k.SKStorageKey.RESTRICTIONS_ENABLED, m ? "1" : "0"), this._restrictedEnabled = m, m && (this.authorizationStatus = v.AuthorizationStatus.RESTRICTED);
    }
    get storefrontCountryCode() {
      if (!this._storefrontCountryCode) {
        const m = this._getStorageItem(k.SKStorageKey.STOREFRONT_COUNTRY_CODE);
        this._storefrontCountryCode = (m == null ? void 0 : m.toLowerCase()) || F.Defaults.ID;
      }
      return this._storefrontCountryCode;
    }
    set storefrontCountryCode(m) {
      m && this.userToken ? this._setStorageItem(k.SKStorageKey.STOREFRONT_COUNTRY_CODE, m) : this._removeStorageItem(k.SKStorageKey.STOREFRONT_COUNTRY_CODE), this._storefrontCountryCode = m, this.dispatchEvent(J.storefrontCountryCodeDidChange, { storefrontCountryCode: m });
    }
    get storefrontIdentifier() {
      return this._storefrontIdentifier;
    }
    set storefrontIdentifier(m) {
      this._storefrontIdentifier = m, this.dispatchEvent(J.storefrontIdentifierDidChange, { storefrontIdentifier: m });
    }
    runTokenValidations(m, I = true) {
      m && v.validateToken(m) ? (I && this._setStorageItem(k.SKStorageKey.USER_TOKEN, m), this.authorizationStatus = this.restrictedEnabled ? v.AuthorizationStatus.RESTRICTED : v.AuthorizationStatus.AUTHORIZED) : (this._removeStorageItem(k.SKStorageKey.USER_TOKEN), this.authorizationStatus = v.AuthorizationStatus.NOT_DETERMINED);
    }
    wrapDynamicUserTokenForChanges(m, I = a.invoke(m)) {
      if (typeof m != "function") return m;
      let q = I;
      return () => {
        const $ = a.invoke(m);
        return q !== $ && (q = $, this.runTokenValidations($, false), this.dispatchEvent(J.userTokenDidChange, { userToken: $ })), $ || "";
      };
    }
    get dynamicUserToken() {
      return this._dynamicUserToken;
    }
    set dynamicUserToken(m) {
      const I = a.invoke(m);
      this._dynamicUserToken = this.wrapDynamicUserTokenForChanges(m, I), this.runTokenValidations(I, typeof m != "function"), this.dispatchEvent(J.userTokenDidChange, { userToken: I });
    }
    get userToken() {
      return a.invoke(this.dynamicUserToken);
    }
    set userToken(m) {
      this.dynamicUserToken = m;
    }
    get userTokenIsValid() {
      return v.validateToken(this.userToken);
    }
    deeplinkURL(m = {}) {
      return m = Object.assign(Object.assign({}, this.deeplinkParameters || {}), m), `https://finance-app.itunes.apple.com/deeplink?${P.buildQueryParams(m)}`;
    }
    itunesDeeplinkURL(m = { p: "browse" }) {
      return m = Object.assign(Object.assign({}, this.deeplinkParameters || {}), m), `https://itunes.apple.com/deeplink?${P.buildQueryParams(m)}`;
    }
    pldfltcid() {
      return r(this, void 0, void 0, function* () {
        if (!this._cids[k.SKStorageKey.DEFAULT_CID]) try {
          yield this.infoRefresh();
        } catch {
          return;
        }
        return this._cids[k.SKStorageKey.DEFAULT_CID];
      });
    }
    renewUserToken() {
      return r(this, void 0, void 0, function* () {
        if (!this.userToken) return this.requestUserToken();
        const m = new Headers({ Authorization: `Bearer ${this.developerToken}`, Accept: "application/json", "Content-Type": "application/json", "X-Apple-Music-User-Token": `${this.userToken}` }), I = yield fetch(`${this.playBase}/renewMusicToken`, { method: "POST", headers: m });
        if (I.status === 401) return yield this.revokeUserToken(), Promise.reject(new Error("Renew token"));
        const q = yield I.json();
        return q["music-token"] && (this.userToken = q["music-token"]), this.userToken;
      });
    }
    requestStorefrontCountryCode() {
      return r(this, void 0, void 0, function* () {
        if (this.authorizationStatus <= v.AuthorizationStatus.DENIED) return Promise.reject(`Not authorized: ${this.authorizationStatus}`);
        const m = new Headers({ Authorization: `Bearer ${this.developerToken}`, "Music-User-Token": this.userToken || "" }), I = yield fetch(`${this.apiBase}/me/storefront`, { headers: m });
        if (I && !I.ok) return this._reset(), Promise.reject("Storefront Country Code error.");
        const q = yield I.json();
        if (q.errors) return Promise.reject(q.errors);
        const [$] = q.data;
        return !$ || !$.id ? Promise.reject("Storefront Country Code error.") : (this.storefrontCountryCode = $.id, this.storefrontCountryCode);
      });
    }
    requestStorefrontIdentifier() {
      return r(this, void 0, void 0, function* () {
        if (!this.storefrontIdentifier) {
          const m = yield F.Storefront.inferFromLanguages(this.developerToken);
          this.storefrontIdentifier = m.id;
        }
        return this.storefrontIdentifier;
      });
    }
    requestUserToken() {
      return r(this, void 0, void 0, function* () {
        if (this._serviceSetupView.isServiceView) return this.userToken || "";
        try {
          const m = yield this._serviceSetupView.load({ action: v.ServiceSetupAction.AUTHORIZE });
          this.cid = m.cid, this.userToken = m.userToken, this.restrictedEnabled = m.restricted;
        } catch (m) {
          return this._reset(), this.authorizationStatus = m, Promise.reject(m);
        }
        return this.userToken;
      });
    }
    revokeUserToken() {
      var m;
      return r(this, void 0, void 0, function* () {
        try {
          yield this._webPlayerLogout();
        } catch {
        }
        (m = this.authBridgeApp) === null || m === void 0 || m.clearAuth(), this.dispatchEvent(J.authorizationStatusWillChange, { authorizationStatus: this.authorizationStatus, newAuthorizationStatus: v.AuthorizationStatus.NOT_DETERMINED }), this._reset(), this.dispatchEvent(J.authorizationStatusDidChange, { authorizationStatus: this.authorizationStatus }), this.dispatchEvent(J.userTokenDidChange, { userToken: this.userToken });
      });
    }
    setCids(m) {
      this._cids = Object.assign(Object.assign({}, this._cids), m), Object.keys(this._cids).forEach((I) => {
        this._setStorageItem(I, this._cids[I]);
      });
    }
    shouldDisplayPrivacyLink(m) {
      return r(this, void 0, void 0, function* () {
        return this._needsGDPR !== void 0 ? this._needsGDPR : (yield this.me(), this._needsGDPR);
      });
    }
    hasMusicSubscription() {
      return r(this, void 0, void 0, function* () {
        return this.hasAuthorized ? this._getIsActiveSubscription() : false;
      });
    }
    _getIsActiveSubscription() {
      var m;
      return r(this, void 0, void 0, function* () {
        return !!((m = (yield this.me()).subscription) === null || m === void 0 ? void 0 : m.active);
      });
    }
    resetSubscribeViewEligibility() {
      this._dispatchedSubscribeView = false;
    }
    presentSubscribeViewForEligibleUsers(m = {}, I = true) {
      return r(this, void 0, void 0, function* () {
        const q = yield this.eligibleForSubscribeView();
        if (!(this._serviceSetupView.isServiceView || !q)) {
          if (!I) {
            this.dispatchEvent(J.eligibleForSubscribeView, m), this._dispatchedSubscribeView = true;
            return;
          }
          try {
            const $ = yield this._serviceSetupView.load({ action: v.ServiceSetupAction.SUBSCRIBE });
            return this._dispatchedSubscribeView = true, $;
          } catch {
            return this.revokeUserToken();
          }
        }
      });
    }
    infoRefresh() {
      return r(this, void 0, void 0, function* () {
        if (this.authorizationStatus <= v.AuthorizationStatus.DENIED) return Promise.reject(`Not authorized: ${this.authorizationStatus}`);
        const m = new Headers({ Authorization: `Bearer ${this.developerToken}`, "Music-User-Token": this.userToken || "" });
        try {
          const q = yield (yield fetch(`${this.iTunesBuyBase}/account/web/infoRefresh`, { credentials: "include", headers: m })).json();
          this.setCids(q);
        } catch {
        }
      });
    }
    me() {
      return this.authorizationStatus <= v.AuthorizationStatus.DENIED ? Promise.reject(`Not authorized: ${this.authorizationStatus}`) : (this._me || (this._me = new Promise((m, I) => r(this, void 0, void 0, function* () {
        const q = new Headers({ Authorization: `Bearer ${this.developerToken}`, "Music-User-Token": this.userToken || "" }), $ = d.addQueryParamsToURL(`${this.apiBase}/me/account`, Object.assign({ meta: "subscription" }, this.meParameters)), z = yield fetch($, { headers: q });
        if (z && !z.ok) return this.realm !== 2 && this._reset(), I("Account error.");
        let H = yield z.json();
        if (H.errors) return I(H.errors);
        const { data: pe, meta: Ne } = H;
        if (!Ne || !Ne.subscription) return I("Account error.");
        this.storefrontCountryCode = Ne.subscription.storefront;
        const ge = { meta: Ne, subscription: Ne.subscription };
        pe && pe.length && (ge.attributes = pe[0].attributes);
        try {
          let ue = yield fetch(`${this.iTunesBuyBase}/account/web/info`, { credentials: "include", headers: q });
          if (H = yield ue.json(), this.parentalControls = H.parentalControlsData, this.privacyAcknowledgements = H.privacyAcknowledgement, g.isEmpty(this.privacyAcknowledgements || {})) {
            try {
              yield this.infoRefresh();
            } catch {
              m(ge);
            }
            ue = yield fetch(`${this.iTunesBuyBase}/account/web/info`, { credentials: "include", headers: q }), H = yield ue.json(), this.parentalControls = H.parentalControlsData, this.privacyAcknowledgements = H.privacyAcknowledgement;
          }
          ge.info = H;
        } catch (ue) {
          console.warn("Failed to fetch privacyAcknowledgements", ue);
        }
        return m(ge);
      })).then((m) => {
        var I;
        return this._getIsActiveSubscription.updateCache(((I = m.subscription) === null || I === void 0 ? void 0 : I.active) || false), this._me = null, m;
      }).catch((m) => (this._me = null, Promise.reject(m)))), this._me);
    }
    musicSubscriptionOffers(m, I = l.getLanguages()) {
      return r(this, void 0, void 0, function* () {
        let q;
        if (this.hasAuthorized) q = (yield this.me()).info.storeFrontISO3A;
        else {
          if (!m) {
            const ge = yield F.Storefront.inferFromLanguages(this.developerToken, I);
            m = ge == null ? void 0 : ge.id;
          }
          q = m && c.ISO_2_TO_3_CODES[m.toUpperCase()] || "USA";
        }
        const $ = u.getLanguageId(I[0]), z = i.COUNTRY_CODE_TO_STOREFRONT[q];
        if (!$ || !z) return [];
        const H = new Headers({ "X-Apple-Store-Front": `${z}-${$},8` });
        this.userToken && (H.set("Authorization", `Bearer ${this.developerToken}`), H.set("Music-User-Token", this.userToken));
        const pe = yield fetch(`${this.iTunesBuyBase}/commerce/web/subscription/offers/music`, { headers: H });
        return pe.ok ? (yield pe.json()).offers : Promise.reject(pe.status);
      });
    }
    _getStorageItem(m) {
      if (!!m) {
        if (this.persist === "cookie") return E.getCookie(m);
        if (this.persist === "localstorage") return this.storage.getItem(`${this.storagePrefix}.${m}`);
      }
    }
    _processLocationHash(m) {
      const I = /^\#([a-zA-Z0-9+\/]{200,}={0,2})$/;
      if (I.test(m)) {
        const q = m.replace(I, "$1");
        try {
          const { itre: $, musicUserToken: z, cid: H } = JSON.parse(atob(q));
          this.restrictedEnabled = $ && $ === "1", this.userToken = z, this.cid = H;
        } catch {
        }
        history.replaceState(null, document.title, " ");
      }
    }
    _removeStorageItem(m) {
      if (this.persist === "cookie") this._removeCookieFromDomains(m);
      else if (this.persist === "localstorage") return this.storage.removeItem(`${this.storagePrefix}.${m}`);
    }
    _removeCookieFromDomains(m, I = window) {
      E.removeCookie(m);
      const { hostname: q } = I.location, $ = q.split(".");
      if ($.length && ($.shift(), $.length > 2)) for (let z = $.length; z > 2; z--) {
        const H = $.join(".");
        $.shift(), E.removeCookie(m, I, H);
      }
    }
    _reset(m = v.AuthorizationStatus.NOT_DETERMINED) {
      this._authorizationStatus = m, this._cids = {}, this._dispatchedSubscribeView = false, this._restrictedEnabled = void 0, this._storefrontCountryCode = void 0, this._getIsActiveSubscription.updateCache(void 0), Object.keys(b.SKRealmCidNamespace).forEach((I) => {
        this._removeStorageItem(b.SKRealmCidNamespace[I]);
      }), this._removeStorageItem(k.SKStorageKey.RESTRICTIONS_ENABLED), this._removeStorageItem(k.SKStorageKey.USER_TOKEN), this._removeStorageItem(k.SKStorageKey.STOREFRONT_COUNTRY_CODE), this._dynamicUserToken = void 0, this._me = null, this.privacyAcknowledgements = void 0;
    }
    _setStorageItem(m, I) {
      var q;
      if (this.persist === "cookie") return (q = this.authBridgeApp) === null || q === void 0 || q.setCookieItem(m, I), E.setCookie(m, I, "/", 180);
      if (this.persist === "localstorage") return this.storage.setItem(`${this.storagePrefix}.${m}`, I);
    }
    _webPlayerLogout() {
      return r(this, void 0, void 0, function* () {
        const m = new Headers({ Authorization: `Bearer ${this.developerToken}`, Accept: "application/json", "Content-Type": "application/json", "X-Apple-Music-User-Token": `${this.userToken}` });
        de && (m.delete("X-Apple-Music-User-Token"), m.append("Music-User-Token", this.userToken || ""));
        const I = yield fetch(this.logoutURL, { method: "POST", headers: m, credentials: de ? "include" : "same-origin" });
        return I && !I.ok ? Promise.reject(I.status) : I.json();
      });
    }
  }
  t([s.AsyncCachedResult(15 * 60), n("design:type", Function), n("design:paramtypes", []), n("design:returntype", Promise)], _e.prototype, "_getIsActiveSubscription", null), e2.StoreKit = _e;
})(Mp);
var Xs = { setDelegate: true };
function $g() {
  Xs = { setDelegate: true };
}
function Gg(e2) {
  var t = {}, n = Ou(e2), r, i;
  for (var s in e2) r = null, i = null, n && (r = e2.__lookupGetter__(s), i = e2.__lookupSetter__(s)), r || i ? (r && t.__defineGetter__(s, r), i && t.__defineSetter__(s, i)) : t[s] = e2[s];
  return t;
}
function vn(e2) {
  return typeof e2 != "undefined";
}
function ar(e2) {
  return vn(e2) && e2 !== null;
}
function zg(e2) {
  return ar(e2) && !bu(e2) && !Su(e2) && !Tu(e2);
}
function bu(e2) {
  return wu(e2) && e2.length === 0;
}
function Su(e2) {
  return Zs(e2) && e2.length === 0;
}
function Tu(e2) {
  return Oi(e2) && Object.keys(e2).length === 0;
}
function Ie(e2) {
  return typeof e2 == "function";
}
function cr(e2) {
  return typeof e2 == "number";
}
function Au(e2) {
  return cr(e2) && e2 % 1 === 0;
}
function wu(e2) {
  return typeof e2 == "string" || e2 instanceof String;
}
function Wg(e2) {
  return !!e2 && e2.nodeType == 1;
}
function Zs(e2) {
  return !!e2 && e2.constructor === Array;
}
function Oi(e2) {
  return !!e2 && e2.constructor === Object;
}
function Yg(e2) {
  var t = [];
  for (var n in e2) {
    var r = e2[n];
    e2.hasOwnProperty(n) && !Ie(r) && t.push(r);
  }
  return t;
}
function qg(e2) {
  var t = [];
  for (var n in e2) e2.hasOwnProperty(n) && !Ie(e2[n]) && t.push(n);
  return t;
}
function Qg(e2) {
  for (var t in e2) if (e2.hasOwnProperty(t)) return true;
}
function Jg(e2) {
  for (var t in e2) if (e2.hasOwnProperty(t) && e2[t]) return true;
}
function Ou(e2) {
  return Oi(e2) && Ie(e2.__lookupGetter__) && Ie(e2.__lookupSetter__) && Ie(e2.__defineGetter__) && Ie(e2.__defineSetter__);
}
function Xg(e2) {
  var t = [];
  for (var n in e2) {
    var r = e2[n];
    e2.hasOwnProperty(n) && Ie(r) && t.push(r);
  }
  return t;
}
function Zg(e2) {
  var t = {};
  for (var n in e2) e2.hasOwnProperty(n) && !Ie(e2[n]) && (t[e2[n]] = n);
  return t;
}
function Iu(e2) {
  var t = [true, true, true].concat(Array.prototype.slice.call(arguments));
  return eo.apply(null, t);
}
function eo(e2, t, n, r) {
  for (var i = n ? r || {} : {}, s, o = 3; o < arguments.length; o++) {
    s = arguments[o];
    for (var a in s) if (Object.prototype.hasOwnProperty.call(s, a)) {
      var c = s[a];
      (e2 || c != null) && (t || typeof c != "function") && (i[a] = c);
    }
  }
  return i;
}
function em(e2) {
  for (var t = 0; t < e2.length; t++) {
    var n = e2[t];
    Xs[n] = true;
  }
}
function Ru(e2, t) {
  var n = false;
  if (e2 && t && e2 !== t) {
    var r = {};
    Object.keys(t).forEach(function(i) {
      e2[i] || (r[i] = true);
    }), Iu(r, Xs), n = Cu(e2, t, null, r);
  }
  return n;
}
function Cu(e2, t, n, r) {
  var i = false;
  if (e2 && t) {
    r = r || {}, n = n || t;
    var s = function(d, h, g, E) {
      var A = function() {
        return g[E].apply(d, arguments);
      };
      return h && (A.origFunction = h), A.attachedMethod = true, A;
    };
    for (var o in t) if (!(o in r) && t[o] && Ie(t[o])) {
      var a = e2[o], c = a && Ie(a), u = null;
      c && (a.attachedMethod === true ? u = a : u = a.bind(e2)), e2[o] = s(n, u, t, o), i = true;
    }
  }
  return i;
}
function Du(e2) {
  var t = false;
  for (var n in e2) if (Ie(e2[n]) && e2[n].attachedMethod === true) {
    var r = e2[n].origFunction;
    if (r) for (; e2[n].origFunction; ) e2[n] = e2[n].origFunction, t = true;
    else delete e2[n];
  }
  return t;
}
function tm(e2, t) {
  var n = {};
  for (var r in e2) t[r] && Ie(e2[r].setDelegate) && (n[r] = e2[r].setDelegate(t[r]));
  return n;
}
var nm = function(t) {
  var n = false;
  for (var r in t) {
    var i = t[r];
    i && typeof i == "object" && Ie(i.setDelegate) && (n |= Du(i));
  }
  return !!n;
};
function rm(e2, t) {
  var n = null;
  if (e2 && t && t.setDelegate) {
    var r = {}, i;
    for (i in e2) Ie(e2[i]) && e2[i].origFunction && (r[i] = e2[i]);
    n = t.setDelegate(r);
  }
  return n;
}
function to(e2, t) {
  var n = {};
  if (e2) for (var r = 0; r < e2.length; r++) n[e2[r]] = 0;
  if (t) for (var i = 0; i < t.length; i++) n[t[i]] = 0;
  return Object.keys(n);
}
var _ = Object.freeze({ __proto__: null, _utResetNonOverridableFunctions: $g, shallowClone: Gg, isDefined: vn, isDefinedNonNull: ar, isDefinedNonNullNonEmpty: zg, isEmptyString: bu, isEmptyArray: Su, isEmptyObject: Tu, isFunction: Ie, isNumber: cr, isInteger: Au, isString: wu, isElement: Wg, isArray: Zs, isObject: Oi, values: Yg, keys: qg, hasAnyKeys: Qg, hasAnyNonNullKeys: Jg, hasGetterAndSetterMethods: Ou, methods: Xg, invert: Zg, extend: Iu, copyKeysAndValues: eo, addNonOverrideableFunctions: em, attachMethods: Cu, detachMethods: Du, attachDelegate: Ru, setDelegates: tm, resetDelegates: nm, copyDelegatedFunctions: rm, dedupedArray: to }), Wi = { exponential: { maxWait: 1500, initialDelay: 100, factor: 2 } }, Pu = function(e2, t, n) {
  this.delay = e2 || Wi.exponential.initialDelay, this.maxWait = cr(t) ? t : Wi.exponential.maxWait, this.factor = n || Wi.exponential.factor, this.timeWaited = 0;
};
Pu.prototype.nextDelay = function() {
  var t = null, n = this.maxWait - this.timeWaited;
  return n > 0 && (this.delay = Math.min(this.delay, n), this.timeWaited += this.delay), (this.maxWait === 0 || n > 0) && (t = this.delay, this.delay = this.delay * this.factor), t;
};
function Nu(e2, t, n, r) {
  var i = function() {
    var o = e2.nextDelay();
    o ? setTimeout(Nu.bind(null, e2, t, n, r), o) : r.apply(r, arguments);
  };
  t.call(t, n, i);
}
function im(e2, t, n, r, i, s) {
  var o = new Pu(r, i, s);
  Nu(o, e2, t, n);
}
var sm = Object.freeze({ __proto__: null, exponentialBackoff: im });
function om(e2, t, n) {
  var r = void 0;
  if (vn(e2)) if (vn(t) || (t = 1024 * 1024), vn(n) || (n = 2), cr(e2) && cr(t) && t > 0 && Au(n) && n >= 0) {
    var i = Math.pow(10, n), s = e2 > 0 ? "floor" : "ceil";
    r = Math[s](e2 / t / i) * i;
  } else r = NaN;
  return r;
}
function Mu(e2) {
  return !!this.value("disabled", e2);
}
function am(e2) {
  return no.call(this, e2);
}
function no(e2) {
  var t = this.value("denylistedEvents", e2), n = this.value("blacklistedEvents", e2);
  return to(n, t);
}
function cm(e2) {
  return ro.call(this, e2);
}
function ro(e2) {
  var t = this.value("denylistedFields", e2), n = this.value("blacklistedFields", e2);
  return to(n, t);
}
function um(e2, t) {
  return Lu.call(this, e2, t);
}
function Lu(e2, t) {
  if (e2) for (var n = ro.call(this, t), r = 0; r < n.length; r++) {
    var i = n[r];
    i && i in e2 && delete e2[i];
  }
  return e2;
}
function lm(e2, t) {
  return ku.call(this, e2, t);
}
function ku(e2, t) {
  var n = Mu.call(this, t) || (e2 ? no.call(this, t).indexOf(e2) > -1 : false);
  return n;
}
function Uu(e2) {
  var t = this.value("deResFields", e2);
  return t || [];
}
function fm(e2, t) {
  if (e2) {
    var n = Uu.call(this, t), r;
    n.forEach(function(i) {
      r = i.fieldName, r in e2 && (e2[r] = om(e2[r], i.magnitude, i.significantDigits));
    });
  }
  return e2;
}
var mr = Object.freeze({ __proto__: null, disabled: Mu, blacklistedEvents: am, denylistedEvents: no, blacklistedFields: cm, denylistedFields: ro, removeBlacklistedFields: um, removeDenylistedFields: Lu, metricsDisabledOrBlacklistedEvent: lm, metricsDisabledOrDenylistedEvent: ku, deResFields: Uu, applyDeRes: fm }), io = "0123456789", dm = io + "ABCDEF", Fu = io + "ABCDEFGHIJKLMNOPQRSTUVWXYZ", Bu = Fu + "abcdefghijklmnopqrstuvwxy", xu = Bu + "z";
function hm(e2, t, n) {
  var r = false;
  return e2 && t && (e2 = e2.substr(0, t.length), n && (e2 = e2.toLowerCase(), t = t.toLowerCase()), r = e2.indexOf(t) === 0), r;
}
function pm(e2, t, n) {
  var r = false;
  if (e2 && t) {
    n && (e2 = e2.toLowerCase(), t = t.toLowerCase());
    var i = e2.length - t.length;
    r = i >= 0 && e2.lastIndexOf(t) === i;
  }
  return r;
}
function ms(e2, t, n) {
  var r = null, i = `	
\v\f\r             　\u2028\u2029​`, s = new RegExp("^[" + i + "]+"), o = new RegExp("[" + i + "]+$");
  if (e2) if (!n && (!t || t == i) && e2.trim) r = e2.trim();
  else {
    var a = null, c = null, u = null;
    t && typeof t != "undefined" ? (t = t.replace(/([.?*+^$[\]\\(){}-])/g, "\\$1"), a = "[" + t + "]", c = new RegExp("^" + a + "+"), u = new RegExp(a + "+$")) : (a = i, c = s, u = o);
    var l = e2.replace(c, "");
    r = l.replace(u, "");
  }
  return r;
}
function Ku(e2, t) {
  var n = "";
  if (e2) for (var r = e2.toLowerCase().split("_"), i, s = 0; s < r.length; s++) i = r[s][0], (s !== 0 || t) && (i = i.toUpperCase()), n += i + r[s].slice(1);
  return n;
}
function gm(e2) {
  return Ku(e2, true);
}
function mm(e2) {
  var t = "", n = "", r = true;
  for (var i in e2) {
    var s = e2[i];
    (s || s === 0 || s === false) && (t += n + i + "=" + encodeURIComponent(s), r && (n = "&", r = false));
  }
  return t;
}
function vm(e2, t) {
  return "The function " + e2 + "." + t + "() must be overridden with a platform-specific delegate function.If you have no data for this function, have your delegate return null or undefined (no 'return')";
}
function _m(e2, t) {
  var n = null;
  t = t || "\\S+";
  var r = new RegExp("\\b" + t + "/(\\S+)\\b", "i"), i = r.exec(e2);
  return i && i[1] && (n = i[1]), n;
}
function ym(e2) {
  var t = "z", n = Date.now(), r = Math.floor(Math.random() * 1e5);
  return n = n.toString(36).toUpperCase(), r = r.toString(36).toUpperCase(), e2 + t + n + t + r;
}
function Em(e2) {
  for (var t = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx", n = "", r, i = 0, s = t.length; i < s; i++) r = t.charAt(i), r === "x" ? n += Wr(e2) : r === "y" ? n += Wr(e2, "8", "b") : n += r;
  return n;
}
function Wr(e2, t, n) {
  var r = global.crypto || global.msCrypto, i;
  return e2 ? i = (e2() * 16 | 0).toString(16) : r && r.getRandomValues ? i = (r.getRandomValues(new Uint8Array(1))[0] & 15).toString(16) : r && r.randomBytes ? i = r.randomBytes(1).toString("hex")[0] : i = (Math.random() * 16 | 0).toString(16), t && n && (i < t || i > n) && (i = Wr(e2, t, n)), i;
}
function bm(e2, t) {
  var n = "", r = t.length;
  if (r <= 36) n = e2.toString(r).toUpperCase();
  else {
    for (var i, s, o = []; e2 > 0; ) i = e2 % r, s = t.charAt(i), o.push(s), e2 = (e2 - i) / r;
    n = o.reverse().join("");
  }
  return n === "" && (n = "0"), n;
}
function Sm(e2) {
  var t;
  if (Math.floor(4294967295 / 256) == 16777215) {
    var n = global.crypto || global.msCrypto, r, i, s, o, a;
    if (n && n.getRandomValues) r = n.getRandomValues(new Uint32Array(16 / Uint32Array.BYTES_PER_ELEMENT)), a = true;
    else if (n && n.randomBytes) {
      var c = n.randomBytes(16);
      r = new Uint32Array(c.buffer, c.byteOffset, c.byteLength / Uint32Array.BYTES_PER_ELEMENT), a = true;
    } else for (r = new Uint32Array(16 / Uint32Array.BYTES_PER_ELEMENT), i = 0; i < r.length; i++) r[i] = Math.floor(Math.random() * Math.floor(4294967295));
    if (r) {
      for (t = "", i = 0; i < r.length; i++) for (o = r[i], s = 0; s < 6; s++) t += xu[o % 62], o = Math.floor(o / 62);
      e2 && (t = "1_" + (a ? "1" : "2") + "_" + t);
    }
  }
  return t;
}
var De = Object.freeze({ __proto__: null, base10Alphabet: io, base16Alphabet: dm, base36Alphabet: Fu, base61Alphabet: Bu, base62Alphabet: xu, startsWith: hm, endsWith: pm, trim: ms, snakeCaseToCamelCase: Ku, snakeCaseToUpperCamelCase: gm, exceptionString: vm, paramString: mm, versionStringFromUserAgent: _m, requestId: ym, uuid: Em, randomHexCharacter: Wr, convertNumberToBaseAlphabet: bm, cryptoRandomBase62String: Sm }), be = { setDelegate: function(t) {
  return Ru(this, t);
}, cookie: function() {
  var t;
  if (typeof window != "undefined" && "iTunes" in window && "cookie" in iTunes) t = iTunes;
  else if (typeof itms != "undefined" && vn(itms.cookie)) t = itms;
  else if (typeof document != "undefined") t = document;
  else throw "cookies.cookie: No cookie object available";
  return t.cookie;
}, get: function(t) {
  var n = this.getUnescaped(t);
  return n && (n = unescape(n)), n;
}, setUnescaped: function(t, n, r, i, s) {
}, getUnescaped: function(t) {
  var n = null, r = this._getRaw();
  if (r && t) for (var i = r.split(";"), s = i.length - 1; !n && s >= 0; s--) {
    var o = i[s], a = o.indexOf("=");
    if (a > 0) if (a + 1 == o.length) n = "";
    else {
      var c = ms(o.substring(0, a));
      c == t && (n = ms(o.substring(a + 1)));
    }
  }
  return n;
}, remove: function(t, n) {
  return this.setUnescaped(t, ".", this.EXPIRE_NOW, null, n);
}, _getRaw: function() {
  return this.cookie() || "";
} };
be.EXPIRE_NOW = -1;
be.EXPIRE_SESSION = null;
be.EXPIRE_ONE_SECOND = 1;
be.EXPIRE_ONE_MINUTE = be.EXPIRE_ONE_SECOND * 60;
be.EXPIRE_ONE_HOUR = be.EXPIRE_ONE_MINUTE * 60;
be.EXPIRE_ONE_DAY = be.EXPIRE_ONE_HOUR * 24;
be.EXPIRE_ONE_WEEK = be.EXPIRE_ONE_DAY * 7;
be.EXPIRE_ONE_MONTH = be.EXPIRE_ONE_DAY * 31;
be.EXPIRE_ONE_YEAR = be.EXPIRE_ONE_DAY * 365;
be.EXPIRE_ONE_SIDEREAL_YEAR = be.EXPIRE_ONE_DAY * 365.25;
be.EXPIRE_SIX_MONTHS = be.EXPIRE_ONE_DAY * 180;
var lt = {}, Yi = {}, Ta = function(t) {
  var n = {};
  return typeof t.mtName == "function" && typeof t.mtVersion == "function" && (n.name = t.mtName(), n.version = t.mtVersion()), n;
}, vs = function(t) {
  var n;
  return typeof t.mtName == "function" && typeof t.mtVersion == "function" && (n = t.mtName() + t.mtVersion()), n;
};
function Tm(e2, t) {
  var n = vs(e2), r = vs(t);
  n && r && (lt[r] || (lt[r] = Ta(t)), lt[n] || (lt[n] = Ta(e2), Yi[n] = {}), lt[n].delegates ? Yi[n][r] || lt[n].delegates.push(lt[r]) : lt[n].delegates = [lt[r]], Yi[n][r] = true);
}
function Am(e2) {
  return lt[vs(e2)];
}
var wm = Object.freeze({ __proto__: null, storeDelegateInfo: Tm, getStoredDelegateObject: Am });
function ju(e2, t, n) {
  var r = t;
  if (e2 && t) for (var i = e2.split("."), s = 0; r && s < i.length; s++) {
    var o = i[s];
    !(o in r) && n && (r[o] = {}), o in r ? r = r[o] : r = null;
  }
  return r;
}
function _s(e2) {
  var t = null;
  if (e2 && arguments.length > 1) for (var n = Vu(Array.prototype.slice.call(arguments, 1)), r = n.length - 1; r >= 0; r--) {
    var i = n[r];
    if (t = ju(e2, i), ar(t)) break;
  }
  return t;
}
function Om(e2, t) {
  return ju(e2, t, true);
}
function Vu(e2) {
  var t = [], n = [];
  n = n.concat(e2), arguments && arguments.length > 1 && (n = n.concat(Array.prototype.slice.call(arguments, 1)));
  for (var r = 0; r < n.length; r++) {
    var i = n[r];
    t = t.concat(i);
  }
  return t;
}
var ur = Object.freeze({ __proto__: null, valueForKeyPath: _s, createObjectAtKeyPath: Om, sourcesArray: Vu });
function ys(e2) {
  for (var t = [false, false, false].concat(Array.prototype.slice.call(arguments)), n = [], r = 0; r < t.length; r++) {
    var i = t[r];
    if (i && i.constructor === Array) for (var s = 0; s < i.length; s++) n.push(i[s]);
    else n.push(i);
  }
  return eo.apply(null, n);
}
function Im(e2, t, n, r) {
  var i = ys(r), s = i;
  if (e2 && t) {
    var o = {};
    if (n || (t = t.filter(function(l) {
      return l in i;
    })), t.length) for (var a = 0; a < t.length; a++) {
      var c = t[a], u = e2[c];
      Ie(u) && (o[c] = u.call(e2, i));
    }
    s = ys(s, o);
  }
  return s;
}
function Rm(e2, t, n, r) {
  var i, s, o;
  if (e2 && t && n) if (s = {}, i = _s(t, n, n.custom), i) {
    var a, c;
    if (Zs(i)) for (a = 0; a < i.length; ++a) c = e2[i[a]], ar(c) && (s[i[a]] = c);
    else if (Oi(i)) {
      for (var u in i) for (a = 0; a < i[u].length; ++a) if (c = _s(i[u][a], e2), ar(c)) {
        s[u] = c;
        break;
      }
    } else o = "metrics: incorrect data type provided to applyFieldsMap (only accepts objects and Arrays)";
  } else o = "metrics: unable to get " + t + " section from fieldsMap";
  else {
    var l = [];
    e2 || l.push("data"), t || l.push("sectionName"), n || l.push("fieldsMap"), o = "metrics: missing argument(s): " + l.join(",") + " not provided to applyFieldsMap";
  }
  return o && Ie(r) && r(o), s;
}
var so = Object.freeze({ __proto__: null, mergeAndCleanEventFields: ys, processMetricsData: Im, applyFieldsMap: Rm });
function Cm(e2, t, n) {
  Hu(e2, "GET", null, t, n);
}
function Hu(e2, t, n, r, i, s) {
  var o = new XMLHttpRequest();
  n = n || void 0, s = s || {}, r = Ie(r) ? r : function() {
  }, i = Ie(i) ? i : function() {
  };
  var a = s.async !== false;
  s.timeout && a && (o.timeout = s.timeout), o.onload = function() {
    o.status >= 200 && o.status < 300 ? r(o.response) : i(new Error("XHR error: server responded with status " + o.status + " " + o.statusText), o.status);
  }, o.onerror = function() {
    i(new Error("XHR error"));
  }, o.open(t, e2, a), o.withCredentials = typeof s.withCredentials == "boolean" ? s.withCredentials : true, o.setRequestHeader("Content-type", "application/json"), o.send(n);
}
var oo = Object.freeze({ __proto__: null, makeAjaxGetRequest: Cm, makeAjaxRequest: Hu }), ao = { STORAGE_TYPE: { LOCAL_STORAGE: "localStorage", SESSION_STORAGE: "sessionStorage" } }, $u = function(t) {
  var n = null, r = false;
  return function() {
    return t ? n = t : (r || (console.error("storageObject: storage object not found. Override this function if there is a platform-specific implementation"), r = true), n || (n = { storage: {}, getItem: function(i) {
      return this.storage[i];
    }, setItem: function(i, s) {
      this.storage[i] = s;
    }, removeItem: function(i) {
      delete this.storage[i];
    } })), n;
  };
};
function co(e2) {
  var t = null, n = null, r = e2 === ao.STORAGE_TYPE.LOCAL_STORAGE;
  try {
    n = r ? typeof localStorage : typeof sessionStorage, n !== "undefined" ? t = r ? localStorage : sessionStorage : t = null;
  } catch (i) {
    t = null, console.error("_utils.storage._defaultStorageObject: Unable to retrieve storage object: " + i);
  }
  return t;
}
function Dm(e2) {
  return co(e2);
}
var Pm = $u(co(ao.STORAGE_TYPE.LOCAL_STORAGE)), Nm = $u(co(ao.STORAGE_TYPE.SESSION_STORAGE));
function Mm(e2, t, n) {
  var r = null;
  if (n) try {
    e2.setItem(t, JSON.stringify(n)), r = n;
  } catch {
  }
  else r = e2.removeItem(t);
  return r;
}
function Lm(e2, t) {
  var n = null, r = e2.getItem(t);
  if (r) try {
    n = JSON.parse(r);
  } catch {
    n = void 0;
  }
  return n;
}
var Pe = Object.freeze({ __proto__: null, _utDefaultStorageObject: Dm, localStorageObject: Pm, sessionStorageObject: Nm, saveObjectToStorage: Mm, objectFromStorage: Lm });
function Ur(e2) {
  this.key = e2;
}
Ur.prototype.toString = function() {
  return this.key;
};
var pt = { flagArguments: { INCLUDE_CALL_STACK: new Ur("INCLUDE_CALL_STACK"), MIRROR_TO_SERVER: new Ur("MIRROR_TO_SERVER"), SUPPRESS_CLIENT_OUTPUT: new Ur("SUPPRESS_CLIENT_OUTPUT") }, setDelegate: function(t) {
  return _.attachDelegate(this, t);
}, execute: function(t, n, r) {
  var i = t.levelStringToIntMap[n];
  if (t.level() !== t.NONE && t.level() <= i) {
    var s = Array.prototype.slice.call(r), o = pt.nonFlagLogArguments(s), a = pt.logOptions(t, i, s), c = a.includeCallStack ? new Error().stack : null, u = c ? o.concat(`
` + c) : o;
    if (t[n]._lastLog = u, a.mirrorToServer, a.throwInsteadOfPrint) throw new Error(o.toString());
    a.suppressClientOutput || (console[n] ? console[n].apply(console, u) : console.log.apply(console, u));
  }
}, isFlagObject: function(t) {
  return t && t === pt.flagArguments[t.toString()];
}, nonFlagLogArguments: function(t) {
  return t.filter(function(n) {
    return !pt.isFlagObject(n);
  });
}, logOptions: function(t, n, r) {
  var i = {}, s;
  return r.forEach(function(o) {
    pt.isFlagObject(o) && (s = De.snakeCaseToCamelCase(o.toString()), i[s] = true);
  }), _.isFunction(t.mirrorToServerLevel) && t.mirrorToServerLevel() !== t.NONE && t.mirrorToServerLevel() <= n && (i.mirrorToServer = true), t.throwLevel() !== t.NONE && t.throwLevel() <= n && (i.throwInsteadOfPrint = true), i;
}, sendToServer: function(t, n, r, i) {
} }, Es = { NONE: 0, DEBUG: 1, INFO: 2, WARN: 3, ERROR: 4 }, Yr = { MIN_LEVEL: Es.NONE, MAX_LEVEL: Es.ERROR, levelIntToStringMap: { 0: "none", 1: "debug", 2: "info", 3: "warn", 4: "error" }, levelStringToIntMap: { none: 0, debug: 1, info: 2, warn: 3, error: 4 } };
_.extend(Yr, Es);
var uo = { loggerName: "defaultLogger", level: Yr.INFO, throwLevel: Yr.NONE }, Aa = false, wa = {};
function Ae(e2) {
  this._loggerName = e2, this._level, this._throwLevel, Aa || (Aa = true, _.extend(Ae.prototype, Yr), _.extend(Ae.prototype, pt.flagArguments));
}
function vr(e2) {
  e2 = e2 || uo.loggerName;
  var t = wa[e2];
  return t || (t = new Ae(e2), wa[e2] = t), t;
}
Ae.level = function() {
  return uo.level;
};
Ae.throwLevel = function() {
  return uo.throwLevel;
};
Ae.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
Ae.prototype.loggerName = function() {
  return this._loggerName;
};
Ae.prototype.levelParameterAsInt = function(t) {
  var n = null, r;
  return _.isString(t) ? r = this.levelStringToIntMap[t.toLowerCase()] : _.isNumber(t) && (r = t), r >= this.MIN_LEVEL && r <= this.MAX_LEVEL && (n = r), n;
};
Ae.prototype.setLevel = function(t) {
  var n = this.levelParameterAsInt(t);
  n !== null && (this._level = n);
};
Ae.prototype.setThrowLevel = function(t) {
  var n = this.levelParameterAsInt(t);
  n !== null && (this._throwLevel = n);
};
Ae.prototype.level = function() {
  var t = this._level;
  return _.isNumber(t) ? t : Ae.level();
};
Ae.prototype.levelString = function() {
  return this.levelIntToStringMap[this.level()];
};
Ae.prototype.throwLevel = function() {
  var t = this._throwLevel;
  return _.isNumber(t) ? t : Ae.throwLevel();
};
Ae.prototype.debug = function() {
  pt.execute(this, "debug", arguments);
};
Ae.prototype.info = function() {
  pt.execute(this, "info", arguments);
};
Ae.prototype.warn = function() {
  pt.execute(this, "warn", arguments);
};
Ae.prototype.error = function() {
  pt.execute(this, "error", arguments);
};
Ae.prototype.lastLog = function(t) {
  return this[t] ? this[t]._lastLog : null;
};
var km = _.attachDelegate, Um = Pe.localStorageObject, Fm = Pe.sessionStorageObject, _r = { setDelegate: function(t) {
  return km(this, t);
}, localStorageObject: Um, sessionStorageObject: Fm }, Bm = _.attachDelegate, xm = oo.makeAjaxRequest, bs = { setDelegate: function(t) {
  return Bm(this, t);
}, makeAjaxRequest: xm }, Km = _.attachDelegate, jm = _.hasAnyKeys, Gu = _.isArray, zu = Pe.saveObjectToStorage, Wu = Pe.objectFromStorage, Vm = sm.exponentialBackoff, Hm = ur.valueForKeyPath, lo = "noTopicConfig", lr = { blacklistedFields: ["capacitySystem", "capacitySystemAvailable", "capacityDisk", "capacityData", "capacityDataAvailable"], compoundSeparator: "_", configBaseUrl: "https://xp.apple.com/config/1/report", constraints: { profiles: { AMPWeb: { precedenceOrderedRules: [{ filters: "any", fieldConstraints: { clientId: { generateValue: true, namespace: "AMPWeb_isSignedOut", expirationPeriod: 864e5 } } }, { filters: { valueMatches: { isSignedIn: [true] } }, fieldConstraints: { clientId: { generateValue: true, namespace: "AMPWeb_isSignedIn", expirationPeriod: 15552e6 } } }] }, strict: { precedenceOrderedRules: [{ filters: "any", fieldConstraints: { clientId: { generateValue: true, scopeFieldName: "parentPageUrl", scopeStrategy: "mainDomain", expirationPeriod: 864e5 }, consumerId: { blacklisted: true }, dsId: { blacklisted: true }, parentPageUrl: { scope: "hostname" } } }, { filters: { valueMatches: { eventType: ["click"], actionType: ["signUp"] } }, fieldConstraints: { parentPageUrl: { scope: "fullWithoutParams" } } }, { filters: { valueMatches: { eventType: ["dialog"], dialogType: ["upsell"], result: ["upsell"] } }, fieldConstraints: { parentPageUrl: { scope: "fullWithoutParams" } } }, { filters: { valueMatches: { userType: ["signedIn"] } }, fieldConstraints: { clientId: { scopeStrategy: "all" } } }, { filters: { valueMatches: { userType: ["signedIn"], eventType: ["click", "dialog", "media", "search"] } }, fieldConstraints: { clientId: { blacklisted: true }, consumerId: { blacklisted: false }, dsId: { blacklisted: false } } }, { filters: { valueMatches: { userType: ["signedIn"], eventType: ["page", "impressions"] }, nonEmptyFields: ["pageHistory"] }, fieldConstraints: { clientId: { blacklisted: true }, consumerId: { blacklisted: false }, dsId: { blacklisted: false } } }] } } }, fieldsMap: { cookies: ["itcCt", "itscc"], custom: { impressions: ["id", "adamId", "link.type", "station-hash"], location: ["id", "adamId", "dataSetId", "name", "fcKind", "kindIds", "type", "link.type", "station-hash", "core-seed-name"] }, single: { targetId: ["id", "adamId", "contentId", "type", "link.type", "fcId", "userPreference", "label", "station-hash", "linkIdentifier"] } }, metricsUrl: "https://xp.apple.com/report", postFrequency: 6e4, postFrequencyLowLatency: 5e3, tokenSeparator: "|" }, _n = {}, Oa = function(t, n, r) {
  if (r) {
    t.push(r);
    var i = r[n];
    i && jm(i) && t.push(i);
  }
}, K = function(t) {
  this._topic = t, this._debugSource = null, this._cachedSource = null, this._serviceSource = null, this._initCalled = false, this._initialized = false, this._showedDebugWarning = false, this._showedNoProvidedSourceWarning = false, this._keyPathsThatSuppressWarning = { configBaseUrl: true }, this.DEBUG_SOURCE_KEY = "mtClientConfig_debugSource" + lr.compoundSeparator + this._topic, this.CACHED_SOURCE_KEY = "mtClientConfig_cachedSource" + lr.compoundSeparator + this._topic;
};
K.createConfig = function(t, n, r, i) {
  var s = K.getConfig(t);
  return t && t !== lo && !s._initCalled && s.init(n, r, i), s;
};
K.getConfig = function(t) {
  t = t || lo;
  var n = _n[t];
  return n || (n = new K(t), _n[t] = n), n;
};
K.cleanupConfig = function(t) {
  if (t && _n[t]) {
    var n = _n[t];
    n.setCachedSource(), n.setDebugSource(), delete _n[t];
  }
};
K.defaultConfig = function() {
  return K.getConfig();
};
K.value = function(t, n) {
  var r = n && _n[n] || K.defaultConfig();
  return r.value.call(r, t);
};
K.environment = _r;
K.logger = vr("mt-client-config");
K.network = bs;
K.prototype._defaults = function() {
  return lr;
};
K.prototype._setInitialized = function(t) {
  this._initialized = t;
};
K.prototype._setInitCalled = function(t) {
  this._initCalled = t;
};
K.prototype._setShowedDebugWarning = function(t) {
  this._showedDebugWarning = t;
};
K.prototype._setShowedNoProvidedSourceWarning = function(t) {
  this._showedNoProvidedSourceWarning = t;
};
K.prototype.setDelegate = function(t) {
  return Km(this, t);
};
K.prototype.topic = function() {
  return this._topic;
};
K.prototype.configHostname = function() {
};
K.prototype.configUrl = function() {
  var t = this.configHostname(), n;
  return t ? n = "https://" + t + "/config/1/report" : n = this.value("configBaseUrl"), this._topic !== lo ? n += "/" + this.topic() : K.logger.error("config.configUrl(): Topic must be provided"), n;
};
K.prototype.sources = function() {
};
K.prototype.value = function(t) {
  var n = this.cachedSource(), r = this.serviceSource(), i = this.sources(), s = this.debugSource(), o = n || r || i || s, a;
  return !i && !r && !(t in this._keyPathsThatSuppressWarning) && (this._showedNoProvidedSourceWarning || (this._showedNoProvidedSourceWarning = true, K.logger.warn("Metrics config: No config provided via delegate or fetched via init(), using default/cached config values."))), s && (this._showedDebugWarning || (this._showedDebugWarning = true, K.logger.warn(`"debugSource" found.
This will override any same-named client-supplied configSource fields.
This setting "sticks" across session, use "setDebugSource(null)" to clear`))), Gu(i) || (i = [i]), t.indexOf("blacklisted") === 0 ? o ? a = [n, r, i, s] : a = [lr] : a = [lr, n, r, i, s], a = this.configSourcesWithOverrides(a, this.topic()), Hm.apply(null, [t].concat(a));
};
K.prototype.configSourcesWithOverrides = function(t, n) {
  var r = t;
  if (t && t.length && n) {
    r = [];
    for (var i = 0; i < t.length; i++) {
      var s = t[i];
      if (s) if (Gu(s) && s.length) {
        for (var o = [], a = 0; a < s.length; a++) Oa(o, n, s[a]);
        r.push(o);
      } else Oa(r, n, s);
    }
  }
  return r;
};
K.prototype.setDebugSource = function(t) {
  return this._debugSource = t || null, zu(_r.localStorageObject(), this.DEBUG_SOURCE_KEY, this._debugSource);
};
K.prototype.debugSource = function() {
  return this._debugSource || (this._debugSource = Wu(_r.localStorageObject(), this.DEBUG_SOURCE_KEY)), this._debugSource;
};
K.prototype.setCachedSource = function(t) {
  return this._cachedSource = t || null, zu(_r.localStorageObject(), this.CACHED_SOURCE_KEY, this._cachedSource);
};
K.prototype.cachedSource = function() {
  return this._cachedSource || (this._cachedSource = Wu(_r.localStorageObject(), this.CACHED_SOURCE_KEY)), this._cachedSource;
};
K.prototype.setServiceSource = function(t) {
  return this._serviceSource = t, this._serviceSource;
};
K.prototype.serviceSource = function() {
  return this._serviceSource;
};
K.prototype.fetchConfig = function(t, n, r) {
  r = r || function() {
  };
  var i = function(o) {
    var a;
    try {
      o = JSON.parse(o), a = true;
    } catch (c) {
      r.call(r, c);
    }
    a && n && n.call(n, o);
  };
  Vm(bs.makeAjaxRequest.bind(bs, t, "GET", null), i, r);
};
K.prototype.init = function(t, n, r) {
  if (!this._initCalled) {
    this._initCalled = true, n = n || function() {
    };
    var i = function() {
      this._initialized = true, n.call(n);
    }.bind(this);
    if (t) this.setDelegate({ sources: t }), i();
    else {
      this.setCachedSource(this.cachedSource());
      var s = this.configUrl(), o = function(c) {
        this.setCachedSource(c), this.setServiceSource(c), i();
      }.bind(this);
      this.fetchConfig(s, o, r);
    }
  }
};
K.prototype.initialize = function(t, n, r) {
  return this.init.apply(this, Array.prototype.slice.call(arguments));
};
K.prototype.initialized = function() {
  return this._initialized;
};
var $m = _.attachDelegate, Xn = { setDelegate: function(t) {
  return $m(this, t);
}, globalScope: function() {
  return global;
} }, fo = { AJAX: "ajax", AJAX_SYNCHRONOUS: "ajaxSynchronous", IMAGE: "image", BEACON: "beacon" }, Gm = mr.metricsDisabledOrDenylistedEvent, zm = mr.removeDenylistedFields, Tt = {}, Wm = ["dsId", "consumerId"];
function Yu(e2, t, n) {
  var r = null;
  return n && !Gm.call(K, n.eventType, t) && (zm.call(K, n, t), Ym(t, n), e2.apply(null, Array.prototype.slice.call(arguments, 1)), r = n), r;
}
function qu() {
  return "javascript";
}
function Qu(e2, t) {
  Tt[e2] = Tt[e2] || {}, Tt[e2] = t;
}
function Ju() {
  Tt = {};
}
function Ym(e2, t) {
  Tt[e2] = Tt[e2] || {}, Tt[e2].anonymous && Wm.forEach(function(n) {
    delete t[n];
  });
}
var qm = _.attachDelegate, Qm = oo.makeAjaxRequest, ho = { setDelegate: function(t) {
  return qm(this, t);
}, makeAjaxRequest: Qm }, Xu = _.isString, Jm = _.isFunction, Zu = mr.disabled;
function el() {
  var e2 = navigator.userAgent;
  return /iPad|iPhone|iPod/.test(e2) && e2.indexOf("IEMobile") == -1;
}
function Xm() {
  return _.isFunction(Xn.globalScope().fetch) && !/Firefox/.test(navigator.userAgent);
}
function $n() {
  return vr("mt-event-queue");
}
var se = { DEFAULT_REQUEST_TIMEOUT: 1e4, EVENTS_KEY: "events", EVENT_DELIVERY_VERSION: "1.0", MAX_PERSISTENT_QUEUE_SIZE: 100, RETRY_EXPONENT_BASE: 2, SEND_METHOD: fo, URL_DELIVERY_VERSION: 2, PROPERTIES_KEY: "properties" }, D = { eventQueues: {}, postIntervalEnabled: true, enqueueEvent: function(t, n) {
  var r = null;
  if (t && n) {
    D.eventQueues = D.eventQueues || {}, D.eventQueues[t] = D.eventQueues[t] || {}, D.eventQueues[t][se.EVENTS_KEY] = D.eventQueues[t][se.EVENTS_KEY] || [], D.eventQueues[t][se.EVENTS_KEY].push(n), r = n;
    var i = K.value("maxPersistentQueueSize", t) || se.MAX_PERSISTENT_QUEUE_SIZE;
    D.trimEventQueues(D.eventQueues, i);
  }
  return r;
}, trimEventQueues: function(t, n) {
  var r = Object.keys(t);
  r.length && r.forEach(function(i) {
    var s = t[i][se.EVENTS_KEY];
    s && s.length && s.length > n && ($n().warn("eventQueue overflow, deleting LRU events: size is: " + s.length + " which is over max size: " + n), t[i][se.EVENTS_KEY] = s.slice(-n));
  });
}, resetTopicQueue: function(t) {
  D.eventQueues[t] && (D.eventQueues[t][se.EVENTS_KEY] = null);
}, resetTopicRetryAttempts: function(t) {
  D.eventQueues[t] && (D.eventQueues[t].retryAttempts = 0);
}, scheduleNextTopicRetryAttempt: function(t) {
  if (D.eventQueues[t] && this.postIntervalEnabled) {
    D.eventQueues[t].retryAttempts = D.eventQueues[t].retryAttempts || 0, D.eventQueues[t].retryAttempts++;
    var n = Math.pow(se.RETRY_EXPONENT_BASE, D.eventQueues[t].retryAttempts) * K.value("postFrequency", t);
    D.resetTopicPostInterval(t), D.setTopicPostInterval(t, n);
  }
}, sendEvents: function(t, n) {
  for (var r in D.eventQueues) D.sendEventsForTopic(r, t, n);
}, sendEventsForTopic: function(t, n, r) {
  var i = D.eventQueues[t], s = K.value("testExponentialBackoff", t), o = K.value("metricsUrl", t), a = Zu.call(K, t);
  if (i && o && !a && !s && !(i.retryAttempts && r)) switch (D.resetTopicPostInterval(t), D.setTopicPostInterval(t, K.value("postFrequency", t)), n) {
    case se.SEND_METHOD.IMAGE:
      D.sendEventsViaImage(t);
      break;
    case se.SEND_METHOD.BEACON:
      D.sendEventsViaBeacon(t);
      break;
    case se.SEND_METHOD.AJAX_SYNCHRONOUS:
      D.sendEventsViaAjax(t, false);
      break;
    case se.SEND_METHOD.AJAX:
    default:
      D.sendEventsViaAjax(t, true);
      break;
  }
  s && D.scheduleNextTopicRetryAttempt(t);
}, sendEventsViaImage: function(t) {
  if (D.eventQueues[t]) {
    var n = Gn(t), r = n.indexOf("?") == -1 ? "?" : "&", i = n + r + "responseType=image", s = D.eventQueues[t][se.EVENTS_KEY];
    s && s.length && s.forEach(function(o) {
      var a = D.createQueryParams(o);
      if (a) {
        var c = i + "&" + a, u = new Image(), l = D.eventQueues[t][se.PROPERTIES_KEY];
        l && l.anonymous && u.setAttribute("crossOrigin", "anonymous"), u.src = c;
      }
    }), D.resetTopicQueue(t);
  }
}, createQueryParams: function(t) {
  var n, r, i = "";
  return Object.keys(t).forEach(function(s, o, a) {
    n = t[s], r = Xu(n) ? n : JSON.stringify(n), i += s + "=" + encodeURIComponent(r), o < a.length - 1 && (i += "&");
  }), i.length ? i : null;
}, sendEventsViaAjax: function(t, n) {
  if (D.eventQueues[t] && D.eventQueues[t][se.EVENTS_KEY]) {
    var r = Fr(D.eventQueues[t][se.EVENTS_KEY]);
    if (r) {
      var i = Gn(t), s = tl(t), o = function() {
        D.resetTopicQueue(t), D.resetTopicRetryAttempts(t);
      }, a = function(d, h) {
        h >= 400 && h < 500 ? o() : D.scheduleNextTopicRetryAttempt(t);
      }, c = D.eventQueues[t][se.PROPERTIES_KEY] || {}, u = { async: n, timeout: s };
      c.anonymous && (u.withCredentials = false), ho.makeAjaxRequest(i, "POST", r, o, a, u);
    }
  }
}, sendEventsViaBeacon: function(t) {
  if (!_.isFunction(navigator.sendBeacon)) {
    $n().error("navigator.sendBeacon() is not available in the environment");
    return;
  }
  var n = D.eventQueues[t];
  if (n) {
    var r = n[se.PROPERTIES_KEY];
    if (r && r.anonymous) {
      Xm() ? D.sendEventsViaFetch(t, { keepalive: true }) : el() ? D.sendEventsViaAjax(t, false) : D.sendEventsViaImage(t);
      return;
    }
    var i = Fr(n[se.EVENTS_KEY]);
    if (i) {
      var s = Gn(t), o = navigator.sendBeacon(s, i);
      o || $n().error("navigator.sendBeacon() was unable to queue the data for transfer"), D.resetTopicQueue(t);
    }
  }
}, sendEventsViaFetch: function(t, n) {
  var r = _.isDefinedNonNull(n) ? n.keepalive : null, i = D.eventQueues[t];
  if (_.isDefinedNonNull(i)) {
    var s = Fr(i[se.EVENTS_KEY]);
    if (s) {
      var o = i[se.PROPERTIES_KEY] || {}, a = Gn(t);
      Xn.globalScope().fetch(a, { method: "POST", body: s, credentials: o.anonymous === true ? "omit" : "same-origin", keepalive: _.isDefinedNonNull(r) ? r : true }), D.resetTopicQueue(t);
    }
  }
}, setTopicPostInterval: function(t, n) {
  D.eventQueues[t] && n && this.postIntervalEnabled && (this.resetTopicPostInterval(t), D.eventQueues[t].postIntervalToken = Xn.globalScope().setInterval(function() {
    $n().debug("MetricsKit: triggering postIntervalTimer for " + t + " at " + (/* @__PURE__ */ new Date()).toString()), D.sendEventsForTopic.call(D, t);
  }, n));
}, resetTopicPostInterval: function(t) {
  D.eventQueues[t] && (Xn.globalScope().clearInterval(D.eventQueues[t].postIntervalToken), D.eventQueues[t].postIntervalToken = null);
}, resetQueuePostIntervals: function() {
  for (var t in D.eventQueues) D.resetTopicPostInterval(t);
}, setQueuePostIntervals: function() {
  for (var t in D.eventQueues) {
    var n = D.eventQueues[t][se.EVENTS_KEY];
    n && n.length && D.setTopicPostInterval(t, K.value("postFrequency", t));
  }
}, objectContainsValue: function(t, n) {
  var r = false;
  for (var i in t) {
    var s = t[i];
    if (t.hasOwnProperty(i) && !Jm(s) && s === n) {
      r = true;
      break;
    }
  }
  return r;
}, setProperties: function(t, n) {
  D.eventQueues = D.eventQueues || {}, D.eventQueues[t] = D.eventQueues[t] || {}, D.eventQueues[t][se.PROPERTIES_KEY] = n;
} };
function Cr() {
  return D;
}
function Fr(e2) {
  var t = null;
  if (e2 && e2.length) {
    var n = {};
    n.deliveryVersion = se.EVENT_DELIVERY_VERSION, n.postTime = Date.now(), n[se.EVENTS_KEY] = e2;
    try {
      t = JSON.stringify(n);
    } catch (r) {
      $n().error("Error stringifying events as JSON: " + r);
    }
  }
  return t;
}
function Zm(e2) {
  return Fr([e2]);
}
function Gn(e2) {
  var t = K.value("metricsUrl", e2) + "/" + se.URL_DELIVERY_VERSION + "/";
  return t + e2;
}
function tl(e2) {
  var t = K.value("requestTimeout", e2) || se.DEFAULT_REQUEST_TIMEOUT;
  return t = Math.min(t, K.value("postFrequency", e2)), t;
}
function ev(e2) {
  D.postIntervalEnabled = e2, e2 ? D.setQueuePostIntervals() : D.resetQueuePostIntervals();
}
function tv(e2, t, n) {
  Zu.call(K, e2) || (K.value("postFrequency", e2) === 0 && (n = true), D.enqueueEvent(e2, t), n ? D.sendEvents(se.SEND_METHOD.AJAX, true) : !D.eventQueues[e2].postIntervalToken && D.postIntervalEnabled && D.setTopicPostInterval(e2, K.value("postFrequency", e2)));
}
function nv(e2, t) {
  e2 ? Xu(t) && D.objectContainsValue(fo, t) ? D.sendEvents(t, true) : _.isFunction(navigator.sendBeacon) ? D.sendEvents(se.SEND_METHOD.BEACON, true) : el() ? D.sendEvents(se.SEND_METHOD.AJAX_SYNCHRONOUS, true) : D.sendEvents(se.SEND_METHOD.IMAGE, true) : D.sendEvents(se.SEND_METHOD.AJAX, true);
}
var rv = _.attachDelegate, po = { _utResetQueue: function() {
  for (var t in Cr().eventQueues) Cr().resetTopicPostInterval(t);
  Cr().eventQueues = {};
}, SEND_METHOD: fo, setDelegate: function(t) {
  return rv(this, t);
}, recordEvent: function(t, n, r) {
  return Yu.apply(null, [tv].concat(Array.prototype.slice.call(arguments)));
}, sendMethod: function() {
  return qu();
}, flushUnreportedEvents: function(t, n) {
  nv.apply(null, Array.prototype.slice.call(arguments));
}, setProperties: function(t, n) {
  Qu(t, n), Cr().setProperties(t, n);
}, cleanup: function() {
  Ju(), po._utResetQueue();
} };
function iv(e2, t) {
  var n = Zm(t);
  if (n) {
    var r = Gn(e2), i = tl(e2), s = { timeout: i };
    Tt[e2] && Tt[e2].anonymous && (s.withCredentials = false), ho.makeAjaxRequest(r, "POST", n, null, null, s);
  }
}
var nl = { recordEvent: function(t, n) {
  return Yu.apply(null, [iv].concat(Array.prototype.slice.call(arguments)));
}, sendMethod: function() {
  return qu();
}, setProperties: Qu, cleanup: Ju }, sv = vr("mt-event-queue"), ov = Object.freeze({ __proto__: null, [Symbol.toStringTag]: "Module", environment: Xn, eventRecorder: po, immediateEventRecorder: nl, logger: sv, network: ho, setEventQueuePostIntervalEnabled: ev }), Ke = { _document: function() {
  if (typeof document != "undefined") return document;
  throw "metricskit-delegates-html.environment HTML delegate 'document' object not found";
}, _window: function() {
  if (typeof window != "undefined") return window;
  throw "metricskit-delegates-html.environment HTML delegate 'window' object not found";
}, cookie: function() {
  return Ke._window().document.cookie;
}, pageUrl: function() {
  return Ke._window().location.href;
}, parentPageUrl: function() {
  var t = Ke._window(), n = t.parent, r;
  if (n !== t) try {
    r = n.location.href;
  } catch {
    r = Ke._document().referrer;
  }
  return r;
}, pixelRatio: function() {
  return Ke._window().devicePixelRatio;
}, screenHeight: function() {
  return Ke._window().screen.height;
}, screenWidth: function() {
  return Ke._window().screen.width;
}, userAgent: function() {
  return Ke._window().navigator.userAgent;
}, windowInnerHeight: function() {
  return Ke._window().innerHeight;
}, windowInnerWidth: function() {
  return Ke._window().innerWidth;
}, windowOuterHeight: function() {
  return Ke._window().outerHeight;
}, windowOuterWidth: function() {
  return Ke._window().outerWidth;
}, timeOriginOffset: function() {
  var t = null, n = Ke._window().performance;
  return n && n.timing && (t = n.timing.navigationStart), t;
}, app: function() {
}, appVersion: function() {
}, capacityData: function() {
}, capacityDataAvailable: function() {
}, capacityDisk: function() {
}, capacitySystem: function() {
}, capacitySystemAvailable: function() {
}, connectionType: function() {
}, dsId: function() {
}, hardwareBrand: function() {
}, hardwareFamily: function() {
}, hardwareModel: function() {
}, hostApp: function() {
}, hostAppVersion: function() {
}, os: function() {
}, osBuildNumber: function() {
}, osLanguages: function() {
}, osVersion: function() {
}, resourceRevNum: function() {
}, storeFrontCountryCode: function() {
}, storeFrontHeader: function() {
}, userType: function() {
} }, Br = po, av = nl, cv = function() {
  typeof Br.cleanup == "function" ? Br.cleanup() : Br._utResetQueue();
}, __ = Object.freeze({ __proto__: null, [Symbol.toStringTag]: "Module", eventQueue: ov, cleanup: cv, environment: Ke, eventRecorder: Br, immediateEventRecorder: av }), Ii = function() {
};
Ii.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
Ii.prototype.localStorageObject = Pe.localStorageObject;
Ii.prototype.sessionStorageObject = Pe.sessionStorageObject;
var uv = function() {
  this.environment = new Ii(), this.logger = vr("mt-client-constraints");
};
function lv(e2, t) {
  return !!_.isObject(t) && t.hasOwnProperty(e2) && _.isDefinedNonNullNonEmpty(t[e2]);
}
function fv(e2, t, n) {
  if (!_.isObject(t)) return false;
  var r = t[e2];
  return t.hasOwnProperty(e2) && n.indexOf(r) > -1;
}
var qr = { nonEmpty: lv, valueMatches: fv }, Qr = { OVERRIDE_FIELD_VALUE: "overrideFieldValue" }, go = function() {
};
go.prototype.constrainedValue = function(t, n, r) {
  var i = t && t.hasOwnProperty(r) ? t[r] : null;
  return this.applyConstraintRules(i, n);
};
go.prototype.applyConstraintRules = function(t, n) {
  var r = t;
  if (n) {
    var i = n.denylisted || n.blacklisted;
    i ? r = null : n.hasOwnProperty(Qr.OVERRIDE_FIELD_VALUE) && (r = n.overrideFieldValue);
  }
  return r;
};
var dv = De.exceptionString, Ye = function(t) {
  this._constraintsInstance = t;
};
Ye.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
Ye.prototype.constrainedValue = function(t, n, r, i) {
  throw dv("field_actions.Base", "constrainedValue");
};
Ye.prototype.performAction = function(t, n, r) {
  var i = n && _.isDefined(n[t]) ? n[t] : null;
  return _.isDefinedNonNull(r) && !_.isEmptyObject(r) && (i = this.constrainedValue(i, r, n, t)), i;
};
function rl(e2) {
  e2 = e2 || "";
  var t = il(e2).split("/"), n, r, i;
  return e2.indexOf("//") === -1 ? n = t[0] : n = t[2], r = n.substring(n.indexOf("@") + 1), i = r.split(":")[0], i;
}
function hv(e2) {
  var t = rl(e2).split("."), n = t[t.length - 1], r = t[t.length - 2], i = 2;
  return n && n.length === 2 && r && (r.length === 2 || r in pv()) && (i = 3), t.slice(-1 * i).join(".");
}
function pv() {
  var e2 = { com: true, org: true, net: true, edu: true, gov: true };
  return e2;
}
function il(e2) {
  return e2 = e2 || "", e2.split("?")[0];
}
function sl(e2, t, n, r) {
  var i = this.storageKey(r, n, t), s = this._constraintsInstance.system.environment, o = Pe.objectFromStorage(s.localStorageObject(), i) || {};
  return o.value = this.idString(o, t), this.rulesHaveLifespan(t) && (!_.isNumber(o.expirationTime) || this.timeExpired(o.expirationTime)) && (o.expirationTime = this.expirationTime(t.lifespan)), Pe.saveObjectToStorage(s.localStorageObject(), i, o), e2 = o.value, e2;
}
var Ia = {};
function gv(e2, t, n, r) {
  var i = this.storageKey(r, n, t), s = Ia[i];
  return s || (s = sl.apply(this, arguments), Ia[i] = s), s;
}
var mo = "_", mv = "mtId", we = function() {
  Ye.apply(this, arguments);
};
we.prototype = Object.create(Ye.prototype);
we.prototype.constructor = we;
we.prototype.SCOPE_STRATEGIES = { ALL: "all", MAIN_DOMAIN: "mainDomain" };
we.prototype.rulesHaveLifespan = function(t) {
  return t = t || {}, _.isNumber(t.lifespan);
};
we.prototype.expirationTime = function(t) {
  return t ? Date.now() + t : null;
};
we.prototype.storageKey = function(t, n, r) {
  var i = this.scope(n, r);
  return this.storageKeyPrefix(r, t) + (i ? mo + i : "");
};
we.prototype.storageKeyPrefix = function(t, n) {
  return t && _.isString(t.storageKeyPrefix) && t.storageKeyPrefix.length > 0 ? t.storageKeyPrefix : mv + mo + n;
};
we.prototype.scope = function(t, n) {
  var r = "";
  if (n && (n.namespace && (r += n.namespace), n.scopeStrategy)) {
    var i;
    switch (n.scopeStrategy) {
      case this.SCOPE_STRATEGIES.MAIN_DOMAIN:
        var s = n.scopeFieldName;
        i = hv(t[s]) || "unknownDomain";
        break;
      case this.SCOPE_STRATEGIES.ALL:
      default:
        i = this.SCOPE_STRATEGIES.ALL;
        break;
    }
    r.length && (r += mo), r += i;
  }
  return r;
};
we.prototype.idString = function(t, n) {
  var r = t ? t.value : null, i = r;
  return (!r || _.isNumber(t.expirationTime) && this.timeExpired(t.expirationTime)) && (i = this.generateId(n)), i;
};
we.prototype.generateId = function(t) {
  var n = this.rawUUID(), r = null, i = null;
  t && (r = this.expirationTime(t.lifespan), i = t.tokenSeparator);
  var s = this.generatedIdMetadata(r) + this.idTokenSeparator() + n || "", o = s.split(this.idTokenSeparator()).map(function(a) {
    var c = parseInt(a, 16);
    return De.convertNumberToBaseAlphabet(c, De.base61Alphabet);
  }).join(this.generatedIdSeparator(i));
  return o || "0";
};
we.prototype.rawUUID = function() {
  return De.uuid();
};
we.prototype.generatedIdMetadata = function(t) {
  var n = [this.generatedIdVersion()];
  return t && n.push(t), n.map(function(r) {
    return r.toString(16);
  }).join(this.idTokenSeparator());
};
we.prototype.generatedIdVersion = function() {
  return 4;
};
we.prototype.idTokenSeparator = function() {
  return "-";
};
we.prototype.generatedIdSeparator = function(t) {
  return t || "z";
};
we.prototype.timeExpired = function(t) {
  return t <= Date.now();
};
we.prototype.constrainedValue = function(t, n, r, i) {
  return r && n && !_.isEmptyObject(n) && (n.persistIdForSession === true ? t = gv.apply(this, arguments) : t = sl.apply(this, arguments)), t;
};
var ol = function(t, n) {
  this._base = t, this._idAction = new we(n), this._idAction.setDelegate({ storageKey: function(i, s, o) {
    return this.storageKeyPrefix() + "_" + this.scope(s, o);
  }.bind(this._idAction), storageKeyPrefix: function() {
    return "mtClientId";
  } });
};
ol.prototype.constrainedValue = function(t, n) {
  var r = n;
  n && _.isNumber(n.expirationPeriod) && (r = _.extend({}, n), r.lifespan = r.expirationPeriod, delete r.expirationPeriod);
  var i = this._idAction.performAction("clientId", t, r);
  return this._base.applyConstraintRules(i, n);
};
var Jt = function() {
  Ye.apply(this, arguments);
};
Jt.prototype = Object.create(Ye.prototype);
Jt.prototype.constructor = Jt;
Jt.prototype.SCOPES = { HOSTNAME: "hostname", FULL: "full", FULL_WITHOUT_PARAMS: "fullWithoutParams" };
Jt.prototype.constrainedValue = function(t, n) {
  if (t && n && n.scope) switch (n.scope) {
    case this.SCOPES.HOSTNAME:
      t = rl(t);
      break;
    case this.SCOPES.FULL_WITHOUT_PARAMS:
      t = il(t);
      break;
    case this.SCOPES.FULL:
  }
  return t;
};
var al = function(t) {
  this._base = t, this._urlAction = new Jt();
};
al.prototype.constrainedValue = function(t, n) {
  var r = this._urlAction.performAction("parentPageUrl", t, n);
  return this._base.applyConstraintRules(r, n);
};
var vv = function(e2) {
  this.base = new go(e2), this.clientId = new ol(this.base, e2), this.parentPageUrl = new al(this.base, e2);
}, vo = function(t) {
  this._fieldHandlers = new vv(t);
};
vo.prototype.applyConstraints = function(t, n) {
  return n && n.fieldConstraints && (t = this.applyFieldConstraints(t, n.fieldConstraints)), t;
};
vo.prototype.applyFieldConstraints = function(t, n) {
  if (n) {
    var r = {}, i, s, o;
    for (o in n) s = n[o], (t.hasOwnProperty(o) || s.generateValue === true || s.hasOwnProperty(Qr.OVERRIDE_FIELD_VALUE)) && (o in this._fieldHandlers ? i = this._fieldHandlers[o].constrainedValue(t, s) : i = this._fieldHandlers.base.constrainedValue(t, s, o), r[o] = i);
    for (o in r) t[o] = r[o];
    t = so.mergeAndCleanEventFields(t);
  }
  return t;
};
function cl(e2, t, n, r) {
  var i = e2 || {};
  if (r = r || function(u, l, d) {
    return u[d] || {};
  }, t && t[n]) {
    var s, o, a = i[n] || {};
    i[n] = a;
    for (s in t[n]) {
      var c = r(a, t[n], s);
      a[s] = c;
      for (o in t[n][s]) c[o] = t[n][s][o];
    }
  }
  return i;
}
var Cn = function(t) {
  this.treatment = new vo(t);
};
Cn.prototype.constraintsForEvent = function(t, n, r) {
  if (!n) return null;
  var i = "constraints.profiles." + n.constraintProfile(r), s = n.value(i, r), o = null;
  if (s && s.precedenceOrderedRules) {
    var a = this;
    o = s.precedenceOrderedRules.reduce(function(c, u) {
      return a.eventMatchesRule(t, u) && (c = a.updateRules(c, u)), c;
    }, {});
  }
  return o;
};
Cn.prototype.eventMatchesRule = function(t, n) {
  var r = false;
  return t && n.filters && (n.filters === "any" ? r = true : _.isObject(n.filters) && (r = this.eventMatchesNonEmptyFields(t, n.filters.nonEmptyFields) && this.eventMatchesFieldValues(t, n.filters.valueMatches))), r;
};
Cn.prototype.eventMatchesNonEmptyFields = function(t, n) {
  var r = false;
  return t && (!n || !_.isArray(n) ? r = true : r = n.every(function(i) {
    return qr.nonEmpty(i, t);
  })), r;
};
Cn.prototype.eventMatchesFieldValues = function(t, n) {
  var r = false;
  return t && (!n || !_.isObject(n) || _.isEmptyObject(n) ? r = true : r = Object.keys(n).every(function(i) {
    var s = n[i];
    return qr.valueMatches(i, t, s);
  })), r;
};
Cn.prototype.updateRules = function(t, n) {
  return cl(t, n, "fieldConstraints");
};
var ul = function() {
};
ul.prototype.performAction = function(t, n) {
  return n !== true ? t : null;
};
var ll = function() {
};
ll.prototype.performAction = function(t, n) {
  return !t || !_.isArray(n) || _.isEmptyArray(n) ? t : (t = _.extend({}, t), n.forEach(function(r) {
    delete t[r];
  }), _.isEmptyObject(t) ? null : t);
};
var fl = function() {
};
fl.prototype.performAction = function(t, n) {
  if (!t || !_.isArray(n) || _.isEmptyArray(n)) return t;
  var r = {};
  return n.forEach(function(i) {
    _.isDefinedNonNull(t[i]) && (r[i] = t[i]);
  }), _.isEmptyObject(r) ? null : r;
};
var cn = { blacklistedEventAction: "blacklisted", denylistedEventAction: "denylisted", blacklistedFieldsAction: "blacklistedFields", denylistedFieldsAction: "denylistedFields", whitelistedFieldsAction: "whitelistedFields", allowlistedFieldsAction: "allowlistedFields" }, dl = function() {
  var t = new ul(), n = new ll(), r = new fl();
  this._actions = {}, this._actions[cn.blacklistedEventAction] = t, this._actions[cn.denylistedEventAction] = t, this._actions[cn.blacklistedFieldsAction] = n, this._actions[cn.denylistedFieldsAction] = n, this._actions[cn.whitelistedFieldsAction] = r, this._actions[cn.allowlistedFieldsAction] = r;
};
dl.prototype.getAction = function(t) {
  return this._actions[t];
};
var Zn = "start", _v = "value", yv = function(t, n) {
  var r = -1, i = r;
  if (!_.isDefinedNonNull(n) || t.length === 0 || _.isDefinedNonNull(t[0]) && n < t[0][Zn]) return r;
  if (t[t.length - 1][Zn] < n) i = t.length - 1;
  else for (var s = 0; s < t.length; s++) {
    var o = t[s][Zn];
    if (o === n) {
      i = s;
      break;
    } else if (o > n) {
      i = s - 1;
      break;
    }
  }
  return i;
}, fr = function() {
  Ye.apply(this, arguments);
};
fr.prototype = Object.create(Ye.prototype);
fr.prototype.constructor = fr;
fr.prototype.constrainedValue = function(t, n) {
  var r = n ? n.precision : 0, i = n ? n.buckets : null;
  if (_.isDefinedNonNullNonEmpty(i)) {
    i = i.slice().sort(function(a, c) {
      return a[Zn] - c[Zn];
    });
    var s = yv(i, t), o = i[s];
    _.isDefinedNonNull(o) && (t = o[_v]);
  } else _.isNumber(t) && _.isNumber(r) && r > 0 && (t = Math.floor(t / r) * r);
  return t;
};
var Ev = "mt_serial_number", Jr = "exp", Ss = "sn", It = function(t) {
  t = t || {}, this._nextRotationTime = t.nextRotationTime || Number.POSITIVE_INFINITY, this._storageKey = t.namespace || Ev, this._initialSerialNumber = t.initialSerialNumber || 0, this._rotationPeriod = t.rotationPeriod || Number.POSITIVE_INFINITY;
};
It.prototype.setDelegate = function(t) {
  _.attachDelegate(this, t);
};
It.prototype.localStorageObject = function() {
  return Pe.localStorageObject();
};
It.prototype.getNextSerialNumber = function(t) {
  var n = this._storageKey, r = this._getCurrentSerialNumberData(n), i = r[Ss];
  return t = _.isNumber(t) ? t : 1, i = parseInt(i, 10), isNaN(i) && (i = this._initialSerialNumber), i = this._increaseSerialNumber(i, t), r[Ss] = i, Pe.saveObjectToStorage(this.localStorageObject(), this._storageKey, r), i;
};
It.prototype.resetSerialNumber = function() {
  var t = Pe.objectFromStorage(this.localStorageObject(), this._storageKey);
  _.isDefinedNonNull(t) && this._resetSerialNumber(t[Jr]);
};
It.prototype.getTime = function() {
  return Date.now();
};
It.prototype._increaseSerialNumber = function(t, n) {
  return t + n;
};
It.prototype._getCurrentSerialNumberData = function(t) {
  var n = Pe.objectFromStorage(this.localStorageObject(), t), r, i;
  for (n ? (r = n[Jr], r = parseInt(r, 10), n[Jr] = r = isNaN(r) ? this._nextRotationTime : r) : r = this._nextRotationTime - this._rotationPeriod; !n || this.getTime() >= r; ) r = i = r + this._rotationPeriod, n = this._resetSerialNumber(i);
  return n;
};
It.prototype._resetSerialNumber = function(t) {
  var n = {};
  return n[Jr] = t, n[Ss] = this._initialSerialNumber, Pe.saveObjectToStorage(this.localStorageObject(), this._storageKey, n), n;
};
var Ra = "_", bv = "mtTimestamp", Kt = function() {
  Ye.apply(this, arguments), this._storage = this._constraintsInstance.system.environment.localStorageObject(), this._precisionEndTimeCache = {}, this._serialNumberGenerator = null;
};
Kt.prototype = Object.create(Ye.prototype);
Kt.prototype.constructor = Kt;
Kt.prototype.constrainedValue = function(t, n, r, i) {
  var s = t;
  if (_.isNumber(t) && _.isObject(n) && _.isNumber(n.precision) && n.precision > 0) {
    var o = this._computePrecisionStartTime(t, n);
    this._serialNumberGenerator = new It({ namespace: this._persistentStorageKey(n, i), nextRotationTime: o + n.precision, rotationPeriod: n.precision }), this._serialNumberGenerator.setDelegate(this._constraintsInstance.system.environment), this._serialNumberGenerator.setDelegate({ getTime: function() {
      return t;
    } });
    var a = this._serialNumberGenerator.getNextSerialNumber();
    s = this._computeTimestamp(o, a), this._serialNumberGenerator = null;
  }
  return s;
};
Kt.prototype._computeTimestamp = function(t, n) {
  return t + n;
};
Kt.prototype._persistentStorageKey = function(t, n) {
  var r = t.namespace ? Ra + t.namespace : "";
  return (t.storageKeyPrefix || bv) + r + Ra + n;
};
Kt.prototype._computePrecisionStartTime = function(t, n) {
  var r = n.precision;
  return Math.floor(t / r) * r;
};
var qi = "_", Sv = "mtHash", Tv = "salt", Av = 10, wt = function() {
  Ye.apply(this, arguments);
};
wt.prototype = Object.create(Ye.prototype);
wt.prototype.constructor = wt;
function hl(e2, t) {
  var n = e2.namespace ? qi + e2.namespace : "";
  return (e2.storageKeyPrefix || Sv) + n + qi + Tv + qi + t;
}
function wv() {
  for (var e2 = ""; e2.length < Av; ) e2 += De.randomHexCharacter();
  return e2;
}
function Ov(e2) {
  var t = 0;
  if (_.isDefinedNonNullNonEmpty(e2)) for (var n = 0; n < e2.length; n++) {
    var r = e2.charCodeAt(n);
    t = (t << 5) - t + r;
  }
  var i = Math.abs(t);
  return De.convertNumberToBaseAlphabet(i, De.base62Alphabet);
}
wt.prototype.constrainedValue = function(t, n, r, i) {
  if (_.isDefinedNonNullNonEmpty(t)) {
    var s = this._getSalt(n, i);
    t = Ov(t + "_" + s);
  }
  return t;
};
wt.prototype.timeExpired = function(t) {
  return t ? t <= Date.now() : false;
};
wt.prototype.expirationTime = function(t) {
  return t ? Date.now() + t : null;
};
wt.prototype._getSalt = function(t, n) {
  var r = this._retrieveSaltFromStorage(t, n), i = t.saltLifespan;
  if (!_.isDefinedNonNull(r) || this.timeExpired(r.expirationTime)) {
    var s = this._constraintsInstance.system.environment.localStorageObject(), o = wv();
    r = { salt: o, expirationTime: this.expirationTime(i) }, Pe.saveObjectToStorage(s, hl(t, n), r);
  }
  return r.salt;
};
wt.prototype._retrieveSaltFromStorage = function(t, n) {
  var r = this._constraintsInstance.system.environment.localStorageObject(), i = Pe.objectFromStorage(r, hl(t, n));
  return i;
};
var jn = { ID: "idGenerator", NUMBER: "numberDeres", TIME: "timeDeres", URL: "urlDeres", HASH: "hash" }, pl = function(t) {
  this.actions = {}, this.actions[jn.ID] = new we(t), this.actions[jn.NUMBER] = new fr(t), this.actions[jn.TIME] = new Kt(t), this.actions[jn.URL] = new Jt(t), this.actions[jn.HASH] = new wt(t);
};
pl.prototype.getAction = function(t) {
  return this.actions[t];
};
var gl = function(t) {
  this._eventActions = new dl(), this._fieldActions = new pl(t);
};
gl.prototype.applyConstraints = function(t, n) {
  var r = t;
  if (n && !_.isEmptyObject(n)) {
    if (n.fieldActions && !_.isEmptyObject(n.fieldActions)) {
      var i = this, s = Object.keys(n.fieldActions).reduce(function(c, u) {
        var l = n.fieldActions[u];
        if (l) {
          var d = l.denylisted || l.blacklisted, h = l.treatmentType, g = i._fieldActions.getAction(h);
          if (d) c[u] = null;
          else if (l.hasOwnProperty(Qr.OVERRIDE_FIELD_VALUE)) c[u] = l[Qr.OVERRIDE_FIELD_VALUE];
          else if (g) {
            var E = g.performAction(u, r, l);
            c[u] = E;
          }
        }
        return c;
      }, {});
      if (!_.isEmptyObject(s)) {
        var o = _.extend({}, r, s);
        r = so.mergeAndCleanEventFields(o);
      }
    }
    if (n.eventActions && !_.isEmptyObject(n.eventActions)) {
      var a = Object.keys(n.eventActions);
      a.forEach(function(c) {
        var u = this._eventActions.getAction(c);
        if (u) {
          var l = n.eventActions[c];
          r = u.performAction(r, l);
        }
      }, this);
    }
  }
  return r;
};
var Iv = "filters", Rv = "any", Dr = "eventActions", Qi = "fieldActions";
function Cv(e2, t) {
  var n = e2 || {};
  return Dv(n, t), Pv(n, t), n;
}
function Dv(e2, t) {
  e2[Dr] || (e2[Dr] = {});
  var n = e2[Dr], r = t[Dr];
  r && Object.keys(r).reduce(function(i, s) {
    var o = i[s], a = r[s];
    return _.isArray(o) ? _.isArray(a) && a.forEach(function(c) {
      o.indexOf(c) === -1 && o.push(c);
    }) : _.isArray(a) ? i[s] = a.slice() : !_.isObject(a) && !_.isFunction(a) && (i[s] = a), i;
  }, n);
}
function Pv(e2, t) {
  e2[Qi] || (e2[Qi] = {}), cl(e2, t, Qi, function(n, r, i) {
    return n[i] && n[i].treatmentType === r[i].treatmentType ? n[i] : {};
  });
}
var Ri = function(t) {
  this._constraintsInstance = t, this.treatment = new gl(t);
};
Ri.prototype._combineTreatments = function(t, n, r) {
  var i = [];
  return _.isArray(t) && t.forEach(function(s) {
    var o = "treatmentProfiles." + s, a = n.value(o, r);
    a && a.treatments && (i = i.concat(a.treatments));
  }), i;
};
Ri.prototype.constraintsForEvent = function(t, n, r) {
  if (!n) return null;
  var i = this, s = n.constraintProfiles(r);
  if (!_.isDefinedNonNull(s)) {
    var o = n.constraintProfile(r);
    _.isDefinedNonNull(o) && (s = [o]);
  }
  if (!_.isDefinedNonNull(s)) return null;
  if (!_.isArray(s)) throw new TypeError('"constraintProfiles" should be an Array, but got: ' + (s && s.constructor));
  var a = this._combineTreatments(s, n, r);
  if (a.length === 0) throw new SyntaxError("The constraintProfiles: " + s.join(", ") + " are not found in the topic config");
  var c = a.reduce(function(u, l) {
    return i.eventMatchesTreatment(t, l) && (u = Cv(u, l)), u;
  }, null);
  return c;
};
Ri.prototype.eventMatchesTreatment = function(t, n) {
  var r = n[Iv];
  if (r && _.isString(r)) return r === Rv;
  if (!_.isDefinedNonNull(r) || r.length === 0) throw new SyntaxError(`Unable to find the filter in 
` + JSON.stringify(n));
  return Object.keys(r).every(function(i) {
    var s = r[i];
    if (s && _.isString(s)) return false;
    if (!s || !_.isObject(s) || _.isEmptyObject(s)) throw new SyntaxError("Invalid filter object for field (" + i + `) in 
` + JSON.stringify(n));
    return Object.keys(s).every(function(o) {
      var a = s[o];
      if (qr[o]) return qr[o](i, t, a);
      throw new SyntaxError("Unable to find the filter (" + o + ") for field (" + i + `)in 
` + JSON.stringify(n));
    });
  });
};
var Nv = { constraintProfile: function(t) {
  return this.value("constraints.defaultProfile", t);
}, constraintProfiles: function(t) {
  return this.value("defaultTreatmentProfiles", t);
} };
function Mv(e2) {
  var t = true;
  return t &= _.isDefinedNonNull(e2), t && (t &= !_.isEmptyObject(e2), t &= _.isFunction(e2.initialized), t &= _.isFunction(e2.value), t &= _.isFunction(e2.constraintProfile)), t;
}
function Lv(e2) {
  return _.isDefinedNonNull(e2.value("treatmentProfiles"));
}
function kv(e2) {
  return _.isFunction(e2.constraintProfile) && _.isFunction(e2.constraintProfiles) || _.attachMethods(e2, Nv, e2), e2;
}
var Ci = function(t, n) {
  if (!Mv(t)) throw new Error('The topic config is not a valid instance of "mt-client-config".');
  this._isInitialized = false, this._topicConfig = t, this._constraintGenerator = null, this.system = new uv(), _.setDelegates(this.system, n || {});
};
Ci.prototype._getConstraintGenerator = function() {
  var t = this._topicConfig;
  return (!this._constraintGenerator || !this._isInitialized) && (this._isInitialized = t.initialized(), Lv(t) ? this._constraintGenerator = new Ri(this) : this._constraintGenerator = new Cn(this)), this._constraintGenerator;
};
Ci.prototype.constraintsForEvent = function(t, n) {
  return this._getConstraintGenerator().constraintsForEvent(t, this._topicConfig, n);
};
Ci.prototype.applyConstraintTreatments = function(t, n) {
  if (n === void 0) try {
    n = this.constraintsForEvent(t);
  } catch (r) {
    return this.system.logger.warn("An error occupied while applying constraints: " + r.message || r), null;
  }
  return this._getConstraintGenerator().treatment.applyConstraints(t, n);
};
var Ts = { version: "7.4.1", name: "mt-metricskit" }, Uv = { mtName: function() {
  return Ts.name;
}, mtVersion: function() {
  return Ts.version;
} }, Fe = { attachDelegateInfo: function(e2) {
  _.extend(e2, Uv);
} }, Fv = { treatmentProfiles: { AMPWeb: { treatments: [{ filters: "any", fieldActions: { clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtClientId", namespace: "AMPWeb_isSignedOut", lifespan: 864e5, persistIdForSession: true }, analyticsClientId: { treatmentType: "idGenerator", namespace: "AMPWeb_isSignedOut", lifespan: 864e5, persistIdForSession: true } } }, { filters: { isSignedIn: { valueMatches: [true] } }, fieldActions: { clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtClientId", namespace: "AMPWeb_isSignedIn", lifespan: 15552e6, persistIdForSession: true }, analyticsClientId: { treatmentType: "idGenerator", namespace: "AMPWeb_isSignedIn", lifespan: 15552e6, persistIdForSession: true } } }] } } }, _o = { treatmentProfiles: { AMPWeb: { treatments: [{ filters: "any", fieldActions: { clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtClientId", namespace: "AMPWeb_isSignedOut", lifespan: 864e5 } } }, { filters: { isSignedIn: { valueMatches: [true] } }, fieldActions: { clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtClientId", namespace: "AMPWeb_isSignedIn", lifespan: 15552e6 } } }] }, AMPFunnel: { treatments: [{ filters: "any", eventActions: { blacklistedFields: ["mtClientId", "mtRequestId", "pliIds", "userAgent", "screenHeight", "screenWidth", "windowInnerHeight", "windowInnerWidth", "windowOuterHeight", "windowOuterWidth"] }, fieldActions: { eventTime: { treatmentType: "timeDeres", precision: 864e5 }, clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtId_clientId_unidentified", lifespan: 15552e6 } } }] }, strict: { treatments: [{ filters: "any", fieldActions: { consumerId: { blacklisted: true }, dsId: { blacklisted: true }, clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtClientId", scopeFieldName: "parentPageUrl", scopeStrategy: "mainDomain", lifespan: 864e5 }, parentPageUrl: { treatmentType: "urlDeres", scope: "hostname" } } }, { filters: { eventType: { valueMatches: ["click"] }, actionType: { valueMatches: ["signUp"] } }, fieldActions: { parentPageUrl: { treatmentType: "urlDeres", scope: "fullWithoutParams" } } }, { filters: { eventType: { valueMatches: ["dialog"] }, dialogType: { valueMatches: ["upsell"] }, result: { valueMatches: ["upsell"] } }, fieldActions: { parentPageUrl: { treatmentType: "urlDeres", scope: "fullWithoutParams" } } }, { filters: { userType: { valueMatches: ["signedIn"] } }, fieldActions: { clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtClientId", scopeStrategy: "all" } } }, { filters: { userType: { valueMatches: ["signedIn"] }, eventType: { valueMatches: ["click", "dialog", "media", "search"] } }, fieldActions: { clientId: { blacklisted: true }, consumerId: { blacklisted: false }, dsId: { blacklisted: false } } }, { filters: { userType: { valueMatches: ["signedIn"] }, eventType: { valueMatches: ["page", "impressions"] }, pageHistory: { nonEmpty: true } }, fieldActions: { clientId: { blacklisted: true }, consumerId: { blacklisted: false }, dsId: { blacklisted: false } } }] } } }, Bv = _.extend({}, _o, { blacklistedFields: ["consumerId"] }), xv = { treatmentProfiles: { AMPWeb: { treatments: [{ filters: "any", fieldActions: { clientId: { blacklisted: true } } }, { filters: { isSignedIn: { valueMatches: [false] } }, fieldActions: { clientId: { treatmentType: "idGenerator", namespace: "AMPWeb_isSignedOut", lifespan: 864e5 } } }] } } }, Kv = { xp_its_music_main: Fv, xp_amp_tv_main: xv, xp_amp_tv_unidentified: Bv, default_constraints: _o };
function jv(e2) {
  var t = Kv[e2];
  return _.isDefinedNonNull(t) || (t = _o), t;
}
_.attachMethods(K, mr, K);
var Vv = function(t) {
  _.attachMethods(t, mr, t), kv(t), Fe.attachDelegateInfo(t);
};
function Hv(e2, t) {
  t = t || {};
  var n = t.delegates || {}, r = t.configSourcesFn, i = t.onSuccessHandler, s = t.onFailureHandler, o = n.environment, a = n.network, c = n.logger;
  _.isFunction(r) || Gv(e2), K.environment.setDelegate(o), K.logger.setDelegate(c), K.network.setDelegate(a), Vv(e2), e2.init(r, i, s);
}
function $v(e2) {
  K.cleanupConfig(e2.topic()), _.detachMethods(K.environment), _.detachMethods(K.logger), _.detachMethods(K.network);
}
function Gv(e2) {
  var t = e2.cachedSource();
  if (!t) {
    var n = jv(e2.topic());
    e2.setCachedSource(n);
  }
}
var Di = { FIELD_NAMES: { CLIENT_EVENT_ID: "clientEventId", CONSUMER_ID: "consumerId", CONSUMER_NS: "consumerNs", DELEGATE_APP: "delegateApp", EVENT_VERSION: "eventVersion", STOREFRONT_COUNTRY_CODE: "storeFrontCountryCode" }, REQUIRED_ENVIRONMENT_BASE_FIELD_NAMES: ["app", "appVersion", "capacityData", "capacityDataAvailable", "capacityDisk", "capacitySystem", "capacitySystemAvailable", "connectionType", "dsId", "hostApp", "osVersion", "pageUrl", "pixelRatio", "resourceRevNum", "screenHeight", "screenWidth", "storeFrontHeader", "userAgent", "userType", "windowInnerHeight", "windowInnerWidth", "windowOuterHeight", "windowOuterWidth"], OPTIONAL_ENVIRONMENT_BASE_FIELD_NAMES: ["consumerId", "consumerNs", "cookie", "delegateApp", "environmentInstance", "hardwareBrand", "hardwareFamily", "hardwareModel", "hostAppVersion", "os", "osBuildNumber", "osLanguages", "parentPageUrl", "storeFrontCountryCode", "storeFrontLanguage"] }, zv = De.exceptionString, Wv = Di.REQUIRED_ENVIRONMENT_BASE_FIELD_NAMES, Yv = Di.OPTIONAL_ENVIRONMENT_BASE_FIELD_NAMES, Ca = false, qv = function() {
}, Pi = function e() {
  Ca || (Ca = true, Wv.forEach(function(t) {
    e.prototype[t] = function() {
      throw zv("metrics.system.environment", t);
    };
  }), Yv.forEach(function(t) {
    e.prototype[t] = qv;
  }));
};
Pi.prototype.setDelegate = function(t) {
  return be.setDelegate(t), _.attachDelegate(this, t);
};
Pi.prototype.localStorageObject = Pe.localStorageObject;
Pi.prototype.sessionStorageObject = Pe.sessionStorageObject;
var yr = function() {
};
yr.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
yr.prototype.recordEvent = function(t, n) {
  throw De.exceptionString("metrics.system.event_recorder", "recordEvent");
};
yr.prototype.sendMethod = function() {
  throw De.exceptionString("metrics.system.event_recorder", "sendMethod");
};
yr.prototype.flushUnreportedEvents = function(t) {
};
var ml = vr("mt-metricskit"), Qv = function() {
  this.environment = new Pi(), this.eventRecorder = new yr(), this.logger = ml;
  for (var t in this) Fe.attachDelegateInfo(this[t]);
}, Dn = function(e2) {
  this._metricsKit = e2;
};
Dn.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
Dn.prototype.metricsData = function(e2, t, n) {
  return this._metricsKit.eventHandlers.base.processMetricsData.apply(this, arguments);
};
Dn.prototype.knownFields = function() {
  var t = ["eventType", "eventVersion", "type"];
  return t;
};
Dn.prototype.eventType = function(e2) {
  return "account";
};
Dn.prototype.eventVersion = function(e2) {
  return e2 && e2.eventVersion || 1;
};
var gt = Di.FIELD_NAMES, V = function(e2) {
  this._metricsKit = e2;
};
V.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
V.prototype.metricsData = function(e2, t, n) {
  var r = Array.prototype.slice.call(arguments), i = this._metricsKit.config.value("metricsBase");
  return i && r.push(i), this.processMetricsData.apply(this, r);
};
V.prototype.processMetricsData = function(t, n, r) {
  var i = null, s = typeof this.eventType == "function" ? this.eventType() : null, o = this._metricsKit.config, a = this._metricsKit.eventHandlers.base, c = this._metricsKit.utils, u = this._metricsKit._constraints;
  if (!o.metricsDisabledOrBlacklistedEvent(s)) {
    var l = this !== a, d = typeof this.mtIncludeBaseFields == "function" ? this.mtIncludeBaseFields() : true, h = Array.prototype.slice.call(arguments, 3);
    if (l && d) {
      var g = a.metricsData.apply(a, arguments);
      h = [g].concat(h);
    }
    i = c.eventFields.processMetricsData(this, this.knownFields(), t, n, r, h), l && (i = u.applyConstraintTreatments(i), o.removeBlacklistedFields(i), o.applyDeRes(i));
  }
  return i;
};
V.prototype.knownFields = function() {
  var t = ["app", "appVersion", "baseVersion", "capacityData", "capacityDataAvailable", "capacityDisk", "capacitySystem", "capacitySystemAvailable", "connection", "constraintProfile", "constraintProfiles", gt.CONSUMER_ID, gt.CONSUMER_NS, gt.CLIENT_EVENT_ID, "clientId", gt.DELEGATE_APP, "dsId", "environmentInstance", "eventTime", "isSignedIn", "hardwareBrand", "hardwareFamily", "hardwareModel", "hostApp", "hostAppVersion", "os", "osBuildNumber", "osVersion", "page", "pageContext", "pageDetails", "pageId", "pageType", "pageUrl", "parentPageUrl", "pixelRatio", "resourceRevNum", "screenHeight", "screenWidth", gt.STOREFRONT_COUNTRY_CODE, "storeFrontHeader", "storeFrontLanguage", "timezoneOffset", "userAgent", "userType", "windowInnerHeight", "windowInnerWidth", "windowOuterHeight", "windowOuterWidth", "xpPostFrequency", "xpSendMethod", "xpVersionMetricsKit", "xpDelegatesInfo"];
  return t;
};
V.prototype.app = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.app || n.app();
};
V.prototype.appVersion = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.appVersion || n.appVersion();
};
V.prototype.baseVersion = function(t) {
  return 1;
};
V.prototype.capacityData = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.capacityData || n.capacityData();
};
V.prototype.capacityDataAvailable = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.capacityDataAvailable || n.capacityDataAvailable();
};
V.prototype.capacityDisk = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.capacityDisk || n.capacityDisk();
};
V.prototype.capacitySystem = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.capacitySystem || n.capacitySystem();
};
V.prototype.capacitySystemAvailable = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.capacitySystemAvailable || n.capacitySystemAvailable();
};
V.prototype.connection = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.connection || n.connectionType();
};
V.prototype.constraintProfile = function(t) {
  var n = this._metricsKit.config;
  return t && t.constraintProfile || n.constraintProfile();
};
V.prototype.constraintProfiles = function(t) {
  var n = this._metricsKit.config;
  return t && t.constraintProfiles || n.constraintProfiles();
};
V.prototype.consumerId = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t[gt.CONSUMER_ID] || n.consumerId();
};
V.prototype.consumerNs = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t[gt.CONSUMER_NS] || n.consumerNs();
};
V.prototype.clientEventId = function(t) {
  var n = t && t[gt.CLIENT_EVENT_ID];
  return n || (De.cryptoRandomBase62String && (n = De.cryptoRandomBase62String(true)), n || (n = De.uuid())), n;
};
V.prototype.clientId = function(t) {
  var n, r = this._metricsKit.config;
  return t && t.clientId ? n = t.clientId : r.value("ignoreClientIdCookie") || (n = be.get("xp_ci")), n;
};
V.prototype.delegateApp = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t[gt.DELEGATE_APP] || n.delegateApp();
};
V.prototype.dsId = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.dsId || n.dsId();
};
V.prototype.isSignedIn = function(t) {
  return t && "isSignedIn" in t ? t.isSignedIn : !!this.dsId(t);
};
V.prototype.eventTime = function(t) {
  return t && t.eventTime || Date.now();
};
V.prototype.hardwareBrand = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.hardwareBrand || n.hardwareBrand();
};
V.prototype.hardwareFamily = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.hardwareFamily || n.hardwareFamily();
};
V.prototype.hardwareModel = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.hardwareModel || n.hardwareModel();
};
V.prototype.hostApp = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.hostApp || n.hostApp();
};
V.prototype.hostAppVersion = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.hostAppVersion || n.hostAppVersion();
};
V.prototype.os = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.os || n.os();
};
V.prototype.osBuildNumber = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.osBuildNumber || n.osBuildNumber();
};
V.prototype.osVersion = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.osVersion || n.osVersion();
};
V.prototype.page = function(t) {
  if (t) {
    if (t.page) return t.page;
    if (this.pageType(t) && this.pageId(t)) {
      var n = this._metricsKit.config;
      return this.pageType(t) + n.value("compoundSeparator") + this.pageId(t);
    }
  } else throw "No data provided to event_handlers/base page function";
};
V.prototype.pageContext = function(t) {
  return t && t.pageContext;
};
V.prototype.pageDetails = function(t) {
  return t && t.pageDetails;
};
V.prototype.pageId = function(t) {
  return t && t.pageId;
};
V.prototype.pageType = function(t) {
  return t && t.pageType;
};
V.prototype.pageUrl = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.pageUrl || n.pageUrl();
};
V.prototype.parentPageUrl = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.parentPageUrl || n.parentPageUrl();
};
V.prototype.pixelRatio = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.pixelRatio || n.pixelRatio();
};
V.prototype.resourceRevNum = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.resourceRevNum || n.resourceRevNum();
};
V.prototype.screenHeight = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.screenHeight || n.screenHeight();
};
V.prototype.screenWidth = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.screenWidth || n.screenWidth();
};
V.prototype.storeFrontCountryCode = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t[gt.STOREFRONT_COUNTRY_CODE] || n.storeFrontCountryCode();
};
V.prototype.storeFrontHeader = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.storeFrontHeader || n.storeFrontHeader();
};
V.prototype.storeFrontLanguage = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.storeFrontLanguage || n.storeFrontLanguage();
};
V.prototype.timezoneOffset = function(t) {
  return t && t.timezoneOffset || (/* @__PURE__ */ new Date()).getTimezoneOffset();
};
V.prototype.userAgent = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.userAgent || n.userAgent();
};
V.prototype.userType = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.userType || n.userType();
};
V.prototype.windowInnerHeight = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.windowInnerHeight || n.windowInnerHeight();
};
V.prototype.windowInnerWidth = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.windowInnerWidth || n.windowInnerWidth();
};
V.prototype.windowOuterHeight = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.windowOuterHeight || n.windowOuterHeight();
};
V.prototype.windowOuterWidth = function(t) {
  var n = this._metricsKit.system.environment;
  return t && t.windowOuterWidth || n.windowOuterWidth();
};
V.prototype.xpPostFrequency = function(t) {
  var n = this._metricsKit.config;
  return t && t.xpPostFrequency || n.value("postFrequency");
};
V.prototype.xpViewablePercentage = function(t) {
  var n = this._metricsKit.config;
  return t && t.xpViewablePercentage || n.value("impressions.viewablePercentage");
};
V.prototype.xpSendMethod = function(t) {
  var n = this._metricsKit.system;
  return t && t.xpSendMethod || n.eventRecorder.sendMethod();
};
V.prototype.xpVersionMetricsKit = function() {
  return Ts.version;
};
V.prototype.xpDelegatesInfo = function() {
  var t = wm.getStoredDelegateObject(this), n = t && t.delegates;
  return n || void 0;
};
var Qe = function(e2) {
  this._metricsKit = e2;
};
Qe.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
Qe.prototype.metricsData = function(e2, t, n) {
  var r = this._metricsKit.eventHandlers.base;
  return r.processMetricsData.apply(this, arguments);
};
Qe.prototype.knownFields = function() {
  var t = ["eventType", "eventVersion"];
  return t;
};
Qe.prototype.eventType = function(e2) {
  return "buyConfirmed";
};
Qe.prototype.eventVersion = function(e2) {
  return e2 && e2.eventVersion || 1;
};
Qe.prototype.createClientBuyId = function() {
  var e2 = null, t = this._metricsKit.system.environment, n = t.sessionStorageObject().getItem("mtMetricsKit_previousClientBuyId");
  return e2 = ++n, n || (this._metricsKit.system.logger.warn("Metrics: buyConfirmed.createClientBuyId: clientBuyId did not exist or was of incorrect type, reset to 1."), e2 = 1), t.sessionStorageObject().setItem("mtMetricsKit_previousClientBuyId", e2), e2;
};
Qe.prototype.clientBuyIdQueryParamString = function(e2) {
  return "&clientBuyId=" + e2;
};
Qe.prototype.metricsBuyParamsString = function(e2, t, n, r) {
  var i = this._metricsKit.eventHandlers.base, s = this._metricsKit.eventHandlers.page, o = Array.prototype.slice.call(arguments, 4), a = s.pageHistory(), c = i.clientId(), u, l;
  return Array.isArray(a) ? a.length >= 2 && (u = a[a.length - 2]) : this._metricsKit.system.logger.warn("MetricsKit: metricsBuyParamsString: pageHistory is not an Array"), l = { mtApp: i.app(), mtEventTime: Date.now(), mtHardwareBrand: i.hardwareBrand(), mtHardwareFamily: i.hardwareFamily(), mtHardwareModel: i.hardwareModel(), mtHostApp: i.hostApp(), mtHostAppVersion: i.hostAppVersion(), mtOs: i.os(), mtOsBuildNumber: i.osBuildNumber(), mtOsVersion: i.osVersion(), mtPageId: e2, mtPageType: t, mtPageContext: n, mtTopic: r || "xp_its_main", mtPrevPage: u, mtRequestId: De.uuid(), mtClientId: c }, _.extend.apply(_, [l].concat(o)), De.paramString(l);
};
Qe.prototype.cacheMetricsBuyData = function(e2, t) {
  var n = this._metricsKit.system.environment;
  if (arguments.length != 2) this._metricsKit.system.logger.error("buyConfirmed.cacheMetricsBuyData(): function invoked with incorrect number of parameters. Perhaps you meant to retrieve cached data instead of setting it, which would be a call to uncacheMetricsBuyData(clientBuyId)?");
  else {
    var r = JSON.stringify(t);
    n.sessionStorageObject().setItem("mtMetricsKit_metricsBuyData_for_clientBuyId_" + e2, r);
  }
};
Qe.prototype.uncacheMetricsBuyData = function(e2) {
  var t = null, n = this._metricsKit.system.environment;
  if (arguments.length != 1) this._metricsKit.system.logger.error("buyConfirmed.uncacheMetricsBuyData(): function invoked with incorrect number of parameters. Perhaps you meant to set cached data instead of retrieving it, which would be a call to cacheMetricsBuyData(clientBuyId, metricsBuyData)?");
  else {
    var r = n.sessionStorageObject().getItem("mtMetricsKit_metricsBuyData_for_clientBuyId_" + e2);
    r && (t = JSON.parse(r), n.sessionStorageObject().removeItem("mtMetricsKit_metricsBuyData_for_clientBuyId_" + e2));
  }
  return t;
};
Qe.prototype.buyFailureOccurred = function(e2) {
  var t = this.uncacheMetricsBuyData(e2);
  t && (t.detoured = true, this.cacheMetricsBuyData(e2, t));
};
var As = function(t) {
  var n = null;
  try {
    n = JSON.parse(t);
  } catch (r) {
    ml.error("MetricsKit: error parsing click data - " + r);
  }
  return n;
}, at = function(e2) {
  this._metricsKit = e2;
};
at.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
at.prototype.metricsData = function(e2, t, n, r) {
  var i = [e2, t, n], s = this._metricsKit.eventHandlers.base, o = this._metricsKit.utils;
  return r && (i.push({ location: o.eventFields.buildLocationStructure(r, this.locationDataForElement) }), i.push(this.dataForElement(r) || {})), i = i.concat(Array.prototype.slice.call(arguments, 4)), s.processMetricsData.apply(this, i);
};
at.prototype.knownFields = function() {
  var t = ["actionContext", "actionDetails", "actionType", "actionUrl", "eventType", "eventVersion", "impressions", "location", "targetId", "targetType", "positionX", "positionY", "xpViewablePercentage"];
  return t;
};
at.prototype.dataForElement = function(t) {
  var n = null;
  if (t && _.isFunction(t.hasAttribute) && _.isFunction(t.getAttribute)) {
    var r = this.dataAttribute();
    t.hasAttribute(r) && (n = As(t.getAttribute(r)));
  }
  return n;
};
at.prototype.dataAttribute = function() {
  return "data-metrics-click";
};
at.prototype.locationDataForElement = function(t) {
  var n = t.parentNode, r = 0, i = null, s, o, a, c;
  if (t.hasAttribute && t.hasAttribute("data-metrics-location") && (i = As(t.getAttribute("data-metrics-location")), i.locationType)) {
    if (n) {
      s = n.childNodes;
      for (var u = 0; u < s.length; u++) if (o = typeof s.item == "function" && s.item(u) || s[u], a = o.hasAttribute && o.hasAttribute("data-metrics-location") ? As(o.getAttribute("data-metrics-location")) : void 0, c = a ? a.locationType : void 0, c) {
        if (o === t) break;
        r++;
      }
    }
    i.locationPosition = r;
  }
  return i;
};
at.prototype.eventType = function(e2) {
  return "click";
};
at.prototype.eventVersion = function(e2) {
  return e2 && e2.eventVersion || 4;
};
at.prototype.impressions = function(t) {
  return t ? t.impressions : void 0;
};
at.prototype.xpViewablePercentage = function(t) {
  var n = this._metricsKit.eventHandlers.base;
  return n.xpViewablePercentage(t);
};
var Pn = function(e2) {
  this._metricsKit = e2;
};
Pn.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
Pn.prototype.metricsData = function(e2, t, n) {
  var r = this._metricsKit.eventHandlers.base;
  return r.processMetricsData.apply(this, arguments);
};
Pn.prototype.knownFields = function() {
  var t = ["buttons", "code", "details", "message", "type", "eventType", "eventVersion", "type"];
  return t;
};
Pn.prototype.eventType = function(e2) {
  return "dialog";
};
Pn.prototype.eventVersion = function(e2) {
  return e2 && e2.eventVersion || 2;
};
var Zt = function(e2) {
  this._metricsKit = e2;
};
Zt.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
Zt.prototype.metricsData = function(e2, t, n) {
  var r = this._metricsKit.eventHandlers.base;
  return r.processMetricsData.apply(this, arguments);
};
Zt.prototype.knownFields = function() {
  var t = ["eventType", "eventVersion", "extRefUrl", "osLanguages", "refApp", "type"];
  return t;
};
Zt.prototype.eventType = function(e2) {
  return "enter";
};
Zt.prototype.eventVersion = function(e2) {
  return e2 && e2.eventVersion || 1;
};
Zt.prototype.osLanguages = function(t) {
  return t && t.osLanguages || this._metricsKit.system.environment.osLanguages();
};
var Nn = function(e2) {
  this._metricsKit = e2;
};
Nn.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
Nn.prototype.metricsData = function(e2, t, n) {
  var r = this._metricsKit.eventHandlers.base;
  return r.processMetricsData.apply(this, arguments);
};
Nn.prototype.knownFields = function() {
  var t = ["destinationUrl", "eventType", "eventVersion", "type"];
  return t;
};
Nn.prototype.eventType = function(e2) {
  return "exit";
};
Nn.prototype.eventVersion = function(e2) {
  return e2 && e2.eventVersion || 1;
};
var en = function(e2) {
  this._metricsKit = e2;
};
en.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
en.prototype.metricsData = function(e2) {
  var t = [void 0, void 0, void 0], n = this._metricsKit.eventHandlers.base;
  t.push({ eventType: e2 });
  var r = Array.prototype.slice.call(arguments, 1);
  return t = t.concat(r), n.processMetricsData.apply(this, t);
};
en.prototype.knownFields = function() {
  var t = ["eventTime", "eventType"];
  return t;
};
en.prototype.mtIncludeBaseFields = function() {
  return false;
};
en.prototype.eventTime = function(t) {
  return t && t.eventTime || Date.now();
};
en.prototype.eventType = function(e2) {
  return e2 && e2.eventType || void 0;
};
var Rt = function(e2) {
  this._metricsKit = e2;
};
Rt.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
Rt.prototype.metricsData = function(e2, t, n) {
  var r = this._metricsKit.eventHandlers.base;
  return r.processMetricsData.apply(this, arguments);
};
Rt.prototype.knownFields = function() {
  var t = ["eventType", "eventVersion", "impressions", "xpViewablePercentage", "xpViewableThreshold"];
  return t;
};
Rt.prototype.eventType = function(e2) {
  return "impressions";
};
Rt.prototype.eventVersion = function(e2) {
  return e2 && e2.eventVersion || 3;
};
Rt.prototype.impressions = function(t) {
  return t ? t.impressions : void 0;
};
Rt.prototype.xpViewablePercentage = function(t) {
  var n = this._metricsKit.eventHandlers.base;
  return n.xpViewablePercentage(t);
};
Rt.prototype.xpViewableThreshold = function(t) {
  var n = this._metricsKit.config;
  return t && t.xpViewableThreshold || n.value("impressions.viewableThreshold");
};
var Jv = Di.FIELD_NAMES, Mn = function(e2) {
  this._metricsKit = e2;
};
Mn.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
Mn.prototype.metricsData = function(e2, t, n) {
  var r = this._metricsKit.eventHandlers.base;
  return r.processMetricsData.apply(this, arguments);
};
Mn.prototype.knownFields = function() {
  var t = ["eventType", Jv.EVENT_VERSION, "id", "idType", "type", "typeDetails", "actionType", "actionDetails", "url", "duration", "position"];
  return t;
};
Mn.prototype.eventType = function(e2) {
  return "media";
};
Mn.prototype.eventVersion = function(e2) {
  return e2 && e2.eventVersion || 1;
};
var tn = function(e2) {
  this._metricsKit = e2, this.pageHistoryCache = [];
};
tn.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
tn.prototype.metricsData = function(e2, t, n) {
  var r = this._metricsKit.eventHandlers.base;
  return r.processMetricsData.apply(this, arguments);
};
tn.prototype.knownFields = function() {
  var t = ["eventType", "eventVersion", "extRefUrl", "hostApp", "refApp", "refUrl", "requestStartTime", "responseStartTime", "responseEndTime", "pageHistory", "pageLoadTime", "pageRenderTime", "searchFilters", "searchTerm"];
  return t;
};
tn.prototype.eventType = function(e2) {
  return "page";
};
tn.prototype.eventVersion = function(e2) {
  return e2 && e2.eventVersion || 1;
};
tn.prototype.pageHistory = function(t) {
  var n;
  if (t = t || {}, t.pageHistory) n = t.pageHistory;
  else {
    n = this.pageHistoryCache.slice(0);
    var r = t.page;
    r && (this.pageHistoryCache.length >= 5 && this.pageHistoryCache.shift(), this.pageHistoryCache.push(r));
  }
  return n;
};
var Ln = function(e2) {
  this._metricsKit = e2;
};
Ln.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
Ln.prototype.metricsData = function(e2, t, n) {
  var r = this._metricsKit.eventHandlers.base;
  return r.processMetricsData.apply(this, arguments);
};
Ln.prototype.knownFields = function() {
  var t = ["actionDetails", "actionType", "actionUrl", "eventType", "eventVersion", "filters", "location", "targetId", "targetType", "term"];
  return t;
};
Ln.prototype.eventType = function(e2) {
  return "search";
};
Ln.prototype.eventVersion = function(e2) {
  return e2 && e2.eventVersion || 2;
};
var kn = function(e2) {
  this._metricsKit = e2;
};
kn.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
kn.prototype.metricsData = function(t) {
  var n = [null, null, null].concat(Array.prototype.slice.call(arguments));
  return this._metricsKit.eventHandlers.base.processMetricsData.apply(this, n);
};
kn.prototype.knownFields = function() {
  var t = ["eventType", "eventVersion"];
  return t;
};
kn.prototype.eventType = function(e2) {
  return "transaction";
};
kn.prototype.eventVersion = function(e2) {
  return e2 && e2.eventVersion || 1;
};
var Xv = function(e2) {
  this.account = new Dn(e2), this.base = new V(e2), this.buyConfirmed = new Qe(e2), this.click = new at(e2), this.dialog = new Pn(e2), this.enter = new Zt(e2), this.exit = new Nn(e2), this.flexible = new en(e2), this.impressions = new Rt(e2), this.media = new Mn(e2), this.page = new tn(e2), this.search = new Ln(e2), this.transaction = new kn(e2), Fe.attachDelegateInfo(this.account), Fe.attachDelegateInfo(this.base), Fe.attachDelegateInfo(this.buyConfirmed), Fe.attachDelegateInfo(this.click), Fe.attachDelegateInfo(this.enter), Fe.attachDelegateInfo(this.exit), Fe.attachDelegateInfo(this.flexible), Fe.attachDelegateInfo(this.impressions), Fe.attachDelegateInfo(this.media), Fe.attachDelegateInfo(this.page), Fe.attachDelegateInfo(this.search), Fe.attachDelegateInfo(this.transaction);
}, Zv = function(e2) {
  var t = {}, n = [], r;
  if (e2 && e2[0] && e2[0].index !== void 0) for (var i = 0; i < e2.length; ++i) r = e2[i].index, t[r] || (t[r] = true, n.push(e2[i]));
  return n;
}, Un = function(e2) {
  this._metricsKit = e2;
};
Un.prototype.getIdType = function(e2) {
  var t = this._metricsKit.config, n = "its", r = e2.indexOf("."), i = t.value("compoundSeparator"), s = r !== -1 ? e2.substring(0, r) : n;
  return s + i + "id";
};
Un.prototype.processMetricsData = function(e2, t, n, r, i, s) {
  var o = [{ pageId: n, pageType: r, pageContext: i }];
  return _.isArray(s) && (o = o.concat(s)), so.processMetricsData(e2, t, true, o);
};
Un.prototype.applyFieldsMap = function(e2, t) {
  var n, r, i, s = this._metricsKit.config;
  if (e2 && t) if (i = {}, n = s.value("fieldsMap") || {}, r = ur.valueForKeyPath(t, n, n.custom), r) {
    var o;
    if (Array.isArray(r)) for (o = 0; o < r.length; ++o) e2[r[o]] && (i[r[o]] = e2[r[o]]);
    else if (typeof r == "object") for (var a in r) for (o = 0; o < r[a].length; ++o) {
      var c = ur.valueForKeyPath(r[a][o], e2);
      if (c) {
        i[a] = c;
        break;
      }
    }
    else this._metricsKit.system.logger.error("mt-metricskit: incorrect data type provided to applyFieldsMap (only accepts objects and Arrays)");
  } else this._metricsKit.system.logger.error("mt-metricskit: unable to get fieldsMap from config-source");
  else e2 || this._metricsKit.system.logger.error("mt-metricskit: No data provided to applyFieldsMap"), t || this._metricsKit.system.logger.error("mt-metricskit: No sectionName provided to applyFieldsMap");
  return i;
};
Un.prototype.flattenImpressions = function(e2, t) {
  var n = [], r, i, s, o, a = t || 1;
  if (e2) {
    e2 = Zv(e2);
    for (var c = 0; c < e2.length; c++) {
      if (r = e2[c], typeof r.data == "string") try {
        i = JSON.parse(r.data);
      } catch (l) {
        o = decodeURIComponent(r.data);
        try {
          i = JSON.parse(o);
        } catch {
          this._metricsKit.system.logger.error("mt-metricskit: non-JSON serialized data found on impression object. Cannot parse.", l);
        }
      }
      else i = r;
      if (i) {
        if (i.impressionTimes = r.timestamps, i.impressionIndex = r.index, i.id && !i.idType) if (r.kind === "genre") {
          var u = this._metricsKit.config;
          i.idType = "label" + u.value("compoundSeparator") + "id";
        } else i.idType = this.getIdType(i.id.toString());
        r.parent && r.parent.impressionId !== void 0 && (i.impressionParentId = r.parent.impressionId), i.impressionId = a, r.impressionId = a, ++a, n.push(i), ur.valueForKeyPath("children.length", r) > 0 && (s = this.flattenImpressions(r.children, a), n = n.concat(s), a += s.length);
      }
    }
  } else this._metricsKit.system.logger.warn("Fuse-Metrics: No impressions provided to to flattenImpressions");
  return n;
};
Un.prototype.buildLocationStructure = function(t, n) {
  for (var r = t, i = [], s; r; ) s = n.call(n, r), s && i.push(s), r = r.parentNode;
  return i;
};
var yo = function() {
};
yo.prototype.setDelegate = function(t) {
  return _.attachDelegate(this, t);
};
yo.prototype.makeAjaxRequest = oo.makeAjaxRequest;
var Da = { attachDelegate: function(t, n) {
  return _.attachDelegate(t, n);
}, extend: function(t) {
  return _.extend.apply(_, arguments);
}, bindFunctionsContext: function(t) {
  if (t) for (var n in t) typeof t[n] == "function" && (t[n] = t[n].bind(t));
} }, e_ = { versionStringFromUserAgent: function(t, n) {
  return De.versionStringFromUserAgent(t, n);
} }, t_ = function(t) {
  this.delegateExtension = Fe, this.eventFields = new Un(t), Da.bindFunctionsContext(this.eventFields), this.keyValue = ur, this.network = new yo(), this.reflect = Da, this.string = e_;
}, vl = function(e2) {
  this._metricsKit = e2, this._baseEventHandler = Object.create(this._metricsKit.eventHandlers.base);
};
vl.prototype.clientId = function(t) {
  if (!this._metricsKit.config.initialized()) return this._metricsKit.system.logger.error("Unable to load topic config, please invoke clientId() after MetricsKit is initialized."), null;
  var n = this._baseEventHandler.metricsData(null, null, null, t);
  return n ? n.clientId : null;
};
var n_ = function(e2) {
  this.base = new vl(e2);
}, r_ = function(t, n) {
  n = n || {};
  var r = { onSuccessHandler: null, onFailureHandler: null, configSourcesFn: null };
  return r.configSourcesFn = n.configSourcesFn, r.onSuccessHandler = n.onSuccessHandler, r.onFailureHandler = n.onFailureHandler, r;
}, _l = function(t, n) {
  this._initCalled = false, this._delegatePackage = n, this.system = new Qv(), this.config = K.getConfig(t), this.eventHandlers = new Xv(this), this.eventFields = new n_(this), this.utils = new t_(this), this._constraints = null, _.isDefined(t) || this.system.logger.error("No topic is provided to ClickstreamProcessor."), _.isDefinedNonNull(n) || this.system.logger.error("No delegate is provided to ClickstreamProcessor");
};
_l.prototype.init = function(t) {
  this._initCalled || (this._initCalled = true, t = r_(this, t), Hv(this.config, { configSourcesFn: t.configSourcesFn, onSuccessHandler: t.onSuccessHandler, onFailureHandler: t.onFailureHandler, delegates: { environment: this.system.environment, logger: this.system.logger, network: this.utils.network } }), this._constraints = new Ci(this.config, { environment: this.system.environment }), this._delegatePackage && (_.setDelegates(this.eventHandlers, this._delegatePackage), _.setDelegates(this.system, this._delegatePackage), _.setDelegates(this.utils, this._delegatePackage)));
};
_l.prototype.cleanup = function() {
  this._delegatePackage && _.isFunction(this._delegatePackage.cleanup) && this._delegatePackage.cleanup(), $v(this.config), _.resetDelegates(this.eventHandlers), _.resetDelegates(this.system), _.resetDelegates(this.utils), this.config = null, this.system = null, this.eventHandlers = null, this.utils = null, this._delegatePackage = null, this._constraints = null, this._initCalled = false;
};
export { Br as A, Ke as B, _l as C, Pf as D, f_ as E, m_ as F, g_ as G, d_ as H, Pp as R, qe as a, c_ as b, p_ as c, fc as d, a_ as e, dr as f, Df as g, o_ as h, mt as i, Oc as j, vf as k, l_ as l, u_ as m, Ds as n, Ac as o, Rc as p, xe as q, sf as r, h_ as s, s_ as t, v_ as u, od as v, Nr as w, Mp as x, pn as y, __ as z };
