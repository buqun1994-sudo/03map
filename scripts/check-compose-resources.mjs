import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
const root=path.resolve(path.dirname(fileURLToPath(import.meta.url)),'..');
const symbols=fs.readFileSync(process.argv[2],'utf8');
const values=new Map(symbols.trim().split('\n').map(line=>{const p=line.split(' ');return [`${p[1]}/${p[2]}`,p[3]];}));
const original=fs.readFileSync(process.argv[3] || path.join(path.dirname(path.dirname(process.argv[2])),'stable-ids.txt'),'utf8');
let count=0;
for(const line of original.trim().split('\n')) {
  const [name,id]=line.split(' = ');
  const key=name.slice(name.indexOf(':')+1);
  const symbol=key.replaceAll('.','_');
  if(parseInt(values.get(symbol),16)!==parseInt(id,16))throw new Error(`Original public resource ID changed: ${key}`);
  count++;
}
if(count<5000)throw new Error('Unexpected original public-ID inventory');
for(const key of ['id/view_tree_lifecycle_owner','id/view_tree_saved_state_registry_owner','id/view_tree_view_model_store_owner','id/compose_view_saveable_id_tag']) {
  if(!values.has(key)||parseInt(values.get(key),16)===0)throw new Error(`Missing Compose owner resource ${key}`);
}
console.log(`Compose resource mapping verified: ${count} original public IDs unchanged; runtime owner IDs resolved`);
