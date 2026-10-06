import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const paths=process.argv.slice(2);
if(!paths.length)throw new Error('Usage: node scripts/check-content-dex.mjs DEX [DEX ...]');
const parse=(file)=>{
  const dex=fs.readFileSync(file);
  if(!dex.subarray(0,4).equals(Buffer.from('dex\n')))throw new Error(`Not a DEX: ${file}`);
  const read=offset=>dex.readUInt32LE(offset);
  const string=index=>{let offset=read(read(60)+index*4);while(dex[offset++]&128){}let end=offset;while(dex[end]!==0)end++;return dex.toString('utf8',offset,end);};
  const types=Array.from({length:read(64)},(_,i)=>string(read(read(68)+i*4)));
  const definitions=Array.from({length:read(96)},(_,i)=>types[read(read(100)+i*32)]);
  const declaredMethods=[];
  const uleb=(cursor)=>{let value=0,shift=0,byte;do{byte=dex[cursor.offset++];value|=(byte&127)<<shift;shift+=7;}while(byte&128);return value>>>0;};
  const methodName=(index)=>{
    const off=read(92)+index*8,proto=read(76)+dex.readUInt16LE(off+2)*12,params=read(proto+8);
    const args=params?Array.from({length:read(params)},(_,i)=>types[dex.readUInt16LE(params+4+i*2)]).join(''):'';
    return `${types[dex.readUInt16LE(off)]}->${string(read(off+4))}(${args})${types[read(proto+4)]}`;
  };
  for(let i=0;i<read(96);i++){
    const data=read(read(100)+i*32+24);if(!data)continue;
    const cursor={offset:data},staticFields=uleb(cursor),instanceFields=uleb(cursor),direct=uleb(cursor),virtual=uleb(cursor);
    for(let j=0;j<staticFields+instanceFields;j++){uleb(cursor);uleb(cursor);}
    for(const count of [direct,virtual]){let index=0;for(let j=0;j<count;j++){index+=uleb(cursor);uleb(cursor);uleb(cursor);declaredMethods.push(methodName(index));}}
  }
  const strings=Array.from({length:read(56)},(_,i)=>string(i));
  return {file,types,definitions,declaredMethods,strings};
};
const parsed=paths.map(parse),definitions=new Set(),duplicates=[];
for(const file of parsed)for(const type of file.definitions){if(definitions.has(type))duplicates.push(type);definitions.add(type);}
const source=path.join(root,'source/amap-9.5.0.600013');
const collect=directory=>fs.readdirSync(directory,{withFileTypes:true}).flatMap(entry=>entry.isDirectory()?collect(path.join(directory,entry.name)):entry.name.endsWith('.smali')?[path.join(directory,entry.name)]:[]);
const existing=new Set(fs.readdirSync(source).filter(n=>/^smali(?:_classes\d+)?$/.test(n)).flatMap(n=>collect(path.join(source,n)).map(p=>`L${path.relative(path.join(source,n),p).slice(0,-6)};`)));
for(const type of definitions)if(existing.has(type))duplicates.push(type);
const types=[...new Set(parsed.flatMap(p=>p.types))].map(name=>name.replace(/^\[+/,''));
const library=/^L(?:com\/icar03\/(?:compose|content)\/|com\/autonavi\/amapauto\/content\/|kotlin(?:x)?\/|org\/jetbrains\/annotations\/|com\/google\/common\/util\/concurrent\/|com\/airbnb\/lottie\/|okio\/|androidx\/graphics\/path\/)/;
const missing=types.filter(name=>library.test(name)&&!definitions.has(name)&&!existing.has(name));
const leaked=types.filter(name=>/^L(?:androidx\/|android\/support\/)/.test(name)&&!name.startsWith('Landroidx/graphics/path/'));
const legacy=types.filter(name=>/Lcom\/autonavi\/amapauto\/content\/(?:ContentRenderer|ContentIconView|ContentSystemSlider|ContentTheme);/.test(name));
for(const name of ['Lcom/autonavi/amapauto/content/ContentRuntime;','Lcom/autonavi/amapauto/content/ContentStore;',
  'Lcom/icar03/content/host/ContentComposeHost;','Lcom/icar03/content/host/MapGestureBar;','Lcom/icar03/content/host/MapGestureBarHost;','Lcom/icar03/content/runtime/ContentBinding;',
  'Lcom/icar03/content/ui/ContentPanelKt;','Lcom/icar03/compose/androidx/compose/ui/platform/ComposeView;',
  'Lcom/icar03/compose/androidx/lifecycle/LifecycleRegistry;',
  'Lkotlinx/coroutines/android/AndroidDispatcherFactory;',
  'Lkotlinx/coroutines/android/AndroidExceptionPreHandler;']) {
  if(!definitions.has(name))throw new Error(`Compose main-chain definition missing: ${name}`);
}
const strings=new Set(parsed.flatMap(p=>p.strings));
if(!definitions.has('Landroidx/graphics/path/PathIteratorImpl;')||!strings.has('androidx.graphics.path')||strings.has('com.icar03.compose.androidx.graphics.path'))throw new Error('JNI graphics-path package or loadLibrary name was relocated');
const methods=new Set(parsed.flatMap(p=>p.declaredMethods));
for(const method of ['Lcom/autonavi/amapauto/content/ContentMediaListener;-><init>()V',
  'Lcom/autonavi/amapauto/content/ContentRuntime;->attach(Landroid/view/ViewGroup;)V',
  'Lcom/autonavi/amapauto/content/ContentRuntime;->detach(Landroid/app/Activity;)V',
  'Lcom/autonavi/amapauto/content/ContentRuntime;->onBackPressed(Landroid/app/Activity;)Z',
  'Lcom/autonavi/amapauto/content/ContentRuntime;->onBackKeyDown(Landroid/app/Activity;Landroid/view/KeyEvent;)Z',
  'Lcom/autonavi/amapauto/content/ContentRuntime;->onBackKeyUp(Landroid/app/Activity;Landroid/view/KeyEvent;)Z',
  'Lcom/autonavi/amapauto/content/ContentRuntime;->onHostPaused(Landroid/app/Activity;)V',
  'Lcom/autonavi/amapauto/content/ContentRuntime;->onHostResumed(Landroid/app/Activity;)V',
  'Lcom/autonavi/amapauto/content/ContentRuntime;->onAmapThemeChanged(I)V',
  'Lcom/autonavi/amapauto/content/ContentRuntime;->onDividerChanged(FFF)V',
  'Lcom/autonavi/amapauto/content/ContentRuntime;->bindMapPresentation(Landroid/view/ViewGroup;Lcom/icar03/content/model/MapPresentationPort;)V',
  'Lcom/autonavi/amapauto/content/ContentRuntime;->onPanelPhaseChanged(Lcom/icar03/content/model/MapPresentationPort;I)V',
  'Lcom/autonavi/amapauto/content/ContentRuntime;->onMapDividerChanged(Lcom/icar03/content/model/MapPresentationPort;FFF)V',
  'Lcom/autonavi/amapauto/content/ContentRuntime;->isMapGestureAllowed(Lcom/icar03/content/model/MapPresentationPort;)Z',
  'Lcom/icar03/content/model/MapPresentationPort;->settleToExpanded()V',
  'Lcom/icar03/content/model/MapPresentationPort;->settleToCollapsed()V',
  'Lcom/icar03/content/model/MapPresentationPort;->reservedGestureWidthPx()I',
  'Lcom/icar03/content/model/MapPresentationPort;->updateGestureState(ZZZZ)V',
  'Lcom/icar03/content/model/MapPresentationPort;->ensureGestureOnTop()V',
  'Lcom/icar03/content/host/MapGestureBar;->attachTo(Landroid/view/ViewGroup;)Lcom/icar03/content/host/MapGestureBar;',
  'Lcom/icar03/content/host/MapGestureBar;->updateGestureState(ZZZZ)V',
  'Lcom/icar03/content/host/MapGestureBarHost;->findGestureLayer(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;',
  'Lcom/icar03/content/host/MapGestureBarHost;->ensureOnTop(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;F)V']) {
  if(!methods.has(method))throw new Error(`External Compose ABI method missing: ${method}`);
}
if(types.includes('Ljavax/annotation/Nullable;'))throw new Error('Optional Okio JSR-305 metadata survived R8; keep executable closure strict');
if(duplicates.length||missing.length||leaked.length||legacy.length)throw new Error(JSON.stringify({duplicates,missing,leaked,legacy}));
console.log(`Compose DEX closure verified: ${parsed.length} DEX, ${definitions.size} definitions; no duplicates, unresolved runtime types or legacy renderer/library leakage`);
