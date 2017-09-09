# Base

## node-red :)

> A visual tool for wiring the Internet of Things

```sh
root@edison:~# npm install -g --unsafe-perm node-red
```

```sh
node-red@0.14.6 /usr/lib/node_modules/node-red
-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/
...
...
├── is-utf8@0.2.1
├── on-headers@1.0.1
├── basic-auth@1.0.4
├── media-typer@0.3.0
├── semver@5.3.0
├── node-red-node-rbe@0.1.5
├── clone@1.0.2
├── mustache@2.2.1
├── cookie-parser@1.4.3 (cookie-signature@1.0.6, cookie@0.3.1)
├── passport-http-bearer@1.0.1 (passport-strategy@1.0.0)
├── passport-oauth2-client-password@0.1.2 (passport-strategy@1.0.0)
├── nopt@3.0.6 (abbrev@1.0.9)
├── passport@0.3.2 (pause@0.0.1, passport-strategy@1.0.0)
├── fs.notify@0.0.4 (async@0.1.22, retry@0.6.1)
├── bcryptjs@2.3.0
├── cors@2.7.1 (vary@1.1.0)
├── follow-redirects@0.2.0 (stream-consume@0.1.0, debug@2.2.0)
├── raw-body@2.1.7 (unpipe@1.0.0, bytes@2.4.0, iconv-lite@0.4.13)
├── sentiment@1.0.6 (lodash.assign@4.0.1)
├── body-parser@1.15.2 (content-type@1.0.2, bytes@2.4.0, depd@1.1.0, qs@6.2.0, on-finished@2.3.0, http-errors@1.5.0, debug@2.2.0, iconv-lite@0.4.13, type-is@1.6.13)
├── oauth2orize@1.4.0 (uid2@0.0.3, utils-merge@1.0.0, debug@2.2.0)
├── express@4.14.0 (escape-html@1.0.3, array-flatten@1.1.1, cookie-signature@1.0.6, utils-merge@1.0.0, encodeurl@1.0.1, content-type@1.0.2, merge-descriptors@1.0.1, methods@1.1.2, parseurl@1.3.1, serve-static@1.11.1, content-disposition@0.5.1, range-parser@1.2.0, etag@1.7.0, fresh@0.3.0, vary@1.1.0, cookie@0.3.1, path-to-regexp@0.1.7, depd@1.1.0, qs@6.2.0, on-finished@2.3.0, finalhandler@0.5.0, proxy-addr@1.1.2, debug@2.2.0, type-is@1.6.13, send@0.14.1, accepts@1.3.3)
├── when@3.7.7
├── bcrypt@0.8.7 (bindings@1.2.1, nan@2.3.5)
├── fs-extra@0.30.0 (path-is-absolute@1.0.0, klaw@1.3.0, graceful-fs@4.1.5, jsonfile@2.3.1, rimraf@2.5.4)
├── uglify-js@2.7.0 (async@0.2.10, uglify-to-browserify@1.0.2, source-map@0.5.6, yargs@3.10.0)
├── node-red-node-email@0.1.10 (mailparser@0.6.1, imap@0.8.17, poplib@0.1.7, nodemailer@1.11.0)
├── mqtt@1.13.0 (inherits@2.0.1, reinterval@1.1.0, xtend@4.0.1, help-me@0.1.0, minimist@1.2.0, commist@1.0.0, mqtt-connection@2.1.1, readable-stream@1.0.34, end-of-stream@1.1.0, pump@1.0.1, mqtt-packet@3.4.7, concat-stream@1.5.1, split2@2.1.0, websocket-stream@3.2.1)
├── node-red-node-feedparser@0.1.5 (feedparser@1.1.3, request@2.65.0)
├── node-red-node-twitter@0.1.6 (twitter-ng@0.6.2, oauth@0.9.14, request@2.67.0)
├── i18next@1.10.6 (cookies@0.6.1, json5@0.2.0, i18next-client@1.10.3)
├── ws@0.8.1 (options@0.0.6, ultron@1.0.2, bufferutil@1.2.1, utf-8-validate@1.2.1)
├── cron@1.1.0 (moment-timezone@0.3.1)
├── cheerio@0.19.0 (entities@1.1.1, dom-serializer@0.1.0, css-select@1.0.0, htmlparser2@3.8.3, lodash@3.10.1)
├── xml2js@0.4.17 (sax@1.2.1, xmlbuilder@4.2.1)
└── node-red-node-serialport@0.2.1 (serialport@2.1.2)
```

## Node-RED Execution

```sh
root@edison:~# --node-args="--max-old-space-size=256"
```

```sh
4 Mar 04:10:34 - [info] 

Welcome to Node-RED
===================

4 Mar 04:10:34 - [info] Node-RED version: v0.16.2
4 Mar 04:10:34 - [info] Node.js  version: v4.4.3
4 Mar 04:10:34 - [info] Linux 3.10.98-poky-edison+ ia32 LE
4 Mar 04:10:37 - [info] Loading palette nodes
4 Mar 04:10:47 - [info] Settings file  : /home/root/.node-red/settings.js
4 Mar 04:10:47 - [info] User directory : /home/root/.node-red
4 Mar 04:10:47 - [info] Flows file     : /home/root/.node-red/flows_edison.json
4 Mar 04:10:48 - [info] Creating new flow file
4 Mar 04:10:48 - [info] Server now running at http://127.0.0.1:1880/
4 Mar 04:10:48 - [info] Starting flows
4 Mar 04:10:48 - [info] Started flows
```

# node-red Configuration

```sh
root@edison:~# ls .node-red/
flows_edison.json  flows_edison_cred.json  lib  node_modules  settings.js
```

```sh
root@edison:~# ls .node-red/node_modules/
node-red-contrib-socialogix4edison
```

```sh
root@edison:~# cd .node-red
root@edison:~/.node-red# 
```
