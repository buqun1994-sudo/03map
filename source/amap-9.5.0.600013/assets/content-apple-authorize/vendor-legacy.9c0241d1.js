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

System.register([], (function(e) {
  "use strict";
  return { execute: function() {
    function t(e2, t2) {
      const n2 = /* @__PURE__ */ Object.create(null), r2 = e2.split(",");
      for (let i2 = 0; i2 < r2.length; i2++) n2[r2[i2]] = true;
      return t2 ? (e3) => !!n2[e3.toLowerCase()] : (e3) => !!n2[e3];
    }
    e({
      F: function(e2) {
        const t2 = (function(e3, t3) {
          const n3 = [], r3 = /* @__PURE__ */ new Map();
          function i3(e4) {
            return r3.get(e4);
          }
          function o3(e4, n4, r4) {
            const i4 = !r4, a4 = (function(e5) {
              return { path: e5.path, redirect: e5.redirect, name: e5.name, meta: e5.meta || {}, aliasOf: void 0, beforeEnter: e5.beforeEnter, props: ys(e5), children: e5.children || [], instances: {}, leaveGuards: /* @__PURE__ */ new Set(), updateGuards: /* @__PURE__ */ new Set(), enterCallbacks: {}, components: "components" in e5 ? e5.components || null : e5.component && { default: e5.component } };
            })(e4);
            a4.aliasOf = r4 && r4.record;
            const u4 = Ss(t3, e4), l3 = [a4];
            if ("alias" in e4) {
              const t4 = "string" == typeof e4.alias ? [e4.alias] : e4.alias;
              for (const e5 of t4) l3.push(Lo({}, a4, { components: r4 ? r4.record.components : a4.components, path: e5, aliasOf: r4 ? r4.record : a4 }));
            }
            let p3, d3;
            for (const t4 of l3) {
              const { path: l4 } = t4;
              if (n4 && "/" !== l4[0]) {
                const e5 = n4.record.path, r5 = "/" === e5[e5.length - 1] ? "" : "/";
                t4.path = n4.record.path + (l4 && r5 + l4);
              }
              if (p3 = ms(t4, n4, u4), r4 ? r4.alias.push(p3) : (d3 = d3 || p3, d3 !== p3 && d3.alias.push(p3), i4 && e4.name && !_s(p3) && s3(e4.name)), a4.children) {
                const e5 = a4.children;
                for (let t5 = 0; t5 < e5.length; t5++) o3(e5[t5], p3, r4 && r4.children[t5]);
              }
              r4 = r4 || p3, c3(p3);
            }
            return d3 ? () => {
              s3(d3);
            } : jo;
          }
          function s3(e4) {
            if (rs(e4)) {
              const t4 = r3.get(e4);
              t4 && (r3.delete(e4), n3.splice(n3.indexOf(t4), 1), t4.children.forEach(s3), t4.alias.forEach(s3));
            } else {
              const t4 = n3.indexOf(e4);
              t4 > -1 && (n3.splice(t4, 1), e4.record.name && r3.delete(e4.record.name), e4.children.forEach(s3), e4.alias.forEach(s3));
            }
          }
          function a3() {
            return n3;
          }
          function c3(e4) {
            let t4 = 0;
            for (; t4 < n3.length && hs(e4, n3[t4]) >= 0 && (e4.record.path !== n3[t4].record.path || !Es(e4, n3[t4])); ) t4++;
            n3.splice(t4, 0, e4), e4.record.name && !_s(e4) && r3.set(e4.record.name, e4);
          }
          function u3(e4, t4) {
            let i4, o4, s4, a4 = {};
            if ("name" in e4 && e4.name) {
              if (i4 = r3.get(e4.name), !i4) throw as(1, { location: e4 });
              s4 = i4.record.name, a4 = Lo((function(e5, t5) {
                const n4 = {};
                for (const r4 of t5) r4 in e5 && (n4[r4] = e5[r4]);
                return n4;
              })(t4.params, i4.keys.filter(((e5) => !e5.optional)).map(((e5) => e5.name))), e4.params), o4 = i4.stringify(a4);
            } else if ("path" in e4) o4 = e4.path, i4 = n3.find(((e5) => e5.re.test(o4))), i4 && (a4 = i4.parse(o4), s4 = i4.record.name);
            else {
              if (i4 = t4.name ? r3.get(t4.name) : n3.find(((e5) => e5.re.test(t4.path))), !i4) throw as(1, { location: e4, currentLocation: t4 });
              s4 = i4.record.name, a4 = Lo({}, t4.params, e4.params), o4 = i4.stringify(a4);
            }
            const c4 = [];
            let u4 = i4;
            for (; u4; ) c4.unshift(u4.record), u4 = u4.parent;
            return { name: s4, path: o4, params: a4, matched: c4, meta: bs(c4) };
          }
          return t3 = Ss({ strict: false, end: true, sensitive: false }, t3), e3.forEach(((e4) => o3(e4))), { addRoute: o3, resolve: u3, removeRoute: s3, getRoutes: a3, getRecordMatcher: i3 };
        })(e2.routes, e2), n2 = e2.parseQuery || Ks, r2 = e2.stringifyQuery || Vs, i2 = e2.history, o2 = Qs(), s2 = Qs(), a2 = Qs(), c2 = dt(is, true);
        let u2 = is;
        Mo && e2.scrollBehavior && "scrollRestoration" in history && (history.scrollRestoration = "manual");
        const l2 = Uo.bind(null, ((e3) => "" + e3)), p2 = Uo.bind(null, Fs), d2 = Uo.bind(null, Bs);
        function h2(e3, o3) {
          if (o3 = Lo({}, o3 || c2.value), "string" == typeof e3) {
            const r3 = Ko(n2, e3, o3.path), s4 = t2.resolve({ path: r3.path }, o3), a4 = i2.createHref(r3.fullPath);
            return Lo(r3, s4, { params: d2(s4.params), hash: Bs(r3.hash), redirectedFrom: void 0, href: a4 });
          }
          let s3;
          if ("path" in e3) s3 = Lo({}, e3, { path: Ko(n2, e3.path, o3.path).path });
          else {
            const t3 = Lo({}, e3.params);
            for (const e4 in t3) null == t3[e4] && delete t3[e4];
            s3 = Lo({}, e3, { params: p2(e3.params) }), o3.params = p2(o3.params);
          }
          const a3 = t2.resolve(s3, o3), u3 = e3.hash || "";
          a3.params = l2(d2(a3.params));
          const h3 = (function(e4, t3) {
            const n3 = t3.query ? e4(t3.query) : "";
            return t3.path + (n3 && "?") + n3 + (t3.hash || "");
          })(r2, Lo({}, e3, { hash: (f3 = u3, Us(f3).replace(ks, "{").replace(Ms, "}").replace(Ps, "^")), path: a3.path }));
          var f3;
          const g3 = i2.createHref(h3);
          return Lo({ fullPath: h3, hash: u3, query: r2 === Vs ? Hs(e3.query) : e3.query || {} }, a3, { redirectedFrom: void 0, href: g3 });
        }
        function f2(e3) {
          return "string" == typeof e3 ? Ko(n2, e3, c2.value.path) : Lo({}, e3);
        }
        function g2(e3, t3) {
          if (u2 !== e3) return as(8, { from: t3, to: e3 });
        }
        function v2(e3) {
          return y2(e3);
        }
        function m2(e3) {
          const t3 = e3.matched[e3.matched.length - 1];
          if (t3 && t3.redirect) {
            const { redirect: n3 } = t3;
            let r3 = "function" == typeof n3 ? n3(e3) : n3;
            return "string" == typeof r3 && (r3 = r3.includes("?") || r3.includes("#") ? r3 = f2(r3) : { path: r3 }, r3.params = {}), Lo({ query: e3.query, hash: e3.hash, params: "path" in r3 ? {} : e3.params }, r3);
          }
        }
        function y2(e3, t3) {
          const n3 = u2 = h2(e3), i3 = c2.value, o3 = e3.state, s3 = e3.force, a3 = true === e3.replace, l3 = m2(n3);
          if (l3) return y2(Lo(f2(l3), { state: o3, force: s3, replace: a3 }), t3 || n3);
          const p3 = n3;
          let d3;
          return p3.redirectedFrom = t3, !s3 && (function(e4, t4, n4) {
            const r3 = t4.matched.length - 1, i4 = n4.matched.length - 1;
            return r3 > -1 && r3 === i4 && Ho(t4.matched[r3], n4.matched[i4]) && Go(t4.params, n4.params) && e4(t4.query) === e4(n4.query) && t4.hash === n4.hash;
          })(r2, i3, n3) && (d3 = as(16, { to: p3, from: i3 }), N2(i3, i3, true, false)), (d3 ? Promise.resolve(d3) : b2(p3, i3)).catch(((e4) => cs(e4) ? cs(e4, 2) ? e4 : R2(e4) : I2(e4, p3, i3))).then(((e4) => {
            if (e4) {
              if (cs(e4, 2)) return y2(Lo(f2(e4.to), { state: o3, force: s3, replace: a3 }), t3 || p3);
            } else e4 = E2(p3, i3, true, a3, o3);
            return S2(p3, i3, e4), e4;
          }));
        }
        function _2(e3, t3) {
          const n3 = g2(e3, t3);
          return n3 ? Promise.reject(n3) : Promise.resolve();
        }
        function b2(e3, t3) {
          let n3;
          const [r3, i3, a3] = (function(e4, t4) {
            const n4 = [], r4 = [], i4 = [], o3 = Math.max(t4.matched.length, e4.matched.length);
            for (let s3 = 0; s3 < o3; s3++) {
              const o4 = t4.matched[s3];
              o4 && (e4.matched.find(((e5) => Ho(e5, o4))) ? r4.push(o4) : n4.push(o4));
              const a4 = e4.matched[s3];
              a4 && (t4.matched.find(((e5) => Ho(e5, a4))) || i4.push(a4));
            }
            return [n4, r4, i4];
          })(e3, t3);
          n3 = Js(r3.reverse(), "beforeRouteLeave", e3, t3);
          for (const o3 of r3) o3.leaveGuards.forEach(((r4) => {
            n3.push(Ys(r4, e3, t3));
          }));
          const c3 = _2.bind(null, e3, t3);
          return n3.push(c3), ia(n3).then((() => {
            n3 = [];
            for (const r4 of o2.list()) n3.push(Ys(r4, e3, t3));
            return n3.push(c3), ia(n3);
          })).then((() => {
            n3 = Js(i3, "beforeRouteUpdate", e3, t3);
            for (const r4 of i3) r4.updateGuards.forEach(((r5) => {
              n3.push(Ys(r5, e3, t3));
            }));
            return n3.push(c3), ia(n3);
          })).then((() => {
            n3 = [];
            for (const r4 of e3.matched) if (r4.beforeEnter && !t3.matched.includes(r4)) if (Fo(r4.beforeEnter)) for (const i4 of r4.beforeEnter) n3.push(Ys(i4, e3, t3));
            else n3.push(Ys(r4.beforeEnter, e3, t3));
            return n3.push(c3), ia(n3);
          })).then((() => (e3.matched.forEach(((e4) => e4.enterCallbacks = {})), n3 = Js(a3, "beforeRouteEnter", e3, t3), n3.push(c3), ia(n3)))).then((() => {
            n3 = [];
            for (const r4 of s2.list()) n3.push(Ys(r4, e3, t3));
            return n3.push(c3), ia(n3);
          })).catch(((e4) => cs(e4, 8) ? e4 : Promise.reject(e4)));
        }
        function S2(e3, t3, n3) {
          for (const r3 of a2.list()) r3(e3, t3, n3);
        }
        function E2(e3, t3, n3, r3, o3) {
          const s3 = g2(e3, t3);
          if (s3) return s3;
          const a3 = t3 === is, u3 = Mo ? history.state : {};
          n3 && (r3 || a3 ? i2.replace(e3.fullPath, Lo({ scroll: a3 && u3 && u3.scroll }, o3)) : i2.push(e3.fullPath, o3)), c2.value = e3, N2(e3, t3, n3, a3), R2();
        }
        let w2;
        function T2() {
          w2 || (w2 = i2.listen(((e3, t3, n3) => {
            if (!x2.listening) return;
            const r3 = h2(e3), o3 = m2(r3);
            if (o3) return void y2(Lo(o3, { replace: true }), r3).catch(jo);
            u2 = r3;
            const s3 = c2.value;
            var a3, l3;
            Mo && (a3 = Xo(s3.fullPath, n3.delta), l3 = Jo(), Zo.set(a3, l3)), b2(r3, s3).catch(((e4) => cs(e4, 12) ? e4 : cs(e4, 2) ? (y2(e4.to, r3).then(((e5) => {
              cs(e5, 20) && !n3.delta && n3.type === Wo.pop && i2.go(-1, false);
            })).catch(jo), Promise.reject()) : (n3.delta && i2.go(-n3.delta, false), I2(e4, r3, s3)))).then(((e4) => {
              (e4 = e4 || E2(r3, s3, false)) && (n3.delta ? i2.go(-n3.delta, false) : n3.type === Wo.pop && cs(e4, 20) && i2.go(-1, false)), S2(r3, s3, e4);
            })).catch(jo);
          })));
        }
        let A2, O2 = Qs(), C2 = Qs();
        function I2(e3, t3, n3) {
          R2(e3);
          const r3 = C2.list();
          return r3.length ? r3.forEach(((r4) => r4(e3, t3, n3))) : console.error(e3), Promise.reject(e3);
        }
        function R2(e3) {
          return A2 || (A2 = !e3, T2(), O2.list().forEach((([t3, n3]) => e3 ? n3(e3) : t3())), O2.reset()), e3;
        }
        function N2(t3, n3, r3, i3) {
          const { scrollBehavior: o3 } = e2;
          if (!Mo || !o3) return Promise.resolve();
          const s3 = !r3 && (function(e3) {
            const t4 = Zo.get(e3);
            return Zo.delete(e3), t4;
          })(Xo(t3.fullPath, 0)) || (i3 || !r3) && history.state && history.state.scroll || null;
          return Nt().then((() => o3(t3, n3, s3))).then(((e3) => e3 && (function(e4) {
            let t4;
            if ("el" in e4) {
              const n4 = e4.el, r4 = "string" == typeof n4 && n4.startsWith("#"), i4 = "string" == typeof n4 ? r4 ? document.getElementById(n4.slice(1)) : document.querySelector(n4) : n4;
              if (!i4) return;
              t4 = (function(e5, t5) {
                const n5 = document.documentElement.getBoundingClientRect(), r5 = e5.getBoundingClientRect();
                return { behavior: t5.behavior, left: r5.left - n5.left - (t5.left || 0), top: r5.top - n5.top - (t5.top || 0) };
              })(i4, e4);
            } else t4 = e4;
            "scrollBehavior" in document.documentElement.style ? window.scrollTo(t4) : window.scrollTo(null != t4.left ? t4.left : window.pageXOffset, null != t4.top ? t4.top : window.pageYOffset);
          })(e3))).catch(((e3) => I2(e3, t3, n3)));
        }
        const P2 = (e3) => i2.go(e3);
        let D2;
        const k2 = /* @__PURE__ */ new Set(), x2 = { currentRoute: c2, listening: true, addRoute: function(e3, n3) {
          let r3, i3;
          return rs(e3) ? (r3 = t2.getRecordMatcher(e3), i3 = n3) : i3 = e3, t2.addRoute(i3, r3);
        }, removeRoute: function(e3) {
          const n3 = t2.getRecordMatcher(e3);
          n3 && t2.removeRoute(n3);
        }, hasRoute: function(e3) {
          return !!t2.getRecordMatcher(e3);
        }, getRoutes: function() {
          return t2.getRoutes().map(((e3) => e3.record));
        }, resolve: h2, options: e2, push: v2, replace: function(e3) {
          return v2(Lo(f2(e3), { replace: true }));
        }, go: P2, back: () => P2(-1), forward: () => P2(1), beforeEach: o2.add, beforeResolve: s2.add, afterEach: a2.add, onError: C2.add, isReady: function() {
          return A2 && c2.value !== is ? Promise.resolve() : new Promise(((e3, t3) => {
            O2.add([e3, t3]);
          }));
        }, install(e3) {
          e3.component("RouterLink", Zs), e3.component("RouterView", ra), e3.config.globalProperties.$router = this, Object.defineProperty(e3.config.globalProperties, "$route", { enumerable: true, get: () => ft(c2) }), Mo && !D2 && c2.value === is && (D2 = true, v2(i2.location).catch(((e4) => {
          })));
          const t3 = {};
          for (const r3 in is) t3[r3] = Yr((() => c2.value[r3]));
          e3.provide(zs, this), e3.provide(Ws, Je(t3)), e3.provide(qs, c2);
          const n3 = e3.unmount;
          k2.add(e3), e3.unmount = function() {
            k2.delete(e3), k2.size < 1 && (u2 = is, w2 && w2(), w2 = null, c2.value = is, D2 = false, A2 = false), n3();
          };
        } };
        return x2;
      },
      G: function(e2) {
        const t2 = (function(e3) {
          const { history: t3, location: n3 } = window, r3 = { value: ts(e3, n3) }, i2 = { value: t3.state };
          function o2(r4, o3, s3) {
            const a3 = e3.indexOf("#"), c2 = a3 > -1 ? (n3.host && document.querySelector("base") ? e3 : e3.slice(a3)) + r4 : es() + e3 + r4;
            try {
              t3[s3 ? "replaceState" : "pushState"](o3, "", c2), i2.value = o3;
            } catch (u2) {
              console.error(u2), n3[s3 ? "replace" : "assign"](c2);
            }
          }
          function s2(e4, n4) {
            o2(e4, Lo({}, t3.state, ns(i2.value.back, e4, i2.value.forward, true), n4, { position: i2.value.position }), true), r3.value = e4;
          }
          function a2(e4, n4) {
            const s3 = Lo({}, i2.value, t3.state, { forward: e4, scroll: Jo() });
            o2(s3.current, s3, true), o2(e4, Lo({}, ns(r3.value, e4, null), { position: s3.position + 1 }, n4), false), r3.value = e4;
          }
          return i2.value || o2(r3.value, { back: null, current: r3.value, forward: null, position: t3.length - 1, replaced: true, scroll: null }, true), { location: r3, state: i2, push: a2, replace: s2 };
        })(e2 = (function(e3) {
          if (!e3) if (Mo) {
            const t3 = document.querySelector("base");
            e3 = (e3 = t3 && t3.getAttribute("href") || "/").replace(/^\w+:\/\/[^\/]+/, "");
          } else e3 = "/";
          return "/" !== e3[0] && "#" !== e3[0] && (e3 = "/" + e3), e3.replace(Bo, "");
        })(e2)), n2 = (function(e3, t3, n3, r3) {
          let i2 = [], o2 = [], s2 = null;
          const a2 = ({ state: o3 }) => {
            const a3 = ts(e3, location), c3 = n3.value, u3 = t3.value;
            let l3 = 0;
            if (o3) {
              if (n3.value = a3, t3.value = o3, s2 && s2 === c3) return void (s2 = null);
              l3 = u3 ? o3.position - u3.position : 0;
            } else r3(a3);
            i2.forEach(((e4) => {
              e4(n3.value, c3, { delta: l3, type: Wo.pop, direction: l3 ? l3 > 0 ? qo.forward : qo.back : qo.unknown });
            }));
          };
          function c2() {
            s2 = n3.value;
          }
          function u2(e4) {
            i2.push(e4);
            const t4 = () => {
              const t5 = i2.indexOf(e4);
              t5 > -1 && i2.splice(t5, 1);
            };
            return o2.push(t4), t4;
          }
          function l2() {
            const { history: e4 } = window;
            e4.state && e4.replaceState(Lo({}, e4.state, { scroll: Jo() }), "");
          }
          function p2() {
            for (const e4 of o2) e4();
            o2 = [], window.removeEventListener("popstate", a2), window.removeEventListener("beforeunload", l2);
          }
          return window.addEventListener("popstate", a2), window.addEventListener("beforeunload", l2), { pauseListeners: c2, listen: u2, destroy: p2 };
        })(e2, t2.state, t2.location, t2.replace), r2 = Lo({ location: "", base: e2, go: function(e3, t3 = true) {
          t3 || n2.pauseListeners(), history.go(e3);
        }, createHref: Yo.bind(null, e2) }, t2, n2);
        return Object.defineProperty(r2, "location", { enumerable: true, get: () => t2.location.value }), Object.defineProperty(r2, "state", { enumerable: true, get: () => t2.state.value }), r2;
      },
      b: function(e2, t2, n2, r2, i2, o2) {
        return Er(Rr(e2, t2, n2, r2, i2, o2, true));
      },
      c: function(e2, t2) {
        return (function() {
          const e3 = Po();
          if (e3.__SENTRY__ && e3.__SENTRY__.acs) {
            const t3 = e3.__SENTRY__.acs.getCurrentHub();
            if (t3) return t3;
          }
          return (function(e4 = Po()) {
            var t3;
            return (t3 = e4) && t3.__SENTRY__ && t3.__SENTRY__.hub && !ko(e4).isOlderThan(4) || xo(e4, new No()), ko(e4);
          })(e3);
        })().captureException(e2, { captureContext: t2 });
      },
      d: sn,
      e: function(e2, t2, n2 = {}, r2, i2) {
        if (Kt.isCE || Kt.parent && an(Kt.parent) && Kt.parent.isCE) return "default" !== t2 && (n2.name = t2), Nr("slot", n2, r2 && r2());
        let o2 = e2[t2];
        o2 && o2._c && (o2._d = false), _r();
        const s2 = o2 && An(o2(n2)), a2 = wr(hr, { key: n2.key || s2 && s2.key || `_${t2}` }, s2 || (r2 ? r2() : []), s2 && 1 === e2._ ? 64 : -2);
        return !i2 && a2.scopeId && (a2.slotScopeIds = [a2.scopeId + "-s"]), o2 && o2._c && (o2._d = true), a2;
      },
      f: Je,
      h: function(e2, t2) {
        return (function(e3, t3, n2 = true, r2 = false) {
          const i2 = Kt || Kr;
          if (i2) {
            const n3 = i2.type;
            if (e3 === Qt) {
              const e4 = (function(e5, t4 = true) {
                return g(e5) ? e5.displayName || e5.name : e5.name || t4 && e5.__name;
              })(n3, false);
              if (e4 && (e4 === t3 || e4 === C(t3) || e4 === N(C(t3)))) return n3;
            }
            const o2 = Jt(i2[e3] || n3[e3], t3) || Jt(i2.appContext[e3], t3);
            return !o2 && r2 ? n3 : o2;
          }
        })(Qt, e2, true, t2) || e2;
      },
      i: qn,
      j: wr,
      k: Gt,
      l: function(e2 = "", t2 = false) {
        return t2 ? (_r(), wr(gr, null, e2)) : Nr(gr, null, e2);
      },
      m: function(e2, t2) {
        const n2 = Nr(vr, null, e2);
        return n2.staticCount = t2, n2;
      },
      n: H,
      o: _r,
      p: Rr,
      r: pt,
      u: function() {
        return qn(zs);
      },
      v: Dr,
      w: Zt,
      y: ft
    });
    const n = {}, r = [], i = () => {
    }, o = () => false, s = (e2) => 111 === e2.charCodeAt(0) && 110 === e2.charCodeAt(1) && (e2.charCodeAt(2) > 122 || e2.charCodeAt(2) < 97), a = (e2) => e2.startsWith("onUpdate:"), c = Object.assign, u = (e2, t2) => {
      const n2 = e2.indexOf(t2);
      n2 > -1 && e2.splice(n2, 1);
    }, l = Object.prototype.hasOwnProperty, p = (e2, t2) => l.call(e2, t2), d = Array.isArray, h = (e2) => "[object Map]" === S(e2), f = (e2) => "[object Set]" === S(e2), g = (e2) => "function" == typeof e2, v = (e2) => "string" == typeof e2, m = (e2) => "symbol" == typeof e2, y = (e2) => null !== e2 && "object" == typeof e2, _ = (e2) => (y(e2) || g(e2)) && g(e2.then) && g(e2.catch), b = Object.prototype.toString, S = (e2) => b.call(e2), E = (e2) => "[object Object]" === S(e2), w = (e2) => v(e2) && "NaN" !== e2 && "-" !== e2[0] && "" + parseInt(e2, 10) === e2, T = t(",key,ref,ref_for,ref_key,onVnodeBeforeMount,onVnodeMounted,onVnodeBeforeUpdate,onVnodeUpdated,onVnodeBeforeUnmount,onVnodeUnmounted"), A = (e2) => {
      const t2 = /* @__PURE__ */ Object.create(null);
      return (n2) => t2[n2] || (t2[n2] = e2(n2));
    }, O = /-(\w)/g, C = A(((e2) => e2.replace(O, ((e3, t2) => t2 ? t2.toUpperCase() : "")))), I = /\B([A-Z])/g, R = A(((e2) => e2.replace(I, "-$1").toLowerCase())), N = A(((e2) => e2.charAt(0).toUpperCase() + e2.slice(1))), P = A(((e2) => e2 ? `on${N(e2)}` : "")), D = (e2, t2) => !Object.is(e2, t2), k = (e2, t2) => {
      for (let n2 = 0; n2 < e2.length; n2++) e2[n2](t2);
    }, x = (e2, t2, n2) => {
      Object.defineProperty(e2, t2, { configurable: true, enumerable: false, value: n2 });
    }, M = (e2) => {
      const t2 = parseFloat(e2);
      return isNaN(t2) ? e2 : t2;
    };
    let L;
    const U = () => L || (L = "undefined" != typeof globalThis ? globalThis : "undefined" != typeof self ? self : "undefined" != typeof window ? window : "undefined" != typeof global ? global : {});
    function j(e2) {
      if (d(e2)) {
        const t2 = {};
        for (let n2 = 0; n2 < e2.length; n2++) {
          const r2 = e2[n2], i2 = v(r2) ? V(r2) : j(r2);
          if (i2) for (const e3 in i2) t2[e3] = i2[e3];
        }
        return t2;
      }
      if (v(e2) || y(e2)) return e2;
    }
    const F = /;(?![^(]*\))/g, B = /:([^]+)/, K = /\/\*[^]*?\*\//g;
    function V(e2) {
      const t2 = {};
      return e2.replace(K, "").split(F).forEach(((e3) => {
        if (e3) {
          const n2 = e3.split(B);
          n2.length > 1 && (t2[n2[0].trim()] = n2[1].trim());
        }
      })), t2;
    }
    function H(e2) {
      let t2 = "";
      if (v(e2)) t2 = e2;
      else if (d(e2)) for (let n2 = 0; n2 < e2.length; n2++) {
        const r2 = H(e2[n2]);
        r2 && (t2 += r2 + " ");
      }
      else if (y(e2)) for (const n2 in e2) e2[n2] && (t2 += n2 + " ");
      return t2.trim();
    }
    e("t", ((e2) => v(e2) ? e2 : null == e2 ? "" : d(e2) || y(e2) && (e2.toString === b || !g(e2.toString)) ? JSON.stringify(e2, G, 2) : String(e2)));
    const G = (e2, t2) => t2 && t2.__v_isRef ? G(e2, t2.value) : h(t2) ? { [`Map(${t2.size})`]: [...t2.entries()].reduce(((e3, [t3, n2], r2) => (e3[$(t3, r2) + " =>"] = n2, e3)), {}) } : f(t2) ? { [`Set(${t2.size})`]: [...t2.values()].map(((e3) => $(e3))) } : m(t2) ? $(t2) : !y(t2) || d(t2) || E(t2) ? t2 : String(t2), $ = (e2, t2 = "") => {
      var n2;
      return m(e2) ? `Symbol(${null != (n2 = e2.description) ? n2 : t2})` : e2;
    };
    let z;
    class W {
      constructor(e2 = false) {
        this.detached = e2, this._active = true, this.effects = [], this.cleanups = [], this.parent = z, !e2 && z && (this.index = (z.scopes || (z.scopes = [])).push(this) - 1);
      }
      get active() {
        return this._active;
      }
      run(e2) {
        if (this._active) {
          const t2 = z;
          try {
            return z = this, e2();
          } finally {
            z = t2;
          }
        }
      }
      on() {
        z = this;
      }
      off() {
        z = this.parent;
      }
      stop(e2) {
        if (this._active) {
          let t2, n2;
          for (t2 = 0, n2 = this.effects.length; t2 < n2; t2++) this.effects[t2].stop();
          for (t2 = 0, n2 = this.cleanups.length; t2 < n2; t2++) this.cleanups[t2]();
          if (this.scopes) for (t2 = 0, n2 = this.scopes.length; t2 < n2; t2++) this.scopes[t2].stop(true);
          if (!this.detached && this.parent && !e2) {
            const e3 = this.parent.scopes.pop();
            e3 && e3 !== this && (this.parent.scopes[this.index] = e3, e3.index = this.index);
          }
          this.parent = void 0, this._active = false;
        }
      }
    }
    const q = (e2) => {
      const t2 = new Set(e2);
      return t2.w = 0, t2.n = 0, t2;
    }, Q = (e2) => (e2.w & ee) > 0, Y = (e2) => (e2.n & ee) > 0, J = /* @__PURE__ */ new WeakMap();
    let X, Z = 0, ee = 1;
    const te = Symbol(""), ne = Symbol("");
    class re {
      constructor(e2, t2 = null, n2) {
        this.fn = e2, this.scheduler = t2, this.active = true, this.deps = [], this.parent = void 0, (function(e3, t3 = z) {
          t3 && t3.active && t3.effects.push(e3);
        })(this, n2);
      }
      run() {
        if (!this.active) return this.fn();
        let e2 = X, t2 = oe;
        for (; e2; ) {
          if (e2 === this) return;
          e2 = e2.parent;
        }
        try {
          return this.parent = X, X = this, oe = true, ee = 1 << ++Z, Z <= 30 ? (({ deps: e3 }) => {
            if (e3.length) for (let t3 = 0; t3 < e3.length; t3++) e3[t3].w |= ee;
          })(this) : ie(this), this.fn();
        } finally {
          Z <= 30 && ((e3) => {
            const { deps: t3 } = e3;
            if (t3.length) {
              let n2 = 0;
              for (let r2 = 0; r2 < t3.length; r2++) {
                const i2 = t3[r2];
                Q(i2) && !Y(i2) ? i2.delete(e3) : t3[n2++] = i2, i2.w &= ~ee, i2.n &= ~ee;
              }
              t3.length = n2;
            }
          })(this), ee = 1 << --Z, X = this.parent, oe = t2, this.parent = void 0, this.deferStop && this.stop();
        }
      }
      stop() {
        X === this ? this.deferStop = true : this.active && (ie(this), this.onStop && this.onStop(), this.active = false);
      }
    }
    function ie(e2) {
      const { deps: t2 } = e2;
      if (t2.length) {
        for (let n2 = 0; n2 < t2.length; n2++) t2[n2].delete(e2);
        t2.length = 0;
      }
    }
    let oe = true;
    const se = [];
    function ae() {
      se.push(oe), oe = false;
    }
    function ce() {
      const e2 = se.pop();
      oe = void 0 === e2 || e2;
    }
    function ue(e2, t2, n2) {
      if (oe && X) {
        let t3 = J.get(e2);
        t3 || J.set(e2, t3 = /* @__PURE__ */ new Map());
        let r2 = t3.get(n2);
        r2 || t3.set(n2, r2 = q()), le(r2);
      }
    }
    function le(e2, t2) {
      let n2 = false;
      Z <= 30 ? Y(e2) || (e2.n |= ee, n2 = !Q(e2)) : n2 = !e2.has(X), n2 && (e2.add(X), X.deps.push(e2));
    }
    function pe(e2, t2, n2, r2, i2, o2) {
      const s2 = J.get(e2);
      if (!s2) return;
      let a2 = [];
      if ("clear" === t2) a2 = [...s2.values()];
      else if ("length" === n2 && d(e2)) {
        const e3 = Number(r2);
        s2.forEach(((t3, n3) => {
          ("length" === n3 || !m(n3) && n3 >= e3) && a2.push(t3);
        }));
      } else switch (void 0 !== n2 && a2.push(s2.get(n2)), t2) {
        case "add":
          d(e2) ? w(n2) && a2.push(s2.get("length")) : (a2.push(s2.get(te)), h(e2) && a2.push(s2.get(ne)));
          break;
        case "delete":
          d(e2) || (a2.push(s2.get(te)), h(e2) && a2.push(s2.get(ne)));
          break;
        case "set":
          h(e2) && a2.push(s2.get(te));
      }
      if (1 === a2.length) a2[0] && de(a2[0]);
      else {
        const e3 = [];
        for (const t3 of a2) t3 && e3.push(...t3);
        de(q(e3));
      }
    }
    function de(e2, t2) {
      const n2 = d(e2) ? e2 : [...e2];
      for (const r2 of n2) r2.computed && he(r2);
      for (const r2 of n2) r2.computed || he(r2);
    }
    function he(e2, t2) {
      (e2 !== X || e2.allowRecurse) && (e2.scheduler ? e2.scheduler() : e2.run());
    }
    const fe = t("__proto__,__v_isRef,__isVue"), ge = new Set(Object.getOwnPropertyNames(Symbol).filter(((e2) => "arguments" !== e2 && "caller" !== e2)).map(((e2) => Symbol[e2])).filter(m)), ve = me();
    function me() {
      const e2 = {};
      return ["includes", "indexOf", "lastIndexOf"].forEach(((t2) => {
        e2[t2] = function(...e3) {
          const n2 = it(this);
          for (let t3 = 0, i2 = this.length; t3 < i2; t3++) ue(n2, 0, t3 + "");
          const r2 = n2[t2](...e3);
          return -1 === r2 || false === r2 ? n2[t2](...e3.map(it)) : r2;
        };
      })), ["push", "pop", "shift", "unshift", "splice"].forEach(((t2) => {
        e2[t2] = function(...e3) {
          ae();
          const n2 = it(this)[t2].apply(this, e3);
          return ce(), n2;
        };
      })), e2;
    }
    function ye(e2) {
      const t2 = it(this);
      return ue(t2, 0, e2), t2.hasOwnProperty(e2);
    }
    class _e {
      constructor(e2 = false, t2 = false) {
        this._isReadonly = e2, this._shallow = t2;
      }
      get(e2, t2, n2) {
        const r2 = this._isReadonly, i2 = this._shallow;
        if ("__v_isReactive" === t2) return !r2;
        if ("__v_isReadonly" === t2) return r2;
        if ("__v_isShallow" === t2) return i2;
        if ("__v_raw" === t2) return n2 === (r2 ? i2 ? Qe : qe : i2 ? We : ze).get(e2) || Object.getPrototypeOf(e2) === Object.getPrototypeOf(n2) ? e2 : void 0;
        const o2 = d(e2);
        if (!r2) {
          if (o2 && p(ve, t2)) return Reflect.get(ve, t2, n2);
          if ("hasOwnProperty" === t2) return ye;
        }
        const s2 = Reflect.get(e2, t2, n2);
        return (m(t2) ? ge.has(t2) : fe(t2)) ? s2 : (r2 || ue(e2, 0, t2), i2 ? s2 : lt(s2) ? o2 && w(t2) ? s2 : s2.value : y(s2) ? r2 ? Xe(s2) : Je(s2) : s2);
      }
    }
    class be extends _e {
      constructor(e2 = false) {
        super(false, e2);
      }
      set(e2, t2, n2, r2) {
        let i2 = e2[t2];
        if (!this._shallow) {
          const t3 = tt(i2);
          if (nt(n2) || tt(n2) || (i2 = it(i2), n2 = it(n2)), !d(e2) && lt(i2) && !lt(n2)) return !t3 && (i2.value = n2, true);
        }
        const o2 = d(e2) && w(t2) ? Number(t2) < e2.length : p(e2, t2), s2 = Reflect.set(e2, t2, n2, r2);
        return e2 === it(r2) && (o2 ? D(n2, i2) && pe(e2, "set", t2, n2) : pe(e2, "add", t2, n2)), s2;
      }
      deleteProperty(e2, t2) {
        const n2 = p(e2, t2);
        e2[t2];
        const r2 = Reflect.deleteProperty(e2, t2);
        return r2 && n2 && pe(e2, "delete", t2, void 0), r2;
      }
      has(e2, t2) {
        const n2 = Reflect.has(e2, t2);
        return m(t2) && ge.has(t2) || ue(e2, 0, t2), n2;
      }
      ownKeys(e2) {
        return ue(e2, 0, d(e2) ? "length" : te), Reflect.ownKeys(e2);
      }
    }
    class Se extends _e {
      constructor(e2 = false) {
        super(true, e2);
      }
      set(e2, t2) {
        return true;
      }
      deleteProperty(e2, t2) {
        return true;
      }
    }
    const Ee = new be(), we = new Se(), Te = new be(true), Ae = (e2) => e2, Oe = (e2) => Reflect.getPrototypeOf(e2);
    function Ce(e2, t2, n2 = false, r2 = false) {
      const i2 = it(e2 = e2.__v_raw), o2 = it(t2);
      n2 || (D(t2, o2) && ue(i2, 0, t2), ue(i2, 0, o2));
      const { has: s2 } = Oe(i2), a2 = r2 ? Ae : n2 ? at : st;
      return s2.call(i2, t2) ? a2(e2.get(t2)) : s2.call(i2, o2) ? a2(e2.get(o2)) : void (e2 !== i2 && e2.get(t2));
    }
    function Ie(e2, t2 = false) {
      const n2 = this.__v_raw, r2 = it(n2), i2 = it(e2);
      return t2 || (D(e2, i2) && ue(r2, 0, e2), ue(r2, 0, i2)), e2 === i2 ? n2.has(e2) : n2.has(e2) || n2.has(i2);
    }
    function Re(e2, t2 = false) {
      return e2 = e2.__v_raw, !t2 && ue(it(e2), 0, te), Reflect.get(e2, "size", e2);
    }
    function Ne(e2) {
      e2 = it(e2);
      const t2 = it(this);
      return Oe(t2).has.call(t2, e2) || (t2.add(e2), pe(t2, "add", e2, e2)), this;
    }
    function Pe(e2, t2) {
      t2 = it(t2);
      const n2 = it(this), { has: r2, get: i2 } = Oe(n2);
      let o2 = r2.call(n2, e2);
      o2 || (e2 = it(e2), o2 = r2.call(n2, e2));
      const s2 = i2.call(n2, e2);
      return n2.set(e2, t2), o2 ? D(t2, s2) && pe(n2, "set", e2, t2) : pe(n2, "add", e2, t2), this;
    }
    function De(e2) {
      const t2 = it(this), { has: n2, get: r2 } = Oe(t2);
      let i2 = n2.call(t2, e2);
      i2 || (e2 = it(e2), i2 = n2.call(t2, e2)), r2 && r2.call(t2, e2);
      const o2 = t2.delete(e2);
      return i2 && pe(t2, "delete", e2, void 0), o2;
    }
    function ke() {
      const e2 = it(this), t2 = 0 !== e2.size, n2 = e2.clear();
      return t2 && pe(e2, "clear", void 0, void 0), n2;
    }
    function xe(e2, t2) {
      return function(n2, r2) {
        const i2 = this, o2 = i2.__v_raw, s2 = it(o2), a2 = t2 ? Ae : e2 ? at : st;
        return !e2 && ue(s2, 0, te), o2.forEach(((e3, t3) => n2.call(r2, a2(e3), a2(t3), i2)));
      };
    }
    function Me(e2, t2, n2) {
      return function(...r2) {
        const i2 = this.__v_raw, o2 = it(i2), s2 = h(o2), a2 = "entries" === e2 || e2 === Symbol.iterator && s2, c2 = "keys" === e2 && s2, u2 = i2[e2](...r2), l2 = n2 ? Ae : t2 ? at : st;
        return !t2 && ue(o2, 0, c2 ? ne : te), { next() {
          const { value: e3, done: t3 } = u2.next();
          return t3 ? { value: e3, done: t3 } : { value: a2 ? [l2(e3[0]), l2(e3[1])] : l2(e3), done: t3 };
        }, [Symbol.iterator]() {
          return this;
        } };
      };
    }
    function Le(e2) {
      return function(...t2) {
        return "delete" !== e2 && ("clear" === e2 ? void 0 : this);
      };
    }
    function Ue() {
      const e2 = { get(e3) {
        return Ce(this, e3);
      }, get size() {
        return Re(this);
      }, has: Ie, add: Ne, set: Pe, delete: De, clear: ke, forEach: xe(false, false) }, t2 = { get(e3) {
        return Ce(this, e3, false, true);
      }, get size() {
        return Re(this);
      }, has: Ie, add: Ne, set: Pe, delete: De, clear: ke, forEach: xe(false, true) }, n2 = { get(e3) {
        return Ce(this, e3, true);
      }, get size() {
        return Re(this, true);
      }, has(e3) {
        return Ie.call(this, e3, true);
      }, add: Le("add"), set: Le("set"), delete: Le("delete"), clear: Le("clear"), forEach: xe(true, false) }, r2 = { get(e3) {
        return Ce(this, e3, true, true);
      }, get size() {
        return Re(this, true);
      }, has(e3) {
        return Ie.call(this, e3, true);
      }, add: Le("add"), set: Le("set"), delete: Le("delete"), clear: Le("clear"), forEach: xe(true, true) };
      return ["keys", "values", "entries", Symbol.iterator].forEach(((i2) => {
        e2[i2] = Me(i2, false, false), n2[i2] = Me(i2, true, false), t2[i2] = Me(i2, false, true), r2[i2] = Me(i2, true, true);
      })), [e2, n2, t2, r2];
    }
    const [je, Fe, Be, Ke] = Ue();
    function Ve(e2, t2) {
      const n2 = t2 ? e2 ? Ke : Be : e2 ? Fe : je;
      return (t3, r2, i2) => "__v_isReactive" === r2 ? !e2 : "__v_isReadonly" === r2 ? e2 : "__v_raw" === r2 ? t3 : Reflect.get(p(n2, r2) && r2 in t3 ? n2 : t3, r2, i2);
    }
    const He = { get: Ve(false, false) }, Ge = { get: Ve(false, true) }, $e = { get: Ve(true, false) }, ze = /* @__PURE__ */ new WeakMap(), We = /* @__PURE__ */ new WeakMap(), qe = /* @__PURE__ */ new WeakMap(), Qe = /* @__PURE__ */ new WeakMap();
    function Ye(e2) {
      return e2.__v_skip || !Object.isExtensible(e2) ? 0 : (function(e3) {
        switch (e3) {
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
      })(((e3) => S(e3).slice(8, -1))(e2));
    }
    function Je(e2) {
      return tt(e2) ? e2 : Ze(e2, false, Ee, He, ze);
    }
    function Xe(e2) {
      return Ze(e2, true, we, $e, qe);
    }
    function Ze(e2, t2, n2, r2, i2) {
      if (!y(e2)) return e2;
      if (e2.__v_raw && (!t2 || !e2.__v_isReactive)) return e2;
      const o2 = i2.get(e2);
      if (o2) return o2;
      const s2 = Ye(e2);
      if (0 === s2) return e2;
      const a2 = new Proxy(e2, 2 === s2 ? r2 : n2);
      return i2.set(e2, a2), a2;
    }
    function et(e2) {
      return tt(e2) ? et(e2.__v_raw) : !(!e2 || !e2.__v_isReactive);
    }
    function tt(e2) {
      return !(!e2 || !e2.__v_isReadonly);
    }
    function nt(e2) {
      return !(!e2 || !e2.__v_isShallow);
    }
    function rt(e2) {
      return et(e2) || tt(e2);
    }
    function it(e2) {
      const t2 = e2 && e2.__v_raw;
      return t2 ? it(t2) : e2;
    }
    function ot(e2) {
      return x(e2, "__v_skip", true), e2;
    }
    const st = (e2) => y(e2) ? Je(e2) : e2, at = (e2) => y(e2) ? Xe(e2) : e2;
    function ct(e2) {
      oe && X && le((e2 = it(e2)).dep || (e2.dep = q()));
    }
    function ut(e2, t2) {
      const n2 = (e2 = it(e2)).dep;
      n2 && de(n2);
    }
    function lt(e2) {
      return !(!e2 || true !== e2.__v_isRef);
    }
    function pt(e2) {
      return dt(e2, false);
    }
    function dt(e2, t2) {
      return lt(e2) ? e2 : new ht(e2, t2);
    }
    class ht {
      constructor(e2, t2) {
        this.__v_isShallow = t2, this.dep = void 0, this.__v_isRef = true, this._rawValue = t2 ? e2 : it(e2), this._value = t2 ? e2 : st(e2);
      }
      get value() {
        return ct(this), this._value;
      }
      set value(e2) {
        const t2 = this.__v_isShallow || nt(e2) || tt(e2);
        e2 = t2 ? e2 : it(e2), D(e2, this._rawValue) && (this._rawValue = e2, this._value = t2 ? e2 : st(e2), ut(this));
      }
    }
    function ft(e2) {
      return lt(e2) ? e2.value : e2;
    }
    const gt = { get: (e2, t2, n2) => ft(Reflect.get(e2, t2, n2)), set: (e2, t2, n2, r2) => {
      const i2 = e2[t2];
      return lt(i2) && !lt(n2) ? (i2.value = n2, true) : Reflect.set(e2, t2, n2, r2);
    } };
    function vt(e2) {
      return et(e2) ? e2 : new Proxy(e2, gt);
    }
    class mt {
      constructor(e2, t2, n2, r2) {
        this._setter = t2, this.dep = void 0, this.__v_isRef = true, this.__v_isReadonly = false, this._dirty = true, this.effect = new re(e2, (() => {
          this._dirty || (this._dirty = true, ut(this));
        })), this.effect.computed = this, this.effect.active = this._cacheable = !r2, this.__v_isReadonly = n2;
      }
      get value() {
        const e2 = it(this);
        return ct(e2), !e2._dirty && e2._cacheable || (e2._dirty = false, e2._value = e2.effect.run()), e2._value;
      }
      set value(e2) {
        this._setter(e2);
      }
    }
    function yt(e2, t2, n2, r2) {
      let i2;
      try {
        i2 = r2 ? e2(...r2) : e2();
      } catch (o2) {
        bt(o2, t2, n2);
      }
      return i2;
    }
    function _t(e2, t2, n2, r2) {
      if (g(e2)) {
        const i3 = yt(e2, t2, n2, r2);
        return i3 && _(i3) && i3.catch(((e3) => {
          bt(e3, t2, n2);
        })), i3;
      }
      const i2 = [];
      for (let o2 = 0; o2 < e2.length; o2++) i2.push(_t(e2[o2], t2, n2, r2));
      return i2;
    }
    function bt(e2, t2, n2, r2 = true) {
      if (t2 && t2.vnode, t2) {
        let r3 = t2.parent;
        const i2 = t2.proxy, o2 = n2;
        for (; r3; ) {
          const t3 = r3.ec;
          if (t3) {
            for (let n3 = 0; n3 < t3.length; n3++) if (false === t3[n3](e2, i2, o2)) return;
          }
          r3 = r3.parent;
        }
        const s2 = t2.appContext.config.errorHandler;
        if (s2) return void yt(s2, null, 10, [e2, i2, o2]);
      }
      !(function(e3, t3, n3, r3 = true) {
        console.error(e3);
      })(e2, 0, 0, r2);
    }
    let St = false, Et = false;
    const wt = [];
    let Tt = 0;
    const At = [];
    let Ot = null, Ct = 0;
    const It = Promise.resolve();
    let Rt = null;
    function Nt(e2) {
      const t2 = Rt || It;
      return e2 ? t2.then(this ? e2.bind(this) : e2) : t2;
    }
    function Pt(e2) {
      wt.length && wt.includes(e2, St && e2.allowRecurse ? Tt + 1 : Tt) || (null == e2.id ? wt.push(e2) : wt.splice((function(e3) {
        let t2 = Tt + 1, n2 = wt.length;
        for (; t2 < n2; ) {
          const r2 = t2 + n2 >>> 1, i2 = wt[r2], o2 = Mt(i2);
          o2 < e3 || o2 === e3 && i2.pre ? t2 = r2 + 1 : n2 = r2;
        }
        return t2;
      })(e2.id), 0, e2), Dt());
    }
    function Dt() {
      St || Et || (Et = true, Rt = It.then(Ut));
    }
    function kt(e2, t2, n2 = St ? Tt + 1 : 0) {
      for (; n2 < wt.length; n2++) {
        const t3 = wt[n2];
        if (t3 && t3.pre) {
          if (e2 && t3.id !== e2.uid) continue;
          wt.splice(n2, 1), n2--, t3();
        }
      }
    }
    function xt(e2) {
      if (At.length) {
        const e3 = [...new Set(At)];
        if (At.length = 0, Ot) return void Ot.push(...e3);
        for (Ot = e3, Ot.sort(((e4, t2) => Mt(e4) - Mt(t2))), Ct = 0; Ct < Ot.length; Ct++) Ot[Ct]();
        Ot = null, Ct = 0;
      }
    }
    const Mt = (e2) => null == e2.id ? 1 / 0 : e2.id, Lt = (e2, t2) => {
      const n2 = Mt(e2) - Mt(t2);
      if (0 === n2) {
        if (e2.pre && !t2.pre) return -1;
        if (t2.pre && !e2.pre) return 1;
      }
      return n2;
    };
    function Ut(e2) {
      Et = false, St = true, wt.sort(Lt);
      try {
        for (Tt = 0; Tt < wt.length; Tt++) {
          const e3 = wt[Tt];
          e3 && false !== e3.active && yt(e3, null, 14);
        }
      } finally {
        Tt = 0, wt.length = 0, xt(), St = false, Rt = null, (wt.length || At.length) && Ut();
      }
    }
    function jt(e2, t2, ...r2) {
      if (e2.isUnmounted) return;
      const i2 = e2.vnode.props || n;
      let o2 = r2;
      const s2 = t2.startsWith("update:"), a2 = s2 && t2.slice(7);
      if (a2 && a2 in i2) {
        const e3 = `${"modelValue" === a2 ? "model" : a2}Modifiers`, { number: t3, trim: s3 } = i2[e3] || n;
        s3 && (o2 = r2.map(((e4) => v(e4) ? e4.trim() : e4))), t3 && (o2 = r2.map(M));
      }
      let c2, u2 = i2[c2 = P(t2)] || i2[c2 = P(C(t2))];
      !u2 && s2 && (u2 = i2[c2 = P(R(t2))]), u2 && _t(u2, e2, 6, o2);
      const l2 = i2[c2 + "Once"];
      if (l2) {
        if (e2.emitted) {
          if (e2.emitted[c2]) return;
        } else e2.emitted = {};
        e2.emitted[c2] = true, _t(l2, e2, 6, o2);
      }
    }
    function Ft(e2, t2, n2 = false) {
      const r2 = t2.emitsCache, i2 = r2.get(e2);
      if (void 0 !== i2) return i2;
      const o2 = e2.emits;
      let s2 = {}, a2 = false;
      if (!g(e2)) {
        const r3 = (e3) => {
          const n3 = Ft(e3, t2, true);
          n3 && (a2 = true, c(s2, n3));
        };
        !n2 && t2.mixins.length && t2.mixins.forEach(r3), e2.extends && r3(e2.extends), e2.mixins && e2.mixins.forEach(r3);
      }
      return o2 || a2 ? (d(o2) ? o2.forEach(((e3) => s2[e3] = null)) : c(s2, o2), y(e2) && r2.set(e2, s2), s2) : (y(e2) && r2.set(e2, null), null);
    }
    function Bt(e2, t2) {
      return !(!e2 || !s(t2)) && (t2 = t2.slice(2).replace(/Once$/, ""), p(e2, t2[0].toLowerCase() + t2.slice(1)) || p(e2, R(t2)) || p(e2, t2));
    }
    let Kt = null, Vt = null;
    function Ht(e2) {
      const t2 = Kt;
      return Kt = e2, Vt = e2 && e2.type.__scopeId || null, t2;
    }
    function Gt(e2, t2 = Kt, n2) {
      if (!t2) return e2;
      if (e2._n) return e2;
      const r2 = (...n3) => {
        r2._d && Sr(-1);
        const i2 = Ht(t2);
        let o2;
        try {
          o2 = e2(...n3);
        } finally {
          Ht(i2), r2._d && Sr(1);
        }
        return o2;
      };
      return r2._n = true, r2._c = true, r2._d = true, r2;
    }
    function $t(e2) {
      const { type: t2, vnode: n2, proxy: r2, withProxy: i2, props: o2, propsOptions: [s2], slots: c2, attrs: u2, emit: l2, render: p2, renderCache: d2, data: h2, setupState: f2, ctx: g2, inheritAttrs: v2 } = e2;
      let m2, y2;
      const _2 = Ht(e2);
      try {
        if (4 & n2.shapeFlag) {
          const e3 = i2 || r2, t3 = e3;
          m2 = kr(p2.call(t3, e3, d2, o2, f2, h2, g2)), y2 = u2;
        } else {
          const e3 = t2;
          m2 = kr(e3.length > 1 ? e3(o2, { attrs: u2, slots: c2, emit: l2 }) : e3(o2, null)), y2 = t2.props ? u2 : zt(u2);
        }
      } catch (S2) {
        mr.length = 0, bt(S2, e2, 1), m2 = Nr(gr);
      }
      let b2 = m2;
      if (y2 && false !== v2) {
        const e3 = Object.keys(y2), { shapeFlag: t3 } = b2;
        e3.length && 7 & t3 && (s2 && e3.some(a) && (y2 = Wt(y2, s2)), b2 = Pr(b2, y2));
      }
      return n2.dirs && (b2 = Pr(b2), b2.dirs = b2.dirs ? b2.dirs.concat(n2.dirs) : n2.dirs), n2.transition && (b2.transition = n2.transition), m2 = b2, Ht(_2), m2;
    }
    const zt = (e2) => {
      let t2;
      for (const n2 in e2) ("class" === n2 || "style" === n2 || s(n2)) && ((t2 || (t2 = {}))[n2] = e2[n2]);
      return t2;
    }, Wt = (e2, t2) => {
      const n2 = {};
      for (const r2 in e2) a(r2) && r2.slice(9) in t2 || (n2[r2] = e2[r2]);
      return n2;
    };
    function qt(e2, t2, n2) {
      const r2 = Object.keys(t2);
      if (r2.length !== Object.keys(e2).length) return true;
      for (let i2 = 0; i2 < r2.length; i2++) {
        const o2 = r2[i2];
        if (t2[o2] !== e2[o2] && !Bt(n2, o2)) return true;
      }
      return false;
    }
    const Qt = "components", Yt = Symbol.for("v-ndc");
    function Jt(e2, t2) {
      return e2 && (e2[t2] || e2[C(t2)] || e2[N(C(t2))]);
    }
    const Xt = {};
    function Zt(e2, t2, n2) {
      return en(e2, t2, n2);
    }
    function en(e2, t2, { immediate: r2, deep: o2, flush: s2, onTrack: a2, onTrigger: c2 } = n) {
      var l2;
      const p2 = z === (null == (l2 = Kr) ? void 0 : l2.scope) ? Kr : null;
      let h2, f2, v2 = false, m2 = false;
      if (lt(e2) ? (h2 = () => e2.value, v2 = nt(e2)) : et(e2) ? (h2 = () => e2, o2 = true) : d(e2) ? (m2 = true, v2 = e2.some(((e3) => et(e3) || nt(e3))), h2 = () => e2.map(((e3) => lt(e3) ? e3.value : et(e3) ? rn(e3) : g(e3) ? yt(e3, p2, 2) : void 0))) : h2 = g(e2) ? t2 ? () => yt(e2, p2, 2) : () => {
        if (!p2 || !p2.isUnmounted) return f2 && f2(), _t(e2, p2, 3, [_2]);
      } : i, t2 && o2) {
        const e3 = h2;
        h2 = () => rn(e3());
      }
      let y2, _2 = (e3) => {
        f2 = w2.onStop = () => {
          yt(e3, p2, 4), f2 = w2.onStop = void 0;
        };
      };
      if (zr) {
        if (_2 = i, t2 ? r2 && _t(t2, p2, 3, [h2(), m2 ? [] : void 0, _2]) : h2(), "sync" !== s2) return i;
        {
          const e3 = Zr();
          y2 = e3.__watcherHandles || (e3.__watcherHandles = []);
        }
      }
      let b2 = m2 ? new Array(e2.length).fill(Xt) : Xt;
      const S2 = () => {
        if (w2.active) if (t2) {
          const e3 = w2.run();
          (o2 || v2 || (m2 ? e3.some(((e4, t3) => D(e4, b2[t3]))) : D(e3, b2))) && (f2 && f2(), _t(t2, p2, 3, [e3, b2 === Xt ? void 0 : m2 && b2[0] === Xt ? [] : b2, _2]), b2 = e3);
        } else w2.run();
      };
      let E2;
      S2.allowRecurse = !!t2, "sync" === s2 ? E2 = S2 : "post" === s2 ? E2 = () => ur(S2, p2 && p2.suspense) : (S2.pre = true, p2 && (S2.id = p2.uid), E2 = () => Pt(S2));
      const w2 = new re(h2, E2);
      t2 ? r2 ? S2() : b2 = w2.run() : "post" === s2 ? ur(w2.run.bind(w2), p2 && p2.suspense) : w2.run();
      const T2 = () => {
        w2.stop(), p2 && p2.scope && u(p2.scope.effects, w2);
      };
      return y2 && y2.push(T2), T2;
    }
    function tn(e2, t2, n2) {
      const r2 = this.proxy, i2 = v(e2) ? e2.includes(".") ? nn(r2, e2) : () => r2[e2] : e2.bind(r2, r2);
      let o2;
      g(t2) ? o2 = t2 : (o2 = t2.handler, n2 = t2);
      const s2 = Kr;
      Hr(this);
      const a2 = en(i2, o2.bind(r2), n2);
      return s2 ? Hr(s2) : Gr(), a2;
    }
    function nn(e2, t2) {
      const n2 = t2.split(".");
      return () => {
        let t3 = e2;
        for (let e3 = 0; e3 < n2.length && t3; e3++) t3 = t3[n2[e3]];
        return t3;
      };
    }
    function rn(e2, t2) {
      if (!y(e2) || e2.__v_skip) return e2;
      if ((t2 = t2 || /* @__PURE__ */ new Set()).has(e2)) return e2;
      if (t2.add(e2), lt(e2)) rn(e2.value, t2);
      else if (d(e2)) for (let n2 = 0; n2 < e2.length; n2++) rn(e2[n2], t2);
      else if (f(e2) || h(e2)) e2.forEach(((e3) => {
        rn(e3, t2);
      }));
      else if (E(e2)) for (const n2 in e2) rn(e2[n2], t2);
      return e2;
    }
    function on(e2, t2, n2, r2) {
      const i2 = e2.dirs, o2 = t2 && t2.dirs;
      for (let s2 = 0; s2 < i2.length; s2++) {
        const a2 = i2[s2];
        o2 && (a2.oldValue = o2[s2].value);
        let c2 = a2.dir[r2];
        c2 && (ae(), _t(c2, n2, 8, [e2.el, a2, e2, t2]), ce());
      }
    }
    /*! #__NO_SIDE_EFFECTS__ */
    // @__NO_SIDE_EFFECTS__
    function sn(e2, t2) {
      return g(e2) ? (() => c({ name: e2.name }, t2, { setup: e2 }))() : e2;
    }
    const an = (e2) => !!e2.type.__asyncLoader, cn = (e2) => e2.type.__isKeepAlive;
    function un(e2, t2) {
      pn(e2, "a", t2);
    }
    function ln(e2, t2) {
      pn(e2, "da", t2);
    }
    function pn(e2, t2, n2 = Kr) {
      const r2 = e2.__wdc || (e2.__wdc = () => {
        let t3 = n2;
        for (; t3; ) {
          if (t3.isDeactivated) return;
          t3 = t3.parent;
        }
        return e2();
      });
      if (hn(t2, r2, n2), n2) {
        let e3 = n2.parent;
        for (; e3 && e3.parent; ) cn(e3.parent.vnode) && dn(r2, t2, n2, e3), e3 = e3.parent;
      }
    }
    function dn(e2, t2, n2, r2) {
      const i2 = hn(t2, e2, r2, true);
      bn((() => {
        u(r2[t2], i2);
      }), n2);
    }
    function hn(e2, t2, n2 = Kr, r2 = false) {
      if (n2) {
        const i2 = n2[e2] || (n2[e2] = []), o2 = t2.__weh || (t2.__weh = (...r3) => {
          if (n2.isUnmounted) return;
          ae(), Hr(n2);
          const i3 = _t(t2, n2, e2, r3);
          return Gr(), ce(), i3;
        });
        return r2 ? i2.unshift(o2) : i2.push(o2), o2;
      }
    }
    const fn = (e2) => (t2, n2 = Kr) => (!zr || "sp" === e2) && hn(e2, ((...e3) => t2(...e3)), n2), gn = e("g", fn("bm")), vn = e("D", fn("m")), mn = fn("bu"), yn = fn("u"), _n = fn("bum"), bn = fn("um"), Sn = fn("sp"), En = fn("rtg"), wn = fn("rtc");
    function Tn(e2, t2 = Kr) {
      hn("ec", e2, t2);
    }
    function An(e2) {
      return e2.some(((e3) => !Tr(e3) || e3.type !== gr && !(e3.type === hr && !An(e3.children)))) ? e2 : null;
    }
    const On = (e2) => e2 ? $r(e2) ? Qr(e2) || e2.proxy : On(e2.parent) : null, Cn = c(/* @__PURE__ */ Object.create(null), { $: (e2) => e2, $el: (e2) => e2.vnode.el, $data: (e2) => e2.data, $props: (e2) => e2.props, $attrs: (e2) => e2.attrs, $slots: (e2) => e2.slots, $refs: (e2) => e2.refs, $parent: (e2) => On(e2.parent), $root: (e2) => On(e2.root), $emit: (e2) => e2.emit, $options: (e2) => Mn(e2), $forceUpdate: (e2) => e2.f || (e2.f = () => Pt(e2.update)), $nextTick: (e2) => e2.n || (e2.n = Nt.bind(e2.proxy)), $watch: (e2) => tn.bind(e2) }), In = (e2, t2) => e2 !== n && !e2.__isScriptSetup && p(e2, t2), Rn = { get({ _: e2 }, t2) {
      const { ctx: r2, setupState: i2, data: o2, props: s2, accessCache: a2, type: c2, appContext: u2 } = e2;
      let l2;
      if ("$" !== t2[0]) {
        const c3 = a2[t2];
        if (void 0 !== c3) switch (c3) {
          case 1:
            return i2[t2];
          case 2:
            return o2[t2];
          case 4:
            return r2[t2];
          case 3:
            return s2[t2];
        }
        else {
          if (In(i2, t2)) return a2[t2] = 1, i2[t2];
          if (o2 !== n && p(o2, t2)) return a2[t2] = 2, o2[t2];
          if ((l2 = e2.propsOptions[0]) && p(l2, t2)) return a2[t2] = 3, s2[t2];
          if (r2 !== n && p(r2, t2)) return a2[t2] = 4, r2[t2];
          Pn && (a2[t2] = 0);
        }
      }
      const d2 = Cn[t2];
      let h2, f2;
      return d2 ? ("$attrs" === t2 && ue(e2, 0, t2), d2(e2)) : (h2 = c2.__cssModules) && (h2 = h2[t2]) ? h2 : r2 !== n && p(r2, t2) ? (a2[t2] = 4, r2[t2]) : (f2 = u2.config.globalProperties, p(f2, t2) ? f2[t2] : void 0);
    }, set({ _: e2 }, t2, r2) {
      const { data: i2, setupState: o2, ctx: s2 } = e2;
      return In(o2, t2) ? (o2[t2] = r2, true) : i2 !== n && p(i2, t2) ? (i2[t2] = r2, true) : !(p(e2.props, t2) || "$" === t2[0] && t2.slice(1) in e2 || (s2[t2] = r2, 0));
    }, has({ _: { data: e2, setupState: t2, accessCache: r2, ctx: i2, appContext: o2, propsOptions: s2 } }, a2) {
      let c2;
      return !!r2[a2] || e2 !== n && p(e2, a2) || In(t2, a2) || (c2 = s2[0]) && p(c2, a2) || p(i2, a2) || p(Cn, a2) || p(o2.config.globalProperties, a2);
    }, defineProperty(e2, t2, n2) {
      return null != n2.get ? e2._.accessCache[t2] = 0 : p(n2, "value") && this.set(e2, t2, n2.value, null), Reflect.defineProperty(e2, t2, n2);
    } };
    function Nn(e2) {
      return d(e2) ? e2.reduce(((e3, t2) => (e3[t2] = null, e3)), {}) : e2;
    }
    let Pn = true;
    function Dn(e2) {
      const t2 = Mn(e2), n2 = e2.proxy, r2 = e2.ctx;
      Pn = false, t2.beforeCreate && kn(t2.beforeCreate, e2, "bc");
      const { data: o2, computed: s2, methods: a2, watch: c2, provide: u2, inject: l2, created: p2, beforeMount: h2, mounted: f2, beforeUpdate: v2, updated: m2, activated: _2, deactivated: b2, beforeDestroy: S2, beforeUnmount: E2, destroyed: w2, unmounted: T2, render: A2, renderTracked: O2, renderTriggered: C2, errorCaptured: I2, serverPrefetch: R2, expose: N2, inheritAttrs: P2, components: D2, directives: k2, filters: x2 } = t2;
      if (l2 && (function(e3, t3, n3 = i) {
        d(e3) && (e3 = Fn(e3));
        for (const r3 in e3) {
          const n4 = e3[r3];
          let i2;
          i2 = y(n4) ? "default" in n4 ? qn(n4.from || r3, n4.default, true) : qn(n4.from || r3) : qn(n4), lt(i2) ? Object.defineProperty(t3, r3, { enumerable: true, configurable: true, get: () => i2.value, set: (e4) => i2.value = e4 }) : t3[r3] = i2;
        }
      })(l2, r2, null), a2) for (const i2 in a2) {
        const e3 = a2[i2];
        g(e3) && (r2[i2] = e3.bind(n2));
      }
      if (o2) {
        const t3 = o2.call(n2, n2);
        y(t3) && (e2.data = Je(t3));
      }
      if (Pn = true, s2) for (const d2 in s2) {
        const e3 = s2[d2], t3 = g(e3) ? e3.bind(n2, n2) : g(e3.get) ? e3.get.bind(n2, n2) : i, o3 = !g(e3) && g(e3.set) ? e3.set.bind(n2) : i, a3 = Yr({ get: t3, set: o3 });
        Object.defineProperty(r2, d2, { enumerable: true, configurable: true, get: () => a3.value, set: (e4) => a3.value = e4 });
      }
      if (c2) for (const i2 in c2) xn(c2[i2], r2, n2, i2);
      if (u2) {
        const e3 = g(u2) ? u2.call(n2) : u2;
        Reflect.ownKeys(e3).forEach(((t3) => {
          Wn(t3, e3[t3]);
        }));
      }
      function M2(e3, t3) {
        d(t3) ? t3.forEach(((t4) => e3(t4.bind(n2)))) : t3 && e3(t3.bind(n2));
      }
      if (p2 && kn(p2, e2, "c"), M2(gn, h2), M2(vn, f2), M2(mn, v2), M2(yn, m2), M2(un, _2), M2(ln, b2), M2(Tn, I2), M2(wn, O2), M2(En, C2), M2(_n, E2), M2(bn, T2), M2(Sn, R2), d(N2)) if (N2.length) {
        const t3 = e2.exposed || (e2.exposed = {});
        N2.forEach(((e3) => {
          Object.defineProperty(t3, e3, { get: () => n2[e3], set: (t4) => n2[e3] = t4 });
        }));
      } else e2.exposed || (e2.exposed = {});
      A2 && e2.render === i && (e2.render = A2), null != P2 && (e2.inheritAttrs = P2), D2 && (e2.components = D2), k2 && (e2.directives = k2);
    }
    function kn(e2, t2, n2) {
      _t(d(e2) ? e2.map(((e3) => e3.bind(t2.proxy))) : e2.bind(t2.proxy), t2, n2);
    }
    function xn(e2, t2, n2, r2) {
      const i2 = r2.includes(".") ? nn(n2, r2) : () => n2[r2];
      if (v(e2)) {
        const n3 = t2[e2];
        g(n3) && Zt(i2, n3);
      } else if (g(e2)) Zt(i2, e2.bind(n2));
      else if (y(e2)) if (d(e2)) e2.forEach(((e3) => xn(e3, t2, n2, r2)));
      else {
        const r3 = g(e2.handler) ? e2.handler.bind(n2) : t2[e2.handler];
        g(r3) && Zt(i2, r3, e2);
      }
    }
    function Mn(e2) {
      const t2 = e2.type, { mixins: n2, extends: r2 } = t2, { mixins: i2, optionsCache: o2, config: { optionMergeStrategies: s2 } } = e2.appContext, a2 = o2.get(t2);
      let c2;
      return a2 ? c2 = a2 : i2.length || n2 || r2 ? (c2 = {}, i2.length && i2.forEach(((e3) => Ln(c2, e3, s2, true))), Ln(c2, t2, s2)) : c2 = t2, y(t2) && o2.set(t2, c2), c2;
    }
    function Ln(e2, t2, n2, r2 = false) {
      const { mixins: i2, extends: o2 } = t2;
      o2 && Ln(e2, o2, n2, true), i2 && i2.forEach(((t3) => Ln(e2, t3, n2, true)));
      for (const s2 in t2) if (r2 && "expose" === s2) ;
      else {
        const r3 = Un[s2] || n2 && n2[s2];
        e2[s2] = r3 ? r3(e2[s2], t2[s2]) : t2[s2];
      }
      return e2;
    }
    const Un = { data: jn, props: Vn, emits: Vn, methods: Kn, computed: Kn, beforeCreate: Bn, created: Bn, beforeMount: Bn, mounted: Bn, beforeUpdate: Bn, updated: Bn, beforeDestroy: Bn, beforeUnmount: Bn, destroyed: Bn, unmounted: Bn, activated: Bn, deactivated: Bn, errorCaptured: Bn, serverPrefetch: Bn, components: Kn, directives: Kn, watch: function(e2, t2) {
      if (!e2) return t2;
      if (!t2) return e2;
      const n2 = c(/* @__PURE__ */ Object.create(null), e2);
      for (const r2 in t2) n2[r2] = Bn(e2[r2], t2[r2]);
      return n2;
    }, provide: jn, inject: function(e2, t2) {
      return Kn(Fn(e2), Fn(t2));
    } };
    function jn(e2, t2) {
      return t2 ? e2 ? function() {
        return c(g(e2) ? e2.call(this, this) : e2, g(t2) ? t2.call(this, this) : t2);
      } : t2 : e2;
    }
    function Fn(e2) {
      if (d(e2)) {
        const t2 = {};
        for (let n2 = 0; n2 < e2.length; n2++) t2[e2[n2]] = e2[n2];
        return t2;
      }
      return e2;
    }
    function Bn(e2, t2) {
      return e2 ? [...new Set([].concat(e2, t2))] : t2;
    }
    function Kn(e2, t2) {
      return e2 ? c(/* @__PURE__ */ Object.create(null), e2, t2) : t2;
    }
    function Vn(e2, t2) {
      return e2 ? d(e2) && d(t2) ? [.../* @__PURE__ */ new Set([...e2, ...t2])] : c(/* @__PURE__ */ Object.create(null), Nn(e2), Nn(null != t2 ? t2 : {})) : t2;
    }
    function Hn() {
      return { app: null, config: { isNativeTag: o, performance: false, globalProperties: {}, optionMergeStrategies: {}, errorHandler: void 0, warnHandler: void 0, compilerOptions: {} }, mixins: [], components: {}, directives: {}, provides: /* @__PURE__ */ Object.create(null), optionsCache: /* @__PURE__ */ new WeakMap(), propsCache: /* @__PURE__ */ new WeakMap(), emitsCache: /* @__PURE__ */ new WeakMap() };
    }
    let Gn = 0;
    function $n(e2, t2) {
      return function(n2, r2 = null) {
        g(n2) || (n2 = c({}, n2)), null == r2 || y(r2) || (r2 = null);
        const i2 = Hn(), o2 = /* @__PURE__ */ new WeakSet();
        let s2 = false;
        const a2 = i2.app = { _uid: Gn++, _component: n2, _props: r2, _container: null, _context: i2, _instance: null, version: ei, get config() {
          return i2.config;
        }, set config(e3) {
        }, use: (e3, ...t3) => (o2.has(e3) || (e3 && g(e3.install) ? (o2.add(e3), e3.install(a2, ...t3)) : g(e3) && (o2.add(e3), e3(a2, ...t3))), a2), mixin: (e3) => (i2.mixins.includes(e3) || i2.mixins.push(e3), a2), component: (e3, t3) => t3 ? (i2.components[e3] = t3, a2) : i2.components[e3], directive: (e3, t3) => t3 ? (i2.directives[e3] = t3, a2) : i2.directives[e3], mount(o3, c2, u2) {
          if (!s2) {
            const l2 = Nr(n2, r2);
            return l2.appContext = i2, c2 && t2 ? t2(l2, o3) : e2(l2, o3, u2), s2 = true, a2._container = o3, o3.__vue_app__ = a2, Qr(l2.component) || l2.component.proxy;
          }
        }, unmount() {
          s2 && (e2(null, a2._container), delete a2._container.__vue_app__);
        }, provide: (e3, t3) => (i2.provides[e3] = t3, a2), runWithContext(e3) {
          zn = a2;
          try {
            return e3();
          } finally {
            zn = null;
          }
        } };
        return a2;
      };
    }
    let zn = null;
    function Wn(e2, t2) {
      if (Kr) {
        let n2 = Kr.provides;
        const r2 = Kr.parent && Kr.parent.provides;
        r2 === n2 && (n2 = Kr.provides = Object.create(r2)), n2[e2] = t2;
      }
    }
    function qn(e2, t2, n2 = false) {
      const r2 = Kr || Kt;
      if (r2 || zn) {
        const i2 = r2 ? null == r2.parent ? r2.vnode.appContext && r2.vnode.appContext.provides : r2.parent.provides : zn._context.provides;
        if (i2 && e2 in i2) return i2[e2];
        if (arguments.length > 1) return n2 && g(t2) ? t2.call(r2 && r2.proxy) : t2;
      }
    }
    function Qn(e2, t2, n2, r2 = false) {
      const i2 = {}, o2 = {};
      x(o2, Or, 1), e2.propsDefaults = /* @__PURE__ */ Object.create(null), Yn(e2, t2, i2, o2);
      for (const s2 in e2.propsOptions[0]) s2 in i2 || (i2[s2] = void 0);
      n2 ? e2.props = r2 ? i2 : Ze(i2, false, Te, Ge, We) : e2.type.props ? e2.props = i2 : e2.props = o2, e2.attrs = o2;
    }
    function Yn(e2, t2, r2, i2) {
      const [o2, s2] = e2.propsOptions;
      let a2, c2 = false;
      if (t2) for (let n2 in t2) {
        if (T(n2)) continue;
        const u2 = t2[n2];
        let l2;
        o2 && p(o2, l2 = C(n2)) ? s2 && s2.includes(l2) ? (a2 || (a2 = {}))[l2] = u2 : r2[l2] = u2 : Bt(e2.emitsOptions, n2) || n2 in i2 && u2 === i2[n2] || (i2[n2] = u2, c2 = true);
      }
      if (s2) {
        const t3 = it(r2), i3 = a2 || n;
        for (let n2 = 0; n2 < s2.length; n2++) {
          const a3 = s2[n2];
          r2[a3] = Jn(o2, t3, a3, i3[a3], e2, !p(i3, a3));
        }
      }
      return c2;
    }
    function Jn(e2, t2, n2, r2, i2, o2) {
      const s2 = e2[n2];
      if (null != s2) {
        const e3 = p(s2, "default");
        if (e3 && void 0 === r2) {
          const e4 = s2.default;
          if (s2.type !== Function && !s2.skipFactory && g(e4)) {
            const { propsDefaults: o3 } = i2;
            n2 in o3 ? r2 = o3[n2] : (Hr(i2), r2 = o3[n2] = e4.call(null, t2), Gr());
          } else r2 = e4;
        }
        s2[0] && (o2 && !e3 ? r2 = false : !s2[1] || "" !== r2 && r2 !== R(n2) || (r2 = true));
      }
      return r2;
    }
    function Xn(e2, t2, i2 = false) {
      const o2 = t2.propsCache, s2 = o2.get(e2);
      if (s2) return s2;
      const a2 = e2.props, u2 = {}, l2 = [];
      let h2 = false;
      if (!g(e2)) {
        const n2 = (e3) => {
          h2 = true;
          const [n3, r2] = Xn(e3, t2, true);
          c(u2, n3), r2 && l2.push(...r2);
        };
        !i2 && t2.mixins.length && t2.mixins.forEach(n2), e2.extends && n2(e2.extends), e2.mixins && e2.mixins.forEach(n2);
      }
      if (!a2 && !h2) return y(e2) && o2.set(e2, r), r;
      if (d(a2)) for (let r2 = 0; r2 < a2.length; r2++) {
        const e3 = C(a2[r2]);
        Zn(e3) && (u2[e3] = n);
      }
      else if (a2) for (const n2 in a2) {
        const e3 = C(n2);
        if (Zn(e3)) {
          const t3 = a2[n2], r2 = u2[e3] = d(t3) || g(t3) ? { type: t3 } : c({}, t3);
          if (r2) {
            const t4 = nr(Boolean, r2.type), n3 = nr(String, r2.type);
            r2[0] = t4 > -1, r2[1] = n3 < 0 || t4 < n3, (t4 > -1 || p(r2, "default")) && l2.push(e3);
          }
        }
      }
      const f2 = [u2, l2];
      return y(e2) && o2.set(e2, f2), f2;
    }
    function Zn(e2) {
      return "$" !== e2[0];
    }
    function er(e2) {
      const t2 = e2 && e2.toString().match(/^\s*(function|class) (\w+)/);
      return t2 ? t2[2] : null === e2 ? "null" : "";
    }
    function tr(e2, t2) {
      return er(e2) === er(t2);
    }
    function nr(e2, t2) {
      return d(t2) ? t2.findIndex(((t3) => tr(t3, e2))) : g(t2) && tr(t2, e2) ? 0 : -1;
    }
    const rr = (e2) => "_" === e2[0] || "$stable" === e2, ir = (e2) => d(e2) ? e2.map(kr) : [kr(e2)], or = (e2, t2, n2) => {
      if (t2._n) return t2;
      const r2 = Gt(((...e3) => ir(t2(...e3))), n2);
      return r2._c = false, r2;
    }, sr = (e2, t2, n2) => {
      const r2 = e2._ctx;
      for (const i2 in e2) {
        if (rr(i2)) continue;
        const n3 = e2[i2];
        if (g(n3)) t2[i2] = or(0, n3, r2);
        else if (null != n3) {
          const e3 = ir(n3);
          t2[i2] = () => e3;
        }
      }
    }, ar = (e2, t2) => {
      const n2 = ir(t2);
      e2.slots.default = () => n2;
    };
    function cr(e2, t2, r2, i2, o2 = false) {
      if (d(e2)) return void e2.forEach(((e3, n2) => cr(e3, t2 && (d(t2) ? t2[n2] : t2), r2, i2, o2)));
      if (an(i2) && !o2) return;
      const s2 = 4 & i2.shapeFlag ? Qr(i2.component) || i2.component.proxy : i2.el, a2 = o2 ? null : s2, { i: c2, r: l2 } = e2, h2 = t2 && t2.r, f2 = c2.refs === n ? c2.refs = {} : c2.refs, m2 = c2.setupState;
      if (null != h2 && h2 !== l2 && (v(h2) ? (f2[h2] = null, p(m2, h2) && (m2[h2] = null)) : lt(h2) && (h2.value = null)), g(l2)) yt(l2, c2, 12, [a2, f2]);
      else {
        const t3 = v(l2), n2 = lt(l2);
        if (t3 || n2) {
          const i3 = () => {
            if (e2.f) {
              const n3 = t3 ? p(m2, l2) ? m2[l2] : f2[l2] : l2.value;
              o2 ? d(n3) && u(n3, s2) : d(n3) ? n3.includes(s2) || n3.push(s2) : t3 ? (f2[l2] = [s2], p(m2, l2) && (m2[l2] = f2[l2])) : (l2.value = [s2], e2.k && (f2[e2.k] = l2.value));
            } else t3 ? (f2[l2] = a2, p(m2, l2) && (m2[l2] = a2)) : n2 && (l2.value = a2, e2.k && (f2[e2.k] = a2));
          };
          a2 ? (i3.id = -1, ur(i3, r2)) : i3();
        }
      }
    }
    const ur = function(e2, t2) {
      var n2;
      t2 && t2.pendingBranch ? d(e2) ? t2.effects.push(...e2) : t2.effects.push(e2) : (d(n2 = e2) ? At.push(...n2) : Ot && Ot.includes(n2, n2.allowRecurse ? Ct + 1 : Ct) || At.push(n2), Dt());
    };
    function lr(e2) {
      return (function(e3, t2) {
        U().__VUE__ = true;
        const { insert: o2, remove: s2, patchProp: a2, createElement: u2, createText: l2, createComment: d2, setText: h2, setElementText: f2, parentNode: g2, nextSibling: v2, setScopeId: m2 = i, insertStaticContent: y2 } = e3, b2 = (e4, t3, n2, r2 = null, i2 = null, o3 = null, s3 = false, a3 = null, c2 = !!t3.dynamicChildren) => {
          if (e4 === t3) return;
          e4 && !Ar(e4, t3) && (r2 = te2(e4), Y2(e4, i2, o3, true), e4 = null), -2 === t3.patchFlag && (c2 = false, t3.dynamicChildren = null);
          const { type: u3, ref: l3, shapeFlag: p2 } = t3;
          switch (u3) {
            case fr:
              S2(e4, t3, n2, r2);
              break;
            case gr:
              E2(e4, t3, n2, r2);
              break;
            case vr:
              null == e4 && w2(t3, n2, r2, s3);
              break;
            case hr:
              F2(e4, t3, n2, r2, i2, o3, s3, a3, c2);
              break;
            default:
              1 & p2 ? I2(e4, t3, n2, r2, i2, o3, s3, a3, c2) : 6 & p2 ? B2(e4, t3, n2, r2, i2, o3, s3, a3, c2) : (64 & p2 || 128 & p2) && u3.process(e4, t3, n2, r2, i2, o3, s3, a3, c2, ie2);
          }
          null != l3 && i2 && cr(l3, e4 && e4.ref, o3, t3 || e4, !t3);
        }, S2 = (e4, t3, n2, r2) => {
          if (null == e4) o2(t3.el = l2(t3.children), n2, r2);
          else {
            const n3 = t3.el = e4.el;
            t3.children !== e4.children && h2(n3, t3.children);
          }
        }, E2 = (e4, t3, n2, r2) => {
          null == e4 ? o2(t3.el = d2(t3.children || ""), n2, r2) : t3.el = e4.el;
        }, w2 = (e4, t3, n2, r2) => {
          [e4.el, e4.anchor] = y2(e4.children, t3, n2, r2, e4.el, e4.anchor);
        }, A2 = ({ el: e4, anchor: t3 }, n2, r2) => {
          let i2;
          for (; e4 && e4 !== t3; ) i2 = v2(e4), o2(e4, n2, r2), e4 = i2;
          o2(t3, n2, r2);
        }, O2 = ({ el: e4, anchor: t3 }) => {
          let n2;
          for (; e4 && e4 !== t3; ) n2 = v2(e4), s2(e4), e4 = n2;
          s2(t3);
        }, I2 = (e4, t3, n2, r2, i2, o3, s3, a3, c2) => {
          s3 = s3 || "svg" === t3.type, null == e4 ? N2(t3, n2, r2, i2, o3, s3, a3, c2) : M2(e4, t3, i2, o3, s3, a3, c2);
        }, N2 = (e4, t3, n2, r2, i2, s3, c2, l3) => {
          let p2, d3;
          const { type: h3, props: g3, shapeFlag: v3, transition: m3, dirs: y3 } = e4;
          if (p2 = e4.el = u2(e4.type, s3, g3 && g3.is, g3), 8 & v3 ? f2(p2, e4.children) : 16 & v3 && D2(e4.children, p2, null, r2, i2, s3 && "foreignObject" !== h3, c2, l3), y3 && on(e4, null, r2, "created"), P2(p2, e4, e4.scopeId, c2, r2), g3) {
            for (const t4 in g3) "value" === t4 || T(t4) || a2(p2, t4, null, g3[t4], s3, e4.children, r2, i2, ee2);
            "value" in g3 && a2(p2, "value", null, g3.value), (d3 = g3.onVnodeBeforeMount) && Lr(d3, r2, e4);
          }
          y3 && on(e4, null, r2, "beforeMount");
          const _2 = (function(e5, t4) {
            return (!e5 || e5 && !e5.pendingBranch) && t4 && !t4.persisted;
          })(i2, m3);
          _2 && m3.beforeEnter(p2), o2(p2, t3, n2), ((d3 = g3 && g3.onVnodeMounted) || _2 || y3) && ur((() => {
            d3 && Lr(d3, r2, e4), _2 && m3.enter(p2), y3 && on(e4, null, r2, "mounted");
          }), i2);
        }, P2 = (e4, t3, n2, r2, i2) => {
          if (n2 && m2(e4, n2), r2) for (let o3 = 0; o3 < r2.length; o3++) m2(e4, r2[o3]);
          if (i2 && t3 === i2.subTree) {
            const t4 = i2.vnode;
            P2(e4, t4, t4.scopeId, t4.slotScopeIds, i2.parent);
          }
        }, D2 = (e4, t3, n2, r2, i2, o3, s3, a3, c2 = 0) => {
          for (let u3 = c2; u3 < e4.length; u3++) {
            const c3 = e4[u3] = a3 ? xr(e4[u3]) : kr(e4[u3]);
            b2(null, c3, t3, n2, r2, i2, o3, s3, a3);
          }
        }, M2 = (e4, t3, r2, i2, o3, s3, c2) => {
          const u3 = t3.el = e4.el;
          let { patchFlag: l3, dynamicChildren: p2, dirs: d3 } = t3;
          l3 |= 16 & e4.patchFlag;
          const h3 = e4.props || n, g3 = t3.props || n;
          let v3;
          r2 && pr(r2, false), (v3 = g3.onVnodeBeforeUpdate) && Lr(v3, r2, t3, e4), d3 && on(t3, e4, r2, "beforeUpdate"), r2 && pr(r2, true);
          const m3 = o3 && "foreignObject" !== t3.type;
          if (p2 ? L2(e4.dynamicChildren, p2, u3, r2, i2, m3, s3) : c2 || $2(e4, t3, u3, null, r2, i2, m3, s3, false), l3 > 0) {
            if (16 & l3) j2(u3, t3, h3, g3, r2, i2, o3);
            else if (2 & l3 && h3.class !== g3.class && a2(u3, "class", null, g3.class, o3), 4 & l3 && a2(u3, "style", h3.style, g3.style, o3), 8 & l3) {
              const n2 = t3.dynamicProps;
              for (let t4 = 0; t4 < n2.length; t4++) {
                const s4 = n2[t4], c3 = h3[s4], l4 = g3[s4];
                l4 === c3 && "value" !== s4 || a2(u3, s4, c3, l4, o3, e4.children, r2, i2, ee2);
              }
            }
            1 & l3 && e4.children !== t3.children && f2(u3, t3.children);
          } else c2 || null != p2 || j2(u3, t3, h3, g3, r2, i2, o3);
          ((v3 = g3.onVnodeUpdated) || d3) && ur((() => {
            v3 && Lr(v3, r2, t3, e4), d3 && on(t3, e4, r2, "updated");
          }), i2);
        }, L2 = (e4, t3, n2, r2, i2, o3, s3) => {
          for (let a3 = 0; a3 < t3.length; a3++) {
            const c2 = e4[a3], u3 = t3[a3], l3 = c2.el && (c2.type === hr || !Ar(c2, u3) || 70 & c2.shapeFlag) ? g2(c2.el) : n2;
            b2(c2, u3, l3, null, r2, i2, o3, s3, true);
          }
        }, j2 = (e4, t3, r2, i2, o3, s3, c2) => {
          if (r2 !== i2) {
            if (r2 !== n) for (const n2 in r2) T(n2) || n2 in i2 || a2(e4, n2, r2[n2], null, c2, t3.children, o3, s3, ee2);
            for (const n2 in i2) {
              if (T(n2)) continue;
              const u3 = i2[n2], l3 = r2[n2];
              u3 !== l3 && "value" !== n2 && a2(e4, n2, l3, u3, c2, t3.children, o3, s3, ee2);
            }
            "value" in i2 && a2(e4, "value", r2.value, i2.value);
          }
        }, F2 = (e4, t3, n2, r2, i2, s3, a3, c2, u3) => {
          const p2 = t3.el = e4 ? e4.el : l2(""), d3 = t3.anchor = e4 ? e4.anchor : l2("");
          let { patchFlag: h3, dynamicChildren: f3, slotScopeIds: g3 } = t3;
          g3 && (c2 = c2 ? c2.concat(g3) : g3), null == e4 ? (o2(p2, n2, r2), o2(d3, n2, r2), D2(t3.children, n2, d3, i2, s3, a3, c2, u3)) : h3 > 0 && 64 & h3 && f3 && e4.dynamicChildren ? (L2(e4.dynamicChildren, f3, n2, i2, s3, a3, c2), (null != t3.key || i2 && t3 === i2.subTree) && dr(e4, t3, true)) : $2(e4, t3, n2, d3, i2, s3, a3, c2, u3);
        }, B2 = (e4, t3, n2, r2, i2, o3, s3, a3, c2) => {
          t3.slotScopeIds = a3, null == e4 ? 512 & t3.shapeFlag ? i2.ctx.activate(t3, n2, r2, s3, c2) : K2(t3, n2, r2, i2, o3, s3, c2) : V2(e4, t3, c2);
        }, K2 = (e4, t3, r2, i2, o3, s3, a3) => {
          const c2 = e4.component = (function(e5, t4, r3) {
            const i3 = e5.type, o4 = (t4 ? t4.appContext : e5.appContext) || Ur, s4 = { uid: Br++, vnode: e5, type: i3, parent: t4, appContext: o4, root: null, next: null, subTree: null, effect: null, update: null, scope: new W(true), render: null, proxy: null, exposed: null, exposeProxy: null, withProxy: null, provides: t4 ? t4.provides : Object.create(o4.provides), accessCache: null, renderCache: [], components: null, directives: null, propsOptions: Xn(i3, o4), emitsOptions: Ft(i3, o4), emit: null, emitted: null, propsDefaults: n, inheritAttrs: i3.inheritAttrs, ctx: n, data: n, props: n, attrs: n, slots: n, refs: n, setupState: n, setupContext: null, attrsProxy: null, slotsProxy: null, suspense: r3, suspenseId: r3 ? r3.pendingId : 0, asyncDep: null, asyncResolved: false, isMounted: false, isUnmounted: false, isDeactivated: false, bc: null, c: null, bm: null, m: null, bu: null, u: null, um: null, bum: null, da: null, a: null, rtg: null, rtc: null, ec: null, sp: null };
            return s4.ctx = { _: s4 }, s4.root = t4 ? t4.root : s4, s4.emit = jt.bind(null, s4), e5.ce && e5.ce(s4), s4;
          })(e4, i2, o3);
          if (cn(e4) && (c2.ctx.renderer = ie2), (function(e5, t4 = false) {
            zr = t4;
            const { props: n2, children: r3 } = e5.vnode, i3 = $r(e5);
            Qn(e5, n2, i3, t4), ((e6, t5) => {
              if (32 & e6.vnode.shapeFlag) {
                const n3 = t5._;
                n3 ? (e6.slots = it(t5), x(t5, "_", n3)) : sr(t5, e6.slots = {});
              } else e6.slots = {}, t5 && ar(e6, t5);
              x(e6.slots, Or, 1);
            })(e5, r3);
            i3 && (function(e6, t5) {
              const n3 = e6.type;
              e6.accessCache = /* @__PURE__ */ Object.create(null), e6.proxy = ot(new Proxy(e6.ctx, Rn));
              const { setup: r4 } = n3;
              if (r4) {
                const n4 = e6.setupContext = r4.length > 1 ? (function(e7) {
                  const t6 = (t7) => {
                    e7.exposed = t7 || {};
                  };
                  return { get attrs() {
                    return (function(e8) {
                      return e8.attrsProxy || (e8.attrsProxy = new Proxy(e8.attrs, { get: (t7, n5) => (ue(e8, 0, "$attrs"), t7[n5]) }));
                    })(e7);
                  }, slots: e7.slots, emit: e7.emit, expose: t6 };
                })(e6) : null;
                Hr(e6), ae();
                const i4 = yt(r4, e6, 0, [e6.props, n4]);
                if (ce(), Gr(), _(i4)) {
                  if (i4.then(Gr, Gr), t5) return i4.then(((n5) => {
                    Wr(e6, n5, t5);
                  })).catch(((t6) => {
                    bt(t6, e6, 0);
                  }));
                  e6.asyncDep = i4;
                } else Wr(e6, i4, t5);
              } else qr(e6);
            })(e5, t4);
            zr = false;
          })(c2), c2.asyncDep) {
            if (o3 && o3.registerDep(c2, H2), !e4.el) {
              const e5 = c2.subTree = Nr(gr);
              E2(null, e5, t3, r2);
            }
          } else H2(c2, e4, t3, r2, o3, s3, a3);
        }, V2 = (e4, t3, n2) => {
          const r2 = t3.component = e4.component;
          if ((function(e5, t4, n3) {
            const { props: r3, children: i2, component: o3 } = e5, { props: s3, children: a3, patchFlag: c2 } = t4, u3 = o3.emitsOptions;
            if (t4.dirs || t4.transition) return true;
            if (!(n3 && c2 >= 0)) return !(!i2 && !a3 || a3 && a3.$stable) || r3 !== s3 && (r3 ? !s3 || qt(r3, s3, u3) : !!s3);
            if (1024 & c2) return true;
            if (16 & c2) return r3 ? qt(r3, s3, u3) : !!s3;
            if (8 & c2) {
              const e6 = t4.dynamicProps;
              for (let t5 = 0; t5 < e6.length; t5++) {
                const n4 = e6[t5];
                if (s3[n4] !== r3[n4] && !Bt(u3, n4)) return true;
              }
            }
            return false;
          })(e4, t3, n2)) {
            if (r2.asyncDep && !r2.asyncResolved) return void G2(r2, t3, n2);
            r2.next = t3, (function(e5) {
              const t4 = wt.indexOf(e5);
              t4 > Tt && wt.splice(t4, 1);
            })(r2.update), r2.update();
          } else t3.el = e4.el, r2.vnode = t3;
        }, H2 = (e4, t3, n2, r2, i2, o3, s3) => {
          const a3 = () => {
            if (e4.isMounted) {
              let t4, { next: n3, bu: r3, u: a4, parent: c3, vnode: u4 } = e4, l3 = n3;
              pr(e4, false), n3 ? (n3.el = u4.el, G2(e4, n3, s3)) : n3 = u4, r3 && k(r3), (t4 = n3.props && n3.props.onVnodeBeforeUpdate) && Lr(t4, c3, n3, u4), pr(e4, true);
              const p2 = $t(e4), d3 = e4.subTree;
              e4.subTree = p2, b2(d3, p2, g2(d3.el), te2(d3), e4, i2, o3), n3.el = p2.el, null === l3 && (function({ vnode: e5, parent: t5 }, n4) {
                for (; t5 && t5.subTree === e5; ) (e5 = t5.vnode).el = n4, t5 = t5.parent;
              })(e4, p2.el), a4 && ur(a4, i2), (t4 = n3.props && n3.props.onVnodeUpdated) && ur((() => Lr(t4, c3, n3, u4)), i2);
            } else {
              let s4;
              const { el: a4, props: c3 } = t3, { bm: u4, m: l3, parent: p2 } = e4, d3 = an(t3);
              if (pr(e4, false), u4 && k(u4), !d3 && (s4 = c3 && c3.onVnodeBeforeMount) && Lr(s4, p2, t3), pr(e4, true), a4 && se2) {
                const n3 = () => {
                  e4.subTree = $t(e4), se2(a4, e4.subTree, e4, i2, null);
                };
                d3 ? t3.type.__asyncLoader().then((() => !e4.isUnmounted && n3())) : n3();
              } else {
                const s5 = e4.subTree = $t(e4);
                b2(null, s5, n2, r2, e4, i2, o3), t3.el = s5.el;
              }
              if (l3 && ur(l3, i2), !d3 && (s4 = c3 && c3.onVnodeMounted)) {
                const e5 = t3;
                ur((() => Lr(s4, p2, e5)), i2);
              }
              (256 & t3.shapeFlag || p2 && an(p2.vnode) && 256 & p2.vnode.shapeFlag) && e4.a && ur(e4.a, i2), e4.isMounted = true, t3 = n2 = r2 = null;
            }
          }, c2 = e4.effect = new re(a3, (() => Pt(u3)), e4.scope), u3 = e4.update = () => c2.run();
          u3.id = e4.uid, pr(e4, true), u3();
        }, G2 = (e4, t3, r2) => {
          t3.component = e4;
          const i2 = e4.vnode.props;
          e4.vnode = t3, e4.next = null, (function(e5, t4, n2, r3) {
            const { props: i3, attrs: o3, vnode: { patchFlag: s3 } } = e5, a3 = it(i3), [c2] = e5.propsOptions;
            let u3 = false;
            if (!(r3 || s3 > 0) || 16 & s3) {
              let r4;
              Yn(e5, t4, i3, o3) && (u3 = true);
              for (const o4 in a3) t4 && (p(t4, o4) || (r4 = R(o4)) !== o4 && p(t4, r4)) || (c2 ? !n2 || void 0 === n2[o4] && void 0 === n2[r4] || (i3[o4] = Jn(c2, a3, o4, void 0, e5, true)) : delete i3[o4]);
              if (o3 !== a3) for (const e6 in o3) t4 && p(t4, e6) || (delete o3[e6], u3 = true);
            } else if (8 & s3) {
              const n3 = e5.vnode.dynamicProps;
              for (let r4 = 0; r4 < n3.length; r4++) {
                let s4 = n3[r4];
                if (Bt(e5.emitsOptions, s4)) continue;
                const l3 = t4[s4];
                if (c2) if (p(o3, s4)) l3 !== o3[s4] && (o3[s4] = l3, u3 = true);
                else {
                  const t5 = C(s4);
                  i3[t5] = Jn(c2, a3, t5, l3, e5, false);
                }
                else l3 !== o3[s4] && (o3[s4] = l3, u3 = true);
              }
            }
            u3 && pe(e5, "set", "$attrs");
          })(e4, t3.props, i2, r2), ((e5, t4, r3) => {
            const { vnode: i3, slots: o3 } = e5;
            let s3 = true, a3 = n;
            if (32 & i3.shapeFlag) {
              const e6 = t4._;
              e6 ? r3 && 1 === e6 ? s3 = false : (c(o3, t4), r3 || 1 !== e6 || delete o3._) : (s3 = !t4.$stable, sr(t4, o3)), a3 = t4;
            } else t4 && (ar(e5, t4), a3 = { default: 1 });
            if (s3) for (const n2 in o3) rr(n2) || null != a3[n2] || delete o3[n2];
          })(e4, t3.children, r2), ae(), kt(e4), ce();
        }, $2 = (e4, t3, n2, r2, i2, o3, s3, a3, c2 = false) => {
          const u3 = e4 && e4.children, l3 = e4 ? e4.shapeFlag : 0, p2 = t3.children, { patchFlag: d3, shapeFlag: h3 } = t3;
          if (d3 > 0) {
            if (128 & d3) return void q2(u3, p2, n2, r2, i2, o3, s3, a3, c2);
            if (256 & d3) return void z2(u3, p2, n2, r2, i2, o3, s3, a3, c2);
          }
          8 & h3 ? (16 & l3 && ee2(u3, i2, o3), p2 !== u3 && f2(n2, p2)) : 16 & l3 ? 16 & h3 ? q2(u3, p2, n2, r2, i2, o3, s3, a3, c2) : ee2(u3, i2, o3, true) : (8 & l3 && f2(n2, ""), 16 & h3 && D2(p2, n2, r2, i2, o3, s3, a3, c2));
        }, z2 = (e4, t3, n2, i2, o3, s3, a3, c2, u3) => {
          t3 = t3 || r;
          const l3 = (e4 = e4 || r).length, p2 = t3.length, d3 = Math.min(l3, p2);
          let h3;
          for (h3 = 0; h3 < d3; h3++) {
            const r2 = t3[h3] = u3 ? xr(t3[h3]) : kr(t3[h3]);
            b2(e4[h3], r2, n2, null, o3, s3, a3, c2, u3);
          }
          l3 > p2 ? ee2(e4, o3, s3, true, false, d3) : D2(t3, n2, i2, o3, s3, a3, c2, u3, d3);
        }, q2 = (e4, t3, n2, i2, o3, s3, a3, c2, u3) => {
          let l3 = 0;
          const p2 = t3.length;
          let d3 = e4.length - 1, h3 = p2 - 1;
          for (; l3 <= d3 && l3 <= h3; ) {
            const r2 = e4[l3], i3 = t3[l3] = u3 ? xr(t3[l3]) : kr(t3[l3]);
            if (!Ar(r2, i3)) break;
            b2(r2, i3, n2, null, o3, s3, a3, c2, u3), l3++;
          }
          for (; l3 <= d3 && l3 <= h3; ) {
            const r2 = e4[d3], i3 = t3[h3] = u3 ? xr(t3[h3]) : kr(t3[h3]);
            if (!Ar(r2, i3)) break;
            b2(r2, i3, n2, null, o3, s3, a3, c2, u3), d3--, h3--;
          }
          if (l3 > d3) {
            if (l3 <= h3) {
              const e5 = h3 + 1, r2 = e5 < p2 ? t3[e5].el : i2;
              for (; l3 <= h3; ) b2(null, t3[l3] = u3 ? xr(t3[l3]) : kr(t3[l3]), n2, r2, o3, s3, a3, c2, u3), l3++;
            }
          } else if (l3 > h3) for (; l3 <= d3; ) Y2(e4[l3], o3, s3, true), l3++;
          else {
            const f3 = l3, g3 = l3, v3 = /* @__PURE__ */ new Map();
            for (l3 = g3; l3 <= h3; l3++) {
              const e5 = t3[l3] = u3 ? xr(t3[l3]) : kr(t3[l3]);
              null != e5.key && v3.set(e5.key, l3);
            }
            let m3, y3 = 0;
            const _2 = h3 - g3 + 1;
            let S3 = false, E3 = 0;
            const w3 = new Array(_2);
            for (l3 = 0; l3 < _2; l3++) w3[l3] = 0;
            for (l3 = f3; l3 <= d3; l3++) {
              const r2 = e4[l3];
              if (y3 >= _2) {
                Y2(r2, o3, s3, true);
                continue;
              }
              let i3;
              if (null != r2.key) i3 = v3.get(r2.key);
              else for (m3 = g3; m3 <= h3; m3++) if (0 === w3[m3 - g3] && Ar(r2, t3[m3])) {
                i3 = m3;
                break;
              }
              void 0 === i3 ? Y2(r2, o3, s3, true) : (w3[i3 - g3] = l3 + 1, i3 >= E3 ? E3 = i3 : S3 = true, b2(r2, t3[i3], n2, null, o3, s3, a3, c2, u3), y3++);
            }
            const T2 = S3 ? (function(e5) {
              const t4 = e5.slice(), n3 = [0];
              let r2, i3, o4, s4, a4;
              const c3 = e5.length;
              for (r2 = 0; r2 < c3; r2++) {
                const c4 = e5[r2];
                if (0 !== c4) {
                  if (i3 = n3[n3.length - 1], e5[i3] < c4) {
                    t4[r2] = i3, n3.push(r2);
                    continue;
                  }
                  for (o4 = 0, s4 = n3.length - 1; o4 < s4; ) a4 = o4 + s4 >> 1, e5[n3[a4]] < c4 ? o4 = a4 + 1 : s4 = a4;
                  c4 < e5[n3[o4]] && (o4 > 0 && (t4[r2] = n3[o4 - 1]), n3[o4] = r2);
                }
              }
              for (o4 = n3.length, s4 = n3[o4 - 1]; o4-- > 0; ) n3[o4] = s4, s4 = t4[s4];
              return n3;
            })(w3) : r;
            for (m3 = T2.length - 1, l3 = _2 - 1; l3 >= 0; l3--) {
              const e5 = g3 + l3, r2 = t3[e5], d4 = e5 + 1 < p2 ? t3[e5 + 1].el : i2;
              0 === w3[l3] ? b2(null, r2, n2, d4, o3, s3, a3, c2, u3) : S3 && (m3 < 0 || l3 !== T2[m3] ? Q2(r2, n2, d4, 2) : m3--);
            }
          }
        }, Q2 = (e4, t3, n2, r2, i2 = null) => {
          const { el: s3, type: a3, transition: c2, children: u3, shapeFlag: l3 } = e4;
          if (6 & l3) Q2(e4.component.subTree, t3, n2, r2);
          else if (128 & l3) e4.suspense.move(t3, n2, r2);
          else if (64 & l3) a3.move(e4, t3, n2, ie2);
          else if (a3 !== hr) if (a3 !== vr) if (2 !== r2 && 1 & l3 && c2) if (0 === r2) c2.beforeEnter(s3), o2(s3, t3, n2), ur((() => c2.enter(s3)), i2);
          else {
            const { leave: e5, delayLeave: r3, afterLeave: i3 } = c2, a4 = () => o2(s3, t3, n2), u4 = () => {
              e5(s3, (() => {
                a4(), i3 && i3();
              }));
            };
            r3 ? r3(s3, a4, u4) : u4();
          }
          else o2(s3, t3, n2);
          else A2(e4, t3, n2);
          else {
            o2(s3, t3, n2);
            for (let e5 = 0; e5 < u3.length; e5++) Q2(u3[e5], t3, n2, r2);
            o2(e4.anchor, t3, n2);
          }
        }, Y2 = (e4, t3, n2, r2 = false, i2 = false) => {
          const { type: o3, props: s3, ref: a3, children: c2, dynamicChildren: u3, shapeFlag: l3, patchFlag: p2, dirs: d3 } = e4;
          if (null != a3 && cr(a3, null, n2, e4, true), 256 & l3) return void t3.ctx.deactivate(e4);
          const h3 = 1 & l3 && d3, f3 = !an(e4);
          let g3;
          if (f3 && (g3 = s3 && s3.onVnodeBeforeUnmount) && Lr(g3, t3, e4), 6 & l3) Z2(e4.component, n2, r2);
          else {
            if (128 & l3) return void e4.suspense.unmount(n2, r2);
            h3 && on(e4, null, t3, "beforeUnmount"), 64 & l3 ? e4.type.remove(e4, t3, n2, i2, ie2, r2) : u3 && (o3 !== hr || p2 > 0 && 64 & p2) ? ee2(u3, t3, n2, false, true) : (o3 === hr && 384 & p2 || !i2 && 16 & l3) && ee2(c2, t3, n2), r2 && J2(e4);
          }
          (f3 && (g3 = s3 && s3.onVnodeUnmounted) || h3) && ur((() => {
            g3 && Lr(g3, t3, e4), h3 && on(e4, null, t3, "unmounted");
          }), n2);
        }, J2 = (e4) => {
          const { type: t3, el: n2, anchor: r2, transition: i2 } = e4;
          if (t3 === hr) return void X2(n2, r2);
          if (t3 === vr) return void O2(e4);
          const o3 = () => {
            s2(n2), i2 && !i2.persisted && i2.afterLeave && i2.afterLeave();
          };
          if (1 & e4.shapeFlag && i2 && !i2.persisted) {
            const { leave: t4, delayLeave: r3 } = i2, s3 = () => t4(n2, o3);
            r3 ? r3(e4.el, o3, s3) : s3();
          } else o3();
        }, X2 = (e4, t3) => {
          let n2;
          for (; e4 !== t3; ) n2 = v2(e4), s2(e4), e4 = n2;
          s2(t3);
        }, Z2 = (e4, t3, n2) => {
          const { bum: r2, scope: i2, update: o3, subTree: s3, um: a3 } = e4;
          r2 && k(r2), i2.stop(), o3 && (o3.active = false, Y2(s3, e4, t3, n2)), a3 && ur(a3, t3), ur((() => {
            e4.isUnmounted = true;
          }), t3), t3 && t3.pendingBranch && !t3.isUnmounted && e4.asyncDep && !e4.asyncResolved && e4.suspenseId === t3.pendingId && (t3.deps--, 0 === t3.deps && t3.resolve());
        }, ee2 = (e4, t3, n2, r2 = false, i2 = false, o3 = 0) => {
          for (let s3 = o3; s3 < e4.length; s3++) Y2(e4[s3], t3, n2, r2, i2);
        }, te2 = (e4) => 6 & e4.shapeFlag ? te2(e4.component.subTree) : 128 & e4.shapeFlag ? e4.suspense.next() : v2(e4.anchor || e4.el), ne2 = (e4, t3, n2) => {
          null == e4 ? t3._vnode && Y2(t3._vnode, null, null, true) : b2(t3._vnode || null, e4, t3, null, null, null, n2), kt(), xt(), t3._vnode = e4;
        }, ie2 = { p: b2, um: Y2, m: Q2, r: J2, mt: K2, mc: D2, pc: $2, pbc: L2, n: te2, o: e3 };
        let oe2, se2;
        return t2 && ([oe2, se2] = t2(ie2)), { render: ne2, hydrate: oe2, createApp: $n(ne2, oe2) };
      })(e2);
    }
    function pr({ effect: e2, update: t2 }, n2) {
      e2.allowRecurse = t2.allowRecurse = n2;
    }
    function dr(e2, t2, n2 = false) {
      const r2 = e2.children, i2 = t2.children;
      if (d(r2) && d(i2)) for (let o2 = 0; o2 < r2.length; o2++) {
        const e3 = r2[o2];
        let t3 = i2[o2];
        1 & t3.shapeFlag && !t3.dynamicChildren && ((t3.patchFlag <= 0 || 32 === t3.patchFlag) && (t3 = i2[o2] = xr(i2[o2]), t3.el = e3.el), n2 || dr(e3, t3)), t3.type === fr && (t3.el = e3.el);
      }
    }
    const hr = Symbol.for("v-fgt"), fr = Symbol.for("v-txt"), gr = Symbol.for("v-cmt"), vr = Symbol.for("v-stc"), mr = [];
    let yr = null;
    function _r(e2 = false) {
      mr.push(yr = e2 ? null : []);
    }
    let br = 1;
    function Sr(e2) {
      br += e2;
    }
    function Er(e2) {
      return e2.dynamicChildren = br > 0 ? yr || r : null, mr.pop(), yr = mr[mr.length - 1] || null, br > 0 && yr && yr.push(e2), e2;
    }
    function wr(e2, t2, n2, r2, i2) {
      return Er(Nr(e2, t2, n2, r2, i2, true));
    }
    function Tr(e2) {
      return !!e2 && true === e2.__v_isVNode;
    }
    function Ar(e2, t2) {
      return e2.type === t2.type && e2.key === t2.key;
    }
    const Or = "__vInternal", Cr = ({ key: e2 }) => null != e2 ? e2 : null, Ir = ({ ref: e2, ref_key: t2, ref_for: n2 }) => ("number" == typeof e2 && (e2 = "" + e2), null != e2 ? v(e2) || lt(e2) || g(e2) ? { i: Kt, r: e2, k: t2, f: !!n2 } : e2 : null);
    function Rr(e2, t2 = null, n2 = null, r2 = 0, i2 = null, o2 = e2 === hr ? 0 : 1, s2 = false, a2 = false) {
      const c2 = { __v_isVNode: true, __v_skip: true, type: e2, props: t2, key: t2 && Cr(t2), ref: t2 && Ir(t2), scopeId: Vt, slotScopeIds: null, children: n2, component: null, suspense: null, ssContent: null, ssFallback: null, dirs: null, transition: null, el: null, anchor: null, target: null, targetAnchor: null, staticCount: 0, shapeFlag: o2, patchFlag: r2, dynamicProps: i2, dynamicChildren: null, appContext: null, ctx: Kt };
      return a2 ? (Mr(c2, n2), 128 & o2 && e2.normalize(c2)) : n2 && (c2.shapeFlag |= v(n2) ? 8 : 16), br > 0 && !s2 && yr && (c2.patchFlag > 0 || 6 & o2) && 32 !== c2.patchFlag && yr.push(c2), c2;
    }
    const Nr = e("q", (function(e2, t2 = null, n2 = null, r2 = 0, i2 = null, o2 = false) {
      if (e2 && e2 !== Yt || (e2 = gr), Tr(e2)) {
        const r3 = Pr(e2, t2, true);
        return n2 && Mr(r3, n2), br > 0 && !o2 && yr && (6 & r3.shapeFlag ? yr[yr.indexOf(e2)] = r3 : yr.push(r3)), r3.patchFlag |= -2, r3;
      }
      var s2;
      if (g(s2 = e2) && "__vccOpts" in s2 && (e2 = e2.__vccOpts), t2) {
        t2 = (function(e4) {
          return e4 ? rt(e4) || Or in e4 ? c({}, e4) : e4 : null;
        })(t2);
        let { class: e3, style: n3 } = t2;
        e3 && !v(e3) && (t2.class = H(e3)), y(n3) && (rt(n3) && !d(n3) && (n3 = c({}, n3)), t2.style = j(n3));
      }
      const a2 = v(e2) ? 1 : ((e3) => e3.__isSuspense)(e2) ? 128 : ((e3) => e3.__isTeleport)(e2) ? 64 : y(e2) ? 4 : g(e2) ? 2 : 0;
      return Rr(e2, t2, n2, r2, i2, a2, o2, true);
    }));
    function Pr(e2, t2, n2 = false) {
      const { props: r2, ref: i2, patchFlag: o2, children: a2 } = e2, c2 = t2 ? (function(...e3) {
        const t3 = {};
        for (let n3 = 0; n3 < e3.length; n3++) {
          const r3 = e3[n3];
          for (const e4 in r3) if ("class" === e4) t3.class !== r3.class && (t3.class = H([t3.class, r3.class]));
          else if ("style" === e4) t3.style = j([t3.style, r3.style]);
          else if (s(e4)) {
            const n4 = t3[e4], i3 = r3[e4];
            !i3 || n4 === i3 || d(n4) && n4.includes(i3) || (t3[e4] = n4 ? [].concat(n4, i3) : i3);
          } else "" !== e4 && (t3[e4] = r3[e4]);
        }
        return t3;
      })(r2 || {}, t2) : r2;
      return { __v_isVNode: true, __v_skip: true, type: e2.type, props: c2, key: c2 && Cr(c2), ref: t2 && t2.ref ? n2 && i2 ? d(i2) ? i2.concat(Ir(t2)) : [i2, Ir(t2)] : Ir(t2) : i2, scopeId: e2.scopeId, slotScopeIds: e2.slotScopeIds, children: a2, target: e2.target, targetAnchor: e2.targetAnchor, staticCount: e2.staticCount, shapeFlag: e2.shapeFlag, patchFlag: t2 && e2.type !== hr ? -1 === o2 ? 16 : 16 | o2 : o2, dynamicProps: e2.dynamicProps, dynamicChildren: e2.dynamicChildren, appContext: e2.appContext, dirs: e2.dirs, transition: e2.transition, component: e2.component, suspense: e2.suspense, ssContent: e2.ssContent && Pr(e2.ssContent), ssFallback: e2.ssFallback && Pr(e2.ssFallback), el: e2.el, anchor: e2.anchor, ctx: e2.ctx, ce: e2.ce };
    }
    function Dr(e2 = " ", t2 = 0) {
      return Nr(fr, null, e2, t2);
    }
    function kr(e2) {
      return null == e2 || "boolean" == typeof e2 ? Nr(gr) : d(e2) ? Nr(hr, null, e2.slice()) : "object" == typeof e2 ? xr(e2) : Nr(fr, null, String(e2));
    }
    function xr(e2) {
      return null === e2.el && -1 !== e2.patchFlag || e2.memo ? e2 : Pr(e2);
    }
    function Mr(e2, t2) {
      let n2 = 0;
      const { shapeFlag: r2 } = e2;
      if (null == t2) t2 = null;
      else if (d(t2)) n2 = 16;
      else if ("object" == typeof t2) {
        if (65 & r2) {
          const n3 = t2.default;
          return void (n3 && (n3._c && (n3._d = false), Mr(e2, n3()), n3._c && (n3._d = true)));
        }
        {
          n2 = 32;
          const r3 = t2._;
          r3 || Or in t2 ? 3 === r3 && Kt && (1 === Kt.slots._ ? t2._ = 1 : (t2._ = 2, e2.patchFlag |= 1024)) : t2._ctx = Kt;
        }
      } else g(t2) ? (t2 = { default: t2, _ctx: Kt }, n2 = 32) : (t2 = String(t2), 64 & r2 ? (n2 = 16, t2 = [Dr(t2)]) : n2 = 8);
      e2.children = t2, e2.shapeFlag |= n2;
    }
    function Lr(e2, t2, n2, r2 = null) {
      _t(e2, t2, 7, [n2, r2]);
    }
    const Ur = Hn();
    let jr, Fr, Br = 0, Kr = null, Vr = "__VUE_INSTANCE_SETTERS__";
    (Fr = U()[Vr]) || (Fr = U()[Vr] = []), Fr.push(((e2) => Kr = e2)), jr = (e2) => {
      Fr.length > 1 ? Fr.forEach(((t2) => t2(e2))) : Fr[0](e2);
    };
    const Hr = (e2) => {
      jr(e2), e2.scope.on();
    }, Gr = () => {
      Kr && Kr.scope.off(), jr(null);
    };
    function $r(e2) {
      return 4 & e2.vnode.shapeFlag;
    }
    let zr = false;
    function Wr(e2, t2, n2) {
      g(t2) ? e2.type.__ssrInlineRender ? e2.ssrRender = t2 : e2.render = t2 : y(t2) && (e2.setupState = vt(t2)), qr(e2);
    }
    function qr(e2, t2, n2) {
      const r2 = e2.type;
      e2.render || (e2.render = r2.render || i), Hr(e2), ae();
      try {
        Dn(e2);
      } finally {
        ce(), Gr();
      }
    }
    function Qr(e2) {
      if (e2.exposed) return e2.exposeProxy || (e2.exposeProxy = new Proxy(vt(ot(e2.exposed)), { get: (t2, n2) => n2 in t2 ? t2[n2] : n2 in Cn ? Cn[n2](e2) : void 0, has: (e3, t2) => t2 in e3 || t2 in Cn }));
    }
    const Yr = e("a", ((e2, t2) => (function(e3, t3, n2 = false) {
      let r2, o2;
      const s2 = g(e3);
      return s2 ? (r2 = e3, o2 = i) : (r2 = e3.get, o2 = e3.set), new mt(r2, o2, s2 || !o2, n2);
    })(e2, 0, zr)));
    function Jr(e2, t2, n2) {
      const r2 = arguments.length;
      return 2 === r2 ? y(t2) && !d(t2) ? Tr(t2) ? Nr(e2, null, [t2]) : Nr(e2, t2) : Nr(e2, null, t2) : (r2 > 3 ? n2 = Array.prototype.slice.call(arguments, 2) : 3 === r2 && Tr(n2) && (n2 = [n2]), Nr(e2, t2, n2));
    }
    const Xr = Symbol.for("v-scx"), Zr = () => qn(Xr), ei = "3.3.13";
    function ti(e2, t2) {
      const n2 = /* @__PURE__ */ Object.create(null), r2 = e2.split(",");
      for (let i2 = 0; i2 < r2.length; i2++) n2[r2[i2]] = true;
      return t2 ? (e3) => !!n2[e3.toLowerCase()] : (e3) => !!n2[e3];
    }
    const ni = Object.assign, ri = Array.isArray, ii = (e2) => "function" == typeof e2, oi = (e2) => "string" == typeof e2, si = (e2) => {
      const t2 = /* @__PURE__ */ Object.create(null);
      return (n2) => t2[n2] || (t2[n2] = e2(n2));
    }, ai = /\B([A-Z])/g, ci = si(((e2) => e2.replace(ai, "-$1").toLowerCase())), ui = si(((e2) => e2.charAt(0).toUpperCase() + e2.slice(1))), li = ti("itemscope,allowfullscreen,formnovalidate,ismap,nomodule,novalidate,readonly");
    function pi(e2) {
      return !!e2 || "" === e2;
    }
    const di = "undefined" != typeof document ? document : null, hi = di && di.createElement("template"), fi = { insert: (e2, t2, n2) => {
      t2.insertBefore(e2, n2 || null);
    }, remove: (e2) => {
      const t2 = e2.parentNode;
      t2 && t2.removeChild(e2);
    }, createElement: (e2, t2, n2, r2) => {
      const i2 = t2 ? di.createElementNS("http://www.w3.org/2000/svg", e2) : di.createElement(e2, n2 ? { is: n2 } : void 0);
      return "select" === e2 && r2 && null != r2.multiple && i2.setAttribute("multiple", r2.multiple), i2;
    }, createText: (e2) => di.createTextNode(e2), createComment: (e2) => di.createComment(e2), setText: (e2, t2) => {
      e2.nodeValue = t2;
    }, setElementText: (e2, t2) => {
      e2.textContent = t2;
    }, parentNode: (e2) => e2.parentNode, nextSibling: (e2) => e2.nextSibling, querySelector: (e2) => di.querySelector(e2), setScopeId(e2, t2) {
      e2.setAttribute(t2, "");
    }, insertStaticContent(e2, t2, n2, r2, i2, o2) {
      const s2 = n2 ? n2.previousSibling : t2.lastChild;
      if (i2 && (i2 === o2 || i2.nextSibling)) for (; t2.insertBefore(i2.cloneNode(true), n2), i2 !== o2 && (i2 = i2.nextSibling); ) ;
      else {
        hi.innerHTML = r2 ? `<svg>${e2}</svg>` : e2;
        const i3 = hi.content;
        if (r2) {
          const e3 = i3.firstChild;
          for (; e3.firstChild; ) i3.appendChild(e3.firstChild);
          i3.removeChild(e3);
        }
        t2.insertBefore(i3, n2);
      }
      return [s2 ? s2.nextSibling : t2.firstChild, n2 ? n2.previousSibling : t2.lastChild];
    } }, gi = Symbol("_vtc"), vi = Symbol("_vod"), mi = Symbol(""), yi = /\s*!important$/;
    function _i(e2, t2, n2) {
      if (ri(n2)) n2.forEach(((n3) => _i(e2, t2, n3)));
      else if (null == n2 && (n2 = ""), t2.startsWith("--")) e2.setProperty(t2, n2);
      else {
        const r2 = (function(e3, t3) {
          const n3 = Si[t3];
          if (n3) return n3;
          let r3 = C(t3);
          if ("filter" !== r3 && r3 in e3) return Si[t3] = r3;
          r3 = ui(r3);
          for (let i2 = 0; i2 < bi.length; i2++) {
            const n4 = bi[i2] + r3;
            if (n4 in e3) return Si[t3] = n4;
          }
          return t3;
        })(e2, t2);
        yi.test(n2) ? e2.setProperty(ci(r2), n2.replace(yi, ""), "important") : e2[r2] = n2;
      }
    }
    const bi = ["Webkit", "Moz", "ms"], Si = {}, Ei = "http://www.w3.org/1999/xlink", wi = Symbol("_vei");
    function Ti(e2, t2, n2, r2, i2 = null) {
      const o2 = e2[wi] || (e2[wi] = {}), s2 = o2[t2];
      if (r2 && s2) s2.value = r2;
      else {
        const [n3, a2] = (function(e3) {
          let t3;
          if (Ai.test(e3)) {
            let n4;
            for (t3 = {}; n4 = e3.match(Ai); ) e3 = e3.slice(0, e3.length - n4[0].length), t3[n4[0].toLowerCase()] = true;
          }
          return [":" === e3[2] ? e3.slice(3) : ci(e3.slice(2)), t3];
        })(t2);
        if (r2) {
          const s3 = o2[t2] = (function(e3, t3) {
            const n4 = (e4) => {
              if (e4._vts) {
                if (e4._vts <= n4.attached) return;
              } else e4._vts = Date.now();
              _t((function(e5, t4) {
                if (ri(t4)) {
                  const n5 = e5.stopImmediatePropagation;
                  return e5.stopImmediatePropagation = () => {
                    n5.call(e5), e5._stopped = true;
                  }, t4.map(((e6) => (t5) => !t5._stopped && e6 && e6(t5)));
                }
                return t4;
              })(e4, n4.value), t3, 5, [e4]);
            };
            return n4.value = e3, n4.attached = Oi || (Ci.then((() => Oi = 0)), Oi = Date.now()), n4;
          })(r2, i2);
          !(function(e3, t3, n4, r3) {
            e3.addEventListener(t3, n4, r3);
          })(e2, n3, s3, a2);
        } else s2 && ((function(e3, t3, n4, r3) {
          e3.removeEventListener(t3, n4, r3);
        })(e2, n3, s2, a2), o2[t2] = void 0);
      }
    }
    const Ai = /(?:Once|Passive|Capture)$/;
    let Oi = 0;
    const Ci = Promise.resolve(), Ii = (e2) => 111 === e2.charCodeAt(0) && 110 === e2.charCodeAt(1) && e2.charCodeAt(2) > 96 && e2.charCodeAt(2) < 123, Ri = ["ctrl", "shift", "alt", "meta"], Ni = { stop: (e2) => e2.stopPropagation(), prevent: (e2) => e2.preventDefault(), self: (e2) => e2.target !== e2.currentTarget, ctrl: (e2) => !e2.ctrlKey, shift: (e2) => !e2.shiftKey, alt: (e2) => !e2.altKey, meta: (e2) => !e2.metaKey, left: (e2) => "button" in e2 && 0 !== e2.button, middle: (e2) => "button" in e2 && 1 !== e2.button, right: (e2) => "button" in e2 && 2 !== e2.button, exact: (e2, t2) => Ri.some(((n2) => e2[`${n2}Key`] && !t2.includes(n2))) }, Pi = (e("E", ((e2, t2) => {
      const n2 = e2._withMods || (e2._withMods = {}), r2 = t2.join(".");
      return n2[r2] || (n2[r2] = (n3, ...r3) => {
        for (let e3 = 0; e3 < t2.length; e3++) {
          const r4 = Ni[t2[e3]];
          if (r4 && r4(n3, t2)) return;
        }
        return e2(n3, ...r3);
      });
    })), ni({ patchProp: (e2, t2, n2, r2, i2 = false, o2, s2, a2, c2) => {
      "class" === t2 ? (function(e3, t3, n3) {
        const r3 = e3[gi];
        r3 && (t3 = (t3 ? [t3, ...r3] : [...r3]).join(" ")), null == t3 ? e3.removeAttribute("class") : n3 ? e3.setAttribute("class", t3) : e3.className = t3;
      })(e2, r2, i2) : "style" === t2 ? (function(e3, t3, n3) {
        const r3 = e3.style, i3 = oi(n3);
        if (n3 && !i3) {
          if (t3 && !oi(t3)) for (const e4 in t3) null == n3[e4] && _i(r3, e4, "");
          for (const e4 in n3) _i(r3, e4, n3[e4]);
        } else {
          const o3 = r3.display;
          if (i3) {
            if (t3 !== n3) {
              const e4 = r3[mi];
              e4 && (n3 += ";" + e4), r3.cssText = n3;
            }
          } else t3 && e3.removeAttribute("style");
          vi in e3 && (r3.display = o3);
        }
      })(e2, n2, r2) : ((e3) => 111 === e3.charCodeAt(0) && 110 === e3.charCodeAt(1) && (e3.charCodeAt(2) > 122 || e3.charCodeAt(2) < 97))(t2) ? ((e3) => e3.startsWith("onUpdate:"))(t2) || Ti(e2, t2, 0, r2, s2) : ("." === t2[0] ? (t2 = t2.slice(1), 1) : "^" === t2[0] ? (t2 = t2.slice(1), 0) : (function(e3, t3, n3, r3) {
        if (r3) return "innerHTML" === t3 || "textContent" === t3 || !!(t3 in e3 && Ii(t3) && ii(n3));
        if ("spellcheck" === t3 || "draggable" === t3 || "translate" === t3) return false;
        if ("form" === t3) return false;
        if ("list" === t3 && "INPUT" === e3.tagName) return false;
        if ("type" === t3 && "TEXTAREA" === e3.tagName) return false;
        if ("width" === t3 || "height" === t3) {
          const t4 = e3.tagName;
          if ("IMG" === t4 || "VIDEO" === t4 || "CANVAS" === t4 || "SOURCE" === t4) return false;
        }
        return (!Ii(t3) || !oi(n3)) && t3 in e3;
      })(e2, t2, r2, i2)) ? (function(e3, t3, n3, r3, i3, o3, s3) {
        if ("innerHTML" === t3 || "textContent" === t3) return r3 && s3(r3, i3, o3), void (e3[t3] = null == n3 ? "" : n3);
        const a3 = e3.tagName;
        if ("value" === t3 && "PROGRESS" !== a3 && !a3.includes("-")) {
          e3._value = n3;
          const r4 = null == n3 ? "" : n3;
          return ("OPTION" === a3 ? e3.getAttribute("value") : e3.value) !== r4 && (e3.value = r4), void (null == n3 && e3.removeAttribute(t3));
        }
        let c3 = false;
        if ("" === n3 || null == n3) {
          const r4 = typeof e3[t3];
          "boolean" === r4 ? n3 = pi(n3) : null == n3 && "string" === r4 ? (n3 = "", c3 = true) : "number" === r4 && (n3 = 0, c3 = true);
        }
        try {
          e3[t3] = n3;
        } catch (u2) {
        }
        c3 && e3.removeAttribute(t3);
      })(e2, t2, r2, o2, s2, a2, c2) : ("true-value" === t2 ? e2._trueValue = r2 : "false-value" === t2 && (e2._falseValue = r2), (function(e3, t3, n3, r3, i3) {
        if (r3 && t3.startsWith("xlink:")) null == n3 ? e3.removeAttributeNS(Ei, t3.slice(6, t3.length)) : e3.setAttributeNS(Ei, t3, n3);
        else {
          const r4 = li(t3);
          null == n3 || r4 && !pi(n3) ? e3.removeAttribute(t3) : e3.setAttribute(t3, r4 ? "" : n3);
        }
      })(e2, t2, r2, i2));
    } }, fi));
    let Di;
    e("H", ((...e2) => {
      const t2 = (Di || (Di = lr(Pi))).createApp(...e2), { mount: n2 } = t2;
      return t2.mount = (e3) => {
        const r2 = (function(e4) {
          return oi(e4) ? document.querySelector(e4) : e4;
        })(e3);
        if (!r2) return;
        const i2 = t2._component;
        ii(i2) || i2.render || i2.template || (i2.template = r2.innerHTML), r2.innerHTML = "";
        const o2 = n2(r2, false, r2 instanceof SVGElement);
        return r2 instanceof Element && (r2.removeAttribute("v-cloak"), r2.setAttribute("data-v-app", "")), o2;
      }, t2;
    }));
    var ki = "undefined" != typeof globalThis && globalThis || "undefined" != typeof self && self || void 0 !== ki && ki, xi = "URLSearchParams" in ki, Mi = "Symbol" in ki && "iterator" in Symbol, Li = "FileReader" in ki && "Blob" in ki && (function() {
      try {
        return new Blob(), true;
      } catch (e2) {
        return false;
      }
    })(), Ui = "FormData" in ki, ji = "ArrayBuffer" in ki;
    if (ji) var Fi = ["[object Int8Array]", "[object Uint8Array]", "[object Uint8ClampedArray]", "[object Int16Array]", "[object Uint16Array]", "[object Int32Array]", "[object Uint32Array]", "[object Float32Array]", "[object Float64Array]"], Bi = ArrayBuffer.isView || function(e2) {
      return e2 && Fi.indexOf(Object.prototype.toString.call(e2)) > -1;
    };
    function Ki(e2) {
      if ("string" != typeof e2 && (e2 = String(e2)), /[^a-z0-9\-#$%&'*+.^_`|~!]/i.test(e2) || "" === e2) throw new TypeError('Invalid character in header field name: "' + e2 + '"');
      return e2.toLowerCase();
    }
    function Vi(e2) {
      return "string" != typeof e2 && (e2 = String(e2)), e2;
    }
    function Hi(e2) {
      var t2 = { next: function() {
        var t3 = e2.shift();
        return { done: void 0 === t3, value: t3 };
      } };
      return Mi && (t2[Symbol.iterator] = function() {
        return t2;
      }), t2;
    }
    function Gi(e2) {
      this.map = {}, e2 instanceof Gi ? e2.forEach((function(e3, t2) {
        this.append(t2, e3);
      }), this) : Array.isArray(e2) ? e2.forEach((function(e3) {
        this.append(e3[0], e3[1]);
      }), this) : e2 && Object.getOwnPropertyNames(e2).forEach((function(t2) {
        this.append(t2, e2[t2]);
      }), this);
    }
    function $i(e2) {
      if (e2.bodyUsed) return Promise.reject(new TypeError("Already read"));
      e2.bodyUsed = true;
    }
    function zi(e2) {
      return new Promise((function(t2, n2) {
        e2.onload = function() {
          t2(e2.result);
        }, e2.onerror = function() {
          n2(e2.error);
        };
      }));
    }
    function Wi(e2) {
      var t2 = new FileReader(), n2 = zi(t2);
      return t2.readAsArrayBuffer(e2), n2;
    }
    function qi(e2) {
      if (e2.slice) return e2.slice(0);
      var t2 = new Uint8Array(e2.byteLength);
      return t2.set(new Uint8Array(e2)), t2.buffer;
    }
    function Qi() {
      return this.bodyUsed = false, this._initBody = function(e2) {
        var t2;
        this.bodyUsed = this.bodyUsed, this._bodyInit = e2, e2 ? "string" == typeof e2 ? this._bodyText = e2 : Li && Blob.prototype.isPrototypeOf(e2) ? this._bodyBlob = e2 : Ui && FormData.prototype.isPrototypeOf(e2) ? this._bodyFormData = e2 : xi && URLSearchParams.prototype.isPrototypeOf(e2) ? this._bodyText = e2.toString() : ji && Li && (t2 = e2) && DataView.prototype.isPrototypeOf(t2) ? (this._bodyArrayBuffer = qi(e2.buffer), this._bodyInit = new Blob([this._bodyArrayBuffer])) : ji && (ArrayBuffer.prototype.isPrototypeOf(e2) || Bi(e2)) ? this._bodyArrayBuffer = qi(e2) : this._bodyText = e2 = Object.prototype.toString.call(e2) : this._bodyText = "", this.headers.get("content-type") || ("string" == typeof e2 ? this.headers.set("content-type", "text/plain;charset=UTF-8") : this._bodyBlob && this._bodyBlob.type ? this.headers.set("content-type", this._bodyBlob.type) : xi && URLSearchParams.prototype.isPrototypeOf(e2) && this.headers.set("content-type", "application/x-www-form-urlencoded;charset=UTF-8"));
      }, Li && (this.blob = function() {
        var e2 = $i(this);
        if (e2) return e2;
        if (this._bodyBlob) return Promise.resolve(this._bodyBlob);
        if (this._bodyArrayBuffer) return Promise.resolve(new Blob([this._bodyArrayBuffer]));
        if (this._bodyFormData) throw new Error("could not read FormData body as blob");
        return Promise.resolve(new Blob([this._bodyText]));
      }, this.arrayBuffer = function() {
        if (this._bodyArrayBuffer) {
          var e2 = $i(this);
          return e2 || (ArrayBuffer.isView(this._bodyArrayBuffer) ? Promise.resolve(this._bodyArrayBuffer.buffer.slice(this._bodyArrayBuffer.byteOffset, this._bodyArrayBuffer.byteOffset + this._bodyArrayBuffer.byteLength)) : Promise.resolve(this._bodyArrayBuffer));
        }
        return this.blob().then(Wi);
      }), this.text = function() {
        var e2, t2, n2, r2 = $i(this);
        if (r2) return r2;
        if (this._bodyBlob) return e2 = this._bodyBlob, t2 = new FileReader(), n2 = zi(t2), t2.readAsText(e2), n2;
        if (this._bodyArrayBuffer) return Promise.resolve((function(e3) {
          for (var t3 = new Uint8Array(e3), n3 = new Array(t3.length), r3 = 0; r3 < t3.length; r3++) n3[r3] = String.fromCharCode(t3[r3]);
          return n3.join("");
        })(this._bodyArrayBuffer));
        if (this._bodyFormData) throw new Error("could not read FormData body as text");
        return Promise.resolve(this._bodyText);
      }, Ui && (this.formData = function() {
        return this.text().then(Xi);
      }), this.json = function() {
        return this.text().then(JSON.parse);
      }, this;
    }
    Gi.prototype.append = function(e2, t2) {
      e2 = Ki(e2), t2 = Vi(t2);
      var n2 = this.map[e2];
      this.map[e2] = n2 ? n2 + ", " + t2 : t2;
    }, Gi.prototype.delete = function(e2) {
      delete this.map[Ki(e2)];
    }, Gi.prototype.get = function(e2) {
      return e2 = Ki(e2), this.has(e2) ? this.map[e2] : null;
    }, Gi.prototype.has = function(e2) {
      return this.map.hasOwnProperty(Ki(e2));
    }, Gi.prototype.set = function(e2, t2) {
      this.map[Ki(e2)] = Vi(t2);
    }, Gi.prototype.forEach = function(e2, t2) {
      for (var n2 in this.map) this.map.hasOwnProperty(n2) && e2.call(t2, this.map[n2], n2, this);
    }, Gi.prototype.keys = function() {
      var e2 = [];
      return this.forEach((function(t2, n2) {
        e2.push(n2);
      })), Hi(e2);
    }, Gi.prototype.values = function() {
      var e2 = [];
      return this.forEach((function(t2) {
        e2.push(t2);
      })), Hi(e2);
    }, Gi.prototype.entries = function() {
      var e2 = [];
      return this.forEach((function(t2, n2) {
        e2.push([n2, t2]);
      })), Hi(e2);
    }, Mi && (Gi.prototype[Symbol.iterator] = Gi.prototype.entries);
    var Yi = ["DELETE", "GET", "HEAD", "OPTIONS", "POST", "PUT"];
    function Ji(e2, t2) {
      if (!(this instanceof Ji)) throw new TypeError('Please use the "new" operator, this DOM object constructor cannot be called as a function.');
      var n2, r2, i2 = (t2 = t2 || {}).body;
      if (e2 instanceof Ji) {
        if (e2.bodyUsed) throw new TypeError("Already read");
        this.url = e2.url, this.credentials = e2.credentials, t2.headers || (this.headers = new Gi(e2.headers)), this.method = e2.method, this.mode = e2.mode, this.signal = e2.signal, i2 || null == e2._bodyInit || (i2 = e2._bodyInit, e2.bodyUsed = true);
      } else this.url = String(e2);
      if (this.credentials = t2.credentials || this.credentials || "same-origin", !t2.headers && this.headers || (this.headers = new Gi(t2.headers)), this.method = (n2 = t2.method || this.method || "GET", r2 = n2.toUpperCase(), Yi.indexOf(r2) > -1 ? r2 : n2), this.mode = t2.mode || this.mode || null, this.signal = t2.signal || this.signal, this.referrer = null, ("GET" === this.method || "HEAD" === this.method) && i2) throw new TypeError("Body not allowed for GET or HEAD requests");
      if (this._initBody(i2), !("GET" !== this.method && "HEAD" !== this.method || "no-store" !== t2.cache && "no-cache" !== t2.cache)) {
        var o2 = /([?&])_=[^&]*/;
        o2.test(this.url) ? this.url = this.url.replace(o2, "$1_=" + (/* @__PURE__ */ new Date()).getTime()) : this.url += (/\?/.test(this.url) ? "&" : "?") + "_=" + (/* @__PURE__ */ new Date()).getTime();
      }
    }
    function Xi(e2) {
      var t2 = new FormData();
      return e2.trim().split("&").forEach((function(e3) {
        if (e3) {
          var n2 = e3.split("="), r2 = n2.shift().replace(/\+/g, " "), i2 = n2.join("=").replace(/\+/g, " ");
          t2.append(decodeURIComponent(r2), decodeURIComponent(i2));
        }
      })), t2;
    }
    function Zi(e2, t2) {
      if (!(this instanceof Zi)) throw new TypeError('Please use the "new" operator, this DOM object constructor cannot be called as a function.');
      t2 || (t2 = {}), this.type = "default", this.status = void 0 === t2.status ? 200 : t2.status, this.ok = this.status >= 200 && this.status < 300, this.statusText = void 0 === t2.statusText ? "" : "" + t2.statusText, this.headers = new Gi(t2.headers), this.url = t2.url || "", this._initBody(e2);
    }
    Ji.prototype.clone = function() {
      return new Ji(this, { body: this._bodyInit });
    }, Qi.call(Ji.prototype), Qi.call(Zi.prototype), Zi.prototype.clone = function() {
      return new Zi(this._bodyInit, { status: this.status, statusText: this.statusText, headers: new Gi(this.headers), url: this.url });
    }, Zi.error = function() {
      var e2 = new Zi(null, { status: 0, statusText: "" });
      return e2.type = "error", e2;
    };
    var eo = [301, 302, 303, 307, 308];
    Zi.redirect = function(e2, t2) {
      if (-1 === eo.indexOf(t2)) throw new RangeError("Invalid status code");
      return new Zi(null, { status: t2, headers: { location: e2 } });
    };
    var to = ki.DOMException;
    try {
      new to();
    } catch (xd) {
      to = function(e2, t2) {
        this.message = e2, this.name = t2;
        var n2 = Error(e2);
        this.stack = n2.stack;
      }, to.prototype = Object.create(Error.prototype), to.prototype.constructor = to;
    }
    function no(e2, t2) {
      return new Promise((function(n2, r2) {
        var i2 = new Ji(e2, t2);
        if (i2.signal && i2.signal.aborted) return r2(new to("Aborted", "AbortError"));
        var o2 = new XMLHttpRequest();
        function s2() {
          o2.abort();
        }
        o2.onload = function() {
          var e3, t3, r3 = { status: o2.status, statusText: o2.statusText, headers: (e3 = o2.getAllResponseHeaders() || "", t3 = new Gi(), e3.replace(/\r?\n[\t ]+/g, " ").split("\r").map((function(e4) {
            return 0 === e4.indexOf("\n") ? e4.substr(1, e4.length) : e4;
          })).forEach((function(e4) {
            var n3 = e4.split(":"), r4 = n3.shift().trim();
            if (r4) {
              var i4 = n3.join(":").trim();
              t3.append(r4, i4);
            }
          })), t3) };
          r3.url = "responseURL" in o2 ? o2.responseURL : r3.headers.get("X-Request-URL");
          var i3 = "response" in o2 ? o2.response : o2.responseText;
          setTimeout((function() {
            n2(new Zi(i3, r3));
          }), 0);
        }, o2.onerror = function() {
          setTimeout((function() {
            r2(new TypeError("Network request failed"));
          }), 0);
        }, o2.ontimeout = function() {
          setTimeout((function() {
            r2(new TypeError("Network request failed"));
          }), 0);
        }, o2.onabort = function() {
          setTimeout((function() {
            r2(new to("Aborted", "AbortError"));
          }), 0);
        }, o2.open(i2.method, (function(e3) {
          try {
            return "" === e3 && ki.location.href ? ki.location.href : e3;
          } catch (t3) {
            return e3;
          }
        })(i2.url), true), "include" === i2.credentials ? o2.withCredentials = true : "omit" === i2.credentials && (o2.withCredentials = false), "responseType" in o2 && (Li ? o2.responseType = "blob" : ji && i2.headers.get("Content-Type") && -1 !== i2.headers.get("Content-Type").indexOf("application/octet-stream") && (o2.responseType = "arraybuffer")), !t2 || "object" != typeof t2.headers || t2.headers instanceof Gi ? i2.headers.forEach((function(e3, t3) {
          o2.setRequestHeader(t3, e3);
        })) : Object.getOwnPropertyNames(t2.headers).forEach((function(e3) {
          o2.setRequestHeader(e3, Vi(t2.headers[e3]));
        })), i2.signal && (i2.signal.addEventListener("abort", s2), o2.onreadystatechange = function() {
          4 === o2.readyState && i2.signal.removeEventListener("abort", s2);
        }), o2.send(void 0 === i2._bodyInit ? null : i2._bodyInit);
      }));
    }
    no.polyfill = true, ki.fetch || (ki.fetch = no, ki.Headers = Gi, ki.Request = Ji, ki.Response = Zi), e("s", ["ar-dz", "ar-bh", "ar-eg", "ar-iq", "ar-jo", "ar-kw", "ar-lb", "ar-ly", "ar-ma", "ar-om", "ar-qa", "ar-sa", "ar-sd", "ar-sy", "ar-tn", "ar-ae", "ar-ye", "bn-bd", "he-il", "iw-il", "ca-es", "cs-cz", "da-dk", "de-ch", "de-de", "el-gr", "en-au", "en-ca", "en-gb", "en-us", "es-419", "es-es", "es-mx", "es-xl", "et-ee", "fi-fi", "fr-ca", "fr-fr", "gu-in", "hi-in", "hr-hr", "hu-hu", "id-id", "is-is", "it-it", "iw-il", "ja-jp", "kn-in", "ko-kr", "lt-lt", "lv-lv", "ml-in", "mr-in", "ms-my", "nl-nl", "no-no", "no-nb", "nb-no", "or-in", "pa-in", "pl-pl", "pt-br", "pt-pt", "ro-ro", "ru-ru", "sk-sk", "sl-si", "sv-se", "ta-in", "te-in", "th-th", "tr-tr", "uk-ua", "ur-pk", "vi-vi", "vi-vn", "zh-cn", "zh-hans", "zh-hans-cn", "zh-hant", "zh-hant-hk", "zh-hant-tw", "zh-hk", "zh-tw", "ar", "bn", "ca", "cs", "da", "de", "el", "en", "es", "fi", "fr", "gu", "he", "hi", "hr", "hu", "id", "is", "it", "ja", "kn", "ko", "lt", "lv", "ml", "mr", "ms", "nb", "nl", "no", "or", "pa", "pl", "pt", "ro", "ru", "sk", "sl", "sv", "ta", "te", "th", "tr", "uk", "ur", "vi", "zh"]);
    const ro = Object.prototype.toString;
    function io(e2) {
      return (function(e3, t2) {
        return ro.call(e3) === `[object ${t2}]`;
      })(e2, "Object");
    }
    function oo(e2) {
      return Boolean(e2 && e2.then && "function" == typeof e2.then);
    }
    function so(e2) {
      return e2 && e2.Math == Math ? e2 : void 0;
    }
    const ao = "object" == typeof globalThis && so(globalThis) || "object" == typeof window && so(window) || "object" == typeof self && so(self) || "object" == typeof global && so(global) || /* @__PURE__ */ (function() {
      return this;
    })() || {};
    function co(e2, t2, n2) {
      const r2 = n2 || ao, i2 = r2.__SENTRY__ = r2.__SENTRY__ || {};
      return i2[e2] || (i2[e2] = t2());
    }
    const uo = ["debug", "info", "warn", "error", "log", "assert", "trace"];
    function lo(e2) {
      if (!("console" in ao)) return e2();
      const t2 = ao.console, n2 = {};
      uo.forEach(((e3) => {
        const r2 = t2[e3] && t2[e3].__sentry_original__;
        e3 in t2 && r2 && (n2[e3] = t2[e3], t2[e3] = r2);
      }));
      try {
        return e2();
      } finally {
        Object.keys(n2).forEach(((e3) => {
          t2[e3] = n2[e3];
        }));
      }
    }
    function po() {
      let e2 = false;
      const t2 = { enable: () => {
        e2 = true;
      }, disable: () => {
        e2 = false;
      } };
      return "undefined" == typeof __SENTRY_DEBUG__ || __SENTRY_DEBUG__ ? uo.forEach(((n2) => {
        t2[n2] = (...t3) => {
          e2 && lo((() => {
            ao.console[n2](`Sentry Logger [${n2}]:`, ...t3);
          }));
        };
      })) : uo.forEach(((e3) => {
        t2[e3] = () => {
        };
      })), t2;
    }
    let ho;
    function fo(e2) {
      return go(e2, /* @__PURE__ */ new Map());
    }
    function go(e2, t2) {
      if (io(e2)) {
        const n2 = t2.get(e2);
        if (void 0 !== n2) return n2;
        const r2 = {};
        t2.set(e2, r2);
        for (const i2 of Object.keys(e2)) void 0 !== e2[i2] && (r2[i2] = go(e2[i2], t2));
        return r2;
      }
      if (Array.isArray(e2)) {
        const n2 = t2.get(e2);
        if (void 0 !== n2) return n2;
        const r2 = [];
        return t2.set(e2, r2), e2.forEach(((e3) => {
          r2.push(go(e3, t2));
        })), r2;
      }
      return e2;
    }
    function vo() {
      const e2 = ao, t2 = e2.crypto || e2.msCrypto;
      if (t2 && t2.randomUUID) return t2.randomUUID().replace(/-/g, "");
      const n2 = t2 && t2.getRandomValues ? () => t2.getRandomValues(new Uint8Array(1))[0] : () => 16 * Math.random();
      return ("10000000100040008000" + 1e11).replace(/[018]/g, ((e3) => (e3 ^ (15 & n2()) >> e3 / 4).toString(16)));
    }
    var mo;
    ho = "undefined" == typeof __SENTRY_DEBUG__ || __SENTRY_DEBUG__ ? co("logger", po) : po(), (function(e2) {
      e2[e2.PENDING = 0] = "PENDING", e2[e2.RESOLVED = 1] = "RESOLVED", e2[e2.REJECTED = 2] = "REJECTED";
    })(mo || (mo = {}));
    class yo {
      __init() {
        this._state = mo.PENDING;
      }
      __init2() {
        this._handlers = [];
      }
      constructor(e2) {
        yo.prototype.__init.call(this), yo.prototype.__init2.call(this), yo.prototype.__init3.call(this), yo.prototype.__init4.call(this), yo.prototype.__init5.call(this), yo.prototype.__init6.call(this);
        try {
          e2(this._resolve, this._reject);
        } catch (t2) {
          this._reject(t2);
        }
      }
      then(e2, t2) {
        return new yo(((n2, r2) => {
          this._handlers.push([false, (t3) => {
            if (e2) try {
              n2(e2(t3));
            } catch (i2) {
              r2(i2);
            }
            else n2(t3);
          }, (e3) => {
            if (t2) try {
              n2(t2(e3));
            } catch (i2) {
              r2(i2);
            }
            else r2(e3);
          }]), this._executeHandlers();
        }));
      }
      catch(e2) {
        return this.then(((e3) => e3), e2);
      }
      finally(e2) {
        return new yo(((t2, n2) => {
          let r2, i2;
          return this.then(((t3) => {
            i2 = false, r2 = t3, e2 && e2();
          }), ((t3) => {
            i2 = true, r2 = t3, e2 && e2();
          })).then((() => {
            i2 ? n2(r2) : t2(r2);
          }));
        }));
      }
      __init3() {
        this._resolve = (e2) => {
          this._setResult(mo.RESOLVED, e2);
        };
      }
      __init4() {
        this._reject = (e2) => {
          this._setResult(mo.REJECTED, e2);
        };
      }
      __init5() {
        this._setResult = (e2, t2) => {
          this._state === mo.PENDING && (oo(t2) ? t2.then(this._resolve, this._reject) : (this._state = e2, this._value = t2, this._executeHandlers()));
        };
      }
      __init6() {
        this._executeHandlers = () => {
          if (this._state === mo.PENDING) return;
          const e2 = this._handlers.slice();
          this._handlers = [], e2.forEach(((e3) => {
            e3[0] || (this._state === mo.RESOLVED && e3[1](this._value), this._state === mo.REJECTED && e3[2](this._value), e3[0] = true);
          }));
        };
      }
    }
    const _o = ao, bo = { nowSeconds: () => Date.now() / 1e3 }, So = "undefined" != typeof __SENTRY_BROWSER_BUNDLE__ && __SENTRY_BROWSER_BUNDLE__ || "[object process]" !== Object.prototype.toString.call("undefined" != typeof process ? process : 0) ? (function() {
      const { performance: e2 } = _o;
      if (e2 && e2.now) return { now: () => e2.now(), timeOrigin: Date.now() - e2.now() };
    })() : (function() {
      try {
        return (e2 = module, t2 = "perf_hooks", e2.require(t2)).performance;
      } catch (n2) {
        return;
      }
      var e2, t2;
    })(), Eo = void 0 === So ? bo : { nowSeconds: () => (So.timeOrigin + So.now()) / 1e3 }, wo = bo.nowSeconds.bind(bo), To = Eo.nowSeconds.bind(Eo);
    (() => {
      const { performance: e2 } = _o;
      if (!e2 || !e2.now) return;
      const t2 = 36e5, n2 = e2.now(), r2 = Date.now(), i2 = e2.timeOrigin ? Math.abs(e2.timeOrigin + n2 - r2) : t2, o2 = i2 < t2, s2 = e2.timing && e2.timing.navigationStart, a2 = "number" == typeof s2 ? Math.abs(s2 + n2 - r2) : t2;
      (o2 || a2 < t2) && i2 <= a2 && e2.timeOrigin;
    })();
    const Ao = "production";
    function Oo(e2) {
      const t2 = To(), n2 = { sid: vo(), init: true, timestamp: t2, started: t2, duration: 0, status: "ok", errors: 0, ignoreDuration: false, toJSON: () => (function(e3) {
        return fo({ sid: `${e3.sid}`, init: e3.init, started: new Date(1e3 * e3.started).toISOString(), timestamp: new Date(1e3 * e3.timestamp).toISOString(), status: e3.status, errors: e3.errors, did: "number" == typeof e3.did || "string" == typeof e3.did ? `${e3.did}` : void 0, duration: e3.duration, attrs: { release: e3.release, environment: e3.environment, ip_address: e3.ipAddress, user_agent: e3.userAgent } });
      })(n2) };
      return e2 && Co(n2, e2), n2;
    }
    function Co(e2, t2 = {}) {
      if (t2.user && (!e2.ipAddress && t2.user.ip_address && (e2.ipAddress = t2.user.ip_address), e2.did || t2.did || (e2.did = t2.user.id || t2.user.email || t2.user.username)), e2.timestamp = t2.timestamp || To(), t2.ignoreDuration && (e2.ignoreDuration = t2.ignoreDuration), t2.sid && (e2.sid = 32 === t2.sid.length ? t2.sid : vo()), void 0 !== t2.init && (e2.init = t2.init), !e2.did && t2.did && (e2.did = `${t2.did}`), "number" == typeof t2.started && (e2.started = t2.started), e2.ignoreDuration) e2.duration = void 0;
      else if ("number" == typeof t2.duration) e2.duration = t2.duration;
      else {
        const t3 = e2.timestamp - e2.started;
        e2.duration = t3 >= 0 ? t3 : 0;
      }
      t2.release && (e2.release = t2.release), t2.environment && (e2.environment = t2.environment), !e2.ipAddress && t2.ipAddress && (e2.ipAddress = t2.ipAddress), !e2.userAgent && t2.userAgent && (e2.userAgent = t2.userAgent), "number" == typeof t2.errors && (e2.errors = t2.errors), t2.status && (e2.status = t2.status);
    }
    class Io {
      constructor() {
        this._notifyingListeners = false, this._scopeListeners = [], this._eventProcessors = [], this._breadcrumbs = [], this._attachments = [], this._user = {}, this._tags = {}, this._extra = {}, this._contexts = {}, this._sdkProcessingMetadata = {};
      }
      static clone(e2) {
        const t2 = new Io();
        return e2 && (t2._breadcrumbs = [...e2._breadcrumbs], t2._tags = { ...e2._tags }, t2._extra = { ...e2._extra }, t2._contexts = { ...e2._contexts }, t2._user = e2._user, t2._level = e2._level, t2._span = e2._span, t2._session = e2._session, t2._transactionName = e2._transactionName, t2._fingerprint = e2._fingerprint, t2._eventProcessors = [...e2._eventProcessors], t2._requestSession = e2._requestSession, t2._attachments = [...e2._attachments], t2._sdkProcessingMetadata = { ...e2._sdkProcessingMetadata }), t2;
      }
      addScopeListener(e2) {
        this._scopeListeners.push(e2);
      }
      addEventProcessor(e2) {
        return this._eventProcessors.push(e2), this;
      }
      setUser(e2) {
        return this._user = e2 || {}, this._session && Co(this._session, { user: e2 }), this._notifyScopeListeners(), this;
      }
      getUser() {
        return this._user;
      }
      getRequestSession() {
        return this._requestSession;
      }
      setRequestSession(e2) {
        return this._requestSession = e2, this;
      }
      setTags(e2) {
        return this._tags = { ...this._tags, ...e2 }, this._notifyScopeListeners(), this;
      }
      setTag(e2, t2) {
        return this._tags = { ...this._tags, [e2]: t2 }, this._notifyScopeListeners(), this;
      }
      setExtras(e2) {
        return this._extra = { ...this._extra, ...e2 }, this._notifyScopeListeners(), this;
      }
      setExtra(e2, t2) {
        return this._extra = { ...this._extra, [e2]: t2 }, this._notifyScopeListeners(), this;
      }
      setFingerprint(e2) {
        return this._fingerprint = e2, this._notifyScopeListeners(), this;
      }
      setLevel(e2) {
        return this._level = e2, this._notifyScopeListeners(), this;
      }
      setTransactionName(e2) {
        return this._transactionName = e2, this._notifyScopeListeners(), this;
      }
      setContext(e2, t2) {
        return null === t2 ? delete this._contexts[e2] : this._contexts[e2] = t2, this._notifyScopeListeners(), this;
      }
      setSpan(e2) {
        return this._span = e2, this._notifyScopeListeners(), this;
      }
      getSpan() {
        return this._span;
      }
      getTransaction() {
        const e2 = this.getSpan();
        return e2 && e2.transaction;
      }
      setSession(e2) {
        return e2 ? this._session = e2 : delete this._session, this._notifyScopeListeners(), this;
      }
      getSession() {
        return this._session;
      }
      update(e2) {
        if (!e2) return this;
        if ("function" == typeof e2) {
          const t2 = e2(this);
          return t2 instanceof Io ? t2 : this;
        }
        return e2 instanceof Io ? (this._tags = { ...this._tags, ...e2._tags }, this._extra = { ...this._extra, ...e2._extra }, this._contexts = { ...this._contexts, ...e2._contexts }, e2._user && Object.keys(e2._user).length && (this._user = e2._user), e2._level && (this._level = e2._level), e2._fingerprint && (this._fingerprint = e2._fingerprint), e2._requestSession && (this._requestSession = e2._requestSession)) : io(e2) && (e2 = e2, this._tags = { ...this._tags, ...e2.tags }, this._extra = { ...this._extra, ...e2.extra }, this._contexts = { ...this._contexts, ...e2.contexts }, e2.user && (this._user = e2.user), e2.level && (this._level = e2.level), e2.fingerprint && (this._fingerprint = e2.fingerprint), e2.requestSession && (this._requestSession = e2.requestSession)), this;
      }
      clear() {
        return this._breadcrumbs = [], this._tags = {}, this._extra = {}, this._user = {}, this._contexts = {}, this._level = void 0, this._transactionName = void 0, this._fingerprint = void 0, this._requestSession = void 0, this._span = void 0, this._session = void 0, this._notifyScopeListeners(), this._attachments = [], this;
      }
      addBreadcrumb(e2, t2) {
        const n2 = "number" == typeof t2 ? t2 : 100;
        if (n2 <= 0) return this;
        const r2 = { timestamp: wo(), ...e2 };
        return this._breadcrumbs = [...this._breadcrumbs, r2].slice(-n2), this._notifyScopeListeners(), this;
      }
      getLastBreadcrumb() {
        return this._breadcrumbs[this._breadcrumbs.length - 1];
      }
      clearBreadcrumbs() {
        return this._breadcrumbs = [], this._notifyScopeListeners(), this;
      }
      addAttachment(e2) {
        return this._attachments.push(e2), this;
      }
      getAttachments() {
        return this._attachments;
      }
      clearAttachments() {
        return this._attachments = [], this;
      }
      applyToEvent(e2, t2 = {}) {
        if (this._extra && Object.keys(this._extra).length && (e2.extra = { ...this._extra, ...e2.extra }), this._tags && Object.keys(this._tags).length && (e2.tags = { ...this._tags, ...e2.tags }), this._user && Object.keys(this._user).length && (e2.user = { ...this._user, ...e2.user }), this._contexts && Object.keys(this._contexts).length && (e2.contexts = { ...this._contexts, ...e2.contexts }), this._level && (e2.level = this._level), this._transactionName && (e2.transaction = this._transactionName), this._span) {
          e2.contexts = { trace: this._span.getTraceContext(), ...e2.contexts };
          const t3 = this._span.transaction;
          if (t3) {
            e2.sdkProcessingMetadata = { dynamicSamplingContext: t3.getDynamicSamplingContext(), ...e2.sdkProcessingMetadata };
            const n2 = t3.name;
            n2 && (e2.tags = { transaction: n2, ...e2.tags });
          }
        }
        return this._applyFingerprint(e2), e2.breadcrumbs = [...e2.breadcrumbs || [], ...this._breadcrumbs], e2.breadcrumbs = e2.breadcrumbs.length > 0 ? e2.breadcrumbs : void 0, e2.sdkProcessingMetadata = { ...e2.sdkProcessingMetadata, ...this._sdkProcessingMetadata }, this._notifyEventProcessors([...co("globalEventProcessors", (() => [])), ...this._eventProcessors], e2, t2);
      }
      setSDKProcessingMetadata(e2) {
        return this._sdkProcessingMetadata = { ...this._sdkProcessingMetadata, ...e2 }, this;
      }
      _notifyEventProcessors(e2, t2, n2, r2 = 0) {
        return new yo(((i2, o2) => {
          const s2 = e2[r2];
          if (null === t2 || "function" != typeof s2) i2(t2);
          else {
            const a2 = s2({ ...t2 }, n2);
            ("undefined" == typeof __SENTRY_DEBUG__ || __SENTRY_DEBUG__) && s2.id && null === a2 && ho.log(`Event processor "${s2.id}" dropped event`), oo(a2) ? a2.then(((t3) => this._notifyEventProcessors(e2, t3, n2, r2 + 1).then(i2))).then(null, o2) : this._notifyEventProcessors(e2, a2, n2, r2 + 1).then(i2).then(null, o2);
          }
        }));
      }
      _notifyScopeListeners() {
        this._notifyingListeners || (this._notifyingListeners = true, this._scopeListeners.forEach(((e2) => {
          e2(this);
        })), this._notifyingListeners = false);
      }
      _applyFingerprint(e2) {
        var t2;
        e2.fingerprint = e2.fingerprint ? (t2 = e2.fingerprint, Array.isArray(t2) ? t2 : [t2]) : [], this._fingerprint && (e2.fingerprint = e2.fingerprint.concat(this._fingerprint)), e2.fingerprint && !e2.fingerprint.length && delete e2.fingerprint;
      }
    }
    const Ro = 100;
    class No {
      constructor(e2, t2 = new Io(), n2 = 4) {
        this._version = n2, this._stack = [{ scope: t2 }], e2 && this.bindClient(e2);
      }
      isOlderThan(e2) {
        return this._version < e2;
      }
      bindClient(e2) {
        this.getStackTop().client = e2, e2 && e2.setupIntegrations && e2.setupIntegrations();
      }
      pushScope() {
        const e2 = Io.clone(this.getScope());
        return this.getStack().push({ client: this.getClient(), scope: e2 }), e2;
      }
      popScope() {
        return !(this.getStack().length <= 1 || !this.getStack().pop());
      }
      withScope(e2) {
        const t2 = this.pushScope();
        try {
          e2(t2);
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
      captureException(e2, t2) {
        const n2 = this._lastEventId = t2 && t2.event_id ? t2.event_id : vo(), r2 = new Error("Sentry syntheticException");
        return this._withClient(((i2, o2) => {
          i2.captureException(e2, { originalException: e2, syntheticException: r2, ...t2, event_id: n2 }, o2);
        })), n2;
      }
      captureMessage(e2, t2, n2) {
        const r2 = this._lastEventId = n2 && n2.event_id ? n2.event_id : vo(), i2 = new Error(e2);
        return this._withClient(((o2, s2) => {
          o2.captureMessage(e2, t2, { originalException: e2, syntheticException: i2, ...n2, event_id: r2 }, s2);
        })), r2;
      }
      captureEvent(e2, t2) {
        const n2 = t2 && t2.event_id ? t2.event_id : vo();
        return e2.type || (this._lastEventId = n2), this._withClient(((r2, i2) => {
          r2.captureEvent(e2, { ...t2, event_id: n2 }, i2);
        })), n2;
      }
      lastEventId() {
        return this._lastEventId;
      }
      addBreadcrumb(e2, t2) {
        const { scope: n2, client: r2 } = this.getStackTop();
        if (!r2) return;
        const { beforeBreadcrumb: i2 = null, maxBreadcrumbs: o2 = Ro } = r2.getOptions && r2.getOptions() || {};
        if (o2 <= 0) return;
        const s2 = { timestamp: wo(), ...e2 }, a2 = i2 ? lo((() => i2(s2, t2))) : s2;
        null !== a2 && (r2.emit && r2.emit("beforeAddBreadcrumb", a2, t2), n2.addBreadcrumb(a2, o2));
      }
      setUser(e2) {
        this.getScope().setUser(e2);
      }
      setTags(e2) {
        this.getScope().setTags(e2);
      }
      setExtras(e2) {
        this.getScope().setExtras(e2);
      }
      setTag(e2, t2) {
        this.getScope().setTag(e2, t2);
      }
      setExtra(e2, t2) {
        this.getScope().setExtra(e2, t2);
      }
      setContext(e2, t2) {
        this.getScope().setContext(e2, t2);
      }
      configureScope(e2) {
        const { scope: t2, client: n2 } = this.getStackTop();
        n2 && e2(t2);
      }
      run(e2) {
        const t2 = Do(this);
        try {
          e2(this);
        } finally {
          Do(t2);
        }
      }
      getIntegration(e2) {
        const t2 = this.getClient();
        if (!t2) return null;
        try {
          return t2.getIntegration(e2);
        } catch (n2) {
          return ("undefined" == typeof __SENTRY_DEBUG__ || __SENTRY_DEBUG__) && ho.warn(`Cannot retrieve integration ${e2.id} from the current Hub`), null;
        }
      }
      startTransaction(e2, t2) {
        const n2 = this._callExtensionMethod("startTransaction", e2, t2);
        return "undefined" != typeof __SENTRY_DEBUG__ && !__SENTRY_DEBUG__ || n2 || console.warn("Tracing extension 'startTransaction' has not been added. Call 'addTracingExtensions' before calling 'init':\nSentry.addTracingExtensions();\nSentry.init({...});\n"), n2;
      }
      traceHeaders() {
        return this._callExtensionMethod("traceHeaders");
      }
      captureSession(e2 = false) {
        if (e2) return this.endSession();
        this._sendSessionUpdate();
      }
      endSession() {
        const e2 = this.getStackTop().scope, t2 = e2.getSession();
        t2 && (function(e3, t3) {
          let n2 = {};
          t3 ? n2 = { status: t3 } : "ok" === e3.status && (n2 = { status: "exited" }), Co(e3, n2);
        })(t2), this._sendSessionUpdate(), e2.setSession();
      }
      startSession(e2) {
        const { scope: t2, client: n2 } = this.getStackTop(), { release: r2, environment: i2 = Ao } = n2 && n2.getOptions() || {}, { userAgent: o2 } = ao.navigator || {}, s2 = Oo({ release: r2, environment: i2, user: t2.getUser(), ...o2 && { userAgent: o2 }, ...e2 }), a2 = t2.getSession && t2.getSession();
        return a2 && "ok" === a2.status && Co(a2, { status: "exited" }), this.endSession(), t2.setSession(s2), s2;
      }
      shouldSendDefaultPii() {
        const e2 = this.getClient(), t2 = e2 && e2.getOptions();
        return Boolean(t2 && t2.sendDefaultPii);
      }
      _sendSessionUpdate() {
        const { scope: e2, client: t2 } = this.getStackTop(), n2 = e2.getSession();
        n2 && t2 && t2.captureSession && t2.captureSession(n2);
      }
      _withClient(e2) {
        const { scope: t2, client: n2 } = this.getStackTop();
        n2 && e2(n2, t2);
      }
      _callExtensionMethod(e2, ...t2) {
        const n2 = Po().__SENTRY__;
        if (n2 && n2.extensions && "function" == typeof n2.extensions[e2]) return n2.extensions[e2].apply(this, t2);
        ("undefined" == typeof __SENTRY_DEBUG__ || __SENTRY_DEBUG__) && ho.warn(`Extension method ${e2} couldn't be found, doing nothing.`);
      }
    }
    function Po() {
      return ao.__SENTRY__ = ao.__SENTRY__ || { extensions: {}, hub: void 0 }, ao;
    }
    function Do(e2) {
      const t2 = Po(), n2 = ko(t2);
      return xo(t2, e2), n2;
    }
    function ko(e2) {
      return co("hub", (() => new No()), e2);
    }
    function xo(e2, t2) {
      return !!e2 && ((e2.__SENTRY__ = e2.__SENTRY__ || {}).hub = t2, true);
    }
    const Mo = "undefined" != typeof window, Lo = Object.assign;
    function Uo(e2, t2) {
      const n2 = {};
      for (const r2 in t2) {
        const i2 = t2[r2];
        n2[r2] = Fo(i2) ? i2.map(e2) : e2(i2);
      }
      return n2;
    }
    const jo = () => {
    }, Fo = Array.isArray, Bo = /\/$/;
    function Ko(e2, t2, n2 = "/") {
      let r2, i2 = {}, o2 = "", s2 = "";
      const a2 = t2.indexOf("#");
      let c2 = t2.indexOf("?");
      return a2 < c2 && a2 >= 0 && (c2 = -1), c2 > -1 && (r2 = t2.slice(0, c2), o2 = t2.slice(c2 + 1, a2 > -1 ? a2 : t2.length), i2 = e2(o2)), a2 > -1 && (r2 = r2 || t2.slice(0, a2), s2 = t2.slice(a2, t2.length)), r2 = (function(e3, t3) {
        if (e3.startsWith("/")) return e3;
        if (!e3) return t3;
        const n3 = t3.split("/"), r3 = e3.split("/");
        let i3, o3, s3 = n3.length - 1;
        for (i3 = 0; i3 < r3.length; i3++) if (o3 = r3[i3], "." !== o3) {
          if (".." !== o3) break;
          s3 > 1 && s3--;
        }
        return n3.slice(0, s3).join("/") + "/" + r3.slice(i3 - (i3 === r3.length ? 1 : 0)).join("/");
      })(null != r2 ? r2 : t2, n2), { fullPath: r2 + (o2 && "?") + o2 + s2, path: r2, query: i2, hash: s2 };
    }
    function Vo(e2, t2) {
      return t2 && e2.toLowerCase().startsWith(t2.toLowerCase()) ? e2.slice(t2.length) || "/" : e2;
    }
    function Ho(e2, t2) {
      return (e2.aliasOf || e2) === (t2.aliasOf || t2);
    }
    function Go(e2, t2) {
      if (Object.keys(e2).length !== Object.keys(t2).length) return false;
      for (const n2 in e2) if (!$o(e2[n2], t2[n2])) return false;
      return true;
    }
    function $o(e2, t2) {
      return Fo(e2) ? zo(e2, t2) : Fo(t2) ? zo(t2, e2) : e2 === t2;
    }
    function zo(e2, t2) {
      return Fo(t2) ? e2.length === t2.length && e2.every(((e3, n2) => e3 === t2[n2])) : 1 === e2.length && e2[0] === t2;
    }
    var Wo, qo;
    !(function(e2) {
      e2.pop = "pop", e2.push = "push";
    })(Wo || (Wo = {})), (function(e2) {
      e2.back = "back", e2.forward = "forward", e2.unknown = "";
    })(qo || (qo = {}));
    const Qo = /^[^#]+#/;
    function Yo(e2, t2) {
      return e2.replace(Qo, "#") + t2;
    }
    const Jo = () => ({ left: window.pageXOffset, top: window.pageYOffset });
    function Xo(e2, t2) {
      return (history.state ? history.state.position - t2 : -1) + e2;
    }
    const Zo = /* @__PURE__ */ new Map();
    let es = () => location.protocol + "//" + location.host;
    function ts(e2, t2) {
      const { pathname: n2, search: r2, hash: i2 } = t2, o2 = e2.indexOf("#");
      if (o2 > -1) {
        let t3 = i2.includes(e2.slice(o2)) ? e2.slice(o2).length : 1, n3 = i2.slice(t3);
        return "/" !== n3[0] && (n3 = "/" + n3), Vo(n3, "");
      }
      return Vo(n2, e2) + r2 + i2;
    }
    function ns(e2, t2, n2, r2 = false, i2 = false) {
      return { back: e2, current: t2, forward: n2, replaced: r2, position: window.history.length, scroll: i2 ? Jo() : null };
    }
    function rs(e2) {
      return "string" == typeof e2 || "symbol" == typeof e2;
    }
    const is = { path: "/", name: void 0, params: {}, query: {}, hash: "", fullPath: "/", matched: [], meta: {}, redirectedFrom: void 0 }, os = Symbol("");
    var ss;
    function as(e2, t2) {
      return Lo(new Error(), { type: e2, [os]: true }, t2);
    }
    function cs(e2, t2) {
      return e2 instanceof Error && os in e2 && (null == t2 || !!(e2.type & t2));
    }
    !(function(e2) {
      e2[e2.aborted = 4] = "aborted", e2[e2.cancelled = 8] = "cancelled", e2[e2.duplicated = 16] = "duplicated";
    })(ss || (ss = {}));
    const us = "[^/]+?", ls = { sensitive: false, strict: false, start: true, end: true }, ps = /[.+*?^${}()[\]/\\]/g;
    function ds(e2, t2) {
      let n2 = 0;
      for (; n2 < e2.length && n2 < t2.length; ) {
        const r2 = t2[n2] - e2[n2];
        if (r2) return r2;
        n2++;
      }
      return e2.length < t2.length ? 1 === e2.length && 80 === e2[0] ? -1 : 1 : e2.length > t2.length ? 1 === t2.length && 80 === t2[0] ? 1 : -1 : 0;
    }
    function hs(e2, t2) {
      let n2 = 0;
      const r2 = e2.score, i2 = t2.score;
      for (; n2 < r2.length && n2 < i2.length; ) {
        const e3 = ds(r2[n2], i2[n2]);
        if (e3) return e3;
        n2++;
      }
      if (1 === Math.abs(i2.length - r2.length)) {
        if (fs(r2)) return 1;
        if (fs(i2)) return -1;
      }
      return i2.length - r2.length;
    }
    function fs(e2) {
      const t2 = e2[e2.length - 1];
      return e2.length > 0 && t2[t2.length - 1] < 0;
    }
    const gs = { type: 0, value: "" }, vs = /[a-zA-Z0-9_]/;
    function ms(e2, t2, n2) {
      const r2 = (function(e3, t3) {
        const n3 = Lo({}, ls, t3), r3 = [];
        let i3 = n3.start ? "^" : "";
        const o2 = [];
        for (const a2 of e3) {
          const e4 = a2.length ? [] : [90];
          n3.strict && !a2.length && (i3 += "/");
          for (let t4 = 0; t4 < a2.length; t4++) {
            const r4 = a2[t4];
            let s3 = 40 + (n3.sensitive ? 0.25 : 0);
            if (0 === r4.type) t4 || (i3 += "/"), i3 += r4.value.replace(ps, "\\$&"), s3 += 40;
            else if (1 === r4.type) {
              const { value: e5, repeatable: n4, optional: c2, regexp: u2 } = r4;
              o2.push({ name: e5, repeatable: n4, optional: c2 });
              const l2 = u2 || us;
              if (l2 !== us) {
                s3 += 10;
                try {
                  new RegExp(`(${l2})`);
                } catch (xd) {
                  throw new Error(`Invalid custom RegExp for param "${e5}" (${l2}): ` + xd.message);
                }
              }
              let p2 = n4 ? `((?:${l2})(?:/(?:${l2}))*)` : `(${l2})`;
              t4 || (p2 = c2 && a2.length < 2 ? `(?:/${p2})` : "/" + p2), c2 && (p2 += "?"), i3 += p2, s3 += 20, c2 && (s3 += -8), n4 && (s3 += -20), ".*" === l2 && (s3 += -50);
            }
            e4.push(s3);
          }
          r3.push(e4);
        }
        if (n3.strict && n3.end) {
          const e4 = r3.length - 1;
          r3[e4][r3[e4].length - 1] += 0.7000000000000001;
        }
        n3.strict || (i3 += "/?"), n3.end ? i3 += "$" : n3.strict && (i3 += "(?:/|$)");
        const s2 = new RegExp(i3, n3.sensitive ? "" : "i");
        return { re: s2, score: r3, keys: o2, parse: function(e4) {
          const t4 = e4.match(s2), n4 = {};
          if (!t4) return null;
          for (let r4 = 1; r4 < t4.length; r4++) {
            const e5 = t4[r4] || "", i4 = o2[r4 - 1];
            n4[i4.name] = e5 && i4.repeatable ? e5.split("/") : e5;
          }
          return n4;
        }, stringify: function(t4) {
          let n4 = "", r4 = false;
          for (const i4 of e3) {
            r4 && n4.endsWith("/") || (n4 += "/"), r4 = false;
            for (const o3 of i4) if (0 === o3.type) n4 += o3.value;
            else if (1 === o3.type) {
              const { value: s3, repeatable: a2, optional: c2 } = o3, u2 = s3 in t4 ? t4[s3] : "";
              if (Fo(u2) && !a2) throw new Error(`Provided param "${s3}" is an array but it is not repeatable (* or + modifiers)`);
              const l2 = Fo(u2) ? u2.join("/") : u2;
              if (!l2) {
                if (!c2) throw new Error(`Missing required param "${s3}"`);
                i4.length < 2 && e3.length > 1 && (n4.endsWith("/") ? n4 = n4.slice(0, -1) : r4 = true);
              }
              n4 += l2;
            }
          }
          return n4;
        } };
      })((function(e3) {
        if (!e3) return [[]];
        if ("/" === e3) return [[gs]];
        if (!e3.startsWith("/")) throw new Error(`Invalid path "${e3}"`);
        function t3(e4) {
          throw new Error(`ERR (${n3})/"${u2}": ${e4}`);
        }
        let n3 = 0, r3 = n3;
        const i3 = [];
        let o2;
        function s2() {
          o2 && i3.push(o2), o2 = [];
        }
        let a2, c2 = 0, u2 = "", l2 = "";
        function p2() {
          u2 && (0 === n3 ? o2.push({ type: 0, value: u2 }) : 1 === n3 || 2 === n3 || 3 === n3 ? (o2.length > 1 && ("*" === a2 || "+" === a2) && t3(`A repeatable param (${u2}) must be alone in its segment. eg: '/:ids+.`), o2.push({ type: 1, value: u2, regexp: l2, repeatable: "*" === a2 || "+" === a2, optional: "*" === a2 || "?" === a2 })) : t3("Invalid state to consume buffer"), u2 = "");
        }
        function d2() {
          u2 += a2;
        }
        for (; c2 < e3.length; ) if (a2 = e3[c2++], "\\" !== a2 || 2 === n3) switch (n3) {
          case 0:
            "/" === a2 ? (u2 && p2(), s2()) : ":" === a2 ? (p2(), n3 = 1) : d2();
            break;
          case 4:
            d2(), n3 = r3;
            break;
          case 1:
            "(" === a2 ? n3 = 2 : vs.test(a2) ? d2() : (p2(), n3 = 0, "*" !== a2 && "?" !== a2 && "+" !== a2 && c2--);
            break;
          case 2:
            ")" === a2 ? "\\" == l2[l2.length - 1] ? l2 = l2.slice(0, -1) + a2 : n3 = 3 : l2 += a2;
            break;
          case 3:
            p2(), n3 = 0, "*" !== a2 && "?" !== a2 && "+" !== a2 && c2--, l2 = "";
            break;
          default:
            t3("Unknown state");
        }
        else r3 = n3, n3 = 4;
        return 2 === n3 && t3(`Unfinished custom RegExp for param "${u2}"`), p2(), s2(), i3;
      })(e2.path), n2), i2 = Lo(r2, { record: e2, parent: t2, children: [], alias: [] });
      return t2 && !i2.record.aliasOf == !t2.record.aliasOf && t2.children.push(i2), i2;
    }
    function ys(e2) {
      const t2 = {}, n2 = e2.props || false;
      if ("component" in e2) t2.default = n2;
      else for (const r2 in e2.components) t2[r2] = "boolean" == typeof n2 ? n2 : n2[r2];
      return t2;
    }
    function _s(e2) {
      for (; e2; ) {
        if (e2.record.aliasOf) return true;
        e2 = e2.parent;
      }
      return false;
    }
    function bs(e2) {
      return e2.reduce(((e3, t2) => Lo(e3, t2.meta)), {});
    }
    function Ss(e2, t2) {
      const n2 = {};
      for (const r2 in e2) n2[r2] = r2 in t2 ? t2[r2] : e2[r2];
      return n2;
    }
    function Es(e2, t2) {
      return t2.children.some(((t3) => t3 === e2 || Es(e2, t3)));
    }
    const ws = /#/g, Ts = /&/g, As = /\//g, Os = /=/g, Cs = /\?/g, Is = /\+/g, Rs = /%5B/g, Ns = /%5D/g, Ps = /%5E/g, Ds = /%60/g, ks = /%7B/g, xs = /%7C/g, Ms = /%7D/g, Ls = /%20/g;
    function Us(e2) {
      return encodeURI("" + e2).replace(xs, "|").replace(Rs, "[").replace(Ns, "]");
    }
    function js(e2) {
      return Us(e2).replace(Is, "%2B").replace(Ls, "+").replace(ws, "%23").replace(Ts, "%26").replace(Ds, "`").replace(ks, "{").replace(Ms, "}").replace(Ps, "^");
    }
    function Fs(e2) {
      return null == e2 ? "" : (function(e3) {
        return Us(e3).replace(ws, "%23").replace(Cs, "%3F");
      })(e2).replace(As, "%2F");
    }
    function Bs(e2) {
      try {
        return decodeURIComponent("" + e2);
      } catch (xd) {
      }
      return "" + e2;
    }
    function Ks(e2) {
      const t2 = {};
      if ("" === e2 || "?" === e2) return t2;
      const n2 = ("?" === e2[0] ? e2.slice(1) : e2).split("&");
      for (let r2 = 0; r2 < n2.length; ++r2) {
        const e3 = n2[r2].replace(Is, " "), i2 = e3.indexOf("="), o2 = Bs(i2 < 0 ? e3 : e3.slice(0, i2)), s2 = i2 < 0 ? null : Bs(e3.slice(i2 + 1));
        if (o2 in t2) {
          let e4 = t2[o2];
          Fo(e4) || (e4 = t2[o2] = [e4]), e4.push(s2);
        } else t2[o2] = s2;
      }
      return t2;
    }
    function Vs(e2) {
      let t2 = "";
      for (let n2 in e2) {
        const r2 = e2[n2];
        (n2 = js(n2).replace(Os, "%3D"), null != r2) ? (Fo(r2) ? r2.map(((e3) => e3 && js(e3))) : [r2 && js(r2)]).forEach(((e3) => {
          void 0 !== e3 && (t2 += (t2.length ? "&" : "") + n2, null != e3 && (t2 += "=" + e3));
        })) : void 0 !== r2 && (t2 += (t2.length ? "&" : "") + n2);
      }
      return t2;
    }
    function Hs(e2) {
      const t2 = {};
      for (const n2 in e2) {
        const r2 = e2[n2];
        void 0 !== r2 && (t2[n2] = Fo(r2) ? r2.map(((e3) => null == e3 ? null : "" + e3)) : null == r2 ? r2 : "" + r2);
      }
      return t2;
    }
    const Gs = Symbol(""), $s = Symbol(""), zs = Symbol(""), Ws = Symbol(""), qs = Symbol("");
    function Qs() {
      let e2 = [];
      return { add: function(t2) {
        return e2.push(t2), () => {
          const n2 = e2.indexOf(t2);
          n2 > -1 && e2.splice(n2, 1);
        };
      }, list: () => e2, reset: function() {
        e2 = [];
      } };
    }
    function Ys(e2, t2, n2, r2, i2) {
      const o2 = r2 && (r2.enterCallbacks[i2] = r2.enterCallbacks[i2] || []);
      return () => new Promise(((s2, a2) => {
        const c2 = (e3) => {
          var c3;
          false === e3 ? a2(as(4, { from: n2, to: t2 })) : e3 instanceof Error ? a2(e3) : "string" == typeof (c3 = e3) || c3 && "object" == typeof c3 ? a2(as(2, { from: t2, to: e3 })) : (o2 && r2.enterCallbacks[i2] === o2 && "function" == typeof e3 && o2.push(e3), s2());
        }, u2 = e2.call(r2 && r2.instances[i2], t2, n2, c2);
        let l2 = Promise.resolve(u2);
        e2.length < 3 && (l2 = l2.then(c2)), l2.catch(((e3) => a2(e3)));
      }));
    }
    function Js(e2, t2, n2, r2) {
      const i2 = [];
      for (const s2 of e2) for (const e3 in s2.components) {
        let a2 = s2.components[e3];
        if ("beforeRouteEnter" === t2 || s2.instances[e3]) if ("object" == typeof (o2 = a2) || "displayName" in o2 || "props" in o2 || "__vccOpts" in o2) {
          const o3 = (a2.__vccOpts || a2)[t2];
          o3 && i2.push(Ys(o3, n2, r2, s2, e3));
        } else {
          let o3 = a2();
          i2.push((() => o3.then(((i3) => {
            if (!i3) return Promise.reject(new Error(`Couldn't resolve component "${e3}" at "${s2.path}"`));
            const o4 = (a3 = i3).__esModule || "Module" === a3[Symbol.toStringTag] ? i3.default : i3;
            var a3;
            s2.components[e3] = o4;
            const c2 = (o4.__vccOpts || o4)[t2];
            return c2 && Ys(c2, n2, r2, s2, e3)();
          }))));
        }
      }
      var o2;
      return i2;
    }
    function Xs(e2) {
      const t2 = qn(zs), n2 = qn(Ws), r2 = Yr((() => t2.resolve(ft(e2.to)))), i2 = Yr((() => {
        const { matched: e3 } = r2.value, { length: t3 } = e3, i3 = e3[t3 - 1], o3 = n2.matched;
        if (!i3 || !o3.length) return -1;
        const s3 = o3.findIndex(Ho.bind(null, i3));
        if (s3 > -1) return s3;
        const a2 = ea(e3[t3 - 2]);
        return t3 > 1 && ea(i3) === a2 && o3[o3.length - 1].path !== a2 ? o3.findIndex(Ho.bind(null, e3[t3 - 2])) : s3;
      })), o2 = Yr((() => i2.value > -1 && (function(e3, t3) {
        for (const n3 in t3) {
          const r3 = t3[n3], i3 = e3[n3];
          if ("string" == typeof r3) {
            if (r3 !== i3) return false;
          } else if (!Fo(i3) || i3.length !== r3.length || r3.some(((e4, t4) => e4 !== i3[t4]))) return false;
        }
        return true;
      })(n2.params, r2.value.params))), s2 = Yr((() => i2.value > -1 && i2.value === n2.matched.length - 1 && Go(n2.params, r2.value.params)));
      return { route: r2, href: Yr((() => r2.value.href)), isActive: o2, isExactActive: s2, navigate: function(n3 = {}) {
        return (function(e3) {
          if (!(e3.metaKey || e3.altKey || e3.ctrlKey || e3.shiftKey || e3.defaultPrevented || void 0 !== e3.button && 0 !== e3.button)) {
            if (e3.currentTarget && e3.currentTarget.getAttribute) {
              const t3 = e3.currentTarget.getAttribute("target");
              if (/\b_blank\b/i.test(t3)) return;
            }
            return e3.preventDefault && e3.preventDefault(), true;
          }
        })(n3) ? t2[ft(e2.replace) ? "replace" : "push"](ft(e2.to)).catch(jo) : Promise.resolve();
      } };
    }
    const Zs = /* @__PURE__ */ sn({ name: "RouterLink", compatConfig: { MODE: 3 }, props: { to: { type: [String, Object], required: true }, replace: Boolean, activeClass: String, exactActiveClass: String, custom: Boolean, ariaCurrentValue: { type: String, default: "page" } }, useLink: Xs, setup(e2, { slots: t2 }) {
      const n2 = Je(Xs(e2)), { options: r2 } = qn(zs), i2 = Yr((() => ({ [ta(e2.activeClass, r2.linkActiveClass, "router-link-active")]: n2.isActive, [ta(e2.exactActiveClass, r2.linkExactActiveClass, "router-link-exact-active")]: n2.isExactActive })));
      return () => {
        const r3 = t2.default && t2.default(n2);
        return e2.custom ? r3 : Jr("a", { "aria-current": n2.isExactActive ? e2.ariaCurrentValue : null, href: n2.href, onClick: n2.navigate, class: i2.value }, r3);
      };
    } });
    function ea(e2) {
      return e2 ? e2.aliasOf ? e2.aliasOf.path : e2.path : "";
    }
    const ta = (e2, t2, n2) => null != e2 ? e2 : null != t2 ? t2 : n2;
    function na(e2, t2) {
      if (!e2) return null;
      const n2 = e2(t2);
      return 1 === n2.length ? n2[0] : n2;
    }
    const ra = e("R", /* @__PURE__ */ sn({ name: "RouterView", inheritAttrs: false, props: { name: { type: String, default: "default" }, route: Object }, compatConfig: { MODE: 3 }, setup(e2, { attrs: t2, slots: n2 }) {
      const r2 = qn(qs), i2 = Yr((() => e2.route || r2.value)), o2 = qn($s, 0), s2 = Yr((() => {
        let e3 = ft(o2);
        const { matched: t3 } = i2.value;
        let n3;
        for (; (n3 = t3[e3]) && !n3.components; ) e3++;
        return e3;
      })), a2 = Yr((() => i2.value.matched[s2.value]));
      Wn($s, Yr((() => s2.value + 1))), Wn(Gs, a2), Wn(qs, i2);
      const c2 = pt();
      return Zt((() => [c2.value, a2.value, e2.name]), (([e3, t3, n3], [r3, i3, o3]) => {
        t3 && (t3.instances[n3] = e3, i3 && i3 !== t3 && e3 && e3 === r3 && (t3.leaveGuards.size || (t3.leaveGuards = i3.leaveGuards), t3.updateGuards.size || (t3.updateGuards = i3.updateGuards))), !e3 || !t3 || i3 && Ho(t3, i3) && r3 || (t3.enterCallbacks[n3] || []).forEach(((t4) => t4(e3)));
      }), { flush: "post" }), () => {
        const r3 = i2.value, o3 = a2.value, s3 = o3 && o3.components[e2.name], u2 = e2.name;
        if (!s3) return na(n2.default, { Component: s3, route: r3 });
        const l2 = o3.props[e2.name], p2 = l2 ? true === l2 ? r3.params : "function" == typeof l2 ? l2(r3) : l2 : null, d2 = Jr(s3, Lo({}, p2, t2, { onVnodeUnmounted: (e3) => {
          e3.component.isUnmounted && (o3.instances[u2] = null);
        }, ref: c2 }));
        return na(n2.default, { Component: d2, route: r3 }) || d2;
      };
    } }));
    function ia(e2) {
      return e2.reduce(((e3, t2) => e3.then((() => t2()))), Promise.resolve());
    }
    var oa = "undefined" != typeof globalThis ? globalThis : "undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : {}, sa = e("x", {}), aa = {};
    Object.defineProperty(aa, "__esModule", { value: true }), aa.COUNTRY_CODE_TO_STOREFRONT = void 0, aa.COUNTRY_CODE_TO_STOREFRONT = { AFG: "143610", AGO: "143564", AIA: "143538", ALB: "143575", AND: "143611", ARE: "143481", ARG: "143505", ARM: "143524", ATG: "143540", AUS: "143460", AUT: "143445", AZE: "143568", BEL: "143446", BEN: "143576", BFA: "143578", BGD: "143490", BGR: "143526", BHR: "143559", BHS: "143539", BIH: "143612", BLR: "143565", BLZ: "143555", BMU: "143542", BOL: "143556", BRA: "143503", BRB: "143541", BRN: "143560", BTN: "143577", BWA: "143525", CAF: "143623", CAN: "143455", CHE: "143459", CHL: "143483", CHN: "143465", CIV: "143527", CMR: "143574", COD: "143613", COG: "143582", COL: "143501", CPV: "143580", CRI: "143495", CYM: "143544", CYP: "143557", CZE: "143489", DEU: "143443", DMA: "143545", DNK: "143458", DOM: "143508", DZA: "143563", ECU: "143509", EGY: "143516", ESP: "143454", EST: "143518", ETH: "143569", FIN: "143447", FJI: "143583", FRA: "143442", FSM: "143591", GAB: "143614", GBR: "143444", GEO: "143615", GHA: "143573", GIN: "143616", GMB: "143584", GNB: "143585", GRC: "143448", GRD: "143546", GTM: "143504", GUY: "143553", HKG: "143463", HND: "143510", HRV: "143494", HUN: "143482", IDN: "143476", IND: "143467", IRL: "143449", IRQ: "143617", ISL: "143558", ISR: "143491", ITA: "143450", JAM: "143511", JOR: "143528", JPN: "143462", KAZ: "143517", KEN: "143529", KGZ: "143586", KHM: "143579", KNA: "143548", KOR: "143466", KWT: "143493", LAO: "143587", LBN: "143497", LBR: "143588", LBY: "143567", LCA: "143549", LIE: "143522", LKA: "143486", LTU: "143520", LUX: "143451", LVA: "143519", MAC: "143515", MAR: "143620", MCO: "143618", MDA: "143523", MDG: "143531", MDV: "143488", MEX: "143468", MKD: "143530", MLI: "143532", MLT: "143521", MMR: "143570", MNE: "143619", MNG: "143592", MOZ: "143593", MRT: "143590", MSR: "143547", MUS: "143533", MWI: "143589", MYS: "143473", NAM: "143594", NER: "143534", NGA: "143561", NIC: "143512", NLD: "143452", NOR: "143457", NPL: "143484", NRU: "143606", NZL: "143461", OMN: "143562", PAK: "143477", PAN: "143485", PER: "143507", PHL: "143474", PLW: "143595", PNG: "143597", POL: "143478", PRT: "143453", PRY: "143513", PSE: "143596", QAT: "143498", ROU: "143487", RUS: "143469", RWA: "143621", SAU: "143479", SEN: "143535", SGP: "143464", SLB: "143601", SLE: "143600", SLV: "143506", SRB: "143500", STP: "143598", SUR: "143554", SVK: "143496", SVN: "143499", SWE: "143456", SWZ: "143602", SYC: "143599", TCA: "143552", TCD: "143581", THA: "143475", TJK: "143603", TKM: "143604", TON: "143608", TTO: "143551", TUN: "143536", TUR: "143480", TWN: "143470", TZA: "143572", UGA: "143537", UKR: "143492", URY: "143514", USA: "143441", UZB: "143566", VCT: "143550", VEN: "143502", VGB: "143543", VNM: "143471", VUT: "143609", WSM: "143607", XKX: "143624", YEM: "143571", ZAF: "143472", ZMB: "143622", ZWE: "143605" };
    var ca = {}, ua = oa && oa.__awaiter || function(e2, t2, n2, r2) {
      return new (n2 || (n2 = Promise))((function(i2, o2) {
        function s2(e3) {
          try {
            c2(r2.next(e3));
          } catch (t3) {
            o2(t3);
          }
        }
        function a2(e3) {
          try {
            c2(r2.throw(e3));
          } catch (t3) {
            o2(t3);
          }
        }
        function c2(e3) {
          var t3;
          e3.done ? i2(e3.value) : (t3 = e3.value, t3 instanceof n2 ? t3 : new n2((function(e4) {
            e4(t3);
          }))).then(s2, a2);
        }
        c2((r2 = r2.apply(e2, t2 || [])).next());
      }));
    };
    Object.defineProperty(ca, "__esModule", { value: true }), ca.AsyncCachedResult = void 0, ca.AsyncCachedResult = (e2 = 300) => (t2, n2, r2) => {
      if (void 0 === r2 || "function" != typeof r2.value) throw new TypeError(`Only methods can be decorated with @CachedResult, but ${n2} is not a method.`);
      return { configurable: true, get() {
        const t3 = r2.value, i2 = 1e3 * e2;
        let o2, s2 = -1;
        function a2(...e3) {
          return ua(this, void 0, void 0, (function* () {
            const n3 = Date.now();
            return (void 0 === o2 || -1 === s2 || s2 > 0 && n3 > s2 + i2) && (s2 = n3, o2 = yield t3.apply(this, e3)), o2;
          }));
        }
        return a2.updateCache = function(e3) {
          s2 = Date.now(), o2 = e3;
        }, a2.getCachedValue = () => o2, Object.defineProperty(this, n2, { value: a2, configurable: true, writable: true }), a2;
      } };
    };
    var la = {}, pa = {}, da = {};
    Object.defineProperty(da, "__esModule", { value: true }), da.default = "undefined" != typeof FastBoot ? FastBoot.require("buffer").Buffer : "undefined" != typeof process && null !== process.versions && null !== process.versions.node ? Buffer : window.Buffer;
    var ha = {};
    Object.defineProperty(ha, "__esModule", { value: true }), ha.memoize = void 0, ha.memoize = function(e2) {
      return function(...t2) {
        let n2 = "", r2 = t2.length;
        for (e2._memoized = e2._memoized || {}; r2--; ) {
          const e3 = t2[r2];
          n2 += e3 === Object(e3) ? JSON.stringify(e3) : e3;
        }
        return n2 in e2._memoized ? e2._memoized[n2] : e2._memoized[n2] = e2(...t2);
      };
    };
    var fa = oa && oa.__importDefault || function(e2) {
      return e2 && e2.__esModule ? e2 : { default: e2 };
    };
    Object.defineProperty(pa, "__esModule", { value: true }), pa.parseNumber = pa.arrayEquals = pa.exceptFields = pa.debounce = pa.throttled = pa.getArtworkFromURL = pa.btoa = pa.atob = pa.isNodeEnvironment = pa.isAdamId = pa.isLibraryType = pa.generateUUID = pa.isObject = void 0;
    const ga = fa(da), va = ha;
    function ma() {
      return Math.random().toString(16).substring(2);
    }
    function ya(e2) {
      const t2 = (e3) => null != e3;
      return 0 === arguments.length && "undefined" != typeof process && (e2 = process), t2(e2) && t2(e2.versions) && t2(e2.versions.node) || "undefined" != typeof FastBoot;
    }
    pa.isObject = function(e2) {
      return !!e2 && "object" == typeof e2 && !Array.isArray(e2);
    }, pa.generateUUID = function() {
      let e2 = ma() + ma();
      for (; e2.length < 16; ) e2 += ma();
      return e2.slice(0, 16);
    }, pa.isLibraryType = va.memoize(((e2) => /^[a|i|l|p]{1}\.[a-zA-Z0-9]+$/.test(e2))), pa.isAdamId = va.memoize(((e2) => /^(a\.)?[a-zA-Z0-9]+$/.test(e2))), pa.isNodeEnvironment = ya, pa.atob = va.memoize(ya() ? (e2) => ga.default.from(e2, "base64").toString("binary") : (e2) => window.atob(e2)), pa.btoa = va.memoize(ya() ? (e2) => ga.default.from(e2).toString("base64") : (e2) => window.btoa(e2)), pa.getArtworkFromURL = function(e2) {
      const t2 = e2.split("/").pop(), [n2, r2] = !!t2 && t2.match(/\d+/g) || ["100", "100"];
      return { width: parseInt(n2, 10), height: parseInt(r2, 10), url: e2.replace(`${n2}x${r2}`, "{w}x{h}") };
    }, pa.throttled = (e2, t2) => {
      let n2 = 0;
      return function(...r2) {
        const i2 = Date.now();
        if (!(i2 - n2 < e2)) return n2 = i2, t2.apply(this, r2);
      };
    }, pa.debounce = (e2, t2 = 250, n2 = { isImmediate: false }) => {
      let r2;
      return function(...i2) {
        const o2 = this, s2 = n2.isImmediate && void 0 === r2;
        void 0 !== r2 && clearTimeout(r2), r2 = setTimeout((function() {
          r2 = void 0, n2.isImmediate || e2.apply(o2, i2);
        }), t2), s2 && e2.apply(o2, i2);
      };
    }, pa.exceptFields = (e2, ...t2) => {
      const n2 = {};
      return Object.keys(e2).forEach(((r2) => {
        t2.includes(r2) || (n2[r2] = e2[r2]);
      })), n2;
    }, pa.arrayEquals = (e2, t2) => !!e2 && !!t2 && [].every.call(e2, ((e3, n2) => e3 === t2[n2])), pa.parseNumber = (e2) => {
      const t2 = Number(e2);
      if (Number.isFinite(t2)) return t2;
    }, Object.defineProperty(la, "__esModule", { value: true }), la.DeveloperToken = void 0;
    const _a = pa;
    la.DeveloperToken = class {
      constructor(e2) {
        if (this.token = e2, !e2 || !/^[a-z0-9\-\_]{16,}\.[a-z0-9\-\_]{16,}\.[a-z0-9\-\_]{16,}/i.test(e2)) throw new Error("Invalid token.");
        const [t2, n2] = e2.split("."), { exp: r2, iss: i2 } = this._decode(n2);
        if (this.expiration = 1e3 * r2, this.isExpired) throw new Error("Initialized with an expired token.");
        this.teamId = i2;
        const { kid: o2 } = this._decode(t2);
        this.keyId = o2;
      }
      get isExpired() {
        return this.expiration < Date.now();
      }
      _decode(e2) {
        return JSON.parse(_a.atob(e2));
      }
    };
    var ba = {};
    Object.defineProperty(ba, "__esModule", { value: true }), ba.invoke = void 0, ba.invoke = function(e2) {
      return void 0 === e2 || /* @__PURE__ */ ((e3) => "function" != typeof e3)(e2) ? e2 : e2();
    };
    var Sa = {};
    Object.defineProperty(Sa, "__esModule", { value: true }), Sa.ISO_2_TO_3_CODES = void 0, Sa.ISO_2_TO_3_CODES = { AW: "ABW", AF: "AFG", AO: "AGO", AI: "AIA", AX: "ALA", AL: "ALB", AD: "AND", AE: "ARE", AR: "ARG", AM: "ARM", AS: "ASM", AQ: "ATA", TF: "ATF", AG: "ATG", AU: "AUS", AT: "AUT", AZ: "AZE", BI: "BDI", BE: "BEL", BJ: "BEN", BQ: "BES", BF: "BFA", BD: "BGD", BG: "BGR", BH: "BHR", BS: "BHS", BA: "BIH", BL: "BLM", BY: "BLR", BZ: "BLZ", BM: "BMU", BO: "BOL", BR: "BRA", BB: "BRB", BN: "BRN", BT: "BTN", BV: "BVT", BW: "BWA", CF: "CAF", CA: "CAN", CC: "CCK", CH: "CHE", CL: "CHL", CN: "CHN", CI: "CIV", CM: "CMR", CD: "COD", CG: "COG", CK: "COK", CO: "COL", KM: "COM", CV: "CPV", CR: "CRI", CU: "CUB", CW: "CUW", CX: "CXR", KY: "CYM", CY: "CYP", CZ: "CZE", DE: "DEU", DJ: "DJI", DM: "DMA", DK: "DNK", DO: "DOM", DZ: "DZA", EC: "ECU", EG: "EGY", ER: "ERI", EH: "ESH", ES: "ESP", EE: "EST", ET: "ETH", FI: "FIN", FJ: "FJI", FK: "FLK", FR: "FRA", FO: "FRO", FM: "FSM", GA: "GAB", GB: "GBR", GE: "GEO", GG: "GGY", GH: "GHA", GI: "GIB", GN: "GIN", GP: "GLP", GM: "GMB", GW: "GNB", GQ: "GNQ", GR: "GRC", GD: "GRD", GL: "GRL", GT: "GTM", GF: "GUF", GU: "GUM", GY: "GUY", HK: "HKG", HM: "HMD", HN: "HND", HR: "HRV", HT: "HTI", HU: "HUN", ID: "IDN", IM: "IMN", IN: "IND", IO: "IOT", IE: "IRL", IR: "IRN", IQ: "IRQ", IS: "ISL", IL: "ISR", IT: "ITA", JM: "JAM", JE: "JEY", JO: "JOR", JP: "JPN", KZ: "KAZ", KE: "KEN", KG: "KGZ", KH: "KHM", KI: "KIR", KN: "KNA", KR: "KOR", KW: "KWT", LA: "LAO", LB: "LBN", LR: "LBR", LY: "LBY", LC: "LCA", LI: "LIE", LK: "LKA", LS: "LSO", LT: "LTU", LU: "LUX", LV: "LVA", MO: "MAC", MF: "MAF", MA: "MAR", MC: "MCO", MD: "MDA", MG: "MDG", MV: "MDV", MX: "MEX", MH: "MHL", MK: "MKD", ML: "MLI", MT: "MLT", MM: "MMR", ME: "MNE", MN: "MNG", MP: "MNP", MZ: "MOZ", MR: "MRT", MS: "MSR", MQ: "MTQ", MU: "MUS", MW: "MWI", MY: "MYS", YT: "MYT", NA: "NAM", NC: "NCL", NE: "NER", NF: "NFK", NG: "NGA", NI: "NIC", NU: "NIU", NL: "NLD", NO: "NOR", NP: "NPL", NR: "NRU", NZ: "NZL", OM: "OMN", PK: "PAK", PA: "PAN", PN: "PCN", PE: "PER", PH: "PHL", PW: "PLW", PG: "PNG", PL: "POL", PR: "PRI", KP: "PRK", PT: "PRT", PY: "PRY", PS: "PSE", PF: "PYF", QA: "QAT", RE: "REU", RO: "ROU", RU: "RUS", RW: "RWA", SA: "SAU", SD: "SDN", SN: "SEN", SG: "SGP", GS: "SGS", SH: "SHN", SJ: "SJM", SB: "SLB", SL: "SLE", SV: "SLV", SM: "SMR", SO: "SOM", PM: "SPM", RS: "SRB", SS: "SSD", ST: "STP", SR: "SUR", SK: "SVK", SI: "SVN", SE: "SWE", SZ: "SWZ", SX: "SXM", SC: "SYC", SY: "SYR", TC: "TCA", TD: "TCD", TG: "TGO", TH: "THA", TJ: "TJK", TK: "TKL", TM: "TKM", TL: "TLS", TO: "TON", TT: "TTO", TN: "TUN", TR: "TUR", TV: "TUV", TW: "TWN", TZ: "TZA", UG: "UGA", UA: "UKR", UM: "UMI", UY: "URY", US: "USA", UZ: "UZB", VA: "VAT", VC: "VCT", VE: "VEN", VG: "VGB", VI: "VIR", VN: "VNM", VU: "VUT", WF: "WLF", WS: "WSM", XK: "XKX", YE: "YEM", ZA: "ZAF", ZM: "ZMB", ZW: "ZWE" };
    var Ea = {};
    !(function(e2) {
      Object.defineProperty(e2, "__esModule", { value: true }), e2.LANGUAGE_TO_STOREFRONT = e2.getLanguageId = void 0, e2.getLanguageId = function(t2 = "en-US") {
        const n2 = e2.LANGUAGE_TO_STOREFRONT[t2.toLowerCase()];
        if (n2) return n2;
        if (t2.includes("-")) {
          const n3 = t2.split("-")[0], r2 = e2.LANGUAGE_TO_STOREFRONT[n3.toLowerCase()];
          if (r2) return r2;
        }
        return e2.LANGUAGE_TO_STOREFRONT["en-us"];
      }, e2.LANGUAGE_TO_STOREFRONT = { af: 48, sq: 1, ar: 34, eu: 1, bg: 49, be: 1, ca: 42, zh: 19, "zh-tw": 18, "zh-cn": 19, "zh-hk": 45, "zh-sg": 19, hr: 41, cs: 22, da: 11, nl: 10, "nl-be": 65, en: 1, "en-us": 1, "en-eg": 26, "en-au": 27, "en-gb": 2, "en-ca": 6, "en-nz": 27, "en-ie": 26, "en-za": 26, "en-jm": 26, "en-bz": 26, "en-tt": 26, "en-001": 26, et: 30, fo: 1, fa: 59, fi: 12, fr: 3, "fr-ca": 5, gd: 2, de: 4, "de-ch": 57, el: 23, he: 36, hi: 50, hu: 21, is: 31, id: 37, it: 7, ja: 9, ko: 13, lv: 33, lt: 32, mk: 1, mt: 1, no: 14, nb: 14, nn: 14, pl: 20, "pt-br": 15, pt: 24, rm: 1, ro: 39, ru: 16, sr: 1, sk: 40, sl: 52, es: 8, "es-mx": 28, "es-419": 44, sv: 17, th: 35, ts: 1, tn: 1, tr: 25, uk: 29, ur: 55, ve: 1, vi: 43, xh: 1, yi: 1, zu: 56, ms: 38, iw: 36, lo: 46, tl: 47, kk: 51, ta: 53, te: 54, bn: 58, ga: 60, ht: 61, la: 62, pa: 63, sa: 64 };
    })(Ea);
    var wa = {};
    Object.defineProperty(wa, "__esModule", { value: true }), wa.getLanguages = void 0, wa.getLanguages = function() {
      if ("undefined" == typeof navigator) return [];
      if (navigator.languages) return navigator.languages;
      const e2 = navigator.language || navigator.userLanguage;
      return e2 ? [e2] : [];
    };
    var Ta = {};
    !(function(e2) {
      Object.defineProperty(e2, "__esModule", { value: true }), e2.urlEncodeParameters = e2.rewriteLastUrlPath = e2.stableSortQueryParams = e2.getMaxAgeFromHeaders = e2.getHeader = e2.parseParams = e2.parseQueryParams = e2.mergeFetchOptions = e2.mergeFetchHeaders = e2.cloneHeaders = e2.constructURL = e2.addQueryParamsToURL = e2.addPathToURL = void 0;
      const t2 = pa;
      e2.addPathToURL = (e3, t3) => void 0 === e3 || "" === e3 ? t3 || "" : void 0 === t3 ? e3 : (e3.endsWith("/") && (e3 = e3.slice(0, -1)), t3.startsWith("/") && (t3 = t3.slice(1)), `${e3}/${t3}`), e2.addQueryParamsToURL = (e3, t3) => {
        const n3 = a2(t3);
        return "" === n3 ? e3 : e3.endsWith("&") || e3.endsWith("?") ? `${e3}${n3}` : e3.includes("?") ? `${e3}&${n3}` : `${e3}?${n3}`;
      }, e2.constructURL = (t3, n3, r3) => e2.addQueryParamsToURL(e2.addPathToURL(t3, n3), r3), e2.cloneHeaders = (e3) => new e3.constructor(e3);
      const n2 = "undefined" != typeof Headers, r2 = (e3) => {
        let t3 = {};
        return ((e4) => n2 && e4 instanceof Headers)(e3) ? e3.forEach(((e4, n3) => t3[n3] = e4)) : Array.isArray(e3) ? e3.forEach((([e4, n3]) => t3[e4] = n3)) : t3 = e3, t3;
      };
      function i2(e3, t3 = "&", n3 = ((e4) => e4)) {
        return "string" != typeof e3 ? {} : e3.split(t3).map(((e4) => e4.trim().split("=", 2))).reduce(((e4, t4) => {
          const [r3, i3] = t4;
          return "" === r3 && void 0 === i3 || (e4[n3(r3)] = n3(i3), void 0 === i3 && (e4[n3(r3)] = void 0)), e4;
        }), {});
      }
      function o2(e3, t3) {
        if (void 0 !== t3) return n2 && t3 instanceof Headers ? t3.get(e3) : t3[e3];
      }
      e2.mergeFetchHeaders = (e3 = {}, t3 = {}) => Object.assign(Object.assign({}, r2(e3)), r2(t3)), e2.mergeFetchOptions = (t3, n3) => {
        if (t3 || n3) return (null == t3 ? void 0 : t3.headers) && (null == n3 ? void 0 : n3.headers) ? Object.assign(Object.assign(Object.assign({}, t3), n3), { headers: e2.mergeFetchHeaders(t3.headers, n3.headers) }) : Object.assign(Object.assign({}, t3), n3);
      }, e2.parseQueryParams = function(e3) {
        var t3;
        if (!e3 || e3.startsWith("http") && !e3.includes("?")) return {};
        try {
          return i2(null !== (t3 = e3.split("?")[1]) && void 0 !== t3 ? t3 : e3, "&", decodeURIComponent);
        } catch (n3) {
          return {};
        }
      }, e2.parseParams = i2, e2.getHeader = o2, e2.getMaxAgeFromHeaders = function(e3) {
        const n3 = o2("cache-control", e3);
        if (n3) {
          const e4 = i2(n3, ",")["max-age"];
          return t2.parseNumber(e4);
        }
      }, e2.stableSortQueryParams = function(e3) {
        try {
          const [t3, n3] = e3.split("?", 2);
          if (void 0 === n3) return t3;
          const r3 = n3.split("&").map(((e4) => e4.split("=", 2))), i3 = [...Array(r3.length).keys()];
          i3.sort(((e4, t4) => {
            const n4 = r3[e4], i4 = r3[t4];
            return n4 < i4 ? -1 : n4 > i4 ? 1 : e4 - t4;
          }));
          const o3 = i3.map(((e4) => r3[e4]));
          return `${t3}?${o3.map((([e4, t4]) => void 0 !== t4 ? `${e4}=${t4}` : e4)).join("&")}`;
        } catch (t3) {
          return e3;
        }
      }, e2.rewriteLastUrlPath = function(e3, t3) {
        const n3 = e3.split("/");
        return n3.pop(), n3.push(t3), n3.join("/");
      };
      const s2 = (e3, n3) => Object.keys(e3).reduce(((r3, i3) => {
        const o3 = e3[i3], a3 = n3 ? `${n3}[${encodeURIComponent(i3)}]` : encodeURIComponent(i3);
        return `${r3}${r3 ? "&" : ""}${t2.isObject(o3) ? s2(o3, a3) : `${a3}=${encodeURIComponent(`${o3}`)}`}`;
      }), "");
      function a2(e3) {
        return e3 ? s2(e3) : "";
      }
      e2.urlEncodeParameters = a2;
    })(Ta);
    var Aa = {};
    Object.defineProperty(Aa, "__esModule", { value: true }), Aa.Notifications = void 0, Aa.Notifications = class {
      constructor(e2 = [], t2) {
        this._eventRegistry = {}, e2.forEach(((e3) => {
          this._eventRegistry[e3] = [];
        })), t2 && t2.namespace && (this.dispatchNamespace = `com.apple.${t2.namespace}`), this.shouldStorageDispatch && (this._handleGlobalStorageEvent = this._handleGlobalStorageEvent.bind(this), window.addEventListener("storage", this._handleGlobalStorageEvent));
      }
      get shouldStorageDispatch() {
        return "undefined" != typeof window && "undefined" != typeof sessionStorage && this.dispatchNamespace;
      }
      addEventListener(e2, t2) {
        Array.isArray(this._eventRegistry[e2]) && this._eventRegistry[e2].push(t2);
      }
      dispatchEvent(e2, t2) {
        Array.isArray(this._eventRegistry[e2]) && this._eventRegistry[e2].forEach(((e3) => e3(t2)));
      }
      dispatchDistributedEvent(e2, t2) {
        if (this.dispatchEvent(e2, t2), this.shouldStorageDispatch) {
          const n2 = `${this.dispatchNamespace}:${e2}`;
          sessionStorage.setItem(n2, JSON.stringify(t2));
        }
      }
      removeEventListener(e2, t2) {
        if (Array.isArray(this._eventRegistry[e2])) {
          const n2 = this._eventRegistry[e2].indexOf(t2);
          this._eventRegistry[e2].splice(n2, 1);
        }
      }
      _handleGlobalStorageEvent(e2) {
        var t2;
        if (this.dispatchNamespace && (null === (t2 = e2.key) || void 0 === t2 ? void 0 : t2.startsWith(`${this.dispatchNamespace}:`))) {
          const t3 = e2.key.substring(this.dispatchNamespace.length + 1);
          this.dispatchEvent(t3, JSON.parse(e2.newValue));
        }
      }
    };
    var Oa = {};
    !(function(e2) {
      function t2(e3, t3) {
        return Object.prototype.hasOwnProperty.call(Object(e3), t3);
      }
      function n2(e3) {
        if ("object" != typeof e3 || null === e3) throw new TypeError("Source is not an Object");
        const r3 = Array.isArray(e3) ? [] : {};
        for (const i3 in e3) t2(e3, i3) && ("object" == typeof e3[i3] && null !== e3[i3] ? r3[i3] = n2(e3[i3]) : r3[i3] = e3[i3]);
        return r3;
      }
      function r2(e3, t3) {
        return t3.split(".").reduce(((e4, t4) => {
          if (void 0 !== e4) return e4[t4];
        }), e3);
      }
      function i2(e3, n3, r3) {
        return n3.split(".").reduce(((n4, i3, o2, s2) => {
          const a2 = o2 === s2.length - 1, c2 = t2(n4, i3), u2 = n4[i3] instanceof Object, l2 = null === n4[i3];
          if (!a2 && c2 && (!u2 || l2)) throw new TypeError(`Value at ${s2.slice(0, o2 + 1).join(".")} in keypath is not an Object.`);
          return a2 ? (n4[i3] = r3, e3) : c2 ? n4[i3] : n4[i3] = {};
        }), e3);
      }
      Object.defineProperty(e2, "__esModule", { value: true }), e2.deepAssign = e2.transformKeys = e2.transform = e2.set = e2.isEmpty = e2.get = e2.deepClone = e2.hasOwn = void 0, e2.hasOwn = t2, e2.deepClone = n2, e2.get = r2, e2.isEmpty = function(e3) {
        if ("object" != typeof e3) throw new TypeError("Source is not an Object");
        for (const n3 in e3) if (t2(e3, n3)) return false;
        return true;
      }, e2.set = i2, e2.transform = function(e3, t3, n3 = false) {
        return n3 && (e3 = Object.keys(e3).reduce(((t4, n4) => (t4[e3[n4]] = n4, t4)), {})), Object.keys(e3).reduce(((n4, o2) => {
          const s2 = e3[o2], a2 = "function" == typeof s2 ? s2() : r2(t3, s2);
          return a2 && i2(n4, o2, a2), n4;
        }), {});
      }, e2.transformKeys = function(e3, t3) {
        return Object.keys(e3).reduce(((n3, r3) => (n3[t3(r3)] = e3[r3], n3)), {});
      }, e2.deepAssign = (...t3) => {
        if (t3.length <= 1) return t3[0];
        const [r3, i3, ...o2] = t3;
        return Object.keys(i3).forEach(((t4) => {
          const o3 = i3[t4];
          "object" != typeof o3 ? r3[t4] = o3 : Array.isArray(o3) || !(t4 in r3) ? r3[t4] = n2(o3) : e2.deepAssign(r3[t4], o3);
        })), e2.deepAssign(r3, ...o2);
      };
    })(Oa);
    var Ca = {};
    function Ia(e2, t2, n2 = "", r2 = 14, i2, o2) {
      const s2 = /* @__PURE__ */ new Date();
      i2 = null != i2 ? i2 : window;
      const a2 = (o2 = null != o2 ? o2 : /\./.test(i2.location.hostname) ? i2.location.hostname : "").length > 0 ? `domain=${o2}; ` : "";
      s2.setTime(s2.getTime() + 24 * r2 * 60 * 60 * 1e3);
      let c2 = "";
      "https:" === i2.location.protocol && (c2 = "; secure"), i2.document.cookie = `${e2}=${t2}; expires=${s2.toUTCString()}; ${a2}path=${n2}${c2}`;
    }
    Object.defineProperty(Ca, "__esModule", { value: true }), Ca.removeCookie = Ca.setCookie = Ca.getCookie = Ca.GenericStorage = void 0, Ca.GenericStorage = class {
      constructor(e2 = {}) {
        this.data = e2;
      }
      get data() {
        return this._data;
      }
      set data(e2) {
        this._data = e2;
      }
      get length() {
        return this.keys.length;
      }
      get keys() {
        return Object.keys(this.data);
      }
      getItem(e2) {
        return this.data[e2] || null;
      }
      setItem(e2, t2) {
        this.data[e2] = t2;
      }
      removeItem(e2) {
        delete this.data[e2];
      }
      clear() {
        this.keys.forEach(((e2) => this.removeItem(e2)));
      }
      key(e2) {
        return this.keys[e2] || null;
      }
    }, Ca.getCookie = function(e2 = "", t2 = document.cookie) {
      const n2 = t2.match(new RegExp(`(?:^|;\\s*)${e2}=([^;]*)`));
      if (n2) return n2[1];
    }, Ca.setCookie = Ia, Ca.removeCookie = function(e2, t2, n2) {
      Ia(e2, "", "/", 0, t2, n2);
    };
    var Ra = {}, Na = {}, Pa = {}, Da = {};
    Object.defineProperty(Da, "__esModule", { value: true }), Da.camelize = void 0, Da.camelize = (e2) => e2.toLowerCase().replace(/[^a-zA-Z0-9]+(.)/g, ((e3, t2) => t2.toUpperCase())), (function(e2) {
      Object.defineProperty(e2, "__esModule", { value: true }), e2.createLocalStorageFlagStub = e2.createLocalStorageFlag = e2.DevFlags = void 0;
      const t2 = Da;
      e2.DevFlags = {}, e2.createLocalStorageFlag = (n2) => {
        const r2 = "undefined" == typeof localStorage ? void 0 : localStorage, i2 = t2.camelize(n2);
        let o2;
        return e2.DevFlags.hasOwnProperty(i2) ? o2 = e2.DevFlags[i2] : (o2 = { get: () => null == r2 ? void 0 : r2.getItem(n2), json: () => {
          const e3 = null == r2 ? void 0 : r2.getItem(n2);
          try {
            return e3 ? JSON.parse(e3) : void 0;
          } catch (t3) {
            return;
          }
        }, setJson: (e3) => {
          try {
            const t3 = JSON.stringify(e3);
            null == r2 || r2.setItem(n2, t3);
          } catch (t3) {
          }
        }, remove: () => null == r2 ? void 0 : r2.removeItem(n2), set: (e3) => null == r2 ? void 0 : r2.setItem(n2, e3) }, e2.DevFlags[i2] = o2), o2;
      }, e2.createLocalStorageFlagStub = () => ({ get: () => "", set: () => {
      }, json: () => ({}), remove: () => {
      }, setJson: () => {
      } });
    })(Pa);
    var ka = {};
    Object.defineProperty(ka, "__esModule", { value: true }), ka.mkHlsJsAutomationConfigHelper = void 0;
    const xa = Pa;
    ka.mkHlsJsAutomationConfigHelper = xa.createLocalStorageFlag("mk-hlsjs-automation-config"), (function(e2) {
      Object.defineProperty(e2, "__esModule", { value: true }), e2.loadScript = e2.loadScriptReset = e2.cdnBaseURL = e2.isAppleHostname = e2.getHlsJsCdnConfig = e2.determineHlsJsBuild = e2.mkHlsJsLogLevelHelper = e2.determineCdnBaseHost = e2.determineCdnBasePrefix = e2.getScriptSrcElements = e2.findScript = e2.HLSJS_VERSION = void 0;
      const t2 = Pa, n2 = ka, r2 = pa, i2 = "js-cdn.music.apple.com", o2 = "/musickit/v3/";
      e2.HLSJS_VERSION = "2.160.5";
      const s2 = new RegExp(`^https://([a-z0-9]+-)?${(i2 + o2.replace(/v3/, "(v2|v3)")).replace(/[\.\/]/g, "\\$&")}`, "i"), a2 = /^([a-z]+:)?\/\//;
      function c2(e3) {
        return r2.isNodeEnvironment() || !e3 ? null : document.querySelector(`script[src*="${e3}"]`);
      }
      function u2() {
        return "undefined" != typeof document && document.querySelectorAll ? Array.from(document.querySelectorAll("script[src]")) : [];
      }
      function l2() {
        for (const e3 of u2()) {
          const t3 = s2.exec(e3.src);
          if (t3) return t3[1] || "";
        }
        return "";
      }
      function p2() {
        return r2.isNodeEnvironment() ? "" : `//${l2()}${i2}`;
      }
      function d2() {
        let t3;
        switch (e2.mkHlsJsLogLevelHelper.get()) {
          case "trace":
          case "debug":
            t3 = "hls.dev.js";
            break;
          case "info":
          case "error":
          case "warn":
            t3 = "hls.production.verbose.min.js";
            break;
          default:
            t3 = "hls.js";
        }
        return t3;
      }
      function h2(e3) {
        try {
          return new URL(e3).hostname.endsWith(".apple.com");
        } catch (t3) {
        }
        return false;
      }
      function f2(e3, t3 = window) {
        if (r2.isNodeEnvironment()) return "";
        if (t3.localStorage.mkCDNBaseURLOverride) return t3.localStorage.mkCDNBaseURLOverride;
        const n3 = c2(e3);
        return n3 ? n3.getAttribute("src").replace(new RegExp(`${e3}$`), "") : `${p2()}/musickit/v3/`;
      }
      e2.findScript = c2, e2.getScriptSrcElements = u2, e2.determineCdnBasePrefix = l2, e2.determineCdnBaseHost = p2, e2.mkHlsJsLogLevelHelper = t2.createLocalStorageFlag("mk-hlsjs-log-level"), e2.determineHlsJsBuild = d2, e2.getHlsJsCdnConfig = function() {
        const i3 = { hls: "", rtc: "" };
        if (r2.isNodeEnvironment()) return i3;
        const o3 = p2();
        let s3 = e2.HLSJS_VERSION;
        s3 = t2.createLocalStorageFlag("mk-hlsjs-version").get() || s3;
        const a3 = d2();
        return i3.hls = `https:${o3}/hls.js/${s3}/hls.js/${a3}`, i3.rtc = `https:${o3}/hls.js/${s3}/rtc.js/rtc.min.js`, (function(e3) {
          const t3 = n2.mkHlsJsAutomationConfigHelper.json();
          if (!(null == t3 ? void 0 : t3.url)) return;
          const { url: r3 } = t3;
          h2(r3) && "carry-" === l2() && (e3.hls = r3);
        })(i3), i3;
      }, e2.isAppleHostname = h2, e2.cdnBaseURL = f2;
      const g2 = /* @__PURE__ */ new Map();
      e2.loadScriptReset = function() {
        g2.clear();
      }, e2.loadScript = function(e3, t3) {
        const n3 = g2.get(e3);
        if (n3) return n3;
        const i3 = new Promise(((n4, i4) => {
          if (r2.isNodeEnvironment() && i4("Dynamic script loading is unsupported in Node environments."), c2(e3)) return n4();
          const o3 = document.createElement("script");
          let s3;
          t3 && Object.keys(t3).forEach(((e4) => {
            o3.setAttribute(e4, t3[e4]);
          })), o3.onload = () => {
            n4();
          }, o3.onerror = (e4) => {
            i4(e4);
          }, s3 = a2.test(e3) ? e3 : `${f2(e3)}${e3}`, o3.src = s3, document.head.appendChild(o3);
        }));
        return g2.set(e3, i3), i3;
      };
    })(Na);
    var Ma = {}, La = {}, Ua = {}, ja = {}, Fa = {}, Ba = {};
    Object.defineProperty(Ba, "__esModule", { value: true }), Ba.isTopicLog = Ba.LOG_LEVELS = void 0, Ba.LOG_LEVELS = ["trace", "debug", "info", "warn", "error"], Ba.isTopicLog = (e2) => "object" == typeof e2 && null !== e2 && "string" == typeof e2.topic, Object.defineProperty(Fa, "__esModule", { value: true }), Fa.getConsole = void 0;
    const Ka = Ba;
    class Va {
    }
    Ka.LOG_LEVELS.forEach(((e2) => {
      Va.prototype[e2] = () => {
      };
    }));
    const Ha = new Va();
    Fa.getConsole = () => "undefined" == typeof console ? Ha : console;
    var Ga = {}, $a = {};
    Object.defineProperty($a, "__esModule", { value: true }), $a.getConfiguredLevel = $a.getConfiguredTopic = void 0;
    const za = Pa, Wa = ha, qa = Ba;
    za.createLocalStorageFlag("mk-debug"), za.createLocalStorageFlag("mk-debug-topic");
    const Qa = "undefined" == typeof localStorage ? void 0 : localStorage;
    $a.getConfiguredTopic = (e2 = "mk-debug-topic", t2 = "*") => Ya(e2, t2), $a.getConfiguredLevel = (e2 = "mk-debug", t2 = qa.LOG_LEVELS.length) => parseInt(Ya(e2, t2), 10);
    const Ya = Wa.memoize(((e2, t2) => {
      var n2, r2;
      return null !== (r2 = null === (n2 = null == Qa ? void 0 : Qa.getItem) || void 0 === n2 ? void 0 : n2.call(Qa, e2)) && void 0 !== r2 ? r2 : `${t2}`;
    }));
    Object.defineProperty(Ga, "__esModule", { value: true }), Ga.canLogLevel = void 0;
    const Ja = $a, Xa = Ba;
    Ga.canLogLevel = (e2, t2) => -1 !== Za(Ja.getConfiguredLevel(t2)).indexOf(e2);
    const Za = (e2) => isNaN(e2) || e2 < 0 ? [] : Xa.LOG_LEVELS.slice(e2);
    var ec = {};
    Object.defineProperty(ec, "__esModule", { value: true }), ec.canLogTopic = void 0;
    const tc = ha, nc = $a;
    ec.canLogTopic = (e2, t2) => {
      const n2 = nc.getConfiguredTopic(t2);
      return rc(n2).some(((t3) => t3.test(e2)));
    };
    const rc = tc.memoize(((e2) => e2.split(/[\s,]+/).map(((e3) => {
      const t2 = e3.replace(/\*/g, ".*?");
      return new RegExp("^" + t2 + "$");
    }))));
    Object.defineProperty(ja, "__esModule", { value: true }), ja.log = ja.error = ja.warn = ja.info = ja.debug = ja.trace = void 0;
    const ic = Fa, oc = Ga, sc = ec;
    ja.trace = (e2, ...t2) => ac(Object.assign({ level: "trace" }, e2), ...t2), ja.debug = (e2, ...t2) => ac(Object.assign({ level: "debug" }, e2), ...t2), ja.info = (e2, ...t2) => ac(Object.assign({ level: "info" }, e2), ...t2), ja.warn = (e2, ...t2) => ac(Object.assign({ level: "warn" }, e2), ...t2), ja.error = (e2, ...t2) => ac(Object.assign({ level: "error" }, e2), ...t2), ja.log = (e2, ...t2) => ac(e2, ...t2);
    const ac = (e2, ...t2) => {
      let { level: n2, levelKey: r2, topic: i2, topicKey: o2 } = e2;
      if (n2 = null != n2 ? n2 : "debug", !oc.canLogLevel(n2, r2)) return;
      if (!sc.canLogTopic(i2, o2)) return;
      const s2 = ic.getConsole();
      if ("function" != typeof s2[n2]) return;
      let [a2, ...c2] = t2;
      void 0 !== i2 && (a2 = `${i2}: ${a2}`), s2[n2](a2, ...c2);
    };
    Object.defineProperty(Ua, "__esModule", { value: true }), Ua.logger = Ua.Logger = void 0;
    const cc = ja, uc = $a, lc = Ba;
    class pc {
      constructor(e2) {
        var t2, n2, r2, i2;
        this._levelFilterKey = "mk-debug", "string" == typeof e2 ? (this._levelFilterKey = e2, this.level = uc.getConfiguredLevel(this._levelFilterKey, 5)) : "object" == typeof e2 ? (this._levelFilterKey = null !== (t2 = e2.levelFilterStorageKey) && void 0 !== t2 ? t2 : this._levelFilterKey, this._topicFilterKey = null !== (n2 = e2.topicFilterStorageKey) && void 0 !== n2 ? n2 : this.generateDefaultTopicFilterStorageKey(this._levelFilterKey), this.topic = e2.topic, this.level = null !== (r2 = e2.level) && void 0 !== r2 ? r2 : uc.getConfiguredLevel(this._levelFilterKey, 5)) : this.level = null != e2 ? e2 : uc.getConfiguredLevel(this._levelFilterKey, 5), this._topicFilterKey = null !== (i2 = this._topicFilterKey) && void 0 !== i2 ? i2 : this.generateDefaultTopicFilterStorageKey(this._levelFilterKey);
      }
      get enabled() {
        return this.level < 5;
      }
      set enabled(e2) {
        this.level = e2 ? 1 : 5;
      }
      debug(e2, ...t2) {
        this.callLogMethod(cc.debug, e2, ...t2);
      }
      error(e2, ...t2) {
        this.callLogMethod(cc.error, e2, ...t2);
      }
      log(e2, ...t2) {
        this.callLogMethod(cc.log, e2, ...t2);
      }
      info(e2, ...t2) {
        this.callLogMethod(cc.info, e2, ...t2);
      }
      trace(e2, ...t2) {
        this.callLogMethod(cc.trace, e2, ...t2);
      }
      warn(e2, ...t2) {
        this.callLogMethod(cc.warn, e2, ...t2);
      }
      callLogMethod(e2, t2, ...n2) {
        var r2, i2;
        const o2 = { levelKey: this._levelFilterKey, topicKey: this._topicFilterKey, topic: this.topic };
        let s2 = t2;
        lc.isTopicLog(t2) && (o2.topic = null !== (r2 = t2.topic) && void 0 !== r2 ? r2 : o2.topic, s2 = null !== (i2 = t2.message) && void 0 !== i2 ? i2 : n2.shift()), e2(o2, s2, ...n2);
      }
      generateDefaultTopicFilterStorageKey(e2) {
        return `${e2}-topic`;
      }
    }
    Ua.Logger = pc, Ua.logger = new pc(), (function(e2) {
      var t2 = oa && oa.__createBinding || (Object.create ? function(e3, t3, n3, r2) {
        void 0 === r2 && (r2 = n3), Object.defineProperty(e3, r2, { enumerable: true, get: function() {
          return t3[n3];
        } });
      } : function(e3, t3, n3, r2) {
        void 0 === r2 && (r2 = n3), e3[r2] = t3[n3];
      }), n2 = oa && oa.__exportStar || function(e3, n3) {
        for (var r2 in e3) "default" === r2 || Object.prototype.hasOwnProperty.call(n3, r2) || t2(n3, e3, r2);
      };
      Object.defineProperty(e2, "__esModule", { value: true }), n2(Ua, e2);
    })(La), Object.defineProperty(Ma, "__esModule", { value: true }), Ma.skLogger = void 0;
    const dc = La;
    Ma.skLogger = new dc.Logger("sk-debug");
    var hc = {};
    Object.defineProperty(hc, "__esModule", { value: true }), hc.AuthBridgeBase = void 0;
    const fc = Ma;
    hc.AuthBridgeBase = class {
      constructor() {
        this._targetOrigin = "*";
      }
      init(e2, t2) {
        var n2;
        this._receiveWindow = e2, this._sendWindow = t2, this.handleMessage = this.handleMessage.bind(this), null === (n2 = this._receiveWindow) || void 0 === n2 || n2.addEventListener("message", this.handleMessage);
      }
      sendMessage(e2, t2) {
        const n2 = { action: `mediakit:${e2}`, data: t2 };
        this._sendWindow && this._sendWindow.postMessage(JSON.stringify(n2), this._targetOrigin);
      }
      handleMessage(e2) {
        if (!this._isOriginAllowed(e2.origin)) return;
        let t2;
        try {
          t2 = JSON.parse(e2.data);
        } catch (r2) {
        }
        if (!t2 || !this._isNamespacedData(t2)) return;
        "*" === this._targetOrigin && (this._targetOrigin = e2.origin), fc.skLogger.debug("auth-bridge: handleMessage", t2);
        const n2 = t2.action.replace("mediakit:", "");
        this[n2] ? this[n2](t2.data) : fc.skLogger.debug("auth-bridge: unsupported method", n2);
      }
      _isOriginAllowed(e2) {
        if (!e2) return false;
        const [t2, n2] = e2.split("://");
        let r2 = "";
        return n2 && (r2 = n2.split(":")[0]), "https" === t2 && !!r2 && r2.endsWith(".apple.com");
      }
      _isNamespacedData(e2) {
        return e2.action && -1 !== e2.action.indexOf("mediakit:");
      }
    }, Object.defineProperty(Ra, "__esModule", { value: true }), Ra.AuthBridgeApp = void 0;
    const gc = Na, vc = Ca, mc = Ma, yc = hc;
    class _c extends yc.AuthBridgeBase {
      constructor() {
        super(), this.whenFrameInited = new Promise(((e2) => this._frameInitResolve = e2)), this.whenAuthCompleted = new Promise(((e2) => this._authUpdateResolve = e2)), this.frame = document.createElement("iframe"), this.frame.src = this._getIframeSrc(), this.frame.style.display = "none", document.body.appendChild(this.frame), this.init(window, this.frame.contentWindow);
      }
      requestAuthUpdate() {
        this.whenFrameInited.then((() => this.sendMessage("requestAuthUpdate")));
      }
      setCookieItem(e2, t2) {
        this.whenFrameInited.then((() => this.sendMessage("setCookieItem", { name: e2, value: t2 })));
      }
      clearAuth() {
        this.whenFrameInited.then((() => this.sendMessage("clearAuth")));
      }
      frameInit() {
        var e2;
        null === (e2 = this._frameInitResolve) || void 0 === e2 || e2.call(this), this.requestAuthUpdate();
      }
      updateAuth(e2) {
        if ((null == e2 ? void 0 : e2.enabled) && (null == e2 ? void 0 : e2.cookies)) {
          const t2 = e2.cookies;
          Object.keys(t2).forEach(((e3) => {
            var n2;
            const r2 = null !== (n2 = t2[e3]) && void 0 !== n2 ? n2 : "";
            r2 ? vc.setCookie(e3, r2, "/", 7) : vc.removeCookie(e3);
          }));
        }
        this._authUpdateResolve && (this._authUpdateResolve(), this._authUpdateResolve = void 0);
      }
      authClearedFromOtherFrame() {
        mc.skLogger.warn("Override auth-bridge/app's authClearedFromOtherFrame to trigger app-specific sign out behavior");
      }
      _getIframeSrc() {
        let e2 = gc.determineCdnBasePrefix();
        return e2 && (e2 = `?env=${e2.substring(0, e2.length - 1)}`), `https://mediaauth.apple.com/auth-bridge/${e2}`;
      }
    }
    Ra.AuthBridgeApp = _c;
    var bc = {};
    Object.defineProperty(bc, "__esModule", { value: true }), bc.getCommerceHostname = bc.isItmsBuild = void 0;
    const Sc = /* @__PURE__ */ new Set(["apps", "books", "music", "podcasts", "tv"]), Ec = /\.apple\.com$/, wc = "$BUILD_VARIANT";
    bc.isItmsBuild = function() {
      return "itms" === wc;
    }, bc.getCommerceHostname = function(e2, t2) {
      !t2 && "undefined" != typeof location && location.hostname && (t2 = location);
      let n2 = `${e2}.itunes.apple.com`;
      if (!t2) return n2;
      const r2 = (function(e3) {
        if (!e3 || !Ec.test(e3)) return;
        const t3 = e3.split(".");
        let n3 = t3[t3.length - 3];
        const r3 = n3;
        if (n3 && n3.includes("-")) {
          const e4 = n3.split("-");
          n3 = e4[e4.length - 1];
        }
        return Sc.has(n3) ? r3 : void 0;
      })(t2.hostname);
      return r2 && (n2 = `${e2}.${r2}.apple.com`), n2;
    };
    var Tc = {};
    !(function(e2) {
      var t2;
      Object.defineProperty(e2, "__esModule", { value: true }), e2.buildQueryParams = e2.Defaults = void 0, (function(e3) {
        e3.APP = "music", e3.P = "subscribe";
      })(t2 = e2.Defaults || (e2.Defaults = {})), e2.buildQueryParams = function(e3 = { app: t2.APP, p: t2.P }) {
        return void 0 === e3.app && (e3.app = t2.APP), void 0 === e3.p && (e3.p = t2.P), Object.keys(e3).map(((t3) => `${encodeURIComponent(t3)}=${encodeURIComponent(e3[t3])}`)).join("&");
      };
    })(Tc);
    var Ac = {};
    Object.defineProperty(Ac, "__esModule", { value: true }), Ac.SKRequiredPrivacyVersion = Ac.SKRealmCidNamespace = Ac.SKRealmBundle = void 0, Ac.SKRealmBundle = { 2: "com.apple.onboarding.tvapp", 0: "com.apple.onboarding.applemusic" }, Ac.SKRealmCidNamespace = { 2: "pltvcid", 0: "pldfltcid" }, Ac.SKRequiredPrivacyVersion = { "com.apple.onboarding.tvapp": 5, "com.apple.onboarding.applemusic": 3 };
    var Oc = {}, Cc = {}, Ic = {};
    !(function(e2) {
      Object.defineProperty(e2, "__esModule", { value: true }), e2.uint8ArrayToBase64 = e2.stringToUint16Array = e2.stringToUint8Array = e2.stringToHashCode = e2.ensureArray = e2.base64ToUint8Array = e2.arrayBufferToString = void 0;
      const t2 = pa, n2 = ha;
      e2.arrayBufferToString = n2.memoize(((e3) => {
        const t3 = new Uint16Array(e3), n3 = t3.length;
        let r2 = "";
        for (let i2 = 0; i2 < n3; i2++) r2 += String.fromCharCode(t3[i2]);
        return r2;
      })), e2.base64ToUint8Array = n2.memoize(((n3) => {
        const r2 = t2.atob(n3);
        return e2.stringToUint8Array(r2);
      })), e2.ensureArray = function(e3 = []) {
        return Array.isArray(e3) ? e3 : [e3];
      }, e2.stringToHashCode = n2.memoize(((e3) => {
        let t3 = 0;
        if (0 !== e3.length) for (let n3 = 0; n3 < e3.length; n3++) t3 = (t3 << 5) - t3 + e3.charCodeAt(n3), t3 |= 0;
        return t3;
      })), e2.stringToUint8Array = n2.memoize(((e3) => {
        const t3 = e3.length, n3 = new ArrayBuffer(t3), r2 = new Uint8Array(n3);
        for (let i2 = 0; i2 < t3; i2++) r2[i2] = e3.charCodeAt(i2);
        return r2;
      })), e2.stringToUint16Array = n2.memoize(((e3) => {
        const t3 = e3.length, n3 = new ArrayBuffer(2 * t3), r2 = new Uint16Array(n3);
        for (let i2 = 0; i2 < t3; i2++) r2[i2] = e3.charCodeAt(i2);
        return r2;
      })), e2.uint8ArrayToBase64 = n2.memoize(((e3) => {
        let t3, n3, r2, i2, o2, s2, a2, c2 = 0;
        const u2 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
        let l2 = "";
        for (; c2 < e3.length; ) t3 = e3[c2++], n3 = c2 < e3.length ? e3[c2++] : Number.NaN, r2 = c2 < e3.length ? e3[c2++] : Number.NaN, i2 = t3 >> 2, o2 = (3 & t3) << 4 | n3 >> 4, s2 = (15 & n3) << 2 | r2 >> 6, a2 = 63 & r2, isNaN(n3) ? s2 = a2 = 64 : isNaN(r2) && (a2 = 64), l2 += u2.charAt(i2) + u2.charAt(o2) + u2.charAt(s2) + u2.charAt(a2);
        return l2;
      }));
    })(Ic), (function(e2) {
      var t2 = oa && oa.__awaiter || function(e3, t3, n3, r3) {
        return new (n3 || (n3 = Promise))((function(i3, o3) {
          function s2(e4) {
            try {
              c2(r3.next(e4));
            } catch (t4) {
              o3(t4);
            }
          }
          function a2(e4) {
            try {
              c2(r3.throw(e4));
            } catch (t4) {
              o3(t4);
            }
          }
          function c2(e4) {
            var t4;
            e4.done ? i3(e4.value) : (t4 = e4.value, t4 instanceof n3 ? t4 : new n3((function(e5) {
              e5(t4);
            }))).then(s2, a2);
          }
          c2((r3 = r3.apply(e3, t3 || [])).next());
        }));
      };
      Object.defineProperty(e2, "__esModule", { value: true }), e2.Dispatch = e2.RPCErrorCodes = void 0;
      const n2 = Ic, r2 = Oa;
      var i2;
      !(function(e3) {
        e3[e3.ParseError = -32700] = "ParseError", e3[e3.InvalidRequest = -32600] = "InvalidRequest", e3[e3.MethodNotFound = -32601] = "MethodNotFound", e3[e3.InvalidParams = -32602] = "InvalidParams", e3[e3.InternalError = -32603] = "InternalError";
      })(i2 = e2.RPCErrorCodes || (e2.RPCErrorCodes = {}));
      const o2 = "2.0";
      e2.Dispatch = class {
        constructor(e3 = {}) {
          this._registry = {}, this._sequence = 0, this.handle = (e4) => {
            e4.data && e4.data.jsonrpc === o2 && ("*" !== this.origin && this.origin !== e4.origin || (e4.data.method && this.destination ? this.handleRequest(e4.data).then(((e5) => {
              this.send(this.destination, e5);
            })) : (r2.hasOwn(e4.data, "result") || e4.data.error) && this.handleResponse(e4.data)));
          }, this.destination = e3.destination, this.methods = e3.methods || {}, this.origin = e3.origin || "*", e3.source && (this.source = e3.source);
        }
        get source() {
          return this._source;
        }
        set source(e3) {
          if (!e3 && this._source) return this._source.removeEventListener("message", this.handle), void (this._source = void 0);
          e3.addEventListener("message", this.handle), this._source = e3;
        }
        apply(e3, t3) {
          if (!this.destination) throw new Error("No destination");
          const n3 = this._sequence++, r3 = new Promise(((e4, t4) => {
            this._registry[n3] = { resolve: e4, reject: t4 };
          }));
          return this.send(this.destination, { jsonrpc: o2, id: n3, method: e3, params: t3 }), r3;
        }
        call(e3, ...t3) {
          return this.apply(e3, t3);
        }
        handleRequest(e3) {
          return t2(this, void 0, void 0, (function* () {
            const t3 = { jsonrpc: o2, id: e3.id }, r3 = this.methods[e3.method];
            if (!r3) return Object.assign(t3, { error: { code: i2.MethodNotFound, message: "Method not found" } });
            try {
              const i3 = yield r3.apply(void 0, n2.ensureArray(e3.params));
              return Object.assign(t3, { result: i3 });
            } catch (s2) {
              return Object.assign(t3, { error: { code: s2.code || i2.InternalError, message: s2.message } });
            }
          }));
        }
        handleResponse(e3) {
          const t3 = this._registry[e3.id];
          delete this._registry[e3.id], t3 && (e3.error ? t3.reject(Object.assign(Error(), e3.error)) : t3.resolve(e3.result));
        }
        send(e3, t3) {
          e3.postMessage(t3, e3.window === e3 ? this.origin : void 0);
        }
      };
    })(Cc), (function(e2) {
      var t2 = oa && oa.__awaiter || function(e3, t3, n3, r3) {
        return new (n3 || (n3 = Promise))((function(i3, o3) {
          function s3(e4) {
            try {
              c2(r3.next(e4));
            } catch (t4) {
              o3(t4);
            }
          }
          function a3(e4) {
            try {
              c2(r3.throw(e4));
            } catch (t4) {
              o3(t4);
            }
          }
          function c2(e4) {
            var t4;
            e4.done ? i3(e4.value) : (t4 = e4.value, t4 instanceof n3 ? t4 : new n3((function(e5) {
              e5(t4);
            }))).then(s3, a3);
          }
          c2((r3 = r3.apply(e3, t3 || [])).next());
        }));
      };
      Object.defineProperty(e2, "__esModule", { value: true }), e2.ServiceSetupView = e2.ServiceSetupAction = e2.ALLOWED_DOMAIN_REGEX = e2.SUBSCRIBE_URL = e2.SERVICE_URL = e2.AUTHENTICATE_REQUEST_URL = e2.ACTIVATE_REQUEST_URL = e2.validateToken = e2.AuthorizationStatus = void 0;
      const n2 = Cc, r2 = bc, i2 = Tc;
      var o2, s2;
      function a2(e3) {
        var t3;
        if ("string" != typeof e3) return false;
        const n3 = e3.match(/[a-zA-Z0-9=\/+]{32,}==$/);
        return null !== (t3 = n3 && n3.length > 0) && void 0 !== t3 && t3;
      }
      !(function(e3) {
        e3[e3.UNAVAILABLE = -1] = "UNAVAILABLE", e3[e3.NOT_DETERMINED = 0] = "NOT_DETERMINED", e3[e3.DENIED = 1] = "DENIED", e3[e3.RESTRICTED = 2] = "RESTRICTED", e3[e3.AUTHORIZED = 3] = "AUTHORIZED";
      })(o2 = e2.AuthorizationStatus || (e2.AuthorizationStatus = {})), e2.validateToken = a2, e2.ACTIVATE_REQUEST_URL = "https://activate.apple.com/mkauth", e2.AUTHENTICATE_REQUEST_URL = `https://${r2.getCommerceHostname("buy")}/commerce/account/authenticateMusicKitRequest`, e2.SERVICE_URL = "https://authorize.music.apple.com", e2.SUBSCRIBE_URL = `${e2.SERVICE_URL}/upsell`, e2.ALLOWED_DOMAIN_REGEX = /^https?:\/\/(.+\.)*(apple\.com|apps\.mzstatic\.com)(\/[\w\d]+)*$/, (function(e3) {
        e3[e3.AUTHORIZE = 0] = "AUTHORIZE", e3[e3.SUBSCRIBE = 1] = "SUBSCRIBE";
      })(s2 = e2.ServiceSetupAction || (e2.ServiceSetupAction = {})), e2.ServiceSetupView = class {
        constructor(e3, t3 = {}) {
          var r3;
          if (this.developerToken = e3, this.authenticateMethod = "GET", this.target = "apple-music-service-view", this.deeplinkParameters = t3 && t3.deeplinkParameters || {}, this.iconURL = t3 && t3.iconURL, this.authenticateMethod = t3 && t3.authenticateMethod || "GET", this.isServiceView && window.opener !== window) {
            const e4 = "undefined" != typeof sessionStorage ? sessionStorage.getItem("ac") : void 0, t4 = null != e4 ? new URL(e4).origin : void 0;
            t4 && (this.dispatch = new n2.Dispatch({ destination: null !== (r3 = window.opener) && void 0 !== r3 ? r3 : void 0, origin: t4, source: window }));
          }
        }
        get isServiceView() {
          return /(authorize\.(.+\.)*apple\.com)/i.test(window.location.hostname) || window && window.name === this.target || false;
        }
        focus() {
          this._window && window.focus && this._window.focus();
        }
        load(e3 = { action: s2.AUTHORIZE }) {
          return t2(this, void 0, void 0, (function* () {
            return e3.action === s2.SUBSCRIBE ? this._subscribeAction(e3.parameters) : this._authorizeAction(e3.parameters);
          }));
        }
        present(e3 = "", t3) {
          const { height: n3, left: r3, top: i3, width: o3 } = this._calculateClientDimensions(), s3 = { height: 650, menubar: "no", resizable: "no", scrollbars: "no", status: "no", toolbar: "no", width: 650 }, a3 = Object.assign(Object.assign(Object.assign({}, s3), { left: o3 / 2 - s3.width / 2 + r3, top: n3 / 2 - s3.height / 2 + i3 }), t3), c2 = Object.keys(a3).map(((e4) => `${e4}=${a3[e4]}`)).join(",");
          return /trident|msie/i.test(navigator.userAgent) ? (this._window = window.open(window.location.href, this.target, c2) || void 0, this._window.location.href = e3) : this._window = window.open(e3, this.target, c2) || void 0, /\bedge\b/i.test(navigator.userAgent) && (this._window.opener = self), this.focus(), this._window;
        }
        _authorizeAction(r3 = {}) {
          var s3;
          return t2(this, void 0, void 0, (function* () {
            let t3, c2;
            const u2 = (null === (s3 = window.location) || void 0 === s3 ? void 0 : s3.href) || "";
            return "GET" === this.authenticateMethod ? c2 = `${e2.SERVICE_URL}/woa?${i2.buildQueryParams(Object.assign(Object.assign({}, this.deeplinkParameters), { a: btoa(this._thirdPartyInfo()), referrer: u2 }))}` : (t3 = this._buildFormElement(e2.AUTHENTICATE_REQUEST_URL), document.body.appendChild(t3)), new Promise(((i3, s4) => {
              const u3 = this.present(c2);
              this.dispatch = new n2.Dispatch({ methods: { authorize(e3, t4, n3) {
                a2(e3) ? i3({ restricted: t4 && "1" === t4, userToken: e3, cid: n3 }) : s4(o2.NOT_DETERMINED);
              }, close() {
              }, decline() {
                s4(o2.DENIED);
              }, switchUserId() {
                s4(o2.NOT_DETERMINED);
              }, thirdPartyInfo: () => this._thirdPartyInfo(this.developerToken, Object.assign(Object.assign({}, this.deeplinkParameters), r3)), unavailable() {
                s4(o2.UNAVAILABLE);
              } }, origin: e2.SERVICE_URL, source: window, destination: u3 }), t3 && t3.submit();
            }));
          }));
        }
        _buildFormElement(e3, t3 = this.target, n3 = this.developerToken) {
          const r3 = document.createElement("form");
          r3.setAttribute("method", "post"), r3.setAttribute("action", e3), r3.setAttribute("target", t3), r3.style.display = "none";
          const i3 = document.createElement("input");
          i3.setAttribute("name", "jwtToken"), i3.setAttribute("value", n3), r3.appendChild(i3);
          const o3 = document.createElement("input");
          o3.setAttribute("name", "isWebPlayer"), o3.setAttribute("value", "true"), r3.appendChild(o3);
          const s3 = document.createElement("input");
          return s3.setAttribute("name", "LogoURL"), s3.setAttribute("value", ""), r3.appendChild(s3), r3;
        }
        _calculateClientDimensions(e3 = window) {
          return { height: e3.innerHeight ? e3.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height, left: e3.screenLeft ? e3.screenLeft : screen.availLeft || screen.left, top: e3.screenTop ? e3.screenTop : screen.availTop || screen.top, width: e3.innerWidth ? e3.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width };
        }
        _subscribeAction(n3 = {}) {
          return t2(this, void 0, void 0, (function* () {
            return Object.assign(n3, this.deeplinkParameters), new Promise(((t3, r3) => {
              const o3 = `${e2.SUBSCRIBE_URL}?${i2.buildQueryParams(n3)}`;
              this.present(o3), window.addEventListener("message", (({ data: n4, origin: i3, source: o4 }) => {
                const { closeWindow: s3, launchClient: a3 } = "string" == typeof n4 ? JSON.parse(n4) : n4;
                i3 && !e2.ALLOWED_DOMAIN_REGEX.test(i3) || (a3 ? 0 === a3.supported ? r3("Unable to subscribe on this platform.") : t3(a3) : r3("Subscribe action error."));
              }));
            }));
          }));
        }
        _thirdPartyInfo(e3 = this.developerToken, t3) {
          var n3;
          let r3 = this.iconURL;
          const i3 = window.location.host || document.referrer, o3 = [...[].slice.call(document.querySelectorAll('link[rel="apple-music-app-icon"]')), ...[].slice.call(document.querySelectorAll('link[rel="apple-touch-icon-precomposed"]')), ...[].slice.call(document.querySelectorAll('link[rel="apple-touch-icon"]'))];
          if (o3 && o3[0] && o3[0].href) {
            const e4 = o3.find(((e5) => !!e5.sizes && "120x120" === e5.sizes.value));
            r3 = null !== (n3 = null == e4 ? void 0 : e4.href) && void 0 !== n3 ? n3 : o3[0].href;
          }
          return JSON.stringify({ thirdPartyIconURL: r3, thirdPartyName: i3, thirdPartyParameters: t3, thirdPartyToken: e3 });
        }
      };
    })(Oc);
    var Rc = {};
    !(function(e2) {
      var t2 = oa && oa.__awaiter || function(e3, t3, n3, r3) {
        return new (n3 || (n3 = Promise))((function(i3, o2) {
          function s2(e4) {
            try {
              c2(r3.next(e4));
            } catch (t4) {
              o2(t4);
            }
          }
          function a2(e4) {
            try {
              c2(r3.throw(e4));
            } catch (t4) {
              o2(t4);
            }
          }
          function c2(e4) {
            var t4;
            e4.done ? i3(e4.value) : (t4 = e4.value, t4 instanceof n3 ? t4 : new n3((function(e5) {
              e5(t4);
            }))).then(s2, a2);
          }
          c2((r3 = r3.apply(e3, t3 || [])).next());
        }));
      };
      Object.defineProperty(e2, "__esModule", { value: true }), e2.Storefront = e2.fetchStorefronts = e2.Defaults = void 0;
      const n2 = wa;
      var r2;
      function i2(e3, n3 = "https://api.music.apple.com/v1") {
        return t2(this, void 0, void 0, (function* () {
          const t3 = new Headers({ Authorization: `Bearer ${e3}` }), r3 = yield fetch(`${n3}/storefronts`, { headers: t3 }), i3 = yield r3.json();
          return i3.errors ? Promise.reject(i3.errors) : i3.data;
        }));
      }
      (r2 = e2.Defaults || (e2.Defaults = {})).ID = "us", r2.LANGUAGE_TAG = "en-gb", e2.fetchStorefronts = i2, e2.Storefront = class {
        constructor(e3, t3, n3) {
          this.id = e3, this.attributes = t3, this.type = "storefronts", this.href = n3 || `/v1/${this.type}/${e3}`;
        }
        static inferFromLanguages(e3, r3 = n2.getLanguages()) {
          return t2(this, void 0, void 0, (function* () {
            const t3 = yield i2(e3), n3 = t3.map(((e4) => e4.id)), o2 = r3[0] || "en-US", [s2, a2] = o2.toLowerCase().split(/-|_/), c2 = n3.includes(a2) ? a2 : "us";
            return t3.find(((e4) => e4.id === c2));
          }));
        }
      };
    })(Rc);
    var Nc = {};
    !(function(e2) {
      var t2;
      Object.defineProperty(e2, "__esModule", { value: true }), e2.SKStorageKey = void 0, (t2 = e2.SKStorageKey || (e2.SKStorageKey = {})).DEFAULT_CID = "pldfltcid", t2.TV_CID = "pltvcid", t2.RESTRICTIONS_ENABLED = "itre", t2.STOREFRONT_COUNTRY_CODE = "itua", t2.USER_TOKEN = "media-user-token";
    })(Nc), (function(e2) {
      var t2 = oa && oa.__decorate || function(e3, t3, n3, r3) {
        var i3, o3 = arguments.length, s3 = o3 < 3 ? t3 : null === r3 ? r3 = Object.getOwnPropertyDescriptor(t3, n3) : r3;
        if ("object" == typeof Reflect && "function" == typeof Reflect.decorate) s3 = Reflect.decorate(e3, t3, n3, r3);
        else for (var a3 = e3.length - 1; a3 >= 0; a3--) (i3 = e3[a3]) && (s3 = (o3 < 3 ? i3(s3) : o3 > 3 ? i3(t3, n3, s3) : i3(t3, n3)) || s3);
        return o3 > 3 && s3 && Object.defineProperty(t3, n3, s3), s3;
      }, n2 = oa && oa.__metadata || function(e3, t3) {
        if ("object" == typeof Reflect && "function" == typeof Reflect.metadata) return Reflect.metadata(e3, t3);
      }, r2 = oa && oa.__awaiter || function(e3, t3, n3, r3) {
        return new (n3 || (n3 = Promise))((function(i3, o3) {
          function s3(e4) {
            try {
              c3(r3.next(e4));
            } catch (t4) {
              o3(t4);
            }
          }
          function a3(e4) {
            try {
              c3(r3.throw(e4));
            } catch (t4) {
              o3(t4);
            }
          }
          function c3(e4) {
            var t4;
            e4.done ? i3(e4.value) : (t4 = e4.value, t4 instanceof n3 ? t4 : new n3((function(e5) {
              e5(t4);
            }))).then(s3, a3);
          }
          c3((r3 = r3.apply(e3, t3 || [])).next());
        }));
      };
      Object.defineProperty(e2, "__esModule", { value: true }), e2.StoreKit = e2.PLDFLTCID = e2.StoreKitNotifications = e2.SKStorageKey = e2.SKRequiredPrivacyVersion = e2.SKRealmBundle = e2.validateToken = e2.AuthorizationStatus = void 0;
      const i2 = aa, o2 = ca, s2 = la, a2 = ba, c2 = Sa, u2 = Ea, l2 = wa, p2 = Ta, d2 = Aa, h2 = Oa, f2 = Ca, g2 = pa, v2 = Ra, m2 = bc, y2 = Tc, _2 = Ac;
      Object.defineProperty(e2, "SKRealmBundle", { enumerable: true, get: function() {
        return _2.SKRealmBundle;
      } }), Object.defineProperty(e2, "SKRequiredPrivacyVersion", { enumerable: true, get: function() {
        return _2.SKRequiredPrivacyVersion;
      } });
      const b2 = Oc;
      Object.defineProperty(e2, "AuthorizationStatus", { enumerable: true, get: function() {
        return b2.AuthorizationStatus;
      } }), Object.defineProperty(e2, "validateToken", { enumerable: true, get: function() {
        return b2.validateToken;
      } });
      const S2 = Rc, E2 = Nc;
      var w2;
      Object.defineProperty(e2, "SKStorageKey", { enumerable: true, get: function() {
        return E2.SKStorageKey;
      } }), (function(e3) {
        e3.authorizationStatusDidChange = "authorizationStatusDidChange", e3.authorizationStatusWillChange = "authorizationStatusWillChange", e3.eligibleForSubscribeView = "eligibleForSubscribeView", e3.needsGDPRDidChange = "needsGDPRDidChange", e3.storefrontCountryCodeDidChange = "storefrontCountryCodeDidChange", e3.storefrontIdentifierDidChange = "storefrontIdentifierDidChange", e3.userTokenDidChange = "userTokenDidChange";
      })(w2 = e2.StoreKitNotifications || (e2.StoreKitNotifications = {})), e2.PLDFLTCID = E2.SKStorageKey.DEFAULT_CID;
      let T2 = false;
      T2 = true;
      const A2 = `https://${m2.getCommerceHostname("buy")}`, O2 = `https://${m2.getCommerceHostname("play")}/WebObjects/MZPlay.woa/wa`;
      class C2 extends d2.Notifications {
        constructor(e3, t3) {
          super([w2.authorizationStatusDidChange, w2.authorizationStatusWillChange, w2.eligibleForSubscribeView, w2.needsGDPRDidChange, w2.storefrontCountryCodeDidChange, w2.userTokenDidChange, w2.storefrontIdentifierDidChange]), this.developerToken = e3, this.apiBase = "https://api.music.apple.com/v1", this.iTunesBuyBase = A2, this.meParameters = {}, this.persist = "localstorage", this.playBase = O2, this.prefix = "music", this.realm = 0, this.storage = window.localStorage, this._authorizationStatus = b2.AuthorizationStatus.NOT_DETERMINED, this._dispatchedSubscribeView = false, this._me = null, this._cids = {}, this._gdprVersion = -1, this._needsGDPR = void 0, this._dynamicUserToken = f2.getCookie(E2.SKStorageKey.USER_TOKEN), t3 && (t3.apiBase && (this.apiBase = t3.apiBase), t3.deeplink && (this.deeplinkParameters = t3.deeplink), t3.meParameters && (this.meParameters = t3.meParameters), t3.persist && (this.persist = t3.persist), t3.prefix && (this.prefix = t3.prefix), void 0 !== t3.realm && (this.realm = t3.realm), this.bundleId = _2.SKRealmBundle[this.realm]), this.cidNamespace = _2.SKRealmCidNamespace[this.realm], this._developerToken = new s2.DeveloperToken(e3), this._serviceSetupView = new b2.ServiceSetupView(e3, { authenticateMethod: t3 && t3.authenticateMethod, iconURL: t3 && t3.iconURL, deeplinkParameters: this.deeplinkParameters }), this.storagePrefix = `${this.prefix}.${this._developerToken.teamId}`.toLocaleLowerCase();
          const n3 = this._getStorageItem(E2.SKStorageKey.USER_TOKEN);
          this.userToken = n3 || void 0, this.developerToken && this.userTokenIsValid && (this._restrictedEnabled = this.restrictedEnabled, this.shouldDisplayPrivacyLink(this.bundleId).catch((() => {
          }))), this._storefrontCountryCode = this.storefrontCountryCode, this.whenAuthCompleted = Promise.resolve(), g2.isNodeEnvironment() || (this._processLocationHash(window.location.hash), "cookie" !== this.persist || (null == t3 ? void 0 : t3.disableAuthBridge) || (this.authBridgeApp = new v2.AuthBridgeApp(), this.authBridgeApp.authClearedFromOtherFrame = this.revokeUserToken.bind(this), this.whenAuthCompleted = this.authBridgeApp.whenAuthCompleted.then((() => {
            this.userToken = this._getStorageItem(E2.SKStorageKey.USER_TOKEN) || void 0;
          }))));
        }
        get authorizationStatus() {
          return this._authorizationStatus;
        }
        set authorizationStatus(e3) {
          this._authorizationStatus !== e3 && (this._getIsActiveSubscription.updateCache(void 0), this.dispatchEvent(w2.authorizationStatusWillChange, { authorizationStatus: this._authorizationStatus, newAuthorizationStatus: e3 }), this._authorizationStatus = e3, this.dispatchEvent(w2.authorizationStatusDidChange, { authorizationStatus: e3 }));
        }
        get cid() {
          if (!this._cids[this.cidNamespace]) {
            const e3 = this._getStorageItem(this.cidNamespace);
            this._cids[this.cidNamespace] = e3 || void 0;
          }
          return this._cids[this.cidNamespace];
        }
        set cid(e3) {
          e3 ? this._setStorageItem(this.cidNamespace, e3) : this._removeStorageItem(this.cidNamespace), this._cids[this.cidNamespace] = e3;
        }
        eligibleForSubscribeView() {
          return r2(this, void 0, void 0, (function* () {
            const e3 = yield this.hasMusicSubscription();
            return (!this.hasAuthorized || this.hasAuthorized && !e3) && !this._dispatchedSubscribeView;
          }));
        }
        get hasAuthorized() {
          return this.authorizationStatus > b2.AuthorizationStatus.DENIED;
        }
        get logoutURL() {
          return `${this.iTunesBuyBase}/account/web/logout`;
        }
        get parentalControls() {
          return this._parentalControls;
        }
        set parentalControls(e3) {
          this._parentalControls = e3, e3 && (0 === this.realm ? this.restrictedEnabled = e3.musicParentalControlsEnabled : 2 === this.realm && e3.videoContentRestrictions && (this.authorizationStatus = b2.AuthorizationStatus.RESTRICTED));
        }
        get _pldfltcid() {
          return this._cids[E2.SKStorageKey.DEFAULT_CID];
        }
        set _pldfltcid(e3) {
          this._cids[E2.SKStorageKey.DEFAULT_CID] = e3;
        }
        get privacyAcknowledgements() {
          return this._privacyAcknowledgements;
        }
        set privacyAcknowledgements(e3) {
          if (this._privacyAcknowledgements = e3, !e3) return this._gdprVersion = -1, void (this._needsGDPR = void 0);
          this.bundleId && (this._gdprVersion = e3[this.bundleId] || 0, this._needsGDPR = this._gdprVersion < (_2.SKRequiredPrivacyVersion[this.bundleId] || 0), this._needsGDPR && this.dispatchEvent(w2.needsGDPRDidChange, { GDPRVersion: this._gdprVersion, needsGDPR: this._needsGDPR }));
        }
        get restrictedEnabled() {
          if (this.userToken && "boolean" != typeof this._restrictedEnabled) {
            const e3 = this._getStorageItem(E2.SKStorageKey.RESTRICTIONS_ENABLED);
            if (e3) this._restrictedEnabled = "0" !== e3;
            else if (this._storefrontCountryCode) {
              const e4 = ["br", "ch", "gt", "hu", "id", "in", "it", "kr", "la", "lt", "my", "ru", "sg", "tr"];
              this._restrictedEnabled = -1 !== e4.indexOf(this._storefrontCountryCode) || void 0;
            }
          }
          return this._restrictedEnabled;
        }
        set restrictedEnabled(e3) {
          this.userToken && void 0 !== e3 && this._setStorageItem(E2.SKStorageKey.RESTRICTIONS_ENABLED, e3 ? "1" : "0"), this._restrictedEnabled = e3, e3 && (this.authorizationStatus = b2.AuthorizationStatus.RESTRICTED);
        }
        get storefrontCountryCode() {
          if (!this._storefrontCountryCode) {
            const e3 = this._getStorageItem(E2.SKStorageKey.STOREFRONT_COUNTRY_CODE);
            this._storefrontCountryCode = (null == e3 ? void 0 : e3.toLowerCase()) || S2.Defaults.ID;
          }
          return this._storefrontCountryCode;
        }
        set storefrontCountryCode(e3) {
          e3 && this.userToken ? this._setStorageItem(E2.SKStorageKey.STOREFRONT_COUNTRY_CODE, e3) : this._removeStorageItem(E2.SKStorageKey.STOREFRONT_COUNTRY_CODE), this._storefrontCountryCode = e3, this.dispatchEvent(w2.storefrontCountryCodeDidChange, { storefrontCountryCode: e3 });
        }
        get storefrontIdentifier() {
          return this._storefrontIdentifier;
        }
        set storefrontIdentifier(e3) {
          this._storefrontIdentifier = e3, this.dispatchEvent(w2.storefrontIdentifierDidChange, { storefrontIdentifier: e3 });
        }
        runTokenValidations(e3, t3 = true) {
          e3 && b2.validateToken(e3) ? (t3 && this._setStorageItem(E2.SKStorageKey.USER_TOKEN, e3), this.authorizationStatus = this.restrictedEnabled ? b2.AuthorizationStatus.RESTRICTED : b2.AuthorizationStatus.AUTHORIZED) : (this._removeStorageItem(E2.SKStorageKey.USER_TOKEN), this.authorizationStatus = b2.AuthorizationStatus.NOT_DETERMINED);
        }
        wrapDynamicUserTokenForChanges(e3, t3 = a2.invoke(e3)) {
          if ("function" != typeof e3) return e3;
          let n3 = t3;
          return () => {
            const t4 = a2.invoke(e3);
            return n3 !== t4 && (n3 = t4, this.runTokenValidations(t4, false), this.dispatchEvent(w2.userTokenDidChange, { userToken: t4 })), t4 || "";
          };
        }
        get dynamicUserToken() {
          return this._dynamicUserToken;
        }
        set dynamicUserToken(e3) {
          const t3 = a2.invoke(e3);
          this._dynamicUserToken = this.wrapDynamicUserTokenForChanges(e3, t3), this.runTokenValidations(t3, "function" != typeof e3), this.dispatchEvent(w2.userTokenDidChange, { userToken: t3 });
        }
        get userToken() {
          return a2.invoke(this.dynamicUserToken);
        }
        set userToken(e3) {
          this.dynamicUserToken = e3;
        }
        get userTokenIsValid() {
          return b2.validateToken(this.userToken);
        }
        deeplinkURL(e3 = {}) {
          return e3 = Object.assign(Object.assign({}, this.deeplinkParameters || {}), e3), `https://finance-app.itunes.apple.com/deeplink?${y2.buildQueryParams(e3)}`;
        }
        itunesDeeplinkURL(e3 = { p: "browse" }) {
          return e3 = Object.assign(Object.assign({}, this.deeplinkParameters || {}), e3), `https://itunes.apple.com/deeplink?${y2.buildQueryParams(e3)}`;
        }
        pldfltcid() {
          return r2(this, void 0, void 0, (function* () {
            if (!this._cids[E2.SKStorageKey.DEFAULT_CID]) try {
              yield this.infoRefresh();
            } catch (e3) {
              return;
            }
            return this._cids[E2.SKStorageKey.DEFAULT_CID];
          }));
        }
        renewUserToken() {
          return r2(this, void 0, void 0, (function* () {
            if (!this.userToken) return this.requestUserToken();
            const e3 = new Headers({ Authorization: `Bearer ${this.developerToken}`, Accept: "application/json", "Content-Type": "application/json", "X-Apple-Music-User-Token": `${this.userToken}` }), t3 = yield fetch(`${this.playBase}/renewMusicToken`, { method: "POST", headers: e3 });
            if (401 === t3.status) return yield this.revokeUserToken(), Promise.reject(new Error("Renew token"));
            const n3 = yield t3.json();
            return n3["music-token"] && (this.userToken = n3["music-token"]), this.userToken;
          }));
        }
        requestStorefrontCountryCode() {
          return r2(this, void 0, void 0, (function* () {
            if (this.authorizationStatus <= b2.AuthorizationStatus.DENIED) return Promise.reject(`Not authorized: ${this.authorizationStatus}`);
            const e3 = new Headers({ Authorization: `Bearer ${this.developerToken}`, "Music-User-Token": this.userToken || "" }), t3 = yield fetch(`${this.apiBase}/me/storefront`, { headers: e3 });
            if (t3 && !t3.ok) return this._reset(), Promise.reject("Storefront Country Code error.");
            const n3 = yield t3.json();
            if (n3.errors) return Promise.reject(n3.errors);
            const [r3] = n3.data;
            return r3 && r3.id ? (this.storefrontCountryCode = r3.id, this.storefrontCountryCode) : Promise.reject("Storefront Country Code error.");
          }));
        }
        requestStorefrontIdentifier() {
          return r2(this, void 0, void 0, (function* () {
            if (!this.storefrontIdentifier) {
              const e3 = yield S2.Storefront.inferFromLanguages(this.developerToken);
              this.storefrontIdentifier = e3.id;
            }
            return this.storefrontIdentifier;
          }));
        }
        requestUserToken() {
          return r2(this, void 0, void 0, (function* () {
            if (this._serviceSetupView.isServiceView) return this.userToken || "";
            try {
              const e3 = yield this._serviceSetupView.load({ action: b2.ServiceSetupAction.AUTHORIZE });
              this.cid = e3.cid, this.userToken = e3.userToken, this.restrictedEnabled = e3.restricted;
            } catch (e3) {
              return this._reset(), this.authorizationStatus = e3, Promise.reject(e3);
            }
            return this.userToken;
          }));
        }
        revokeUserToken() {
          var e3;
          return r2(this, void 0, void 0, (function* () {
            try {
              yield this._webPlayerLogout();
            } catch (t3) {
            }
            null === (e3 = this.authBridgeApp) || void 0 === e3 || e3.clearAuth(), this.dispatchEvent(w2.authorizationStatusWillChange, { authorizationStatus: this.authorizationStatus, newAuthorizationStatus: b2.AuthorizationStatus.NOT_DETERMINED }), this._reset(), this.dispatchEvent(w2.authorizationStatusDidChange, { authorizationStatus: this.authorizationStatus }), this.dispatchEvent(w2.userTokenDidChange, { userToken: this.userToken });
          }));
        }
        setCids(e3) {
          this._cids = Object.assign(Object.assign({}, this._cids), e3), Object.keys(this._cids).forEach(((e4) => {
            this._setStorageItem(e4, this._cids[e4]);
          }));
        }
        shouldDisplayPrivacyLink(e3) {
          return r2(this, void 0, void 0, (function* () {
            return void 0 !== this._needsGDPR || (yield this.me()), this._needsGDPR;
          }));
        }
        hasMusicSubscription() {
          return r2(this, void 0, void 0, (function* () {
            return !!this.hasAuthorized && this._getIsActiveSubscription();
          }));
        }
        _getIsActiveSubscription() {
          var e3;
          return r2(this, void 0, void 0, (function* () {
            const t3 = yield this.me();
            return !!(null === (e3 = t3.subscription) || void 0 === e3 ? void 0 : e3.active);
          }));
        }
        resetSubscribeViewEligibility() {
          this._dispatchedSubscribeView = false;
        }
        presentSubscribeViewForEligibleUsers(e3 = {}, t3 = true) {
          return r2(this, void 0, void 0, (function* () {
            const n3 = yield this.eligibleForSubscribeView();
            if (!this._serviceSetupView.isServiceView && n3) {
              if (!t3) return this.dispatchEvent(w2.eligibleForSubscribeView, e3), void (this._dispatchedSubscribeView = true);
              try {
                const e4 = yield this._serviceSetupView.load({ action: b2.ServiceSetupAction.SUBSCRIBE });
                return this._dispatchedSubscribeView = true, e4;
              } catch (r3) {
                return this.revokeUserToken();
              }
            }
          }));
        }
        infoRefresh() {
          return r2(this, void 0, void 0, (function* () {
            if (this.authorizationStatus <= b2.AuthorizationStatus.DENIED) return Promise.reject(`Not authorized: ${this.authorizationStatus}`);
            const e3 = new Headers({ Authorization: `Bearer ${this.developerToken}`, "Music-User-Token": this.userToken || "" });
            try {
              const t3 = yield fetch(`${this.iTunesBuyBase}/account/web/infoRefresh`, { credentials: "include", headers: e3 }), n3 = yield t3.json();
              this.setCids(n3);
            } catch (t3) {
            }
          }));
        }
        me() {
          return this.authorizationStatus <= b2.AuthorizationStatus.DENIED ? Promise.reject(`Not authorized: ${this.authorizationStatus}`) : (this._me || (this._me = new Promise(((e3, t3) => r2(this, void 0, void 0, (function* () {
            const n3 = new Headers({ Authorization: `Bearer ${this.developerToken}`, "Music-User-Token": this.userToken || "" }), r3 = p2.addQueryParamsToURL(`${this.apiBase}/me/account`, Object.assign({ meta: "subscription" }, this.meParameters)), i3 = yield fetch(r3, { headers: n3 });
            if (i3 && !i3.ok) return 2 !== this.realm && this._reset(), t3("Account error.");
            let o3 = yield i3.json();
            if (o3.errors) return t3(o3.errors);
            const { data: s3, meta: a3 } = o3;
            if (!a3 || !a3.subscription) return t3("Account error.");
            this.storefrontCountryCode = a3.subscription.storefront;
            const c3 = { meta: a3, subscription: a3.subscription };
            s3 && s3.length && (c3.attributes = s3[0].attributes);
            try {
              let t4 = yield fetch(`${this.iTunesBuyBase}/account/web/info`, { credentials: "include", headers: n3 });
              if (o3 = yield t4.json(), this.parentalControls = o3.parentalControlsData, this.privacyAcknowledgements = o3.privacyAcknowledgement, h2.isEmpty(this.privacyAcknowledgements || {})) {
                try {
                  yield this.infoRefresh();
                } catch (u3) {
                  e3(c3);
                }
                t4 = yield fetch(`${this.iTunesBuyBase}/account/web/info`, { credentials: "include", headers: n3 }), o3 = yield t4.json(), this.parentalControls = o3.parentalControlsData, this.privacyAcknowledgements = o3.privacyAcknowledgement;
              }
              c3.info = o3;
            } catch (l3) {
              console.warn("Failed to fetch privacyAcknowledgements", l3);
            }
            return e3(c3);
          })))).then(((e3) => {
            var t3;
            return this._getIsActiveSubscription.updateCache((null === (t3 = e3.subscription) || void 0 === t3 ? void 0 : t3.active) || false), this._me = null, e3;
          })).catch(((e3) => (this._me = null, Promise.reject(e3))))), this._me);
        }
        musicSubscriptionOffers(e3, t3 = l2.getLanguages()) {
          return r2(this, void 0, void 0, (function* () {
            let n3;
            if (this.hasAuthorized) n3 = (yield this.me()).info.storeFrontISO3A;
            else {
              if (!e3) {
                const n4 = yield S2.Storefront.inferFromLanguages(this.developerToken, t3);
                e3 = null == n4 ? void 0 : n4.id;
              }
              n3 = e3 && c2.ISO_2_TO_3_CODES[e3.toUpperCase()] || "USA";
            }
            const r3 = u2.getLanguageId(t3[0]), o3 = i2.COUNTRY_CODE_TO_STOREFRONT[n3];
            if (!r3 || !o3) return [];
            const s3 = new Headers({ "X-Apple-Store-Front": `${o3}-${r3},8` });
            this.userToken && (s3.set("Authorization", `Bearer ${this.developerToken}`), s3.set("Music-User-Token", this.userToken));
            const a3 = yield fetch(`${this.iTunesBuyBase}/commerce/web/subscription/offers/music`, { headers: s3 });
            return a3.ok ? (yield a3.json()).offers : Promise.reject(a3.status);
          }));
        }
        _getStorageItem(e3) {
          if (e3) return "cookie" === this.persist ? f2.getCookie(e3) : "localstorage" === this.persist ? this.storage.getItem(`${this.storagePrefix}.${e3}`) : void 0;
        }
        _processLocationHash(e3) {
          const t3 = /^\#([a-zA-Z0-9+\/]{200,}={0,2})$/;
          if (t3.test(e3)) {
            const r3 = e3.replace(t3, "$1");
            try {
              const { itre: e4, musicUserToken: t4, cid: n3 } = JSON.parse(atob(r3));
              this.restrictedEnabled = e4 && "1" === e4, this.userToken = t4, this.cid = n3;
            } catch (n3) {
            }
            history.replaceState(null, document.title, " ");
          }
        }
        _removeStorageItem(e3) {
          if ("cookie" === this.persist) this._removeCookieFromDomains(e3);
          else if ("localstorage" === this.persist) return this.storage.removeItem(`${this.storagePrefix}.${e3}`);
        }
        _removeCookieFromDomains(e3, t3 = window) {
          f2.removeCookie(e3);
          const { hostname: n3 } = t3.location, r3 = n3.split(".");
          if (r3.length && (r3.shift(), r3.length > 2)) for (let i3 = r3.length; i3 > 2; i3--) {
            const n4 = r3.join(".");
            r3.shift(), f2.removeCookie(e3, t3, n4);
          }
        }
        _reset(e3 = b2.AuthorizationStatus.NOT_DETERMINED) {
          this._authorizationStatus = e3, this._cids = {}, this._dispatchedSubscribeView = false, this._restrictedEnabled = void 0, this._storefrontCountryCode = void 0, this._getIsActiveSubscription.updateCache(void 0), Object.keys(_2.SKRealmCidNamespace).forEach(((e4) => {
            this._removeStorageItem(_2.SKRealmCidNamespace[e4]);
          })), this._removeStorageItem(E2.SKStorageKey.RESTRICTIONS_ENABLED), this._removeStorageItem(E2.SKStorageKey.USER_TOKEN), this._removeStorageItem(E2.SKStorageKey.STOREFRONT_COUNTRY_CODE), this._dynamicUserToken = void 0, this._me = null, this.privacyAcknowledgements = void 0;
        }
        _setStorageItem(e3, t3) {
          var n3;
          return "cookie" === this.persist ? (null === (n3 = this.authBridgeApp) || void 0 === n3 || n3.setCookieItem(e3, t3), f2.setCookie(e3, t3, "/", 180)) : "localstorage" === this.persist ? this.storage.setItem(`${this.storagePrefix}.${e3}`, t3) : void 0;
        }
        _webPlayerLogout() {
          return r2(this, void 0, void 0, (function* () {
            const e3 = new Headers({ Authorization: `Bearer ${this.developerToken}`, Accept: "application/json", "Content-Type": "application/json", "X-Apple-Music-User-Token": `${this.userToken}` });
            e3.delete("X-Apple-Music-User-Token"), e3.append("Music-User-Token", this.userToken || "");
            const t3 = yield fetch(this.logoutURL, { method: "POST", headers: e3, credentials: "include" });
            return t3 && !t3.ok ? Promise.reject(t3.status) : t3.json();
          }));
        }
      }
      t2([o2.AsyncCachedResult(900), n2("design:type", Function), n2("design:paramtypes", []), n2("design:returntype", Promise)], C2.prototype, "_getIsActiveSubscription", null), e2.StoreKit = C2;
    })(sa);
    var Pc = { setDelegate: true };
    function Dc(e2) {
      return void 0 !== e2;
    }
    function kc(e2) {
      return Dc(e2) && null !== e2;
    }
    function xc(e2) {
      return Bc(e2) && 0 === e2.length;
    }
    function Mc(e2) {
      return Kc(e2) && 0 === e2.length;
    }
    function Lc(e2) {
      return Vc(e2) && 0 === Object.keys(e2).length;
    }
    function Uc(e2) {
      return "function" == typeof e2;
    }
    function jc(e2) {
      return "number" == typeof e2;
    }
    function Fc(e2) {
      return jc(e2) && e2 % 1 == 0;
    }
    function Bc(e2) {
      return "string" == typeof e2 || e2 instanceof String;
    }
    function Kc(e2) {
      return !!e2 && e2.constructor === Array;
    }
    function Vc(e2) {
      return !!e2 && e2.constructor === Object;
    }
    function Hc(e2) {
      return Vc(e2) && Uc(e2.__lookupGetter__) && Uc(e2.__lookupSetter__) && Uc(e2.__defineGetter__) && Uc(e2.__defineSetter__);
    }
    function Gc(e2) {
      var t2 = [true, true, true].concat(Array.prototype.slice.call(arguments));
      return $c.apply(null, t2);
    }
    function $c(e2, t2, n2, r2) {
      for (var i2, o2 = n2 && r2 || {}, s2 = 3; s2 < arguments.length; s2++) for (var a2 in i2 = arguments[s2]) if (Object.prototype.hasOwnProperty.call(i2, a2)) {
        var c2 = i2[a2];
        (e2 || null != c2) && (t2 || "function" != typeof c2) && (o2[a2] = c2);
      }
      return o2;
    }
    function zc(e2, t2) {
      var n2 = false;
      if (e2 && t2 && e2 !== t2) {
        var r2 = {};
        Object.keys(t2).forEach((function(t3) {
          e2[t3] || (r2[t3] = true);
        })), Gc(r2, Pc), n2 = Wc(e2, t2, null, r2);
      }
      return n2;
    }
    function Wc(e2, t2, n2, r2) {
      var i2 = false;
      if (e2 && t2) {
        r2 = r2 || {}, n2 = n2 || t2;
        var o2 = function(e3, t3, n3, r3) {
          var i3 = function() {
            return n3[r3].apply(e3, arguments);
          };
          return t3 && (i3.origFunction = t3), i3.attachedMethod = true, i3;
        };
        for (var s2 in t2) if (!(s2 in r2) && t2[s2] && Uc(t2[s2])) {
          var a2 = e2[s2], c2 = null;
          a2 && Uc(a2) && (c2 = true === a2.attachedMethod ? a2 : a2.bind(e2)), e2[s2] = o2(n2, c2, t2, s2), i2 = true;
        }
      }
      return i2;
    }
    function qc(e2) {
      var t2 = false;
      for (var n2 in e2) if (Uc(e2[n2]) && true === e2[n2].attachedMethod) if (e2[n2].origFunction) for (; e2[n2].origFunction; ) e2[n2] = e2[n2].origFunction, t2 = true;
      else delete e2[n2];
      return t2;
    }
    function Qc(e2, t2) {
      var n2 = {};
      if (e2) for (var r2 = 0; r2 < e2.length; r2++) n2[e2[r2]] = 0;
      if (t2) for (var i2 = 0; i2 < t2.length; i2++) n2[t2[i2]] = 0;
      return Object.keys(n2);
    }
    var Yc = Object.freeze({ __proto__: null, _utResetNonOverridableFunctions: function() {
      Pc = { setDelegate: true };
    }, shallowClone: function(e2) {
      var t2, n2, r2 = {}, i2 = Hc(e2);
      for (var o2 in e2) t2 = null, n2 = null, i2 && (t2 = e2.__lookupGetter__(o2), n2 = e2.__lookupSetter__(o2)), t2 || n2 ? (t2 && r2.__defineGetter__(o2, t2), n2 && r2.__defineSetter__(o2, n2)) : r2[o2] = e2[o2];
      return r2;
    }, isDefined: Dc, isDefinedNonNull: kc, isDefinedNonNullNonEmpty: function(e2) {
      return kc(e2) && !xc(e2) && !Mc(e2) && !Lc(e2);
    }, isEmptyString: xc, isEmptyArray: Mc, isEmptyObject: Lc, isFunction: Uc, isNumber: jc, isInteger: Fc, isString: Bc, isElement: function(e2) {
      return !!e2 && 1 == e2.nodeType;
    }, isArray: Kc, isObject: Vc, values: function(e2) {
      var t2 = [];
      for (var n2 in e2) {
        var r2 = e2[n2];
        e2.hasOwnProperty(n2) && !Uc(r2) && t2.push(r2);
      }
      return t2;
    }, keys: function(e2) {
      var t2 = [];
      for (var n2 in e2) e2.hasOwnProperty(n2) && !Uc(e2[n2]) && t2.push(n2);
      return t2;
    }, hasAnyKeys: function(e2) {
      for (var t2 in e2) if (e2.hasOwnProperty(t2)) return true;
    }, hasAnyNonNullKeys: function(e2) {
      for (var t2 in e2) if (e2.hasOwnProperty(t2) && e2[t2]) return true;
    }, hasGetterAndSetterMethods: Hc, methods: function(e2) {
      var t2 = [];
      for (var n2 in e2) {
        var r2 = e2[n2];
        e2.hasOwnProperty(n2) && Uc(r2) && t2.push(r2);
      }
      return t2;
    }, invert: function(e2) {
      var t2 = {};
      for (var n2 in e2) e2.hasOwnProperty(n2) && !Uc(e2[n2]) && (t2[e2[n2]] = n2);
      return t2;
    }, extend: Gc, copyKeysAndValues: $c, addNonOverrideableFunctions: function(e2) {
      for (var t2 = 0; t2 < e2.length; t2++) {
        var n2 = e2[t2];
        Pc[n2] = true;
      }
    }, attachMethods: Wc, detachMethods: qc, attachDelegate: zc, setDelegates: function(e2, t2) {
      var n2 = {};
      for (var r2 in e2) t2[r2] && Uc(e2[r2].setDelegate) && (n2[r2] = e2[r2].setDelegate(t2[r2]));
      return n2;
    }, resetDelegates: function(e2) {
      var t2 = false;
      for (var n2 in e2) {
        var r2 = e2[n2];
        r2 && "object" == typeof r2 && Uc(r2.setDelegate) && (t2 |= qc(r2));
      }
      return !!t2;
    }, copyDelegatedFunctions: function(e2, t2) {
      var n2 = null;
      if (e2 && t2 && t2.setDelegate) {
        var r2, i2 = {};
        for (r2 in e2) Uc(e2[r2]) && e2[r2].origFunction && (i2[r2] = e2[r2]);
        n2 = t2.setDelegate(i2);
      }
      return n2;
    }, dedupedArray: Qc }), Jc = { maxWait: 1500, initialDelay: 100, factor: 2 }, Xc = function(e2, t2, n2) {
      this.delay = e2 || Jc.initialDelay, this.maxWait = jc(t2) ? t2 : Jc.maxWait, this.factor = n2 || Jc.factor, this.timeWaited = 0;
    };
    function Zc(e2, t2, n2, r2) {
      t2.call(t2, n2, (function() {
        var i2 = e2.nextDelay();
        i2 ? setTimeout(Zc.bind(null, e2, t2, n2, r2), i2) : r2.apply(r2, arguments);
      }));
    }
    Xc.prototype.nextDelay = function() {
      var e2 = null, t2 = this.maxWait - this.timeWaited;
      return t2 > 0 && (this.delay = Math.min(this.delay, t2), this.timeWaited += this.delay), (0 === this.maxWait || t2 > 0) && (e2 = this.delay, this.delay = this.delay * this.factor), e2;
    };
    var eu = Object.freeze({ __proto__: null, exponentialBackoff: function(e2, t2, n2, r2, i2, o2) {
      Zc(new Xc(r2, i2, o2), e2, t2, n2);
    } });
    function tu(e2) {
      return !!this.value("disabled", e2);
    }
    function nu(e2) {
      var t2 = this.value("denylistedEvents", e2);
      return Qc(this.value("blacklistedEvents", e2), t2);
    }
    function ru(e2) {
      var t2 = this.value("denylistedFields", e2);
      return Qc(this.value("blacklistedFields", e2), t2);
    }
    function iu(e2, t2) {
      if (e2) for (var n2 = ru.call(this, t2), r2 = 0; r2 < n2.length; r2++) {
        var i2 = n2[r2];
        i2 && i2 in e2 && delete e2[i2];
      }
      return e2;
    }
    function ou(e2, t2) {
      return tu.call(this, t2) || !!e2 && nu.call(this, t2).indexOf(e2) > -1;
    }
    function su(e2) {
      return this.value("deResFields", e2) || [];
    }
    var au = Object.freeze({ __proto__: null, disabled: tu, blacklistedEvents: function(e2) {
      return nu.call(this, e2);
    }, denylistedEvents: nu, blacklistedFields: function(e2) {
      return ru.call(this, e2);
    }, denylistedFields: ru, removeBlacklistedFields: function(e2, t2) {
      return iu.call(this, e2, t2);
    }, removeDenylistedFields: iu, metricsDisabledOrBlacklistedEvent: function(e2, t2) {
      return ou.call(this, e2, t2);
    }, metricsDisabledOrDenylistedEvent: ou, deResFields: su, applyDeRes: function(e2, t2) {
      var n2;
      return e2 && su.call(this, t2).forEach((function(t3) {
        (n2 = t3.fieldName) in e2 && (e2[n2] = (function(e3, t4, n3) {
          var r2 = void 0;
          if (Dc(e3)) if (Dc(t4) || (t4 = 1048576), Dc(n3) || (n3 = 2), jc(e3) && jc(t4) && t4 > 0 && Fc(n3) && n3 >= 0) {
            var i2 = Math.pow(10, n3);
            r2 = Math[e3 > 0 ? "floor" : "ceil"](e3 / t4 / i2) * i2;
          } else r2 = NaN;
          return r2;
        })(e2[n2], t3.magnitude, t3.significantDigits));
      })), e2;
    } }), cu = "0123456789", uu = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ", lu = uu + "abcdefghijklmnopqrstuvwxy", pu = lu + "z";
    function du(e2, t2, n2) {
      var r2 = null, i2 = "	\n\v\f\r             　\u2028\u2029​", o2 = new RegExp("^[" + i2 + "]+"), s2 = new RegExp("[" + i2 + "]+$");
      if (e2) if (n2 || t2 && t2 != i2 || !e2.trim) {
        var a2 = null, c2 = null, u2 = null;
        t2 && void 0 !== t2 ? (a2 = "[" + (t2 = t2.replace(/([.?*+^$[\]\\(){}-])/g, "\\$1")) + "]", c2 = new RegExp("^" + a2 + "+"), u2 = new RegExp(a2 + "+$")) : (a2 = i2, c2 = o2, u2 = s2), r2 = e2.replace(c2, "").replace(u2, "");
      } else r2 = e2.trim();
      return r2;
    }
    function hu(e2, t2) {
      var n2 = "";
      if (e2) for (var r2, i2 = e2.toLowerCase().split("_"), o2 = 0; o2 < i2.length; o2++) r2 = i2[o2][0], (0 !== o2 || t2) && (r2 = r2.toUpperCase()), n2 += r2 + i2[o2].slice(1);
      return n2;
    }
    function fu(e2, t2, n2) {
      var r2, i2 = global.crypto || global.msCrypto;
      return r2 = e2 ? (16 * e2() | 0).toString(16) : i2 && i2.getRandomValues ? (15 & i2.getRandomValues(new Uint8Array(1))[0]).toString(16) : i2 && i2.randomBytes ? i2.randomBytes(1).toString("hex")[0] : (16 * Math.random() | 0).toString(16), t2 && n2 && (r2 < t2 || r2 > n2) && (r2 = fu(e2, t2, n2)), r2;
    }
    var gu = Object.freeze({ __proto__: null, base10Alphabet: cu, base16Alphabet: "0123456789ABCDEF", base36Alphabet: uu, base61Alphabet: lu, base62Alphabet: pu, startsWith: function(e2, t2, n2) {
      var r2 = false;
      return e2 && t2 && (e2 = e2.substr(0, t2.length), n2 && (e2 = e2.toLowerCase(), t2 = t2.toLowerCase()), r2 = 0 === e2.indexOf(t2)), r2;
    }, endsWith: function(e2, t2, n2) {
      var r2 = false;
      if (e2 && t2) {
        n2 && (e2 = e2.toLowerCase(), t2 = t2.toLowerCase());
        var i2 = e2.length - t2.length;
        r2 = i2 >= 0 && e2.lastIndexOf(t2) === i2;
      }
      return r2;
    }, trim: du, snakeCaseToCamelCase: hu, snakeCaseToUpperCamelCase: function(e2) {
      return hu(e2, true);
    }, exceptionString: function(e2, t2) {
      return "The function " + e2 + "." + t2 + "() must be overridden with a platform-specific delegate function.If you have no data for this function, have your delegate return null or undefined (no 'return')";
    }, paramString: function(e2) {
      var t2 = "", n2 = "", r2 = true;
      for (var i2 in e2) {
        var o2 = e2[i2];
        (o2 || 0 === o2 || false === o2) && (t2 += n2 + i2 + "=" + encodeURIComponent(o2), r2 && (n2 = "&", r2 = false));
      }
      return t2;
    }, versionStringFromUserAgent: function(e2, t2) {
      var n2 = null;
      t2 = t2 || "\\S+";
      var r2 = new RegExp("\\b" + t2 + "/(\\S+)\\b", "i").exec(e2);
      return r2 && r2[1] && (n2 = r2[1]), n2;
    }, requestId: function(e2) {
      var t2 = Date.now(), n2 = Math.floor(1e5 * Math.random());
      return e2 + "z" + (t2 = t2.toString(36).toUpperCase()) + "z" + (n2 = n2.toString(36).toUpperCase());
    }, uuid: function(e2) {
      for (var t2, n2 = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx", r2 = "", i2 = 0, o2 = n2.length; i2 < o2; i2++) r2 += "x" === (t2 = n2.charAt(i2)) ? fu(e2) : "y" === t2 ? fu(e2, "8", "b") : t2;
      return r2;
    }, randomHexCharacter: fu, convertNumberToBaseAlphabet: function(e2, t2) {
      var n2 = "", r2 = t2.length;
      if (r2 <= 36) n2 = e2.toString(r2).toUpperCase();
      else {
        for (var i2, o2, s2 = []; e2 > 0; ) i2 = e2 % r2, o2 = t2.charAt(i2), s2.push(o2), e2 = (e2 - i2) / r2;
        n2 = s2.reverse().join("");
      }
      return "" === n2 && (n2 = "0"), n2;
    }, cryptoRandomBase62String: function(e2) {
      var t2;
      if (16777215 == Math.floor(4294967295 / 256)) {
        var n2, r2, i2, o2, s2, a2 = global.crypto || global.msCrypto;
        if (a2 && a2.getRandomValues) n2 = a2.getRandomValues(new Uint32Array(16 / Uint32Array.BYTES_PER_ELEMENT)), s2 = true;
        else if (a2 && a2.randomBytes) {
          var c2 = a2.randomBytes(16);
          n2 = new Uint32Array(c2.buffer, c2.byteOffset, c2.byteLength / Uint32Array.BYTES_PER_ELEMENT), s2 = true;
        } else for (n2 = new Uint32Array(16 / Uint32Array.BYTES_PER_ELEMENT), r2 = 0; r2 < n2.length; r2++) n2[r2] = Math.floor(Math.random() * Math.floor(4294967295));
        if (n2) {
          for (t2 = "", r2 = 0; r2 < n2.length; r2++) for (o2 = n2[r2], i2 = 0; i2 < 6; i2++) t2 += pu[o2 % 62], o2 = Math.floor(o2 / 62);
          e2 && (t2 = "1_" + (s2 ? "1" : "2") + "_" + t2);
        }
      }
      return t2;
    } }), vu = { setDelegate: function(e2) {
      return zc(this, e2);
    }, cookie: function() {
      var e2;
      if ("undefined" != typeof window && "iTunes" in window && "cookie" in iTunes) e2 = iTunes;
      else if ("undefined" != typeof itms && Dc(itms.cookie)) e2 = itms;
      else {
        if ("undefined" == typeof document) throw "cookies.cookie: No cookie object available";
        e2 = document;
      }
      return e2.cookie;
    }, get: function(e2) {
      var t2 = this.getUnescaped(e2);
      return t2 && (t2 = unescape(t2)), t2;
    }, setUnescaped: function(e2, t2, n2, r2, i2) {
    }, getUnescaped: function(e2) {
      var t2 = null, n2 = this._getRaw();
      if (n2 && e2) for (var r2 = n2.split(";"), i2 = r2.length - 1; !t2 && i2 >= 0; i2--) {
        var o2 = r2[i2], s2 = o2.indexOf("=");
        s2 > 0 && (s2 + 1 == o2.length ? t2 = "" : du(o2.substring(0, s2)) == e2 && (t2 = du(o2.substring(s2 + 1))));
      }
      return t2;
    }, remove: function(e2, t2) {
      return this.setUnescaped(e2, ".", this.EXPIRE_NOW, null, t2);
    }, _getRaw: function() {
      return this.cookie() || "";
    }, EXPIRE_NOW: -1, EXPIRE_SESSION: null, EXPIRE_ONE_SECOND: 1 };
    vu.EXPIRE_ONE_MINUTE = 60 * vu.EXPIRE_ONE_SECOND, vu.EXPIRE_ONE_HOUR = 60 * vu.EXPIRE_ONE_MINUTE, vu.EXPIRE_ONE_DAY = 24 * vu.EXPIRE_ONE_HOUR, vu.EXPIRE_ONE_WEEK = 7 * vu.EXPIRE_ONE_DAY, vu.EXPIRE_ONE_MONTH = 31 * vu.EXPIRE_ONE_DAY, vu.EXPIRE_ONE_YEAR = 365 * vu.EXPIRE_ONE_DAY, vu.EXPIRE_ONE_SIDEREAL_YEAR = 365.25 * vu.EXPIRE_ONE_DAY, vu.EXPIRE_SIX_MONTHS = 180 * vu.EXPIRE_ONE_DAY;
    var mu = {}, yu = {}, _u = function(e2) {
      var t2 = {};
      return "function" == typeof e2.mtName && "function" == typeof e2.mtVersion && (t2.name = e2.mtName(), t2.version = e2.mtVersion()), t2;
    }, bu = function(e2) {
      var t2;
      return "function" == typeof e2.mtName && "function" == typeof e2.mtVersion && (t2 = e2.mtName() + e2.mtVersion()), t2;
    }, Su = Object.freeze({ __proto__: null, storeDelegateInfo: function(e2, t2) {
      var n2 = bu(e2), r2 = bu(t2);
      n2 && r2 && (mu[r2] || (mu[r2] = _u(t2)), mu[n2] || (mu[n2] = _u(e2), yu[n2] = {}), mu[n2].delegates ? yu[n2][r2] || mu[n2].delegates.push(mu[r2]) : mu[n2].delegates = [mu[r2]], yu[n2][r2] = true);
    }, getStoredDelegateObject: function(e2) {
      return mu[bu(e2)];
    } });
    function Eu(e2, t2, n2) {
      var r2 = t2;
      if (e2 && t2) for (var i2 = e2.split("."), o2 = 0; r2 && o2 < i2.length; o2++) {
        var s2 = i2[o2];
        !(s2 in r2) && n2 && (r2[s2] = {}), r2 = s2 in r2 ? r2[s2] : null;
      }
      return r2;
    }
    function wu(e2) {
      var t2 = null;
      if (e2 && arguments.length > 1) for (var n2 = Tu(Array.prototype.slice.call(arguments, 1)), r2 = n2.length - 1; r2 >= 0; r2--) {
        var i2 = n2[r2];
        if (kc(t2 = Eu(e2, i2))) break;
      }
      return t2;
    }
    function Tu(e2) {
      var t2 = [], n2 = [];
      n2 = n2.concat(e2), arguments && arguments.length > 1 && (n2 = n2.concat(Array.prototype.slice.call(arguments, 1)));
      for (var r2 = 0; r2 < n2.length; r2++) {
        var i2 = n2[r2];
        t2 = t2.concat(i2);
      }
      return t2;
    }
    var Au = Object.freeze({ __proto__: null, valueForKeyPath: wu, createObjectAtKeyPath: function(e2, t2) {
      return Eu(e2, t2, true);
    }, sourcesArray: Tu });
    function Ou(e2) {
      for (var t2 = [false, false, false].concat(Array.prototype.slice.call(arguments)), n2 = [], r2 = 0; r2 < t2.length; r2++) {
        var i2 = t2[r2];
        if (i2 && i2.constructor === Array) for (var o2 = 0; o2 < i2.length; o2++) n2.push(i2[o2]);
        else n2.push(i2);
      }
      return $c.apply(null, n2);
    }
    var Cu = Object.freeze({ __proto__: null, mergeAndCleanEventFields: Ou, processMetricsData: function(e2, t2, n2, r2) {
      var i2 = Ou(r2), o2 = i2;
      if (e2 && t2) {
        var s2 = {};
        if (n2 || (t2 = t2.filter((function(e3) {
          return e3 in i2;
        }))), t2.length) for (var a2 = 0; a2 < t2.length; a2++) {
          var c2 = t2[a2], u2 = e2[c2];
          Uc(u2) && (s2[c2] = u2.call(e2, i2));
        }
        o2 = Ou(o2, s2);
      }
      return o2;
    }, applyFieldsMap: function(e2, t2, n2, r2) {
      var i2, o2, s2;
      if (e2 && t2 && n2) {
        var a2, c2;
        if (o2 = {}, i2 = wu(t2, n2, n2.custom)) if (Kc(i2)) for (a2 = 0; a2 < i2.length; ++a2) kc(c2 = e2[i2[a2]]) && (o2[i2[a2]] = c2);
        else if (Vc(i2)) {
          for (var u2 in i2) for (a2 = 0; a2 < i2[u2].length; ++a2) if (kc(c2 = wu(i2[u2][a2], e2))) {
            o2[u2] = c2;
            break;
          }
        } else s2 = "metrics: incorrect data type provided to applyFieldsMap (only accepts objects and Arrays)";
        else s2 = "metrics: unable to get " + t2 + " section from fieldsMap";
      } else {
        var l2 = [];
        e2 || l2.push("data"), t2 || l2.push("sectionName"), n2 || l2.push("fieldsMap"), s2 = "metrics: missing argument(s): " + l2.join(",") + " not provided to applyFieldsMap";
      }
      return s2 && Uc(r2) && r2(s2), o2;
    } });
    function Iu(e2, t2, n2, r2, i2, o2) {
      var s2 = new XMLHttpRequest();
      n2 = n2 || void 0, o2 = o2 || {}, r2 = Uc(r2) ? r2 : function() {
      }, i2 = Uc(i2) ? i2 : function() {
      };
      var a2 = false !== o2.async;
      o2.timeout && a2 && (s2.timeout = o2.timeout), s2.onload = function() {
        s2.status >= 200 && s2.status < 300 ? r2(s2.response) : i2(new Error("XHR error: server responded with status " + s2.status + " " + s2.statusText), s2.status);
      }, s2.onerror = function() {
        i2(new Error("XHR error"));
      }, s2.open(t2, e2, a2), s2.withCredentials = "boolean" != typeof o2.withCredentials || o2.withCredentials, s2.setRequestHeader("Content-type", "application/json"), s2.send(n2);
    }
    var Ru = Object.freeze({ __proto__: null, makeAjaxGetRequest: function(e2, t2, n2) {
      Iu(e2, "GET", null, t2, n2);
    }, makeAjaxRequest: Iu }), Nu = { LOCAL_STORAGE: "localStorage", SESSION_STORAGE: "sessionStorage" }, Pu = function(e2) {
      var t2 = null, n2 = false;
      return function() {
        return e2 ? t2 = e2 : (n2 || (console.error("storageObject: storage object not found. Override this function if there is a platform-specific implementation"), n2 = true), t2 || (t2 = { storage: {}, getItem: function(e3) {
          return this.storage[e3];
        }, setItem: function(e3, t3) {
          this.storage[e3] = t3;
        }, removeItem: function(e3) {
          delete this.storage[e3];
        } })), t2;
      };
    };
    function Du(e2) {
      var t2 = null, n2 = e2 === Nu.LOCAL_STORAGE;
      try {
        t2 = "undefined" != (n2 ? typeof localStorage : typeof sessionStorage) ? n2 ? localStorage : sessionStorage : null;
      } catch (r2) {
        t2 = null, console.error("_utils.storage._defaultStorageObject: Unable to retrieve storage object: " + r2);
      }
      return t2;
    }
    var ku = Pu(Du(Nu.LOCAL_STORAGE)), xu = Pu(Du(Nu.SESSION_STORAGE)), Mu = Object.freeze({ __proto__: null, _utDefaultStorageObject: function(e2) {
      return Du(e2);
    }, localStorageObject: ku, sessionStorageObject: xu, saveObjectToStorage: function(e2, t2, n2) {
      var r2 = null;
      if (n2) try {
        e2.setItem(t2, JSON.stringify(n2)), r2 = n2;
      } catch (i2) {
      }
      else r2 = e2.removeItem(t2);
      return r2;
    }, objectFromStorage: function(e2, t2) {
      var n2 = null, r2 = e2.getItem(t2);
      if (r2) try {
        n2 = JSON.parse(r2);
      } catch (i2) {
        n2 = void 0;
      }
      return n2;
    } });
    function Lu(e2) {
      this.key = e2;
    }
    Lu.prototype.toString = function() {
      return this.key;
    };
    var Uu = { flagArguments: { INCLUDE_CALL_STACK: new Lu("INCLUDE_CALL_STACK"), MIRROR_TO_SERVER: new Lu("MIRROR_TO_SERVER"), SUPPRESS_CLIENT_OUTPUT: new Lu("SUPPRESS_CLIENT_OUTPUT") }, setDelegate: function(e2) {
      return Yc.attachDelegate(this, e2);
    }, execute: function(e2, t2, n2) {
      var r2 = e2.levelStringToIntMap[t2];
      if (e2.level() !== e2.NONE && e2.level() <= r2) {
        var i2 = Array.prototype.slice.call(n2), o2 = Uu.nonFlagLogArguments(i2), s2 = Uu.logOptions(e2, r2, i2), a2 = s2.includeCallStack ? new Error().stack : null, c2 = a2 ? o2.concat("\n" + a2) : o2;
        if (e2[t2]._lastLog = c2, s2.mirrorToServer, s2.throwInsteadOfPrint) throw new Error(o2.toString());
        s2.suppressClientOutput || (console[t2] ? console[t2].apply(console, c2) : console.log.apply(console, c2));
      }
    }, isFlagObject: function(e2) {
      return e2 && e2 === Uu.flagArguments[e2.toString()];
    }, nonFlagLogArguments: function(e2) {
      return e2.filter((function(e3) {
        return !Uu.isFlagObject(e3);
      }));
    }, logOptions: function(e2, t2, n2) {
      var r2, i2 = {};
      return n2.forEach((function(e3) {
        Uu.isFlagObject(e3) && (r2 = gu.snakeCaseToCamelCase(e3.toString()), i2[r2] = true);
      })), Yc.isFunction(e2.mirrorToServerLevel) && e2.mirrorToServerLevel() !== e2.NONE && e2.mirrorToServerLevel() <= t2 && (i2.mirrorToServer = true), e2.throwLevel() !== e2.NONE && e2.throwLevel() <= t2 && (i2.throwInsteadOfPrint = true), i2;
    }, sendToServer: function(e2, t2, n2, r2) {
    } }, ju = { NONE: 0, DEBUG: 1, INFO: 2, WARN: 3, ERROR: 4 }, Fu = { MIN_LEVEL: ju.NONE, MAX_LEVEL: ju.ERROR, levelIntToStringMap: { 0: "none", 1: "debug", 2: "info", 3: "warn", 4: "error" }, levelStringToIntMap: { none: 0, debug: 1, info: 2, warn: 3, error: 4 } };
    Yc.extend(Fu, ju);
    var Bu = { loggerName: "defaultLogger", level: Fu.INFO, throwLevel: Fu.NONE }, Ku = false, Vu = {};
    function Hu(e2) {
      this._loggerName = e2, this._level, this._throwLevel, Ku || (Ku = true, Yc.extend(Hu.prototype, Fu), Yc.extend(Hu.prototype, Uu.flagArguments));
    }
    function Gu(e2) {
      var t2 = Vu[e2 = e2 || Bu.loggerName];
      return t2 || (t2 = new Hu(e2), Vu[e2] = t2), t2;
    }
    Hu.level = function() {
      return Bu.level;
    }, Hu.throwLevel = function() {
      return Bu.throwLevel;
    }, Hu.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, Hu.prototype.loggerName = function() {
      return this._loggerName;
    }, Hu.prototype.levelParameterAsInt = function(e2) {
      var t2, n2 = null;
      return Yc.isString(e2) ? t2 = this.levelStringToIntMap[e2.toLowerCase()] : Yc.isNumber(e2) && (t2 = e2), t2 >= this.MIN_LEVEL && t2 <= this.MAX_LEVEL && (n2 = t2), n2;
    }, Hu.prototype.setLevel = function(e2) {
      var t2 = this.levelParameterAsInt(e2);
      null !== t2 && (this._level = t2);
    }, Hu.prototype.setThrowLevel = function(e2) {
      var t2 = this.levelParameterAsInt(e2);
      null !== t2 && (this._throwLevel = t2);
    }, Hu.prototype.level = function() {
      var e2 = this._level;
      return Yc.isNumber(e2) ? e2 : Hu.level();
    }, Hu.prototype.levelString = function() {
      return this.levelIntToStringMap[this.level()];
    }, Hu.prototype.throwLevel = function() {
      var e2 = this._throwLevel;
      return Yc.isNumber(e2) ? e2 : Hu.throwLevel();
    }, Hu.prototype.debug = function() {
      Uu.execute(this, "debug", arguments);
    }, Hu.prototype.info = function() {
      Uu.execute(this, "info", arguments);
    }, Hu.prototype.warn = function() {
      Uu.execute(this, "warn", arguments);
    }, Hu.prototype.error = function() {
      Uu.execute(this, "error", arguments);
    }, Hu.prototype.lastLog = function(e2) {
      return this[e2] ? this[e2]._lastLog : null;
    };
    var $u = Yc.attachDelegate, zu = { setDelegate: function(e2) {
      return $u(this, e2);
    }, localStorageObject: Mu.localStorageObject, sessionStorageObject: Mu.sessionStorageObject }, Wu = Yc.attachDelegate, qu = { setDelegate: function(e2) {
      return Wu(this, e2);
    }, makeAjaxRequest: Ru.makeAjaxRequest }, Qu = Yc.attachDelegate, Yu = Yc.hasAnyKeys, Ju = Yc.isArray, Xu = Mu.saveObjectToStorage, Zu = Mu.objectFromStorage, el = eu.exponentialBackoff, tl = Au.valueForKeyPath, nl = "noTopicConfig", rl = { blacklistedFields: ["capacitySystem", "capacitySystemAvailable", "capacityDisk", "capacityData", "capacityDataAvailable"], compoundSeparator: "_", configBaseUrl: "https://xp.apple.com/config/1/report", constraints: { profiles: { AMPWeb: { precedenceOrderedRules: [{ filters: "any", fieldConstraints: { clientId: { generateValue: true, namespace: "AMPWeb_isSignedOut", expirationPeriod: 864e5 } } }, { filters: { valueMatches: { isSignedIn: [true] } }, fieldConstraints: { clientId: { generateValue: true, namespace: "AMPWeb_isSignedIn", expirationPeriod: 15552e6 } } }] }, strict: { precedenceOrderedRules: [{ filters: "any", fieldConstraints: { clientId: { generateValue: true, scopeFieldName: "parentPageUrl", scopeStrategy: "mainDomain", expirationPeriod: 864e5 }, consumerId: { blacklisted: true }, dsId: { blacklisted: true }, parentPageUrl: { scope: "hostname" } } }, { filters: { valueMatches: { eventType: ["click"], actionType: ["signUp"] } }, fieldConstraints: { parentPageUrl: { scope: "fullWithoutParams" } } }, { filters: { valueMatches: { eventType: ["dialog"], dialogType: ["upsell"], result: ["upsell"] } }, fieldConstraints: { parentPageUrl: { scope: "fullWithoutParams" } } }, { filters: { valueMatches: { userType: ["signedIn"] } }, fieldConstraints: { clientId: { scopeStrategy: "all" } } }, { filters: { valueMatches: { userType: ["signedIn"], eventType: ["click", "dialog", "media", "search"] } }, fieldConstraints: { clientId: { blacklisted: true }, consumerId: { blacklisted: false }, dsId: { blacklisted: false } } }, { filters: { valueMatches: { userType: ["signedIn"], eventType: ["page", "impressions"] }, nonEmptyFields: ["pageHistory"] }, fieldConstraints: { clientId: { blacklisted: true }, consumerId: { blacklisted: false }, dsId: { blacklisted: false } } }] } } }, fieldsMap: { cookies: ["itcCt", "itscc"], custom: { impressions: ["id", "adamId", "link.type", "station-hash"], location: ["id", "adamId", "dataSetId", "name", "fcKind", "kindIds", "type", "link.type", "station-hash", "core-seed-name"] }, single: { targetId: ["id", "adamId", "contentId", "type", "link.type", "fcId", "userPreference", "label", "station-hash", "linkIdentifier"] } }, metricsUrl: "https://xp.apple.com/report", postFrequency: 6e4, postFrequencyLowLatency: 5e3, tokenSeparator: "|" }, il = {}, ol = function(e2, t2, n2) {
      if (n2) {
        e2.push(n2);
        var r2 = n2[t2];
        r2 && Yu(r2) && e2.push(r2);
      }
    }, sl = function(e2) {
      this._topic = e2, this._debugSource = null, this._cachedSource = null, this._serviceSource = null, this._initCalled = false, this._initialized = false, this._showedDebugWarning = false, this._showedNoProvidedSourceWarning = false, this._keyPathsThatSuppressWarning = { configBaseUrl: true }, this.DEBUG_SOURCE_KEY = "mtClientConfig_debugSource" + rl.compoundSeparator + this._topic, this.CACHED_SOURCE_KEY = "mtClientConfig_cachedSource" + rl.compoundSeparator + this._topic;
    };
    sl.createConfig = function(e2, t2, n2, r2) {
      var i2 = sl.getConfig(e2);
      return e2 && e2 !== nl && !i2._initCalled && i2.init(t2, n2, r2), i2;
    }, sl.getConfig = function(e2) {
      var t2 = il[e2 = e2 || nl];
      return t2 || (t2 = new sl(e2), il[e2] = t2), t2;
    }, sl.cleanupConfig = function(e2) {
      if (e2 && il[e2]) {
        var t2 = il[e2];
        t2.setCachedSource(), t2.setDebugSource(), delete il[e2];
      }
    }, sl.defaultConfig = function() {
      return sl.getConfig();
    }, sl.value = function(e2, t2) {
      var n2 = t2 && il[t2] || sl.defaultConfig();
      return n2.value.call(n2, e2);
    }, sl.environment = zu, sl.logger = Gu("mt-client-config"), sl.network = qu, sl.prototype._defaults = function() {
      return rl;
    }, sl.prototype._setInitialized = function(e2) {
      this._initialized = e2;
    }, sl.prototype._setInitCalled = function(e2) {
      this._initCalled = e2;
    }, sl.prototype._setShowedDebugWarning = function(e2) {
      this._showedDebugWarning = e2;
    }, sl.prototype._setShowedNoProvidedSourceWarning = function(e2) {
      this._showedNoProvidedSourceWarning = e2;
    }, sl.prototype.setDelegate = function(e2) {
      return Qu(this, e2);
    }, sl.prototype.topic = function() {
      return this._topic;
    }, sl.prototype.configHostname = function() {
    }, sl.prototype.configUrl = function() {
      var e2, t2 = this.configHostname();
      return e2 = t2 ? "https://" + t2 + "/config/1/report" : this.value("configBaseUrl"), this._topic !== nl ? e2 += "/" + this.topic() : sl.logger.error("config.configUrl(): Topic must be provided"), e2;
    }, sl.prototype.sources = function() {
    }, sl.prototype.value = function(e2) {
      var t2, n2 = this.cachedSource(), r2 = this.serviceSource(), i2 = this.sources(), o2 = this.debugSource(), s2 = n2 || r2 || i2 || o2;
      return i2 || r2 || e2 in this._keyPathsThatSuppressWarning || this._showedNoProvidedSourceWarning || (this._showedNoProvidedSourceWarning = true, sl.logger.warn("Metrics config: No config provided via delegate or fetched via init(), using default/cached config values.")), o2 && (this._showedDebugWarning || (this._showedDebugWarning = true, sl.logger.warn('"debugSource" found.\nThis will override any same-named client-supplied configSource fields.\nThis setting "sticks" across session, use "setDebugSource(null)" to clear'))), Ju(i2) || (i2 = [i2]), t2 = 0 === e2.indexOf("blacklisted") ? s2 ? [n2, r2, i2, o2] : [rl] : [rl, n2, r2, i2, o2], t2 = this.configSourcesWithOverrides(t2, this.topic()), tl.apply(null, [e2].concat(t2));
    }, sl.prototype.configSourcesWithOverrides = function(e2, t2) {
      var n2 = e2;
      if (e2 && e2.length && t2) {
        n2 = [];
        for (var r2 = 0; r2 < e2.length; r2++) {
          var i2 = e2[r2];
          if (i2) if (Ju(i2) && i2.length) {
            for (var o2 = [], s2 = 0; s2 < i2.length; s2++) ol(o2, t2, i2[s2]);
            n2.push(o2);
          } else ol(n2, t2, i2);
        }
      }
      return n2;
    }, sl.prototype.setDebugSource = function(e2) {
      return this._debugSource = e2 || null, Xu(zu.localStorageObject(), this.DEBUG_SOURCE_KEY, this._debugSource);
    }, sl.prototype.debugSource = function() {
      return this._debugSource || (this._debugSource = Zu(zu.localStorageObject(), this.DEBUG_SOURCE_KEY)), this._debugSource;
    }, sl.prototype.setCachedSource = function(e2) {
      return this._cachedSource = e2 || null, Xu(zu.localStorageObject(), this.CACHED_SOURCE_KEY, this._cachedSource);
    }, sl.prototype.cachedSource = function() {
      return this._cachedSource || (this._cachedSource = Zu(zu.localStorageObject(), this.CACHED_SOURCE_KEY)), this._cachedSource;
    }, sl.prototype.setServiceSource = function(e2) {
      return this._serviceSource = e2, this._serviceSource;
    }, sl.prototype.serviceSource = function() {
      return this._serviceSource;
    }, sl.prototype.fetchConfig = function(e2, t2, n2) {
      n2 = n2 || function() {
      }, el(qu.makeAjaxRequest.bind(qu, e2, "GET", null), (function(e3) {
        var r2;
        try {
          e3 = JSON.parse(e3), r2 = true;
        } catch (i2) {
          n2.call(n2, i2);
        }
        r2 && t2 && t2.call(t2, e3);
      }), n2);
    }, sl.prototype.init = function(e2, t2, n2) {
      if (!this._initCalled) {
        this._initCalled = true, t2 = t2 || function() {
        };
        var r2 = function() {
          this._initialized = true, t2.call(t2);
        }.bind(this);
        if (e2) this.setDelegate({ sources: e2 }), r2();
        else {
          this.setCachedSource(this.cachedSource());
          var i2 = this.configUrl(), o2 = function(e3) {
            this.setCachedSource(e3), this.setServiceSource(e3), r2();
          }.bind(this);
          this.fetchConfig(i2, o2, n2);
        }
      }
    }, sl.prototype.initialize = function(e2, t2, n2) {
      return this.init.apply(this, Array.prototype.slice.call(arguments));
    }, sl.prototype.initialized = function() {
      return this._initialized;
    };
    var al = Yc.attachDelegate, cl = { setDelegate: function(e2) {
      return al(this, e2);
    }, globalScope: function() {
      return global;
    } }, ul = { AJAX: "ajax", AJAX_SYNCHRONOUS: "ajaxSynchronous", IMAGE: "image", BEACON: "beacon" }, ll = au.metricsDisabledOrDenylistedEvent, pl = au.removeDenylistedFields, dl = {}, hl = ["dsId", "consumerId"];
    function fl(e2, t2, n2) {
      var r2 = null;
      return n2 && !ll.call(sl, n2.eventType, t2) && (pl.call(sl, n2, t2), ml(t2, n2), e2.apply(null, Array.prototype.slice.call(arguments, 1)), r2 = n2), r2;
    }
    function gl(e2, t2) {
      dl[e2] = dl[e2] || {}, dl[e2] = t2;
    }
    function vl() {
      dl = {};
    }
    function ml(e2, t2) {
      dl[e2] = dl[e2] || {}, dl[e2].anonymous && hl.forEach((function(e3) {
        delete t2[e3];
      }));
    }
    var yl = Yc.attachDelegate, _l = { setDelegate: function(e2) {
      return yl(this, e2);
    }, makeAjaxRequest: Ru.makeAjaxRequest }, bl = Yc.isString, Sl = Yc.isFunction, El = au.disabled;
    function wl() {
      var e2 = navigator.userAgent;
      return /iPad|iPhone|iPod/.test(e2) && -1 == e2.indexOf("IEMobile");
    }
    function Tl() {
      return Gu("mt-event-queue");
    }
    var Al = 1e4, Ol = "events", Cl = "1.0", Il = 100, Rl = 2, Nl = ul, Pl = 2, Dl = "properties", kl = { eventQueues: {}, postIntervalEnabled: true, enqueueEvent: function(e2, t2) {
      var n2 = null;
      if (e2 && t2) {
        kl.eventQueues = kl.eventQueues || {}, kl.eventQueues[e2] = kl.eventQueues[e2] || {}, kl.eventQueues[e2][Ol] = kl.eventQueues[e2][Ol] || [], kl.eventQueues[e2][Ol].push(t2), n2 = t2;
        var r2 = sl.value("maxPersistentQueueSize", e2) || Il;
        kl.trimEventQueues(kl.eventQueues, r2);
      }
      return n2;
    }, trimEventQueues: function(e2, t2) {
      var n2 = Object.keys(e2);
      n2.length && n2.forEach((function(n3) {
        var r2 = e2[n3][Ol];
        r2 && r2.length && r2.length > t2 && (Tl().warn("eventQueue overflow, deleting LRU events: size is: " + r2.length + " which is over max size: " + t2), e2[n3][Ol] = r2.slice(-t2));
      }));
    }, resetTopicQueue: function(e2) {
      kl.eventQueues[e2] && (kl.eventQueues[e2][Ol] = null);
    }, resetTopicRetryAttempts: function(e2) {
      kl.eventQueues[e2] && (kl.eventQueues[e2].retryAttempts = 0);
    }, scheduleNextTopicRetryAttempt: function(e2) {
      if (kl.eventQueues[e2] && this.postIntervalEnabled) {
        kl.eventQueues[e2].retryAttempts = kl.eventQueues[e2].retryAttempts || 0, kl.eventQueues[e2].retryAttempts++;
        var t2 = Math.pow(Rl, kl.eventQueues[e2].retryAttempts) * sl.value("postFrequency", e2);
        kl.resetTopicPostInterval(e2), kl.setTopicPostInterval(e2, t2);
      }
    }, sendEvents: function(e2, t2) {
      for (var n2 in kl.eventQueues) kl.sendEventsForTopic(n2, e2, t2);
    }, sendEventsForTopic: function(e2, t2, n2) {
      var r2 = kl.eventQueues[e2], i2 = sl.value("testExponentialBackoff", e2), o2 = sl.value("metricsUrl", e2), s2 = El.call(sl, e2);
      if (r2 && o2 && !s2 && !i2 && (!r2.retryAttempts || !n2)) switch (kl.resetTopicPostInterval(e2), kl.setTopicPostInterval(e2, sl.value("postFrequency", e2)), t2) {
        case Nl.IMAGE:
          kl.sendEventsViaImage(e2);
          break;
        case Nl.BEACON:
          kl.sendEventsViaBeacon(e2);
          break;
        case Nl.AJAX_SYNCHRONOUS:
          kl.sendEventsViaAjax(e2, false);
          break;
        case Nl.AJAX:
        default:
          kl.sendEventsViaAjax(e2, true);
      }
      i2 && kl.scheduleNextTopicRetryAttempt(e2);
    }, sendEventsViaImage: function(e2) {
      if (kl.eventQueues[e2]) {
        var t2 = Ll(e2), n2 = -1 == t2.indexOf("?") ? "?" : "&", r2 = t2 + n2 + "responseType=image", i2 = kl.eventQueues[e2][Ol];
        i2 && i2.length && i2.forEach((function(t3) {
          var n3 = kl.createQueryParams(t3);
          if (n3) {
            var i3 = r2 + "&" + n3, o2 = new Image(), s2 = kl.eventQueues[e2][Dl];
            s2 && s2.anonymous && o2.setAttribute("crossOrigin", "anonymous"), o2.src = i3;
          }
        })), kl.resetTopicQueue(e2);
      }
    }, createQueryParams: function(e2) {
      var t2, n2, r2 = "";
      return Object.keys(e2).forEach((function(i2, o2, s2) {
        t2 = e2[i2], n2 = bl(t2) ? t2 : JSON.stringify(t2), r2 += i2 + "=" + encodeURIComponent(n2), o2 < s2.length - 1 && (r2 += "&");
      })), r2.length ? r2 : null;
    }, sendEventsViaAjax: function(e2, t2) {
      if (kl.eventQueues[e2] && kl.eventQueues[e2][Ol]) {
        var n2 = Ml(kl.eventQueues[e2][Ol]);
        if (n2) {
          var r2 = Ll(e2), i2 = Ul(e2), o2 = function() {
            kl.resetTopicQueue(e2), kl.resetTopicRetryAttempts(e2);
          }, s2 = { async: t2, timeout: i2 };
          (kl.eventQueues[e2][Dl] || {}).anonymous && (s2.withCredentials = false), _l.makeAjaxRequest(r2, "POST", n2, o2, (function(t3, n3) {
            n3 >= 400 && n3 < 500 ? o2() : kl.scheduleNextTopicRetryAttempt(e2);
          }), s2);
        }
      }
    }, sendEventsViaBeacon: function(e2) {
      if (Yc.isFunction(navigator.sendBeacon)) {
        var t2 = kl.eventQueues[e2];
        if (t2) {
          var n2 = t2[Dl];
          if (n2 && n2.anonymous) return void (Yc.isFunction(cl.globalScope().fetch) && !/Firefox/.test(navigator.userAgent) ? kl.sendEventsViaFetch(e2, { keepalive: true }) : wl() ? kl.sendEventsViaAjax(e2, false) : kl.sendEventsViaImage(e2));
          var r2 = Ml(t2[Ol]);
          if (r2) {
            var i2 = Ll(e2);
            navigator.sendBeacon(i2, r2) || Tl().error("navigator.sendBeacon() was unable to queue the data for transfer"), kl.resetTopicQueue(e2);
          }
        }
      } else Tl().error("navigator.sendBeacon() is not available in the environment");
    }, sendEventsViaFetch: function(e2, t2) {
      var n2 = Yc.isDefinedNonNull(t2) ? t2.keepalive : null, r2 = kl.eventQueues[e2];
      if (Yc.isDefinedNonNull(r2)) {
        var i2 = Ml(r2[Ol]);
        if (i2) {
          var o2 = r2[Dl] || {}, s2 = Ll(e2);
          cl.globalScope().fetch(s2, { method: "POST", body: i2, credentials: true === o2.anonymous ? "omit" : "same-origin", keepalive: !Yc.isDefinedNonNull(n2) || n2 }), kl.resetTopicQueue(e2);
        }
      }
    }, setTopicPostInterval: function(e2, t2) {
      kl.eventQueues[e2] && t2 && this.postIntervalEnabled && (this.resetTopicPostInterval(e2), kl.eventQueues[e2].postIntervalToken = cl.globalScope().setInterval((function() {
        Tl().debug("MetricsKit: triggering postIntervalTimer for " + e2 + " at " + (/* @__PURE__ */ new Date()).toString()), kl.sendEventsForTopic.call(kl, e2);
      }), t2));
    }, resetTopicPostInterval: function(e2) {
      kl.eventQueues[e2] && (cl.globalScope().clearInterval(kl.eventQueues[e2].postIntervalToken), kl.eventQueues[e2].postIntervalToken = null);
    }, resetQueuePostIntervals: function() {
      for (var e2 in kl.eventQueues) kl.resetTopicPostInterval(e2);
    }, setQueuePostIntervals: function() {
      for (var e2 in kl.eventQueues) {
        var t2 = kl.eventQueues[e2][Ol];
        t2 && t2.length && kl.setTopicPostInterval(e2, sl.value("postFrequency", e2));
      }
    }, objectContainsValue: function(e2, t2) {
      var n2 = false;
      for (var r2 in e2) {
        var i2 = e2[r2];
        if (e2.hasOwnProperty(r2) && !Sl(i2) && i2 === t2) {
          n2 = true;
          break;
        }
      }
      return n2;
    }, setProperties: function(e2, t2) {
      kl.eventQueues = kl.eventQueues || {}, kl.eventQueues[e2] = kl.eventQueues[e2] || {}, kl.eventQueues[e2][Dl] = t2;
    } };
    function xl() {
      return kl;
    }
    function Ml(e2) {
      var t2 = null;
      if (e2 && e2.length) {
        var n2 = {};
        n2.deliveryVersion = Cl, n2.postTime = Date.now(), n2[Ol] = e2;
        try {
          t2 = JSON.stringify(n2);
        } catch (r2) {
          Tl().error("Error stringifying events as JSON: " + r2);
        }
      }
      return t2;
    }
    function Ll(e2) {
      return sl.value("metricsUrl", e2) + "/" + Pl + "/" + e2;
    }
    function Ul(e2) {
      var t2 = sl.value("requestTimeout", e2) || Al;
      return t2 = Math.min(t2, sl.value("postFrequency", e2));
    }
    function jl(e2, t2, n2) {
      El.call(sl, e2) || (0 === sl.value("postFrequency", e2) && (n2 = true), kl.enqueueEvent(e2, t2), n2 ? kl.sendEvents(Nl.AJAX, true) : !kl.eventQueues[e2].postIntervalToken && kl.postIntervalEnabled && kl.setTopicPostInterval(e2, sl.value("postFrequency", e2)));
    }
    function Fl(e2, t2) {
      e2 ? bl(t2) && kl.objectContainsValue(ul, t2) ? kl.sendEvents(t2, true) : Yc.isFunction(navigator.sendBeacon) ? kl.sendEvents(Nl.BEACON, true) : wl() ? kl.sendEvents(Nl.AJAX_SYNCHRONOUS, true) : kl.sendEvents(Nl.IMAGE, true) : kl.sendEvents(Nl.AJAX, true);
    }
    var Bl = Yc.attachDelegate, Kl = { _utResetQueue: function() {
      for (var e2 in xl().eventQueues) xl().resetTopicPostInterval(e2);
      xl().eventQueues = {};
    }, SEND_METHOD: ul, setDelegate: function(e2) {
      return Bl(this, e2);
    }, recordEvent: function(e2, t2, n2) {
      return fl.apply(null, [jl].concat(Array.prototype.slice.call(arguments)));
    }, sendMethod: function() {
      return "javascript";
    }, flushUnreportedEvents: function(e2, t2) {
      Fl.apply(null, Array.prototype.slice.call(arguments));
    }, setProperties: function(e2, t2) {
      gl(e2, t2), xl().setProperties(e2, t2);
    }, cleanup: function() {
      vl(), Kl._utResetQueue();
    } };
    function Vl(e2, t2) {
      var n2 = Ml([t2]);
      if (n2) {
        var r2 = Ll(e2), i2 = { timeout: Ul(e2) };
        dl[e2] && dl[e2].anonymous && (i2.withCredentials = false), _l.makeAjaxRequest(r2, "POST", n2, null, null, i2);
      }
    }
    var Hl = { recordEvent: function(e2, t2) {
      return fl.apply(null, [Vl].concat(Array.prototype.slice.call(arguments)));
    }, sendMethod: function() {
      return "javascript";
    }, setProperties: gl, cleanup: vl }, Gl = Gu("mt-event-queue"), $l = Object.freeze({ __proto__: null, [Symbol.toStringTag]: "Module", environment: cl, eventRecorder: Kl, immediateEventRecorder: Hl, logger: Gl, network: _l, setEventQueuePostIntervalEnabled: function(e2) {
      kl.postIntervalEnabled = e2, e2 ? kl.setQueuePostIntervals() : kl.resetQueuePostIntervals();
    } }), zl = e("B", { _document: function() {
      if ("undefined" != typeof document) return document;
      throw "metricskit-delegates-html.environment HTML delegate 'document' object not found";
    }, _window: function() {
      if ("undefined" != typeof window) return window;
      throw "metricskit-delegates-html.environment HTML delegate 'window' object not found";
    }, cookie: function() {
      return zl._window().document.cookie;
    }, pageUrl: function() {
      return zl._window().location.href;
    }, parentPageUrl: function() {
      var e2, t2 = zl._window(), n2 = t2.parent;
      if (n2 !== t2) try {
        e2 = n2.location.href;
      } catch (r2) {
        e2 = zl._document().referrer;
      }
      return e2;
    }, pixelRatio: function() {
      return zl._window().devicePixelRatio;
    }, screenHeight: function() {
      return zl._window().screen.height;
    }, screenWidth: function() {
      return zl._window().screen.width;
    }, userAgent: function() {
      return zl._window().navigator.userAgent;
    }, windowInnerHeight: function() {
      return zl._window().innerHeight;
    }, windowInnerWidth: function() {
      return zl._window().innerWidth;
    }, windowOuterHeight: function() {
      return zl._window().outerHeight;
    }, windowOuterWidth: function() {
      return zl._window().outerWidth;
    }, timeOriginOffset: function() {
      var e2 = null, t2 = zl._window().performance;
      return t2 && t2.timing && (e2 = t2.timing.navigationStart), e2;
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
    } }), Wl = e("A", Kl), ql = Hl, Ql = Object.freeze({ __proto__: null, [Symbol.toStringTag]: "Module", eventQueue: $l, cleanup: function() {
      "function" == typeof Wl.cleanup ? Wl.cleanup() : Wl._utResetQueue();
    }, environment: zl, eventRecorder: Wl, immediateEventRecorder: ql });
    e("z", Ql);
    var Yl = function() {
    };
    Yl.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, Yl.prototype.localStorageObject = Mu.localStorageObject, Yl.prototype.sessionStorageObject = Mu.sessionStorageObject;
    var Jl = function() {
      this.environment = new Yl(), this.logger = Gu("mt-client-constraints");
    }, Xl = { nonEmpty: function(e2, t2) {
      return !!Yc.isObject(t2) && t2.hasOwnProperty(e2) && Yc.isDefinedNonNullNonEmpty(t2[e2]);
    }, valueMatches: function(e2, t2, n2) {
      if (!Yc.isObject(t2)) return false;
      var r2 = t2[e2];
      return t2.hasOwnProperty(e2) && n2.indexOf(r2) > -1;
    } }, Zl = "overrideFieldValue", ep = function() {
    };
    ep.prototype.constrainedValue = function(e2, t2, n2) {
      var r2 = e2 && e2.hasOwnProperty(n2) ? e2[n2] : null;
      return this.applyConstraintRules(r2, t2);
    }, ep.prototype.applyConstraintRules = function(e2, t2) {
      var n2 = e2;
      return t2 && (t2.denylisted || t2.blacklisted ? n2 = null : t2.hasOwnProperty(Zl) && (n2 = t2.overrideFieldValue)), n2;
    };
    var tp = gu.exceptionString, np = function(e2) {
      this._constraintsInstance = e2;
    };
    function rp(e2) {
      var t2, n2 = ip(e2 = e2 || "").split("/");
      return (t2 = -1 === e2.indexOf("//") ? n2[0] : n2[2]).substring(t2.indexOf("@") + 1).split(":")[0];
    }
    function ip(e2) {
      return (e2 = e2 || "").split("?")[0];
    }
    function op(e2, t2, n2, r2) {
      var i2 = this.storageKey(r2, n2, t2), o2 = this._constraintsInstance.system.environment, s2 = Mu.objectFromStorage(o2.localStorageObject(), i2) || {};
      return s2.value = this.idString(s2, t2), !this.rulesHaveLifespan(t2) || Yc.isNumber(s2.expirationTime) && !this.timeExpired(s2.expirationTime) || (s2.expirationTime = this.expirationTime(t2.lifespan)), Mu.saveObjectToStorage(o2.localStorageObject(), i2, s2), s2.value;
    }
    np.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, np.prototype.constrainedValue = function(e2, t2, n2, r2) {
      throw tp("field_actions.Base", "constrainedValue");
    }, np.prototype.performAction = function(e2, t2, n2) {
      var r2 = t2 && Yc.isDefined(t2[e2]) ? t2[e2] : null;
      return Yc.isDefinedNonNull(n2) && !Yc.isEmptyObject(n2) && (r2 = this.constrainedValue(r2, n2, t2, e2)), r2;
    };
    var sp = {};
    function ap(e2, t2, n2, r2) {
      var i2 = this.storageKey(r2, n2, t2), o2 = sp[i2];
      return o2 || (o2 = op.apply(this, arguments), sp[i2] = o2), o2;
    }
    var cp = function() {
      np.apply(this, arguments);
    };
    (cp.prototype = Object.create(np.prototype)).constructor = cp, cp.prototype.SCOPE_STRATEGIES = { ALL: "all", MAIN_DOMAIN: "mainDomain" }, cp.prototype.rulesHaveLifespan = function(e2) {
      return e2 = e2 || {}, Yc.isNumber(e2.lifespan);
    }, cp.prototype.expirationTime = function(e2) {
      return e2 ? Date.now() + e2 : null;
    }, cp.prototype.storageKey = function(e2, t2, n2) {
      var r2 = this.scope(t2, n2);
      return this.storageKeyPrefix(n2, e2) + (r2 ? "_" + r2 : "");
    }, cp.prototype.storageKeyPrefix = function(e2, t2) {
      return e2 && Yc.isString(e2.storageKeyPrefix) && e2.storageKeyPrefix.length > 0 ? e2.storageKeyPrefix : "mtId_" + t2;
    }, cp.prototype.scope = function(e2, t2) {
      var n2, r2, i2, o2, s2, a2 = "";
      if (t2 && (t2.namespace && (a2 += t2.namespace), t2.scopeStrategy)) {
        var c2;
        switch (t2.scopeStrategy) {
          case this.SCOPE_STRATEGIES.MAIN_DOMAIN:
            var u2 = t2.scopeFieldName;
            n2 = e2[u2], r2 = rp(n2).split("."), i2 = r2[r2.length - 1], o2 = r2[r2.length - 2], s2 = 2, i2 && 2 === i2.length && o2 && (2 === o2.length || o2 in { com: true, org: true, net: true, edu: true, gov: true }) && (s2 = 3), c2 = r2.slice(-1 * s2).join(".") || "unknownDomain";
            break;
          case this.SCOPE_STRATEGIES.ALL:
          default:
            c2 = this.SCOPE_STRATEGIES.ALL;
        }
        a2.length && (a2 += "_"), a2 += c2;
      }
      return a2;
    }, cp.prototype.idString = function(e2, t2) {
      var n2 = e2 ? e2.value : null, r2 = n2;
      return (!n2 || Yc.isNumber(e2.expirationTime) && this.timeExpired(e2.expirationTime)) && (r2 = this.generateId(t2)), r2;
    }, cp.prototype.generateId = function(e2) {
      var t2 = this.rawUUID(), n2 = null, r2 = null;
      return e2 && (n2 = this.expirationTime(e2.lifespan), r2 = e2.tokenSeparator), (this.generatedIdMetadata(n2) + this.idTokenSeparator() + t2 || "").split(this.idTokenSeparator()).map((function(e3) {
        var t3 = parseInt(e3, 16);
        return gu.convertNumberToBaseAlphabet(t3, gu.base61Alphabet);
      })).join(this.generatedIdSeparator(r2)) || "0";
    }, cp.prototype.rawUUID = function() {
      return gu.uuid();
    }, cp.prototype.generatedIdMetadata = function(e2) {
      var t2 = [this.generatedIdVersion()];
      return e2 && t2.push(e2), t2.map((function(e3) {
        return e3.toString(16);
      })).join(this.idTokenSeparator());
    }, cp.prototype.generatedIdVersion = function() {
      return 4;
    }, cp.prototype.idTokenSeparator = function() {
      return "-";
    }, cp.prototype.generatedIdSeparator = function(e2) {
      return e2 || "z";
    }, cp.prototype.timeExpired = function(e2) {
      return e2 <= Date.now();
    }, cp.prototype.constrainedValue = function(e2, t2, n2, r2) {
      return n2 && t2 && !Yc.isEmptyObject(t2) && (e2 = true === t2.persistIdForSession ? ap.apply(this, arguments) : op.apply(this, arguments)), e2;
    };
    var up = function(e2, t2) {
      this._base = e2, this._idAction = new cp(t2), this._idAction.setDelegate({ storageKey: function(e3, t3, n2) {
        return this.storageKeyPrefix() + "_" + this.scope(t3, n2);
      }.bind(this._idAction), storageKeyPrefix: function() {
        return "mtClientId";
      } });
    };
    up.prototype.constrainedValue = function(e2, t2) {
      var n2 = t2;
      t2 && Yc.isNumber(t2.expirationPeriod) && ((n2 = Yc.extend({}, t2)).lifespan = n2.expirationPeriod, delete n2.expirationPeriod);
      var r2 = this._idAction.performAction("clientId", e2, n2);
      return this._base.applyConstraintRules(r2, t2);
    };
    var lp = function() {
      np.apply(this, arguments);
    };
    (lp.prototype = Object.create(np.prototype)).constructor = lp, lp.prototype.SCOPES = { HOSTNAME: "hostname", FULL: "full", FULL_WITHOUT_PARAMS: "fullWithoutParams" }, lp.prototype.constrainedValue = function(e2, t2) {
      if (e2 && t2 && t2.scope) switch (t2.scope) {
        case this.SCOPES.HOSTNAME:
          e2 = rp(e2);
          break;
        case this.SCOPES.FULL_WITHOUT_PARAMS:
          e2 = ip(e2);
        case this.SCOPES.FULL:
      }
      return e2;
    };
    var pp = function(e2) {
      this._base = e2, this._urlAction = new lp();
    };
    pp.prototype.constrainedValue = function(e2, t2) {
      var n2 = this._urlAction.performAction("parentPageUrl", e2, t2);
      return this._base.applyConstraintRules(n2, t2);
    };
    var dp = function(e2) {
      this.base = new ep(e2), this.clientId = new up(this.base, e2), this.parentPageUrl = new pp(this.base, e2);
    }, hp = function(e2) {
      this._fieldHandlers = new dp(e2);
    };
    function fp(e2, t2, n2, r2) {
      var i2 = e2 || {};
      if (r2 = r2 || function(e3, t3, n3) {
        return e3[n3] || {};
      }, t2 && t2[n2]) {
        var o2, s2, a2 = i2[n2] || {};
        for (o2 in i2[n2] = a2, t2[n2]) {
          var c2 = r2(a2, t2[n2], o2);
          for (s2 in a2[o2] = c2, t2[n2][o2]) c2[s2] = t2[n2][o2][s2];
        }
      }
      return i2;
    }
    hp.prototype.applyConstraints = function(e2, t2) {
      return t2 && t2.fieldConstraints && (e2 = this.applyFieldConstraints(e2, t2.fieldConstraints)), e2;
    }, hp.prototype.applyFieldConstraints = function(e2, t2) {
      if (t2) {
        var n2, r2, i2, o2 = {};
        for (i2 in t2) r2 = t2[i2], (e2.hasOwnProperty(i2) || true === r2.generateValue || r2.hasOwnProperty(Zl)) && (n2 = i2 in this._fieldHandlers ? this._fieldHandlers[i2].constrainedValue(e2, r2) : this._fieldHandlers.base.constrainedValue(e2, r2, i2), o2[i2] = n2);
        for (i2 in o2) e2[i2] = o2[i2];
        e2 = Cu.mergeAndCleanEventFields(e2);
      }
      return e2;
    };
    var gp = function(e2) {
      this.treatment = new hp(e2);
    };
    gp.prototype.constraintsForEvent = function(e2, t2, n2) {
      if (!t2) return null;
      var r2 = "constraints.profiles." + t2.constraintProfile(n2), i2 = t2.value(r2, n2), o2 = null;
      if (i2 && i2.precedenceOrderedRules) {
        var s2 = this;
        o2 = i2.precedenceOrderedRules.reduce((function(t3, n3) {
          return s2.eventMatchesRule(e2, n3) && (t3 = s2.updateRules(t3, n3)), t3;
        }), {});
      }
      return o2;
    }, gp.prototype.eventMatchesRule = function(e2, t2) {
      var n2 = false;
      return e2 && t2.filters && ("any" === t2.filters ? n2 = true : Yc.isObject(t2.filters) && (n2 = this.eventMatchesNonEmptyFields(e2, t2.filters.nonEmptyFields) && this.eventMatchesFieldValues(e2, t2.filters.valueMatches))), n2;
    }, gp.prototype.eventMatchesNonEmptyFields = function(e2, t2) {
      var n2 = false;
      return e2 && (n2 = !t2 || !Yc.isArray(t2) || t2.every((function(t3) {
        return Xl.nonEmpty(t3, e2);
      }))), n2;
    }, gp.prototype.eventMatchesFieldValues = function(e2, t2) {
      var n2 = false;
      return e2 && (n2 = !(t2 && Yc.isObject(t2) && !Yc.isEmptyObject(t2)) || Object.keys(t2).every((function(n3) {
        var r2 = t2[n3];
        return Xl.valueMatches(n3, e2, r2);
      }))), n2;
    }, gp.prototype.updateRules = function(e2, t2) {
      return fp(e2, t2, "fieldConstraints");
    };
    var vp = function() {
    };
    vp.prototype.performAction = function(e2, t2) {
      return true !== t2 ? e2 : null;
    };
    var mp = function() {
    };
    mp.prototype.performAction = function(e2, t2) {
      return e2 && Yc.isArray(t2) && !Yc.isEmptyArray(t2) ? (e2 = Yc.extend({}, e2), t2.forEach((function(t3) {
        delete e2[t3];
      })), Yc.isEmptyObject(e2) ? null : e2) : e2;
    };
    var yp = function() {
    };
    yp.prototype.performAction = function(e2, t2) {
      if (!e2 || !Yc.isArray(t2) || Yc.isEmptyArray(t2)) return e2;
      var n2 = {};
      return t2.forEach((function(t3) {
        Yc.isDefinedNonNull(e2[t3]) && (n2[t3] = e2[t3]);
      })), Yc.isEmptyObject(n2) ? null : n2;
    };
    var _p = "blacklisted", bp = "denylisted", Sp = "blacklistedFields", Ep = "denylistedFields", wp = "whitelistedFields", Tp = "allowlistedFields", Ap = function() {
      var e2 = new vp(), t2 = new mp(), n2 = new yp();
      this._actions = {}, this._actions[_p] = e2, this._actions[bp] = e2, this._actions[Sp] = t2, this._actions[Ep] = t2, this._actions[wp] = n2, this._actions[Tp] = n2;
    };
    Ap.prototype.getAction = function(e2) {
      return this._actions[e2];
    };
    var Op = function() {
      np.apply(this, arguments);
    };
    (Op.prototype = Object.create(np.prototype)).constructor = Op, Op.prototype.constrainedValue = function(e2, t2) {
      var n2 = t2 ? t2.precision : 0, r2 = t2 ? t2.buckets : null;
      if (Yc.isDefinedNonNullNonEmpty(r2)) {
        var i2 = (r2 = r2.slice().sort((function(e3, t3) {
          return e3.start - t3.start;
        })))[(function(e3, t3) {
          var n3 = -1;
          if (!Yc.isDefinedNonNull(t3) || 0 === e3.length || Yc.isDefinedNonNull(e3[0]) && t3 < e3[0].start) return -1;
          if (e3[e3.length - 1].start < t3) n3 = e3.length - 1;
          else for (var r3 = 0; r3 < e3.length; r3++) {
            var i3 = e3[r3].start;
            if (i3 === t3) {
              n3 = r3;
              break;
            }
            if (i3 > t3) {
              n3 = r3 - 1;
              break;
            }
          }
          return n3;
        })(r2, e2)];
        Yc.isDefinedNonNull(i2) && (e2 = i2.value);
      } else Yc.isNumber(e2) && Yc.isNumber(n2) && n2 > 0 && (e2 = Math.floor(e2 / n2) * n2);
      return e2;
    };
    var Cp = function(e2) {
      e2 = e2 || {}, this._nextRotationTime = e2.nextRotationTime || Number.POSITIVE_INFINITY, this._storageKey = e2.namespace || "mt_serial_number", this._initialSerialNumber = e2.initialSerialNumber || 0, this._rotationPeriod = e2.rotationPeriod || Number.POSITIVE_INFINITY;
    };
    Cp.prototype.setDelegate = function(e2) {
      Yc.attachDelegate(this, e2);
    }, Cp.prototype.localStorageObject = function() {
      return Mu.localStorageObject();
    }, Cp.prototype.getNextSerialNumber = function(e2) {
      var t2 = this._storageKey, n2 = this._getCurrentSerialNumberData(t2), r2 = n2.sn;
      return e2 = Yc.isNumber(e2) ? e2 : 1, r2 = parseInt(r2, 10), isNaN(r2) && (r2 = this._initialSerialNumber), r2 = this._increaseSerialNumber(r2, e2), n2.sn = r2, Mu.saveObjectToStorage(this.localStorageObject(), this._storageKey, n2), r2;
    }, Cp.prototype.resetSerialNumber = function() {
      var e2 = Mu.objectFromStorage(this.localStorageObject(), this._storageKey);
      Yc.isDefinedNonNull(e2) && this._resetSerialNumber(e2.exp);
    }, Cp.prototype.getTime = function() {
      return Date.now();
    }, Cp.prototype._increaseSerialNumber = function(e2, t2) {
      return e2 + t2;
    }, Cp.prototype._getCurrentSerialNumberData = function(e2) {
      var t2, n2, r2 = Mu.objectFromStorage(this.localStorageObject(), e2);
      for (r2 ? (t2 = r2.exp, t2 = parseInt(t2, 10), r2.exp = t2 = isNaN(t2) ? this._nextRotationTime : t2) : t2 = this._nextRotationTime - this._rotationPeriod; !r2 || this.getTime() >= t2; ) t2 = n2 = t2 + this._rotationPeriod, r2 = this._resetSerialNumber(n2);
      return r2;
    }, Cp.prototype._resetSerialNumber = function(e2) {
      var t2 = {};
      return t2.exp = e2, t2.sn = this._initialSerialNumber, Mu.saveObjectToStorage(this.localStorageObject(), this._storageKey, t2), t2;
    };
    var Ip = function() {
      np.apply(this, arguments), this._storage = this._constraintsInstance.system.environment.localStorageObject(), this._precisionEndTimeCache = {}, this._serialNumberGenerator = null;
    };
    (Ip.prototype = Object.create(np.prototype)).constructor = Ip, Ip.prototype.constrainedValue = function(e2, t2, n2, r2) {
      var i2 = e2;
      if (Yc.isNumber(e2) && Yc.isObject(t2) && Yc.isNumber(t2.precision) && t2.precision > 0) {
        var o2 = this._computePrecisionStartTime(e2, t2);
        this._serialNumberGenerator = new Cp({ namespace: this._persistentStorageKey(t2, r2), nextRotationTime: o2 + t2.precision, rotationPeriod: t2.precision }), this._serialNumberGenerator.setDelegate(this._constraintsInstance.system.environment), this._serialNumberGenerator.setDelegate({ getTime: function() {
          return e2;
        } });
        var s2 = this._serialNumberGenerator.getNextSerialNumber();
        i2 = this._computeTimestamp(o2, s2), this._serialNumberGenerator = null;
      }
      return i2;
    }, Ip.prototype._computeTimestamp = function(e2, t2) {
      return e2 + t2;
    }, Ip.prototype._persistentStorageKey = function(e2, t2) {
      var n2 = e2.namespace ? "_" + e2.namespace : "";
      return (e2.storageKeyPrefix || "mtTimestamp") + n2 + "_" + t2;
    }, Ip.prototype._computePrecisionStartTime = function(e2, t2) {
      var n2 = t2.precision;
      return Math.floor(e2 / n2) * n2;
    };
    var Rp = function() {
      np.apply(this, arguments);
    };
    function Np(e2, t2) {
      var n2 = e2.namespace ? "_" + e2.namespace : "";
      return (e2.storageKeyPrefix || "mtHash") + n2 + "_salt_" + t2;
    }
    (Rp.prototype = Object.create(np.prototype)).constructor = Rp, Rp.prototype.constrainedValue = function(e2, t2, n2, r2) {
      return Yc.isDefinedNonNullNonEmpty(e2) && (e2 = (function(e3) {
        var t3 = 0;
        if (Yc.isDefinedNonNullNonEmpty(e3)) for (var n3 = 0; n3 < e3.length; n3++) t3 = (t3 << 5) - t3 + e3.charCodeAt(n3);
        var r3 = Math.abs(t3);
        return gu.convertNumberToBaseAlphabet(r3, gu.base62Alphabet);
      })(e2 + "_" + this._getSalt(t2, r2))), e2;
    }, Rp.prototype.timeExpired = function(e2) {
      return !!e2 && e2 <= Date.now();
    }, Rp.prototype.expirationTime = function(e2) {
      return e2 ? Date.now() + e2 : null;
    }, Rp.prototype._getSalt = function(e2, t2) {
      var n2 = this._retrieveSaltFromStorage(e2, t2), r2 = e2.saltLifespan;
      if (!Yc.isDefinedNonNull(n2) || this.timeExpired(n2.expirationTime)) {
        var i2 = this._constraintsInstance.system.environment.localStorageObject();
        n2 = { salt: (function() {
          for (var e3 = ""; e3.length < 10; ) e3 += gu.randomHexCharacter();
          return e3;
        })(), expirationTime: this.expirationTime(r2) }, Mu.saveObjectToStorage(i2, Np(e2, t2), n2);
      }
      return n2.salt;
    }, Rp.prototype._retrieveSaltFromStorage = function(e2, t2) {
      var n2 = this._constraintsInstance.system.environment.localStorageObject();
      return Mu.objectFromStorage(n2, Np(e2, t2));
    };
    var Pp = "idGenerator", Dp = "numberDeres", kp = "timeDeres", xp = "urlDeres", Mp = "hash", Lp = function(e2) {
      this.actions = {}, this.actions[Pp] = new cp(e2), this.actions[Dp] = new Op(e2), this.actions[kp] = new Ip(e2), this.actions[xp] = new lp(e2), this.actions[Mp] = new Rp(e2);
    };
    Lp.prototype.getAction = function(e2) {
      return this.actions[e2];
    };
    var Up = function(e2) {
      this._eventActions = new Ap(), this._fieldActions = new Lp(e2);
    };
    Up.prototype.applyConstraints = function(e2, t2) {
      var n2 = e2;
      if (t2 && !Yc.isEmptyObject(t2)) {
        if (t2.fieldActions && !Yc.isEmptyObject(t2.fieldActions)) {
          var r2 = this, i2 = Object.keys(t2.fieldActions).reduce((function(e3, i3) {
            var o3 = t2.fieldActions[i3];
            if (o3) {
              var s2 = o3.denylisted || o3.blacklisted, a2 = o3.treatmentType, c2 = r2._fieldActions.getAction(a2);
              if (s2) e3[i3] = null;
              else if (o3.hasOwnProperty(Zl)) e3[i3] = o3[Zl];
              else if (c2) {
                var u2 = c2.performAction(i3, n2, o3);
                e3[i3] = u2;
              }
            }
            return e3;
          }), {});
          if (!Yc.isEmptyObject(i2)) {
            var o2 = Yc.extend({}, n2, i2);
            n2 = Cu.mergeAndCleanEventFields(o2);
          }
        }
        t2.eventActions && !Yc.isEmptyObject(t2.eventActions) && Object.keys(t2.eventActions).forEach((function(e3) {
          var r3 = this._eventActions.getAction(e3);
          if (r3) {
            var i3 = t2.eventActions[e3];
            n2 = r3.performAction(n2, i3);
          }
        }), this);
      }
      return n2;
    };
    var jp = "fieldActions";
    function Fp(e2, t2) {
      var n2, r2, i2 = e2 || {};
      return (function(e3, t3) {
        e3.eventActions || (e3.eventActions = {});
        var n3 = e3.eventActions, r3 = t3.eventActions;
        r3 && Object.keys(r3).reduce((function(e4, t4) {
          var n4 = e4[t4], i3 = r3[t4];
          return Yc.isArray(n4) ? Yc.isArray(i3) && i3.forEach((function(e5) {
            -1 === n4.indexOf(e5) && n4.push(e5);
          })) : Yc.isArray(i3) ? e4[t4] = i3.slice() : Yc.isObject(i3) || Yc.isFunction(i3) || (e4[t4] = i3), e4;
        }), n3);
      })(i2, t2), r2 = t2, (n2 = i2).fieldActions || (n2.fieldActions = {}), fp(n2, r2, jp, (function(e3, t3, n3) {
        return e3[n3] && e3[n3].treatmentType === t3[n3].treatmentType ? e3[n3] : {};
      })), i2;
    }
    var Bp = function(e2) {
      this._constraintsInstance = e2, this.treatment = new Up(e2);
    };
    Bp.prototype._combineTreatments = function(e2, t2, n2) {
      var r2 = [];
      return Yc.isArray(e2) && e2.forEach((function(e3) {
        var i2 = "treatmentProfiles." + e3, o2 = t2.value(i2, n2);
        o2 && o2.treatments && (r2 = r2.concat(o2.treatments));
      })), r2;
    }, Bp.prototype.constraintsForEvent = function(e2, t2, n2) {
      if (!t2) return null;
      var r2 = this, i2 = t2.constraintProfiles(n2);
      if (!Yc.isDefinedNonNull(i2)) {
        var o2 = t2.constraintProfile(n2);
        Yc.isDefinedNonNull(o2) && (i2 = [o2]);
      }
      if (!Yc.isDefinedNonNull(i2)) return null;
      if (!Yc.isArray(i2)) throw new TypeError('"constraintProfiles" should be an Array, but got: ' + (i2 ? i2.constructor : i2));
      var s2 = this._combineTreatments(i2, t2, n2);
      if (0 === s2.length) throw new SyntaxError("The constraintProfiles: " + i2.join(", ") + " are not found in the topic config");
      return s2.reduce((function(t3, n3) {
        return r2.eventMatchesTreatment(e2, n3) && (t3 = Fp(t3, n3)), t3;
      }), null);
    }, Bp.prototype.eventMatchesTreatment = function(e2, t2) {
      var n2 = t2.filters;
      if (n2 && Yc.isString(n2)) return "any" === n2;
      if (!Yc.isDefinedNonNull(n2) || 0 === n2.length) throw new SyntaxError("Unable to find the filter in \n" + JSON.stringify(t2));
      return Object.keys(n2).every((function(r2) {
        var i2 = n2[r2];
        if (i2 && Yc.isString(i2)) return false;
        if (!i2 || !Yc.isObject(i2) || Yc.isEmptyObject(i2)) throw new SyntaxError("Invalid filter object for field (" + r2 + ") in \n" + JSON.stringify(t2));
        return Object.keys(i2).every((function(n3) {
          var o2 = i2[n3];
          if (Xl[n3]) return Xl[n3](r2, e2, o2);
          throw new SyntaxError("Unable to find the filter (" + n3 + ") for field (" + r2 + ")in \n" + JSON.stringify(t2));
        }));
      }));
    };
    var Kp = { constraintProfile: function(e2) {
      return this.value("constraints.defaultProfile", e2);
    }, constraintProfiles: function(e2) {
      return this.value("defaultTreatmentProfiles", e2);
    } }, Vp = function(e2, t2) {
      if (!(function(e3) {
        var t3 = true;
        return (t3 &= Yc.isDefinedNonNull(e3)) && (t3 &= !Yc.isEmptyObject(e3), t3 &= Yc.isFunction(e3.initialized), t3 &= Yc.isFunction(e3.value), t3 &= Yc.isFunction(e3.constraintProfile)), t3;
      })(e2)) throw new Error('The topic config is not a valid instance of "mt-client-config".');
      this._isInitialized = false, this._topicConfig = e2, this._constraintGenerator = null, this.system = new Jl(), Yc.setDelegates(this.system, t2 || {});
    };
    Vp.prototype._getConstraintGenerator = function() {
      var e2 = this._topicConfig;
      return this._constraintGenerator && this._isInitialized || (this._isInitialized = e2.initialized(), (function(e3) {
        return Yc.isDefinedNonNull(e3.value("treatmentProfiles"));
      })(e2) ? this._constraintGenerator = new Bp(this) : this._constraintGenerator = new gp(this)), this._constraintGenerator;
    }, Vp.prototype.constraintsForEvent = function(e2, t2) {
      return this._getConstraintGenerator().constraintsForEvent(e2, this._topicConfig, t2);
    }, Vp.prototype.applyConstraintTreatments = function(e2, t2) {
      if (void 0 === t2) try {
        t2 = this.constraintsForEvent(e2);
      } catch (n2) {
        return this.system.logger.warn("An error occupied while applying constraints: " + n2.message || n2), null;
      }
      return this._getConstraintGenerator().treatment.applyConstraints(e2, t2);
    };
    var Hp = "7.4.1", Gp = "mt-metricskit", $p = { mtName: function() {
      return Gp;
    }, mtVersion: function() {
      return Hp;
    } }, zp = { attachDelegateInfo: function(e2) {
      Yc.extend(e2, $p);
    } }, Wp = { treatmentProfiles: { AMPWeb: { treatments: [{ filters: "any", fieldActions: { clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtClientId", namespace: "AMPWeb_isSignedOut", lifespan: 864e5 } } }, { filters: { isSignedIn: { valueMatches: [true] } }, fieldActions: { clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtClientId", namespace: "AMPWeb_isSignedIn", lifespan: 15552e6 } } }] }, AMPFunnel: { treatments: [{ filters: "any", eventActions: { blacklistedFields: ["mtClientId", "mtRequestId", "pliIds", "userAgent", "screenHeight", "screenWidth", "windowInnerHeight", "windowInnerWidth", "windowOuterHeight", "windowOuterWidth"] }, fieldActions: { eventTime: { treatmentType: "timeDeres", precision: 864e5 }, clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtId_clientId_unidentified", lifespan: 15552e6 } } }] }, strict: { treatments: [{ filters: "any", fieldActions: { consumerId: { blacklisted: true }, dsId: { blacklisted: true }, clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtClientId", scopeFieldName: "parentPageUrl", scopeStrategy: "mainDomain", lifespan: 864e5 }, parentPageUrl: { treatmentType: "urlDeres", scope: "hostname" } } }, { filters: { eventType: { valueMatches: ["click"] }, actionType: { valueMatches: ["signUp"] } }, fieldActions: { parentPageUrl: { treatmentType: "urlDeres", scope: "fullWithoutParams" } } }, { filters: { eventType: { valueMatches: ["dialog"] }, dialogType: { valueMatches: ["upsell"] }, result: { valueMatches: ["upsell"] } }, fieldActions: { parentPageUrl: { treatmentType: "urlDeres", scope: "fullWithoutParams" } } }, { filters: { userType: { valueMatches: ["signedIn"] } }, fieldActions: { clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtClientId", scopeStrategy: "all" } } }, { filters: { userType: { valueMatches: ["signedIn"] }, eventType: { valueMatches: ["click", "dialog", "media", "search"] } }, fieldActions: { clientId: { blacklisted: true }, consumerId: { blacklisted: false }, dsId: { blacklisted: false } } }, { filters: { userType: { valueMatches: ["signedIn"] }, eventType: { valueMatches: ["page", "impressions"] }, pageHistory: { nonEmpty: true } }, fieldActions: { clientId: { blacklisted: true }, consumerId: { blacklisted: false }, dsId: { blacklisted: false } } }] } } }, qp = { xp_its_music_main: { treatmentProfiles: { AMPWeb: { treatments: [{ filters: "any", fieldActions: { clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtClientId", namespace: "AMPWeb_isSignedOut", lifespan: 864e5, persistIdForSession: true }, analyticsClientId: { treatmentType: "idGenerator", namespace: "AMPWeb_isSignedOut", lifespan: 864e5, persistIdForSession: true } } }, { filters: { isSignedIn: { valueMatches: [true] } }, fieldActions: { clientId: { treatmentType: "idGenerator", storageKeyPrefix: "mtClientId", namespace: "AMPWeb_isSignedIn", lifespan: 15552e6, persistIdForSession: true }, analyticsClientId: { treatmentType: "idGenerator", namespace: "AMPWeb_isSignedIn", lifespan: 15552e6, persistIdForSession: true } } }] } } }, xp_amp_tv_main: { treatmentProfiles: { AMPWeb: { treatments: [{ filters: "any", fieldActions: { clientId: { blacklisted: true } } }, { filters: { isSignedIn: { valueMatches: [false] } }, fieldActions: { clientId: { treatmentType: "idGenerator", namespace: "AMPWeb_isSignedOut", lifespan: 864e5 } } }] } } }, xp_amp_tv_unidentified: Yc.extend({}, Wp, { blacklistedFields: ["consumerId"] }), default_constraints: Wp };
    Yc.attachMethods(sl, au, sl);
    var Qp = function(e2) {
      var t2;
      Yc.attachMethods(e2, au, e2), t2 = e2, Yc.isFunction(t2.constraintProfile) && Yc.isFunction(t2.constraintProfiles) || Yc.attachMethods(t2, Kp, t2), zp.attachDelegateInfo(e2);
    };
    function Yp(e2, t2) {
      var n2 = (t2 = t2 || {}).delegates || {}, r2 = t2.configSourcesFn, i2 = t2.onSuccessHandler, o2 = t2.onFailureHandler, s2 = n2.environment, a2 = n2.network, c2 = n2.logger;
      Yc.isFunction(r2) || (function(e3) {
        if (!e3.cachedSource()) {
          var t3 = (function(e4) {
            var t4 = qp[e4];
            return Yc.isDefinedNonNull(t4) || (t4 = Wp), t4;
          })(e3.topic());
          e3.setCachedSource(t3);
        }
      })(e2), sl.environment.setDelegate(s2), sl.logger.setDelegate(c2), sl.network.setDelegate(a2), Qp(e2), e2.init(r2, i2, o2);
    }
    var Jp = { CLIENT_EVENT_ID: "clientEventId", CONSUMER_ID: "consumerId", CONSUMER_NS: "consumerNs", DELEGATE_APP: "delegateApp", EVENT_VERSION: "eventVersion", STOREFRONT_COUNTRY_CODE: "storeFrontCountryCode" }, Xp = ["app", "appVersion", "capacityData", "capacityDataAvailable", "capacityDisk", "capacitySystem", "capacitySystemAvailable", "connectionType", "dsId", "hostApp", "osVersion", "pageUrl", "pixelRatio", "resourceRevNum", "screenHeight", "screenWidth", "storeFrontHeader", "userAgent", "userType", "windowInnerHeight", "windowInnerWidth", "windowOuterHeight", "windowOuterWidth"], Zp = ["consumerId", "consumerNs", "cookie", "delegateApp", "environmentInstance", "hardwareBrand", "hardwareFamily", "hardwareModel", "hostAppVersion", "os", "osBuildNumber", "osLanguages", "parentPageUrl", "storeFrontCountryCode", "storeFrontLanguage"], ed = gu.exceptionString, td = Xp, nd = Zp, rd = false, id = function() {
    }, od = function e2() {
      rd || (rd = true, td.forEach((function(t2) {
        e2.prototype[t2] = function() {
          throw ed("metrics.system.environment", t2);
        };
      })), nd.forEach((function(t2) {
        e2.prototype[t2] = id;
      })));
    };
    od.prototype.setDelegate = function(e2) {
      return vu.setDelegate(e2), Yc.attachDelegate(this, e2);
    }, od.prototype.localStorageObject = Mu.localStorageObject, od.prototype.sessionStorageObject = Mu.sessionStorageObject;
    var sd = function() {
    };
    sd.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, sd.prototype.recordEvent = function(e2, t2) {
      throw gu.exceptionString("metrics.system.event_recorder", "recordEvent");
    }, sd.prototype.sendMethod = function() {
      throw gu.exceptionString("metrics.system.event_recorder", "sendMethod");
    }, sd.prototype.flushUnreportedEvents = function(e2) {
    };
    var ad = Gu("mt-metricskit"), cd = function() {
      for (var e2 in this.environment = new od(), this.eventRecorder = new sd(), this.logger = ad, this) zp.attachDelegateInfo(this[e2]);
    }, ud = function(e2) {
      this._metricsKit = e2;
    };
    ud.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, ud.prototype.metricsData = function(e2, t2, n2) {
      return this._metricsKit.eventHandlers.base.processMetricsData.apply(this, arguments);
    }, ud.prototype.knownFields = function() {
      return ["eventType", "eventVersion", "type"];
    }, ud.prototype.eventType = function(e2) {
      return "account";
    }, ud.prototype.eventVersion = function(e2) {
      return e2 && e2.eventVersion || 1;
    };
    var ld = Jp, pd = function(e2) {
      this._metricsKit = e2;
    };
    pd.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, pd.prototype.metricsData = function(e2, t2, n2) {
      var r2 = Array.prototype.slice.call(arguments), i2 = this._metricsKit.config.value("metricsBase");
      return i2 && r2.push(i2), this.processMetricsData.apply(this, r2);
    }, pd.prototype.processMetricsData = function(e2, t2, n2) {
      var r2 = null, i2 = "function" == typeof this.eventType ? this.eventType() : null, o2 = this._metricsKit.config, s2 = this._metricsKit.eventHandlers.base, a2 = this._metricsKit.utils, c2 = this._metricsKit._constraints;
      if (!o2.metricsDisabledOrBlacklistedEvent(i2)) {
        var u2 = this !== s2, l2 = "function" != typeof this.mtIncludeBaseFields || this.mtIncludeBaseFields(), p2 = Array.prototype.slice.call(arguments, 3);
        if (u2 && l2) {
          var d2 = s2.metricsData.apply(s2, arguments);
          p2 = [d2].concat(p2);
        }
        r2 = a2.eventFields.processMetricsData(this, this.knownFields(), e2, t2, n2, p2), u2 && (r2 = c2.applyConstraintTreatments(r2), o2.removeBlacklistedFields(r2), o2.applyDeRes(r2));
      }
      return r2;
    }, pd.prototype.knownFields = function() {
      var e2 = ["app", "appVersion", "baseVersion", "capacityData", "capacityDataAvailable", "capacityDisk", "capacitySystem", "capacitySystemAvailable", "connection", "constraintProfile", "constraintProfiles", ld.CONSUMER_ID, ld.CONSUMER_NS, ld.CLIENT_EVENT_ID, "clientId", ld.DELEGATE_APP, "dsId", "environmentInstance", "eventTime", "isSignedIn", "hardwareBrand", "hardwareFamily", "hardwareModel", "hostApp", "hostAppVersion", "os", "osBuildNumber", "osVersion", "page", "pageContext", "pageDetails", "pageId", "pageType", "pageUrl", "parentPageUrl", "pixelRatio", "resourceRevNum", "screenHeight", "screenWidth", ld.STOREFRONT_COUNTRY_CODE, "storeFrontHeader", "storeFrontLanguage", "timezoneOffset", "userAgent", "userType", "windowInnerHeight", "windowInnerWidth", "windowOuterHeight", "windowOuterWidth", "xpPostFrequency", "xpSendMethod", "xpVersionMetricsKit", "xpDelegatesInfo"];
      return e2;
    }, pd.prototype.app = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.app || t2.app();
    }, pd.prototype.appVersion = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.appVersion || t2.appVersion();
    }, pd.prototype.baseVersion = function(e2) {
      return 1;
    }, pd.prototype.capacityData = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.capacityData || t2.capacityData();
    }, pd.prototype.capacityDataAvailable = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.capacityDataAvailable || t2.capacityDataAvailable();
    }, pd.prototype.capacityDisk = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.capacityDisk || t2.capacityDisk();
    }, pd.prototype.capacitySystem = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.capacitySystem || t2.capacitySystem();
    }, pd.prototype.capacitySystemAvailable = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.capacitySystemAvailable || t2.capacitySystemAvailable();
    }, pd.prototype.connection = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.connection || t2.connectionType();
    }, pd.prototype.constraintProfile = function(e2) {
      var t2 = this._metricsKit.config;
      return e2 && e2.constraintProfile || t2.constraintProfile();
    }, pd.prototype.constraintProfiles = function(e2) {
      var t2 = this._metricsKit.config;
      return e2 && e2.constraintProfiles || t2.constraintProfiles();
    }, pd.prototype.consumerId = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2[ld.CONSUMER_ID] || t2.consumerId();
    }, pd.prototype.consumerNs = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2[ld.CONSUMER_NS] || t2.consumerNs();
    }, pd.prototype.clientEventId = function(e2) {
      var t2 = e2 && e2[ld.CLIENT_EVENT_ID];
      return t2 || (gu.cryptoRandomBase62String && (t2 = gu.cryptoRandomBase62String(true)), t2 || (t2 = gu.uuid())), t2;
    }, pd.prototype.clientId = function(e2) {
      var t2, n2 = this._metricsKit.config;
      return e2 && e2.clientId ? t2 = e2.clientId : n2.value("ignoreClientIdCookie") || (t2 = vu.get("xp_ci")), t2;
    }, pd.prototype.delegateApp = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2[ld.DELEGATE_APP] || t2.delegateApp();
    }, pd.prototype.dsId = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.dsId || t2.dsId();
    }, pd.prototype.isSignedIn = function(e2) {
      return e2 && "isSignedIn" in e2 ? e2.isSignedIn : !!this.dsId(e2);
    }, pd.prototype.eventTime = function(e2) {
      return e2 && e2.eventTime || Date.now();
    }, pd.prototype.hardwareBrand = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.hardwareBrand || t2.hardwareBrand();
    }, pd.prototype.hardwareFamily = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.hardwareFamily || t2.hardwareFamily();
    }, pd.prototype.hardwareModel = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.hardwareModel || t2.hardwareModel();
    }, pd.prototype.hostApp = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.hostApp || t2.hostApp();
    }, pd.prototype.hostAppVersion = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.hostAppVersion || t2.hostAppVersion();
    }, pd.prototype.os = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.os || t2.os();
    }, pd.prototype.osBuildNumber = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.osBuildNumber || t2.osBuildNumber();
    }, pd.prototype.osVersion = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.osVersion || t2.osVersion();
    }, pd.prototype.page = function(e2) {
      if (!e2) throw "No data provided to event_handlers/base page function";
      if (e2.page) return e2.page;
      if (this.pageType(e2) && this.pageId(e2)) {
        var t2 = this._metricsKit.config;
        return this.pageType(e2) + t2.value("compoundSeparator") + this.pageId(e2);
      }
    }, pd.prototype.pageContext = function(e2) {
      return e2 && e2.pageContext;
    }, pd.prototype.pageDetails = function(e2) {
      return e2 && e2.pageDetails;
    }, pd.prototype.pageId = function(e2) {
      return e2 && e2.pageId;
    }, pd.prototype.pageType = function(e2) {
      return e2 && e2.pageType;
    }, pd.prototype.pageUrl = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.pageUrl || t2.pageUrl();
    }, pd.prototype.parentPageUrl = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.parentPageUrl || t2.parentPageUrl();
    }, pd.prototype.pixelRatio = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.pixelRatio || t2.pixelRatio();
    }, pd.prototype.resourceRevNum = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.resourceRevNum || t2.resourceRevNum();
    }, pd.prototype.screenHeight = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.screenHeight || t2.screenHeight();
    }, pd.prototype.screenWidth = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.screenWidth || t2.screenWidth();
    }, pd.prototype.storeFrontCountryCode = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2[ld.STOREFRONT_COUNTRY_CODE] || t2.storeFrontCountryCode();
    }, pd.prototype.storeFrontHeader = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.storeFrontHeader || t2.storeFrontHeader();
    }, pd.prototype.storeFrontLanguage = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.storeFrontLanguage || t2.storeFrontLanguage();
    }, pd.prototype.timezoneOffset = function(e2) {
      return e2 && e2.timezoneOffset || (/* @__PURE__ */ new Date()).getTimezoneOffset();
    }, pd.prototype.userAgent = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.userAgent || t2.userAgent();
    }, pd.prototype.userType = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.userType || t2.userType();
    }, pd.prototype.windowInnerHeight = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.windowInnerHeight || t2.windowInnerHeight();
    }, pd.prototype.windowInnerWidth = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.windowInnerWidth || t2.windowInnerWidth();
    }, pd.prototype.windowOuterHeight = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.windowOuterHeight || t2.windowOuterHeight();
    }, pd.prototype.windowOuterWidth = function(e2) {
      var t2 = this._metricsKit.system.environment;
      return e2 && e2.windowOuterWidth || t2.windowOuterWidth();
    }, pd.prototype.xpPostFrequency = function(e2) {
      var t2 = this._metricsKit.config;
      return e2 && e2.xpPostFrequency || t2.value("postFrequency");
    }, pd.prototype.xpViewablePercentage = function(e2) {
      var t2 = this._metricsKit.config;
      return e2 && e2.xpViewablePercentage || t2.value("impressions.viewablePercentage");
    }, pd.prototype.xpSendMethod = function(e2) {
      var t2 = this._metricsKit.system;
      return e2 && e2.xpSendMethod || t2.eventRecorder.sendMethod();
    }, pd.prototype.xpVersionMetricsKit = function() {
      return Hp;
    }, pd.prototype.xpDelegatesInfo = function() {
      var e2 = Su.getStoredDelegateObject(this), t2 = e2 && e2.delegates;
      return t2 || void 0;
    };
    var dd = function(e2) {
      this._metricsKit = e2;
    };
    dd.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, dd.prototype.metricsData = function(e2, t2, n2) {
      var r2 = this._metricsKit.eventHandlers.base;
      return r2.processMetricsData.apply(this, arguments);
    }, dd.prototype.knownFields = function() {
      return ["eventType", "eventVersion"];
    }, dd.prototype.eventType = function(e2) {
      return "buyConfirmed";
    }, dd.prototype.eventVersion = function(e2) {
      return e2 && e2.eventVersion || 1;
    }, dd.prototype.createClientBuyId = function() {
      var e2 = null, t2 = this._metricsKit.system.environment, n2 = t2.sessionStorageObject().getItem("mtMetricsKit_previousClientBuyId");
      return e2 = ++n2, n2 || (this._metricsKit.system.logger.warn("Metrics: buyConfirmed.createClientBuyId: clientBuyId did not exist or was of incorrect type, reset to 1."), e2 = 1), t2.sessionStorageObject().setItem("mtMetricsKit_previousClientBuyId", e2), e2;
    }, dd.prototype.clientBuyIdQueryParamString = function(e2) {
      return "&clientBuyId=" + e2;
    }, dd.prototype.metricsBuyParamsString = function(e2, t2, n2, r2) {
      var i2, o2, s2 = this._metricsKit.eventHandlers.base, a2 = this._metricsKit.eventHandlers.page, c2 = Array.prototype.slice.call(arguments, 4), u2 = a2.pageHistory(), l2 = s2.clientId();
      return Array.isArray(u2) ? u2.length >= 2 && (i2 = u2[u2.length - 2]) : this._metricsKit.system.logger.warn("MetricsKit: metricsBuyParamsString: pageHistory is not an Array"), o2 = { mtApp: s2.app(), mtEventTime: Date.now(), mtHardwareBrand: s2.hardwareBrand(), mtHardwareFamily: s2.hardwareFamily(), mtHardwareModel: s2.hardwareModel(), mtHostApp: s2.hostApp(), mtHostAppVersion: s2.hostAppVersion(), mtOs: s2.os(), mtOsBuildNumber: s2.osBuildNumber(), mtOsVersion: s2.osVersion(), mtPageId: e2, mtPageType: t2, mtPageContext: n2, mtTopic: r2 || "xp_its_main", mtPrevPage: i2, mtRequestId: gu.uuid(), mtClientId: l2 }, Yc.extend.apply(Yc, [o2].concat(c2)), gu.paramString(o2);
    }, dd.prototype.cacheMetricsBuyData = function(e2, t2) {
      var n2 = this._metricsKit.system.environment;
      if (2 != arguments.length) this._metricsKit.system.logger.error("buyConfirmed.cacheMetricsBuyData(): function invoked with incorrect number of parameters. Perhaps you meant to retrieve cached data instead of setting it, which would be a call to uncacheMetricsBuyData(clientBuyId)?");
      else {
        var r2 = JSON.stringify(t2);
        n2.sessionStorageObject().setItem("mtMetricsKit_metricsBuyData_for_clientBuyId_" + e2, r2);
      }
    }, dd.prototype.uncacheMetricsBuyData = function(e2) {
      var t2 = null, n2 = this._metricsKit.system.environment;
      if (1 != arguments.length) this._metricsKit.system.logger.error("buyConfirmed.uncacheMetricsBuyData(): function invoked with incorrect number of parameters. Perhaps you meant to set cached data instead of retrieving it, which would be a call to cacheMetricsBuyData(clientBuyId, metricsBuyData)?");
      else {
        var r2 = n2.sessionStorageObject().getItem("mtMetricsKit_metricsBuyData_for_clientBuyId_" + e2);
        r2 && (t2 = JSON.parse(r2), n2.sessionStorageObject().removeItem("mtMetricsKit_metricsBuyData_for_clientBuyId_" + e2));
      }
      return t2;
    }, dd.prototype.buyFailureOccurred = function(e2) {
      var t2 = this.uncacheMetricsBuyData(e2);
      t2 && (t2.detoured = true, this.cacheMetricsBuyData(e2, t2));
    };
    var hd = function(e2) {
      var t2 = null;
      try {
        t2 = JSON.parse(e2);
      } catch (n2) {
        ad.error("MetricsKit: error parsing click data - " + n2);
      }
      return t2;
    }, fd = function(e2) {
      this._metricsKit = e2;
    };
    fd.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, fd.prototype.metricsData = function(e2, t2, n2, r2) {
      var i2 = [e2, t2, n2], o2 = this._metricsKit.eventHandlers.base, s2 = this._metricsKit.utils;
      return r2 && (i2.push({ location: s2.eventFields.buildLocationStructure(r2, this.locationDataForElement) }), i2.push(this.dataForElement(r2) || {})), i2 = i2.concat(Array.prototype.slice.call(arguments, 4)), o2.processMetricsData.apply(this, i2);
    }, fd.prototype.knownFields = function() {
      return ["actionContext", "actionDetails", "actionType", "actionUrl", "eventType", "eventVersion", "impressions", "location", "targetId", "targetType", "positionX", "positionY", "xpViewablePercentage"];
    }, fd.prototype.dataForElement = function(e2) {
      var t2 = null;
      if (e2 && Yc.isFunction(e2.hasAttribute) && Yc.isFunction(e2.getAttribute)) {
        var n2 = this.dataAttribute();
        e2.hasAttribute(n2) && (t2 = hd(e2.getAttribute(n2)));
      }
      return t2;
    }, fd.prototype.dataAttribute = function() {
      return "data-metrics-click";
    }, fd.prototype.locationDataForElement = function(e2) {
      var t2, n2, r2, i2 = e2.parentNode, o2 = 0, s2 = null;
      if (e2.hasAttribute && e2.hasAttribute("data-metrics-location") && (s2 = hd(e2.getAttribute("data-metrics-location"))).locationType) {
        if (i2) {
          t2 = i2.childNodes;
          for (var a2 = 0; a2 < t2.length; a2++) if ((r2 = (n2 = "function" == typeof t2.item && t2.item(a2) || t2[a2]).hasAttribute && n2.hasAttribute("data-metrics-location") ? hd(n2.getAttribute("data-metrics-location")) : void 0) ? r2.locationType : void 0) {
            if (n2 === e2) break;
            o2++;
          }
        }
        s2.locationPosition = o2;
      }
      return s2;
    }, fd.prototype.eventType = function(e2) {
      return "click";
    }, fd.prototype.eventVersion = function(e2) {
      return e2 && e2.eventVersion || 4;
    }, fd.prototype.impressions = function(e2) {
      return e2 ? e2.impressions : void 0;
    }, fd.prototype.xpViewablePercentage = function(e2) {
      return this._metricsKit.eventHandlers.base.xpViewablePercentage(e2);
    };
    var gd = function(e2) {
      this._metricsKit = e2;
    };
    gd.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, gd.prototype.metricsData = function(e2, t2, n2) {
      var r2 = this._metricsKit.eventHandlers.base;
      return r2.processMetricsData.apply(this, arguments);
    }, gd.prototype.knownFields = function() {
      return ["buttons", "code", "details", "message", "type", "eventType", "eventVersion", "type"];
    }, gd.prototype.eventType = function(e2) {
      return "dialog";
    }, gd.prototype.eventVersion = function(e2) {
      return e2 && e2.eventVersion || 2;
    };
    var vd = function(e2) {
      this._metricsKit = e2;
    };
    vd.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, vd.prototype.metricsData = function(e2, t2, n2) {
      var r2 = this._metricsKit.eventHandlers.base;
      return r2.processMetricsData.apply(this, arguments);
    }, vd.prototype.knownFields = function() {
      return ["eventType", "eventVersion", "extRefUrl", "osLanguages", "refApp", "type"];
    }, vd.prototype.eventType = function(e2) {
      return "enter";
    }, vd.prototype.eventVersion = function(e2) {
      return e2 && e2.eventVersion || 1;
    }, vd.prototype.osLanguages = function(e2) {
      return e2 && e2.osLanguages || this._metricsKit.system.environment.osLanguages();
    };
    var md = function(e2) {
      this._metricsKit = e2;
    };
    md.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, md.prototype.metricsData = function(e2, t2, n2) {
      var r2 = this._metricsKit.eventHandlers.base;
      return r2.processMetricsData.apply(this, arguments);
    }, md.prototype.knownFields = function() {
      return ["destinationUrl", "eventType", "eventVersion", "type"];
    }, md.prototype.eventType = function(e2) {
      return "exit";
    }, md.prototype.eventVersion = function(e2) {
      return e2 && e2.eventVersion || 1;
    };
    var yd = function(e2) {
      this._metricsKit = e2;
    };
    yd.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, yd.prototype.metricsData = function(e2) {
      var t2 = [void 0, void 0, void 0], n2 = this._metricsKit.eventHandlers.base;
      t2.push({ eventType: e2 });
      var r2 = Array.prototype.slice.call(arguments, 1);
      return t2 = t2.concat(r2), n2.processMetricsData.apply(this, t2);
    }, yd.prototype.knownFields = function() {
      return ["eventTime", "eventType"];
    }, yd.prototype.mtIncludeBaseFields = function() {
      return false;
    }, yd.prototype.eventTime = function(e2) {
      return e2 && e2.eventTime || Date.now();
    }, yd.prototype.eventType = function(e2) {
      return e2 && e2.eventType || void 0;
    };
    var _d = function(e2) {
      this._metricsKit = e2;
    };
    _d.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, _d.prototype.metricsData = function(e2, t2, n2) {
      var r2 = this._metricsKit.eventHandlers.base;
      return r2.processMetricsData.apply(this, arguments);
    }, _d.prototype.knownFields = function() {
      return ["eventType", "eventVersion", "impressions", "xpViewablePercentage", "xpViewableThreshold"];
    }, _d.prototype.eventType = function(e2) {
      return "impressions";
    }, _d.prototype.eventVersion = function(e2) {
      return e2 && e2.eventVersion || 3;
    }, _d.prototype.impressions = function(e2) {
      return e2 ? e2.impressions : void 0;
    }, _d.prototype.xpViewablePercentage = function(e2) {
      return this._metricsKit.eventHandlers.base.xpViewablePercentage(e2);
    }, _d.prototype.xpViewableThreshold = function(e2) {
      var t2 = this._metricsKit.config;
      return e2 && e2.xpViewableThreshold || t2.value("impressions.viewableThreshold");
    };
    var bd = Jp, Sd = function(e2) {
      this._metricsKit = e2;
    };
    Sd.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, Sd.prototype.metricsData = function(e2, t2, n2) {
      var r2 = this._metricsKit.eventHandlers.base;
      return r2.processMetricsData.apply(this, arguments);
    }, Sd.prototype.knownFields = function() {
      var e2 = ["eventType", bd.EVENT_VERSION, "id", "idType", "type", "typeDetails", "actionType", "actionDetails", "url", "duration", "position"];
      return e2;
    }, Sd.prototype.eventType = function(e2) {
      return "media";
    }, Sd.prototype.eventVersion = function(e2) {
      return e2 && e2.eventVersion || 1;
    };
    var Ed = function(e2) {
      this._metricsKit = e2, this.pageHistoryCache = [];
    };
    Ed.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, Ed.prototype.metricsData = function(e2, t2, n2) {
      var r2 = this._metricsKit.eventHandlers.base;
      return r2.processMetricsData.apply(this, arguments);
    }, Ed.prototype.knownFields = function() {
      return ["eventType", "eventVersion", "extRefUrl", "hostApp", "refApp", "refUrl", "requestStartTime", "responseStartTime", "responseEndTime", "pageHistory", "pageLoadTime", "pageRenderTime", "searchFilters", "searchTerm"];
    }, Ed.prototype.eventType = function(e2) {
      return "page";
    }, Ed.prototype.eventVersion = function(e2) {
      return e2 && e2.eventVersion || 1;
    }, Ed.prototype.pageHistory = function(e2) {
      var t2;
      if ((e2 = e2 || {}).pageHistory) t2 = e2.pageHistory;
      else {
        t2 = this.pageHistoryCache.slice(0);
        var n2 = e2.page;
        n2 && (this.pageHistoryCache.length >= 5 && this.pageHistoryCache.shift(), this.pageHistoryCache.push(n2));
      }
      return t2;
    };
    var wd = function(e2) {
      this._metricsKit = e2;
    };
    wd.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, wd.prototype.metricsData = function(e2, t2, n2) {
      var r2 = this._metricsKit.eventHandlers.base;
      return r2.processMetricsData.apply(this, arguments);
    }, wd.prototype.knownFields = function() {
      return ["actionDetails", "actionType", "actionUrl", "eventType", "eventVersion", "filters", "location", "targetId", "targetType", "term"];
    }, wd.prototype.eventType = function(e2) {
      return "search";
    }, wd.prototype.eventVersion = function(e2) {
      return e2 && e2.eventVersion || 2;
    };
    var Td = function(e2) {
      this._metricsKit = e2;
    };
    Td.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, Td.prototype.metricsData = function(e2) {
      var t2 = [null, null, null].concat(Array.prototype.slice.call(arguments));
      return this._metricsKit.eventHandlers.base.processMetricsData.apply(this, t2);
    }, Td.prototype.knownFields = function() {
      return ["eventType", "eventVersion"];
    }, Td.prototype.eventType = function(e2) {
      return "transaction";
    }, Td.prototype.eventVersion = function(e2) {
      return e2 && e2.eventVersion || 1;
    };
    var Ad = function(e2) {
      this.account = new ud(e2), this.base = new pd(e2), this.buyConfirmed = new dd(e2), this.click = new fd(e2), this.dialog = new gd(e2), this.enter = new vd(e2), this.exit = new md(e2), this.flexible = new yd(e2), this.impressions = new _d(e2), this.media = new Sd(e2), this.page = new Ed(e2), this.search = new wd(e2), this.transaction = new Td(e2), zp.attachDelegateInfo(this.account), zp.attachDelegateInfo(this.base), zp.attachDelegateInfo(this.buyConfirmed), zp.attachDelegateInfo(this.click), zp.attachDelegateInfo(this.enter), zp.attachDelegateInfo(this.exit), zp.attachDelegateInfo(this.flexible), zp.attachDelegateInfo(this.impressions), zp.attachDelegateInfo(this.media), zp.attachDelegateInfo(this.page), zp.attachDelegateInfo(this.search), zp.attachDelegateInfo(this.transaction);
    }, Od = function(e2) {
      this._metricsKit = e2;
    };
    Od.prototype.getIdType = function(e2) {
      var t2 = this._metricsKit.config, n2 = e2.indexOf("."), r2 = t2.value("compoundSeparator");
      return (-1 !== n2 ? e2.substring(0, n2) : "its") + r2 + "id";
    }, Od.prototype.processMetricsData = function(e2, t2, n2, r2, i2, o2) {
      var s2 = [{ pageId: n2, pageType: r2, pageContext: i2 }];
      return Yc.isArray(o2) && (s2 = s2.concat(o2)), Cu.processMetricsData(e2, t2, true, s2);
    }, Od.prototype.applyFieldsMap = function(e2, t2) {
      var n2, r2, i2, o2, s2 = this._metricsKit.config;
      if (e2 && t2) if (i2 = {}, n2 = s2.value("fieldsMap") || {}, r2 = Au.valueForKeyPath(t2, n2, n2.custom)) if (Array.isArray(r2)) for (o2 = 0; o2 < r2.length; ++o2) e2[r2[o2]] && (i2[r2[o2]] = e2[r2[o2]]);
      else if ("object" == typeof r2) for (var a2 in r2) for (o2 = 0; o2 < r2[a2].length; ++o2) {
        var c2 = Au.valueForKeyPath(r2[a2][o2], e2);
        if (c2) {
          i2[a2] = c2;
          break;
        }
      }
      else this._metricsKit.system.logger.error("mt-metricskit: incorrect data type provided to applyFieldsMap (only accepts objects and Arrays)");
      else this._metricsKit.system.logger.error("mt-metricskit: unable to get fieldsMap from config-source");
      else e2 || this._metricsKit.system.logger.error("mt-metricskit: No data provided to applyFieldsMap"), t2 || this._metricsKit.system.logger.error("mt-metricskit: No sectionName provided to applyFieldsMap");
      return i2;
    }, Od.prototype.flattenImpressions = function(e2, t2) {
      var n2, r2, i2, o2, s2 = [], a2 = t2 || 1;
      if (e2) {
        e2 = (function(e3) {
          var t3, n3 = {}, r3 = [];
          if (e3 && e3[0] && void 0 !== e3[0].index) for (var i3 = 0; i3 < e3.length; ++i3) n3[t3 = e3[i3].index] || (n3[t3] = true, r3.push(e3[i3]));
          return r3;
        })(e2);
        for (var c2 = 0; c2 < e2.length; c2++) {
          if ("string" == typeof (n2 = e2[c2]).data) try {
            r2 = JSON.parse(n2.data);
          } catch (l2) {
            o2 = decodeURIComponent(n2.data);
            try {
              r2 = JSON.parse(o2);
            } catch (p2) {
              this._metricsKit.system.logger.error("mt-metricskit: non-JSON serialized data found on impression object. Cannot parse.", l2);
            }
          }
          else r2 = n2;
          if (r2) {
            if (r2.impressionTimes = n2.timestamps, r2.impressionIndex = n2.index, r2.id && !r2.idType) if ("genre" === n2.kind) {
              var u2 = this._metricsKit.config;
              r2.idType = "label" + u2.value("compoundSeparator") + "id";
            } else r2.idType = this.getIdType(r2.id.toString());
            n2.parent && void 0 !== n2.parent.impressionId && (r2.impressionParentId = n2.parent.impressionId), r2.impressionId = a2, n2.impressionId = a2, ++a2, s2.push(r2), Au.valueForKeyPath("children.length", n2) > 0 && (i2 = this.flattenImpressions(n2.children, a2), s2 = s2.concat(i2), a2 += i2.length);
          }
        }
      } else this._metricsKit.system.logger.warn("Fuse-Metrics: No impressions provided to to flattenImpressions");
      return s2;
    }, Od.prototype.buildLocationStructure = function(e2, t2) {
      for (var n2, r2 = e2, i2 = []; r2; ) (n2 = t2.call(t2, r2)) && i2.push(n2), r2 = r2.parentNode;
      return i2;
    };
    var Cd = function() {
    };
    Cd.prototype.setDelegate = function(e2) {
      return Yc.attachDelegate(this, e2);
    }, Cd.prototype.makeAjaxRequest = Ru.makeAjaxRequest;
    var Id = { attachDelegate: function(e2, t2) {
      return Yc.attachDelegate(e2, t2);
    }, extend: function(e2) {
      return Yc.extend.apply(Yc, arguments);
    }, bindFunctionsContext: function(e2) {
      if (e2) for (var t2 in e2) "function" == typeof e2[t2] && (e2[t2] = e2[t2].bind(e2));
    } }, Rd = { versionStringFromUserAgent: function(e2, t2) {
      return gu.versionStringFromUserAgent(e2, t2);
    } }, Nd = function(e2) {
      this.delegateExtension = zp, this.eventFields = new Od(e2), Id.bindFunctionsContext(this.eventFields), this.keyValue = Au, this.network = new Cd(), this.reflect = Id, this.string = Rd;
    }, Pd = function(e2) {
      this._metricsKit = e2, this._baseEventHandler = Object.create(this._metricsKit.eventHandlers.base);
    };
    Pd.prototype.clientId = function(e2) {
      if (!this._metricsKit.config.initialized()) return this._metricsKit.system.logger.error("Unable to load topic config, please invoke clientId() after MetricsKit is initialized."), null;
      var t2 = this._baseEventHandler.metricsData(null, null, null, e2);
      return t2 ? t2.clientId : null;
    };
    var Dd = function(e2) {
      this.base = new Pd(e2);
    }, kd = e("C", (function(e2, t2) {
      this._initCalled = false, this._delegatePackage = t2, this.system = new cd(), this.config = sl.getConfig(e2), this.eventHandlers = new Ad(this), this.eventFields = new Dd(this), this.utils = new Nd(this), this._constraints = null, Yc.isDefined(e2) || this.system.logger.error("No topic is provided to ClickstreamProcessor."), Yc.isDefinedNonNull(t2) || this.system.logger.error("No delegate is provided to ClickstreamProcessor");
    }));
    kd.prototype.init = function(e2) {
      this._initCalled || (this._initCalled = true, e2 = (function(e3, t2) {
        t2 = t2 || {};
        var n2 = { onSuccessHandler: null, onFailureHandler: null, configSourcesFn: null };
        return n2.configSourcesFn = t2.configSourcesFn, n2.onSuccessHandler = t2.onSuccessHandler, n2.onFailureHandler = t2.onFailureHandler, n2;
      })(0, e2), Yp(this.config, { configSourcesFn: e2.configSourcesFn, onSuccessHandler: e2.onSuccessHandler, onFailureHandler: e2.onFailureHandler, delegates: { environment: this.system.environment, logger: this.system.logger, network: this.utils.network } }), this._constraints = new Vp(this.config, { environment: this.system.environment }), this._delegatePackage && (Yc.setDelegates(this.eventHandlers, this._delegatePackage), Yc.setDelegates(this.system, this._delegatePackage), Yc.setDelegates(this.utils, this._delegatePackage)));
    }, kd.prototype.cleanup = function() {
      var e2;
      this._delegatePackage && Yc.isFunction(this._delegatePackage.cleanup) && this._delegatePackage.cleanup(), e2 = this.config, sl.cleanupConfig(e2.topic()), Yc.detachMethods(sl.environment), Yc.detachMethods(sl.logger), Yc.detachMethods(sl.network), Yc.resetDelegates(this.eventHandlers), Yc.resetDelegates(this.system), Yc.resetDelegates(this.utils), this.config = null, this.system = null, this.eventHandlers = null, this.utils = null, this._delegatePackage = null, this._constraints = null, this._initCalled = false;
    };
  } };
}));
