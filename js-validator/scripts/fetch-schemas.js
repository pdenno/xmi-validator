import fs from 'fs';
import path from 'path';
import https from 'https';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const BASE_URL = 'https://www.omg.org/spec/';
const filesToFetch = [
  { url: 'UML/20161101/UML.xmi', dest: '../../schemas/uml/20161101/UML.xmi' },
  { url: 'UML/20161101/PrimitiveTypes.xmi', dest: '../../schemas/uml/20161101/PrimitiveTypes.xmi' },
  { url: 'UML/20161101/StandardProfile.xmi', dest: '../../schemas/uml/20161101/StandardProfile.xmi' },
  { url: 'UML/20161101/UMLDI.xmi', dest: '../../schemas/uml/20161101/UMLDI.xmi' }
];

function download(url, dest) {
  return new Promise((resolve, reject) => {
    const fullDest = path.resolve(__dirname, dest);
    const dir = path.dirname(fullDest);
    if (!fs.existsSync(dir)) fs.mkdirSync(dir, { recursive: true });
    
    const file = fs.createWriteStream(fullDest);
    https.get(url, (response) => {
      // Follow redirects seamlessly
      if (response.statusCode === 301 || response.statusCode === 302 || response.statusCode === 303) {
        const redirectUrl = response.headers.location;
        if (!redirectUrl.startsWith('https://')) {
          reject(new Error(`Insecure redirect to ${redirectUrl}`));
          return;
        }
        console.log(`Redirecting to ${redirectUrl}...`);
        download(redirectUrl, dest).then(resolve).catch(reject);
        return;
      }
      
      if (response.statusCode >= 400) {
        reject(new Error(`HTTP Response ${response.statusCode}`));
        return;
      }
      
      response.pipe(file);
      file.on('finish', () => {
        file.close(resolve);
      });
    }).on('error', (err) => {
      fs.unlink(fullDest, () => reject(err));
    });
  });
}

(async () => {
  console.log('Downloading latest OMG UML schemas...');
  for (const item of filesToFetch) {
    console.log(`Fetching ${item.url}...`);
    try {
      await download(BASE_URL + item.url, item.dest);
      console.log(`Saved successfully to local database at ${item.dest}`);
    } catch (e) {
      console.error(`Failed to fetch ${item.url}`, e);
    }
  }
})();
