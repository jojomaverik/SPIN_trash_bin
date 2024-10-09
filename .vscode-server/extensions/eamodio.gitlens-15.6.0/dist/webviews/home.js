var e={47:(e,t,o)=>{const i=o(602),s=/[\u001b\u009b][[()#;?]*(?:[0-9]{1,4}(?:;[0-9]{0,4})*)?[0-9A-ORZcf-nqry=><]/y,r=/[\x00-\x1F\x7F-\x9F]{1,1000}/y,a=/(?:\p{Emoji_Modifier_Base}\p{Emoji_Modifier}?|\p{Emoji_Presentation}|\p{Emoji}\uFE0F)(?:\u200d(?:\p{Emoji_Modifier_Base}\p{Emoji_Modifier}?|\p{Emoji_Presentation}|\p{Emoji}\uFE0F))*/uy,l=/[\x20-\x7E\xA0-\xFF]{1,1000}/y,c=/\p{M}+/gu,d={limit:1/0,ellipsis:""},p=(e,t={},o={})=>{const h=t.limit??1/0,u=t.ellipsis??"",g=t?.ellipsisWidth??(u?p(u,d,o).width:0),f=o.ansiWidth??0,m=o.controlWidth??0,v=o.ambiguousWidth??1,y=o.emojiWidth??2,_=o.fullWidthWidth??2,w=o.regularWidth??1,x=o.wideWidth??2;let $=0,P=0,S=e.length,C=0,E=!1,A=S,O=Math.max(0,h-g),T=0,D=0,j=0,F=0;e:for(;;){if(D>T||P>=S&&P>$){const t=e.slice(T,D)||e.slice($,P);C=0;for(const e of t.replaceAll(c,"")){const t=e.codePointAt(0)||0;if(F=(0,i.isFullWidth)(t)?_:(0,i.isWide)(t)?x:v!==w&&(0,i.isAmbiguous)(t)?v:w,j+F>O&&(A=Math.min(A,Math.max(T,$)+C)),j+F>h){E=!0;break e}C+=e.length,j+=F}T=D=0}if(P>=S)break;if(l.lastIndex=P,l.test(e)){if(C=l.lastIndex-P,F=C*w,j+F>O&&(A=Math.min(A,P+Math.floor((O-j)/w))),j+F>h){E=!0;break}j+=F,T=$,D=P,P=$=l.lastIndex}else if(s.lastIndex=P,s.test(e)){if(j+f>O&&(A=Math.min(A,P)),j+f>h){E=!0;break}j+=f,T=$,D=P,P=$=s.lastIndex}else if(r.lastIndex=P,r.test(e)){if(C=r.lastIndex-P,F=C*m,j+F>O&&(A=Math.min(A,P+Math.floor((O-j)/m))),j+F>h){E=!0;break}j+=F,T=$,D=P,P=$=r.lastIndex}else if(a.lastIndex=P,a.test(e)){if(j+y>O&&(A=Math.min(A,P)),j+y>h){E=!0;break}j+=y,T=$,D=P,P=$=a.lastIndex}else P+=1}return{width:E?O:j,index:E?A:S,truncated:E,ellipsed:E&&h>=g}}},602:(e,t)=>{Object.defineProperty(t,"__esModule",{value:!0}),t.isWide=t.isFullWidth=t.isAmbiguous=void 0;t.isAmbiguous=e=>161===e||164===e||167===e||168===e||170===e||173===e||174===e||e>=176&&e<=180||e>=182&&e<=186||e>=188&&e<=191||198===e||208===e||215===e||216===e||e>=222&&e<=225||230===e||e>=232&&e<=234||236===e||237===e||240===e||242===e||243===e||e>=247&&e<=250||252===e||254===e||257===e||273===e||275===e||283===e||294===e||295===e||299===e||e>=305&&e<=307||312===e||e>=319&&e<=322||324===e||e>=328&&e<=331||333===e||338===e||339===e||358===e||359===e||363===e||462===e||464===e||466===e||468===e||470===e||472===e||474===e||476===e||593===e||609===e||708===e||711===e||e>=713&&e<=715||717===e||720===e||e>=728&&e<=731||733===e||735===e||e>=768&&e<=879||e>=913&&e<=929||e>=931&&e<=937||e>=945&&e<=961||e>=963&&e<=969||1025===e||e>=1040&&e<=1103||1105===e||8208===e||e>=8211&&e<=8214||8216===e||8217===e||8220===e||8221===e||e>=8224&&e<=8226||e>=8228&&e<=8231||8240===e||8242===e||8243===e||8245===e||8251===e||8254===e||8308===e||8319===e||e>=8321&&e<=8324||8364===e||8451===e||8453===e||8457===e||8467===e||8470===e||8481===e||8482===e||8486===e||8491===e||8531===e||8532===e||e>=8539&&e<=8542||e>=8544&&e<=8555||e>=8560&&e<=8569||8585===e||e>=8592&&e<=8601||8632===e||8633===e||8658===e||8660===e||8679===e||8704===e||8706===e||8707===e||8711===e||8712===e||8715===e||8719===e||8721===e||8725===e||8730===e||e>=8733&&e<=8736||8739===e||8741===e||e>=8743&&e<=8748||8750===e||e>=8756&&e<=8759||8764===e||8765===e||8776===e||8780===e||8786===e||8800===e||8801===e||e>=8804&&e<=8807||8810===e||8811===e||8814===e||8815===e||8834===e||8835===e||8838===e||8839===e||8853===e||8857===e||8869===e||8895===e||8978===e||e>=9312&&e<=9449||e>=9451&&e<=9547||e>=9552&&e<=9587||e>=9600&&e<=9615||e>=9618&&e<=9621||9632===e||9633===e||e>=9635&&e<=9641||9650===e||9651===e||9654===e||9655===e||9660===e||9661===e||9664===e||9665===e||e>=9670&&e<=9672||9675===e||e>=9678&&e<=9681||e>=9698&&e<=9701||9711===e||9733===e||9734===e||9737===e||9742===e||9743===e||9756===e||9758===e||9792===e||9794===e||9824===e||9825===e||e>=9827&&e<=9829||e>=9831&&e<=9834||9836===e||9837===e||9839===e||9886===e||9887===e||9919===e||e>=9926&&e<=9933||e>=9935&&e<=9939||e>=9941&&e<=9953||9955===e||9960===e||9961===e||e>=9963&&e<=9969||9972===e||e>=9974&&e<=9977||9979===e||9980===e||9982===e||9983===e||10045===e||e>=10102&&e<=10111||e>=11094&&e<=11097||e>=12872&&e<=12879||e>=57344&&e<=63743||e>=65024&&e<=65039||65533===e||e>=127232&&e<=127242||e>=127248&&e<=127277||e>=127280&&e<=127337||e>=127344&&e<=127373||127375===e||127376===e||e>=127387&&e<=127404||e>=917760&&e<=917999||e>=983040&&e<=1048573||e>=1048576&&e<=1114109;t.isFullWidth=e=>12288===e||e>=65281&&e<=65376||e>=65504&&e<=65510;t.isWide=e=>e>=4352&&e<=4447||8986===e||8987===e||9001===e||9002===e||e>=9193&&e<=9196||9200===e||9203===e||9725===e||9726===e||9748===e||9749===e||e>=9800&&e<=9811||9855===e||9875===e||9889===e||9898===e||9899===e||9917===e||9918===e||9924===e||9925===e||9934===e||9940===e||9962===e||9970===e||9971===e||9973===e||9978===e||9981===e||9989===e||9994===e||9995===e||10024===e||10060===e||10062===e||e>=10067&&e<=10069||10071===e||e>=10133&&e<=10135||10160===e||10175===e||11035===e||11036===e||11088===e||11093===e||e>=11904&&e<=11929||e>=11931&&e<=12019||e>=12032&&e<=12245||e>=12272&&e<=12287||e>=12289&&e<=12350||e>=12353&&e<=12438||e>=12441&&e<=12543||e>=12549&&e<=12591||e>=12593&&e<=12686||e>=12688&&e<=12771||e>=12783&&e<=12830||e>=12832&&e<=12871||e>=12880&&e<=19903||e>=19968&&e<=42124||e>=42128&&e<=42182||e>=43360&&e<=43388||e>=44032&&e<=55203||e>=63744&&e<=64255||e>=65040&&e<=65049||e>=65072&&e<=65106||e>=65108&&e<=65126||e>=65128&&e<=65131||e>=94176&&e<=94180||94192===e||94193===e||e>=94208&&e<=100343||e>=100352&&e<=101589||e>=101632&&e<=101640||e>=110576&&e<=110579||e>=110581&&e<=110587||110589===e||110590===e||e>=110592&&e<=110882||110898===e||e>=110928&&e<=110930||110933===e||e>=110948&&e<=110951||e>=110960&&e<=111355||126980===e||127183===e||127374===e||e>=127377&&e<=127386||e>=127488&&e<=127490||e>=127504&&e<=127547||e>=127552&&e<=127560||127568===e||127569===e||e>=127584&&e<=127589||e>=127744&&e<=127776||e>=127789&&e<=127797||e>=127799&&e<=127868||e>=127870&&e<=127891||e>=127904&&e<=127946||e>=127951&&e<=127955||e>=127968&&e<=127984||127988===e||e>=127992&&e<=128062||128064===e||e>=128066&&e<=128252||e>=128255&&e<=128317||e>=128331&&e<=128334||e>=128336&&e<=128359||128378===e||128405===e||128406===e||128420===e||e>=128507&&e<=128591||e>=128640&&e<=128709||128716===e||e>=128720&&e<=128722||e>=128725&&e<=128727||e>=128732&&e<=128735||128747===e||128748===e||e>=128756&&e<=128764||e>=128992&&e<=129003||129008===e||e>=129292&&e<=129338||e>=129340&&e<=129349||e>=129351&&e<=129535||e>=129648&&e<=129660||e>=129664&&e<=129672||e>=129680&&e<=129725||e>=129727&&e<=129733||e>=129742&&e<=129755||e>=129760&&e<=129768||e>=129776&&e<=129784||e>=131072&&e<=196605||e>=196608&&e<=262141}},t={};function o(i){var s=t[i];if(void 0!==s)return s.exports;var r=t[i]={exports:{}};return e[i](r,r.exports,o),r.exports}o.d=(e,t)=>{for(var i in t)o.o(t,i)&&!o.o(e,i)&&Object.defineProperty(e,i,{enumerable:!0,get:t[i]})},o.o=(e,t)=>Object.prototype.hasOwnProperty.call(e,t),void 0!==o&&Object.defineProperty(o,"p",{get:function(){try{if("string"!=typeof webpackResourceBasePath)throw new Error("WebpackRequireFrom: 'webpackResourceBasePath' is not a string or not available at runtime. See https://github.com/agoldis/webpack-require-from#troubleshooting");return webpackResourceBasePath}catch(e){return"#{root}/dist/webviews/"}},set:function(e){}});var i={};o.d(i,{K:()=>Un});const s=globalThis,r=s.ShadowRoot&&(void 0===s.ShadyCSS||s.ShadyCSS.nativeShadow)&&"adoptedStyleSheets"in Document.prototype&&"replace"in CSSStyleSheet.prototype,a=Symbol(),l=new WeakMap;class n{constructor(e,t,o){if(this._$cssResult$=!0,o!==a)throw Error("CSSResult is not constructable. Use `unsafeCSS` or `css` instead.");this.cssText=e,this.t=t}get styleSheet(){let e=this.o;const t=this.t;if(r&&void 0===e){const o=void 0!==t&&1===t.length;o&&(e=l.get(t)),void 0===e&&((this.o=e=new CSSStyleSheet).replaceSync(this.cssText),o&&l.set(t,e))}return e}toString(){return this.cssText}}const c=e=>new n("string"==typeof e?e:e+"",void 0,a),d=(e,...t)=>{const o=1===e.length?e[0]:t.reduce(((t,o,i)=>t+(e=>{if(!0===e._$cssResult$)return e.cssText;if("number"==typeof e)return e;throw Error("Value passed to 'css' function must be a 'css' function result: "+e+". Use 'unsafeCSS' to pass non-literal values, but take care to ensure page security.")})(o)+e[i+1]),e[0]);return new n(o,e,a)},p=(e,t)=>{if(r)e.adoptedStyleSheets=t.map((e=>e instanceof CSSStyleSheet?e:e.styleSheet));else for(const o of t){const t=document.createElement("style"),i=s.litNonce;void 0!==i&&t.setAttribute("nonce",i),t.textContent=o.cssText,e.appendChild(t)}},h=r?e=>e:e=>e instanceof CSSStyleSheet?(e=>{let t="";for(const o of e.cssRules)t+=o.cssText;return c(t)})(e):e,{is:u,defineProperty:g,getOwnPropertyDescriptor:f,getOwnPropertyNames:m,getOwnPropertySymbols:v,getPrototypeOf:y}=Object,_=globalThis,w=_.trustedTypes,x=w?w.emptyScript:"",$=_.reactiveElementPolyfillSupport,P=(e,t)=>e,S={toAttribute(e,t){switch(t){case Boolean:e=e?x:null;break;case Object:case Array:e=null==e?e:JSON.stringify(e)}return e},fromAttribute(e,t){let o=e;switch(t){case Boolean:o=null!==e;break;case Number:o=null===e?null:Number(e);break;case Object:case Array:try{o=JSON.parse(e)}catch(e){o=null}}return o}},C=(e,t)=>!u(e,t),E={attribute:!0,type:String,converter:S,reflect:!1,hasChanged:C};Symbol.metadata??=Symbol("metadata"),_.litPropertyMetadata??=new WeakMap;class b extends HTMLElement{static addInitializer(e){this._$Ei(),(this.l??=[]).push(e)}static get observedAttributes(){return this.finalize(),this._$Eh&&[...this._$Eh.keys()]}static createProperty(e,t=E){if(t.state&&(t.attribute=!1),this._$Ei(),this.elementProperties.set(e,t),!t.noAccessor){const o=Symbol(),i=this.getPropertyDescriptor(e,o,t);void 0!==i&&g(this.prototype,e,i)}}static getPropertyDescriptor(e,t,o){const{get:i,set:s}=f(this.prototype,e)??{get(){return this[t]},set(e){this[t]=e}};return{get(){return i?.call(this)},set(t){const r=i?.call(this);s.call(this,t),this.requestUpdate(e,r,o)},configurable:!0,enumerable:!0}}static getPropertyOptions(e){return this.elementProperties.get(e)??E}static _$Ei(){if(this.hasOwnProperty(P("elementProperties")))return;const e=y(this);e.finalize(),void 0!==e.l&&(this.l=[...e.l]),this.elementProperties=new Map(e.elementProperties)}static finalize(){if(this.hasOwnProperty(P("finalized")))return;if(this.finalized=!0,this._$Ei(),this.hasOwnProperty(P("properties"))){const e=this.properties,t=[...m(e),...v(e)];for(const o of t)this.createProperty(o,e[o])}const e=this[Symbol.metadata];if(null!==e){const t=litPropertyMetadata.get(e);if(void 0!==t)for(const[e,o]of t)this.elementProperties.set(e,o)}this._$Eh=new Map;for(const[e,t]of this.elementProperties){const o=this._$Eu(e,t);void 0!==o&&this._$Eh.set(o,e)}this.elementStyles=this.finalizeStyles(this.styles)}static finalizeStyles(e){const t=[];if(Array.isArray(e)){const o=new Set(e.flat(1/0).reverse());for(const e of o)t.unshift(h(e))}else void 0!==e&&t.push(h(e));return t}static _$Eu(e,t){const o=t.attribute;return!1===o?void 0:"string"==typeof o?o:"string"==typeof e?e.toLowerCase():void 0}constructor(){super(),this._$Ep=void 0,this.isUpdatePending=!1,this.hasUpdated=!1,this._$Em=null,this._$Ev()}_$Ev(){this._$ES=new Promise((e=>this.enableUpdating=e)),this._$AL=new Map,this._$E_(),this.requestUpdate(),this.constructor.l?.forEach((e=>e(this)))}addController(e){(this._$EO??=new Set).add(e),void 0!==this.renderRoot&&this.isConnected&&e.hostConnected?.()}removeController(e){this._$EO?.delete(e)}_$E_(){const e=new Map,t=this.constructor.elementProperties;for(const o of t.keys())this.hasOwnProperty(o)&&(e.set(o,this[o]),delete this[o]);e.size>0&&(this._$Ep=e)}createRenderRoot(){const e=this.shadowRoot??this.attachShadow(this.constructor.shadowRootOptions);return p(e,this.constructor.elementStyles),e}connectedCallback(){this.renderRoot??=this.createRenderRoot(),this.enableUpdating(!0),this._$EO?.forEach((e=>e.hostConnected?.()))}enableUpdating(e){}disconnectedCallback(){this._$EO?.forEach((e=>e.hostDisconnected?.()))}attributeChangedCallback(e,t,o){this._$AK(e,o)}_$EC(e,t){const o=this.constructor.elementProperties.get(e),i=this.constructor._$Eu(e,o);if(void 0!==i&&!0===o.reflect){const s=(void 0!==o.converter?.toAttribute?o.converter:S).toAttribute(t,o.type);this._$Em=e,null==s?this.removeAttribute(i):this.setAttribute(i,s),this._$Em=null}}_$AK(e,t){const o=this.constructor,i=o._$Eh.get(e);if(void 0!==i&&this._$Em!==i){const e=o.getPropertyOptions(i),s="function"==typeof e.converter?{fromAttribute:e.converter}:void 0!==e.converter?.fromAttribute?e.converter:S;this._$Em=i,this[i]=s.fromAttribute(t,e.type),this._$Em=null}}requestUpdate(e,t,o){if(void 0!==e){if(o??=this.constructor.getPropertyOptions(e),!(o.hasChanged??C)(this[e],t))return;this.P(e,t,o)}!1===this.isUpdatePending&&(this._$ES=this._$ET())}P(e,t,o){this._$AL.has(e)||this._$AL.set(e,t),!0===o.reflect&&this._$Em!==e&&(this._$Ej??=new Set).add(e)}async _$ET(){this.isUpdatePending=!0;try{await this._$ES}catch(e){Promise.reject(e)}const e=this.scheduleUpdate();return null!=e&&await e,!this.isUpdatePending}scheduleUpdate(){return this.performUpdate()}performUpdate(){if(!this.isUpdatePending)return;if(!this.hasUpdated){if(this.renderRoot??=this.createRenderRoot(),this._$Ep){for(const[e,t]of this._$Ep)this[e]=t;this._$Ep=void 0}const e=this.constructor.elementProperties;if(e.size>0)for(const[t,o]of e)!0!==o.wrapped||this._$AL.has(t)||void 0===this[t]||this.P(t,this[t],o)}let e=!1;const t=this._$AL;try{e=this.shouldUpdate(t),e?(this.willUpdate(t),this._$EO?.forEach((e=>e.hostUpdate?.())),this.update(t)):this._$EU()}catch(t){throw e=!1,this._$EU(),t}e&&this._$AE(t)}willUpdate(e){}_$AE(e){this._$EO?.forEach((e=>e.hostUpdated?.())),this.hasUpdated||(this.hasUpdated=!0,this.firstUpdated(e)),this.updated(e)}_$EU(){this._$AL=new Map,this.isUpdatePending=!1}get updateComplete(){return this.getUpdateComplete()}getUpdateComplete(){return this._$ES}shouldUpdate(e){return!0}update(e){this._$Ej&&=this._$Ej.forEach((e=>this._$EC(e,this[e]))),this._$EU()}updated(e){}firstUpdated(e){}}b.elementStyles=[],b.shadowRootOptions={mode:"open"},b[P("elementProperties")]=new Map,b[P("finalized")]=new Map,$?.({ReactiveElement:b}),(_.reactiveElementVersions??=[]).push("2.0.4");const A=globalThis,O=A.trustedTypes,T=O?O.createPolicy("lit-html",{createHTML:e=>e}):void 0,D="$lit$",j=`lit$${Math.random().toFixed(9).slice(2)}$`,F="?"+j,U=`<${F}>`,B=document,G=()=>B.createComment(""),W=e=>null===e||"object"!=typeof e&&"function"!=typeof e,q=Array.isArray,V=e=>q(e)||"function"==typeof e?.[Symbol.iterator],K="[ \t\n\f\r]",Y=/<(?:(!--|\/[^a-zA-Z])|(\/?[a-zA-Z][^>\s]*)|(\/?$))/g,Z=/-->/g,Q=/>/g,J=RegExp(`>|${K}(?:([^\\s"'>=/]+)(${K}*=${K}*(?:[^ \t\n\f\r"'\`<>=]|("|')|))|$)`,"g"),X=/'/g,ee=/"/g,te=/^(?:script|style|textarea|title)$/i,oe=e=>(t,...o)=>({_$litType$:e,strings:t,values:o}),ie=oe(1),ne=(oe(2),oe(3),Symbol.for("lit-noChange")),se=Symbol.for("lit-nothing"),re=new WeakMap,ae=B.createTreeWalker(B,129);function le(e,t){if(!q(e)||!e.hasOwnProperty("raw"))throw Error("invalid template strings array");return void 0!==T?T.createHTML(t):t}const ce=(e,t)=>{const o=e.length-1,i=[];let s,r=2===t?"<svg>":3===t?"<math>":"",a=Y;for(let t=0;t<o;t++){const o=e[t];let l,c,d=-1,p=0;for(;p<o.length&&(a.lastIndex=p,c=a.exec(o),null!==c);)p=a.lastIndex,a===Y?"!--"===c[1]?a=Z:void 0!==c[1]?a=Q:void 0!==c[2]?(te.test(c[2])&&(s=RegExp("</"+c[2],"g")),a=J):void 0!==c[3]&&(a=J):a===J?">"===c[0]?(a=s??Y,d=-1):void 0===c[1]?d=-2:(d=a.lastIndex-c[2].length,l=c[1],a=void 0===c[3]?J:'"'===c[3]?ee:X):a===ee||a===X?a=J:a===Z||a===Q?a=Y:(a=J,s=void 0);const h=a===J&&e[t+1].startsWith("/>")?" ":"";r+=a===Y?o+U:d>=0?(i.push(l),o.slice(0,d)+D+o.slice(d)+j+h):o+j+(-2===d?t:h)}return[le(e,r+(e[o]||"<?>")+(2===t?"</svg>":3===t?"</math>":"")),i]};class N{constructor({strings:e,_$litType$:t},o){let i;this.parts=[];let s=0,r=0;const a=e.length-1,l=this.parts,[c,d]=ce(e,t);if(this.el=N.createElement(c,o),ae.currentNode=this.el.content,2===t||3===t){const e=this.el.content.firstChild;e.replaceWith(...e.childNodes)}for(;null!==(i=ae.nextNode())&&l.length<a;){if(1===i.nodeType){if(i.hasAttributes())for(const e of i.getAttributeNames())if(e.endsWith(D)){const t=d[r++],o=i.getAttribute(e).split(j),a=/([.?@])?(.*)/.exec(t);l.push({type:1,index:s,name:a[2],strings:o,ctor:"."===a[1]?H:"?"===a[1]?I:"@"===a[1]?L:k}),i.removeAttribute(e)}else e.startsWith(j)&&(l.push({type:6,index:s}),i.removeAttribute(e));if(te.test(i.tagName)){const e=i.textContent.split(j),t=e.length-1;if(t>0){i.textContent=O?O.emptyScript:"";for(let o=0;o<t;o++)i.append(e[o],G()),ae.nextNode(),l.push({type:2,index:++s});i.append(e[t],G())}}}else if(8===i.nodeType)if(i.data===F)l.push({type:2,index:s});else{let e=-1;for(;-1!==(e=i.data.indexOf(j,e+1));)l.push({type:7,index:s}),e+=j.length-1}s++}}static createElement(e,t){const o=B.createElement("template");return o.innerHTML=e,o}}function de(e,t,o=e,i){if(t===ne)return t;let s=void 0!==i?o._$Co?.[i]:o._$Cl;const r=W(t)?void 0:t._$litDirective$;return s?.constructor!==r&&(s?._$AO?.(!1),void 0===r?s=void 0:(s=new r(e),s._$AT(e,o,i)),void 0!==i?(o._$Co??=[])[i]=s:o._$Cl=s),void 0!==s&&(t=de(e,s._$AS(e,t.values),s,i)),t}class M{constructor(e,t){this._$AV=[],this._$AN=void 0,this._$AD=e,this._$AM=t}get parentNode(){return this._$AM.parentNode}get _$AU(){return this._$AM._$AU}u(e){const{el:{content:t},parts:o}=this._$AD,i=(e?.creationScope??B).importNode(t,!0);ae.currentNode=i;let s=ae.nextNode(),r=0,a=0,l=o[0];for(;void 0!==l;){if(r===l.index){let t;2===l.type?t=new R(s,s.nextSibling,this,e):1===l.type?t=new l.ctor(s,l.name,l.strings,this,e):6===l.type&&(t=new z(s,this,e)),this._$AV.push(t),l=o[++a]}r!==l?.index&&(s=ae.nextNode(),r++)}return ae.currentNode=B,i}p(e){let t=0;for(const o of this._$AV)void 0!==o&&(void 0!==o.strings?(o._$AI(e,o,t),t+=o.strings.length-2):o._$AI(e[t])),t++}}class R{get _$AU(){return this._$AM?._$AU??this._$Cv}constructor(e,t,o,i){this.type=2,this._$AH=se,this._$AN=void 0,this._$AA=e,this._$AB=t,this._$AM=o,this.options=i,this._$Cv=i?.isConnected??!0}get parentNode(){let e=this._$AA.parentNode;const t=this._$AM;return void 0!==t&&11===e?.nodeType&&(e=t.parentNode),e}get startNode(){return this._$AA}get endNode(){return this._$AB}_$AI(e,t=this){e=de(this,e,t),W(e)?e===se||null==e||""===e?(this._$AH!==se&&this._$AR(),this._$AH=se):e!==this._$AH&&e!==ne&&this._(e):void 0!==e._$litType$?this.$(e):void 0!==e.nodeType?this.T(e):V(e)?this.k(e):this._(e)}O(e){return this._$AA.parentNode.insertBefore(e,this._$AB)}T(e){this._$AH!==e&&(this._$AR(),this._$AH=this.O(e))}_(e){this._$AH!==se&&W(this._$AH)?this._$AA.nextSibling.data=e:this.T(B.createTextNode(e)),this._$AH=e}$(e){const{values:t,_$litType$:o}=e,i="number"==typeof o?this._$AC(e):(void 0===o.el&&(o.el=N.createElement(le(o.h,o.h[0]),this.options)),o);if(this._$AH?._$AD===i)this._$AH.p(t);else{const e=new M(i,this),o=e.u(this.options);e.p(t),this.T(o),this._$AH=e}}_$AC(e){let t=re.get(e.strings);return void 0===t&&re.set(e.strings,t=new N(e)),t}k(e){q(this._$AH)||(this._$AH=[],this._$AR());const t=this._$AH;let o,i=0;for(const s of e)i===t.length?t.push(o=new R(this.O(G()),this.O(G()),this,this.options)):o=t[i],o._$AI(s),i++;i<t.length&&(this._$AR(o&&o._$AB.nextSibling,i),t.length=i)}_$AR(e=this._$AA.nextSibling,t){for(this._$AP?.(!1,!0,t);e&&e!==this._$AB;){const t=e.nextSibling;e.remove(),e=t}}setConnected(e){void 0===this._$AM&&(this._$Cv=e,this._$AP?.(e))}}class k{get tagName(){return this.element.tagName}get _$AU(){return this._$AM._$AU}constructor(e,t,o,i,s){this.type=1,this._$AH=se,this._$AN=void 0,this.element=e,this.name=t,this._$AM=i,this.options=s,o.length>2||""!==o[0]||""!==o[1]?(this._$AH=Array(o.length-1).fill(new String),this.strings=o):this._$AH=se}_$AI(e,t=this,o,i){const s=this.strings;let r=!1;if(void 0===s)e=de(this,e,t,0),r=!W(e)||e!==this._$AH&&e!==ne,r&&(this._$AH=e);else{const i=e;let a,l;for(e=s[0],a=0;a<s.length-1;a++)l=de(this,i[o+a],t,a),l===ne&&(l=this._$AH[a]),r||=!W(l)||l!==this._$AH[a],l===se?e=se:e!==se&&(e+=(l??"")+s[a+1]),this._$AH[a]=l}r&&!i&&this.j(e)}j(e){e===se?this.element.removeAttribute(this.name):this.element.setAttribute(this.name,e??"")}}class H extends k{constructor(){super(...arguments),this.type=3}j(e){this.element[this.name]=e===se?void 0:e}}class I extends k{constructor(){super(...arguments),this.type=4}j(e){this.element.toggleAttribute(this.name,!!e&&e!==se)}}class L extends k{constructor(e,t,o,i,s){super(e,t,o,i,s),this.type=5}_$AI(e,t=this){if((e=de(this,e,t,0)??se)===ne)return;const o=this._$AH,i=e===se&&o!==se||e.capture!==o.capture||e.once!==o.once||e.passive!==o.passive,s=e!==se&&(o===se||i);i&&this.element.removeEventListener(this.name,this,o),s&&this.element.addEventListener(this.name,this,e),this._$AH=e}handleEvent(e){"function"==typeof this._$AH?this._$AH.call(this.options?.host??this.element,e):this._$AH.handleEvent(e)}}class z{constructor(e,t,o){this.element=e,this.type=6,this._$AN=void 0,this._$AM=t,this.options=o}get _$AU(){return this._$AM._$AU}_$AI(e){de(this,e)}}const pe=A.litHtmlPolyfillSupport;pe?.(N,R),(A.litHtmlVersions??=[]).push("3.2.1");class lit_element_r extends b{constructor(){super(...arguments),this.renderOptions={host:this},this._$Do=void 0}createRenderRoot(){const e=super.createRenderRoot();return this.renderOptions.renderBefore??=e.firstChild,e}update(e){const t=this.render();this.hasUpdated||(this.renderOptions.isConnected=this.isConnected),super.update(e),this._$Do=((e,t,o)=>{const i=o?.renderBefore??t;let s=i._$litPart$;if(void 0===s){const e=o?.renderBefore??null;i._$litPart$=s=new R(t.insertBefore(G(),e),e,void 0,o??{})}return s._$AI(e),s})(t,this.renderRoot,this.renderOptions)}connectedCallback(){super.connectedCallback(),this._$Do?.setConnected(!0)}disconnectedCallback(){super.disconnectedCallback(),this._$Do?.setConnected(!1)}render(){return ne}}lit_element_r._$litElement$=!0,lit_element_r.finalized=!0,globalThis.litElementHydrateSupport?.({LitElement:lit_element_r});const he=globalThis.litElementPolyfillSupport;he?.({LitElement:lit_element_r});(globalThis.litElementVersions??=[]).push("4.1.1");const ue=e=>(t,o)=>{void 0!==o?o.addInitializer((()=>{customElements.define(e,t)})):customElements.define(e,t)},ge={attribute:!0,type:String,converter:S,reflect:!1,hasChanged:C},fe=(e=ge,t,o)=>{const{kind:i,metadata:s}=o;let r=globalThis.litPropertyMetadata.get(s);if(void 0===r&&globalThis.litPropertyMetadata.set(s,r=new Map),r.set(o.name,e),"accessor"===i){const{name:i}=o;return{set(o){const s=t.get.call(this);t.set.call(this,o),this.requestUpdate(i,s,e)},init(t){return void 0!==t&&this.P(i,void 0,e),t}}}if("setter"===i){const{name:i}=o;return function(o){const s=this[i];t.call(this,o),this.requestUpdate(i,s,e)}}throw Error("Unsupported decorator location: "+i)};function be(e){return(t,o)=>"object"==typeof o?fe(e,t,o):((e,t,o)=>{const i=t.hasOwnProperty(o);return t.constructor.createProperty(o,i?{...e,wrapped:!0}:e),i?Object.getOwnPropertyDescriptor(t,o):void 0})(e,t,o)}function me(e){return be({...e,state:!0,attribute:!1})}const ve=(e,t,o)=>(o.configurable=!0,o.enumerable=!0,Reflect.decorate&&"object"!=typeof t&&Object.defineProperty(e,t,o),o);function ye(e,t){return(o,i,s)=>{const r=t=>t.renderRoot?.querySelector(e)??null;if(t){const{get:e,set:t}="object"==typeof i?o:s??(()=>{const e=Symbol();return{get(){return this[e]},set(t){this[e]=t}}})();return ve(o,i,{get(){let o=e.call(this);return void 0===o&&(o=r(this),(null!==o||this.hasUpdated)&&t.call(this,o)),o}})}return ve(o,i,{get(){return r(this)}})}}class IpcCall{constructor(e,t,o=!1,i=!1){this.scope=e,this.reset=o,this.pack=i,this.method=`${e}/${t}`}is(e){return e.method===this.method}}class IpcCommand extends IpcCall{}class IpcNotification extends IpcCall{}const _e=new IpcCommand("core","webview/ready"),we=new IpcCommand("core","webview/focus/changed"),xe=(new IpcCommand("core","command/execute"),new IpcCommand("core","configuration/update"),new IpcCommand("core","telemetry/sendEvent")),ke=(new IpcNotification("core","window/focus/didChange"),new IpcCommand("core","webview/focus/didChange"));new IpcNotification("core","configuration/didChange");const $e="home",Pe=new IpcCommand($e,"section/collapse"),Se=new IpcNotification($e,"repositories/didChange"),Ce=new IpcNotification($e,"integrations/didChange"),Ee=new IpcNotification($e,"subscription/didChange"),Ae=new IpcNotification($e,"org/settings/didChange"),Oe=new IpcNotification($e,"account/didFocus");class context_request_event_s extends Event{constructor(e,t,o){super("context-request",{bubbles:!0,composed:!0}),this.context=e,this.callback=t,this.subscribe=o??!1}}class context_consumer_s{constructor(e,t,o,i){if(this.subscribe=!1,this.provided=!1,this.value=void 0,this.t=(e,t)=>{this.unsubscribe&&(this.unsubscribe!==t&&(this.provided=!1,this.unsubscribe()),this.subscribe||this.unsubscribe()),this.value=e,this.host.requestUpdate(),this.provided&&!this.subscribe||(this.provided=!0,this.callback&&this.callback(e,t)),this.unsubscribe=t},this.host=e,void 0!==t.context){const e=t;this.context=e.context,this.callback=e.callback,this.subscribe=e.subscribe??!1}else this.context=t,this.callback=o,this.subscribe=i??!1;this.host.addController(this)}hostConnected(){this.dispatchRequest()}hostDisconnected(){this.unsubscribe&&(this.unsubscribe(),this.unsubscribe=void 0)}dispatchRequest(){this.host.dispatchEvent(new context_request_event_s(this.context,this.t,this.subscribe))}}class value_notifier_s{get value(){return this.o}set value(e){this.setValue(e)}setValue(e,t=!1){const o=t||!Object.is(e,this.o);this.o=e,o&&this.updateObservers()}constructor(e){this.subscriptions=new Map,this.updateObservers=()=>{for(const[e,{disposer:t}]of this.subscriptions)e(this.o,t)},void 0!==e&&(this.value=e)}addCallback(e,t,o){if(!o)return void e(this.value);this.subscriptions.has(e)||this.subscriptions.set(e,{disposer:()=>{this.subscriptions.delete(e)},consumerHost:t});const{disposer:i}=this.subscriptions.get(e);e(this.value,i)}clearCallbacks(){this.subscriptions.clear()}}class context_provider_e extends Event{constructor(e){super("context-provider",{bubbles:!0,composed:!0}),this.context=e}}class context_provider_i extends value_notifier_s{constructor(e,t,o){super(void 0!==t.context?t.initialValue:o),this.onContextRequest=e=>{const t=e.composedPath()[0];e.context===this.context&&t!==this.host&&(e.stopPropagation(),this.addCallback(e.callback,t,e.subscribe))},this.onProviderRequest=e=>{const t=e.composedPath()[0];if(e.context!==this.context||t===this.host)return;const o=new Set;for(const[e,{consumerHost:t}]of this.subscriptions)o.has(e)||(o.add(e),t.dispatchEvent(new context_request_event_s(this.context,e,!0)));e.stopPropagation()},this.host=e,void 0!==t.context?this.context=t.context:this.context=t,this.attachListeners(),this.host.addController?.(this)}attachListeners(){this.host.addEventListener("context-request",this.onContextRequest),this.host.addEventListener("context-provider",this.onProviderRequest)}hostConnected(){this.host.dispatchEvent(new context_provider_e(this.context))}}function Te({context:e}){return(t,o)=>{const i=new WeakMap;if("object"==typeof o)return o.addInitializer((function(){i.set(this,new context_provider_i(this,{context:e}))})),{get(){return t.get.call(this)},set(e){return i.get(this)?.setValue(e),t.set.call(this,e)},init(e){return i.get(this)?.setValue(e),e}};{t.constructor.addInitializer((t=>{i.set(t,new context_provider_i(t,{context:e}))}));const s=Object.getOwnPropertyDescriptor(t,o);let r;if(void 0===s){const e=new WeakMap;r={get(){return e.get(this)},set(t){i.get(this).setValue(t),e.set(this,t)},configurable:!0,enumerable:!0}}else{const e=s.set;r={...s,set(t){i.get(this).setValue(t),e?.call(this,t)}}}return void Object.defineProperty(t,o,r)}}}function Le({context:e,subscribe:t}){return(o,i)=>{"object"==typeof i?i.addInitializer((function(){new context_consumer_s(this,{context:e,callback:e=>{o.set.call(this,e)},subscribe:t})})):o.constructor.addInitializer((o=>{new context_consumer_s(o,{context:e,callback:e=>{o[i]=e},subscribe:t})}))}}function Re(e,t,o){let i,s,r,a,l;function c(e){const o=e-(s??0);return null==s||o>=t||o<0}function d(){const e=Date.now();if(c(e))p();else{l=setTimeout(d,t-(e-(s??0)))}}function p(){return l=void 0,i?function(){const t=i,o=r;return i=r=void 0,a=e.apply(o,t),a}():(i=void 0,r=void 0,a)}function h(...e){const p=Date.now(),h=c(p);return i=null!=o&&i?o(i,e):e,r=this,s=p,h&&null==l?(l=setTimeout(d,t),a):(null==l&&(l=setTimeout(d,t)),a)}return h.cancel=function(){null!=l&&clearTimeout(l),i=void 0,s=void 0,r=void 0,l=void 0},h.flush=function(){return null==l?a:(clearTimeout(l),p())},h.pending=function(){return null!=l},h}const ze=/\(([\s\S]*)\)/,De=/(\/\*([\s\S]*?)\*\/|([^:]|^)\/\/(.*)$)/gm,je=/\s?=.*$/;const Fe=new WeakMap;class GlElement extends lit_element_r{emit(e,t,o){const i=new CustomEvent(e,{bubbles:!0,cancelable:!1,composed:!0,...o,detail:t});return this.dispatchEvent(i),i}update(e){const t=Fe.get(this.constructor);if(null!=t)for(const{keys:o,method:i,afterFirstUpdate:s}of t){if(s&&!this.hasUpdated)continue;const t=o.filter((t=>e.has(t)));t.length&&i.call(this,t)}super.update(e)}}function Ie(e){const t=.001*performance.now();let o=Math.floor(t),i=Math.floor(t%1*1e9);return void 0!==e&&(o-=e[0],i-=e[1],i<0&&(o--,i+=1e9)),[o,i]}function Ue(){let e=0;return{get current(){return e},next:function(){return 1073741823===e&&(e=0),++e}}}const Me=Ue(),Be=new Map;function Ne(e){Be.delete(e)}function He(e,t){return null==t?`[${e.toString(16).padStart(13)}]`:`[${t.toString(16).padStart(5)} → ${e.toString(16).padStart(5)}]`}function Ge(e,t){if(null!=t&&"boolean"!=typeof t)return{scopeId:t.scopeId,prevScopeId:t.prevScopeId,prefix:`${t.prefix}${e}`};const o=t?Me.current:void 0,i=Me.next();return{scopeId:i,prevScopeId:o,prefix:`${He(i)} ${e}`}}Error;function We(e){return null!=e&&(e instanceof Promise||"function"==typeof e?.then)}Error;o(47);Object.freeze({".png":"image/png",".gif":"image/gif",".jpg":"image/jpeg",".jpeg":"image/jpeg",".jpe":"image/jpeg",".webp":"image/webp",".tif":"image/tiff",".tiff":"image/tiff",".bmp":"image/bmp"}),Object.freeze(["left","alt+left","ctrl+left","right","alt+right","ctrl+right","alt+,","alt+.","alt+enter","ctrl+enter","escape"]);Object.freeze(new Set(["file","git","gitlens","pr","vscode-remote","vsls","vsls-scc","vscode-vfs","github"]));const qe="utm_source=gitlens-extension&utm_medium=in-app-links",Ve=Object.freeze({codeSuggest:`https://gitkraken.com/solutions/code-suggest?${qe}`,cloudPatches:`https://gitkraken.com/solutions/cloud-patches?${qe}`,graph:`https://gitkraken.com/solutions/commit-graph?${qe}`,launchpad:`https://gitkraken.com/solutions/launchpad?${qe}`,platform:`https://gitkraken.com/devex?${qe}`,pricing:`https://gitkraken.com/gitlens/pricing?${qe}`,proFeatures:`https://gitkraken.com/gitlens/pro-features?${qe}`,security:`https://help.gitkraken.com/gitlens/security?${qe}`,workspaces:`https://gitkraken.com/solutions/workspaces?${qe}`,cli:`https://gitkraken.com/cli?${qe}`,browserExtension:`https://gitkraken.com/browser-extension?${qe}`,desktop:`https://gitkraken.com/git-client?${qe}`,releaseNotes:"https://help.gitkraken.com/gitlens/gitlens-release-notes-current/",releaseAnnouncement:`https://www.gitkraken.com/blog/gitkraken-launches-devex-platform-acquires-codesee?${qe}`}),{fromCharCode:Ke}=String;new TextEncoder;function Ye(e){const[t,o]=Ie(e);return 1e3*t+Math.floor(o/1e6)}function Ze(e,t,o){if(null==o)return`${t} ${e}${1===t?"":"s"}`;const i=1===t?e:o.plural??`${e}s`;return o.only?i:`${0===t?o.zero??t:o.format?.(t)??t}${o.infix??" "}${i}`}const Qe=Symbol("logInstanceNameFn");function Je(e){return function(e,t=!1){let o,i,s,r,a,l=0,c=!1,d=!1,p=!0;null!=e&&({args:o,if:i,enter:s,exit:r,prefix:a,logThreshold:l=0,scoped:c=!0,singleLine:d=!1,timed:p=!0}=e);l>0&&(d=!0,p=!0);p&&(c=!0);const h=tt.isDebugging,u=t?tt.debug:tt.log,g=h?"debug":"info";return(e,t,f)=>{let m,v;if("function"==typeof f.value?(m=f.value,v="value"):"function"==typeof f.get&&(m=f.get,v="get"),null==m||null==v)throw new Error("Not supported");const y=!1!==o?function(e){if("function"!=typeof e)throw new Error("Not supported");if(0===e.length)return[];let t=Function.prototype.toString.call(e);t=t.replace(De,"")||t,t=t.slice(0,t.indexOf("{"));let o=t.indexOf("("),i=t.indexOf(")");o=o>=0?o+1:0,i=i>0?i:t.indexOf("="),t=t.slice(o,i),t=`(${t})`;const s=ze.exec(t);return null!=s?s[1].split(",").map((e=>e.trim().replace(je,""))):[]}(m):[];f[v]=function(...e){if(!h&&!tt.enabled(g)||null!=i&&!i.apply(this,e))return m.apply(this,e);const f=Me.current,v=Me.next(),_=null!=this?function(e){let t;if("function"==typeof e){if(null==e.prototype?.constructor)return e.name;t=e.prototype.constructor}else t=e.constructor;let o=t?.name??"";const i=o.indexOf("_");o=-1===i?o:o.substring(i+1),null!=t?.[Qe]&&(o=t[Qe](e,o));return o}(this):void 0;let w,x=_?c?`${He(v,f)} ${_}.${t}`:`${_}.${t}`:t;null!=a&&(x=a({id:v,instance:this,instanceName:_??"",name:t,prefix:x},...e)),c&&(w=function(e,t){return t={prevScopeId:Me.current,...t},Be.set(e,t),t}(v,{scopeId:v,prevScopeId:f,prefix:x}));const $=null!=s?s(...e):"";let P;if(!1===o||0===e.length)P="",d||u.call(tt,`${x}${$}`);else{let t;P="";let i,s,r,a=-1;for(r of e){if(i=y[++a],t=o?.[a],null!=t){if("boolean"==typeof t)continue;if(P.length>0&&(P+=", "),"string"==typeof t){P+=t;continue}s=String(t(r))}else P.length>0&&(P+=", "),s=tt.toLoggable(r);P+=i?`${i}=${s}`:s}d||u.call(tt,P?`${x}${$}(${P})`:`${x}${$}`)}if(d||p||null!=r){const t=p?Ie():void 0,o=e=>{const o=void 0!==t?` [${Ye(t)}ms]`:"";d?tt.error(e,P?`${x}${$}(${P})`:`${x}${$}`,w?.exitDetails?`failed${w.exitDetails}${o}`:`failed${o}`):tt.error(e,x,w?.exitDetails?`failed${w.exitDetails}${o}`:`failed${o}`),c&&Ne(v)};let i;try{i=m.apply(this,e)}catch(e){throw o(e),e}const s=e=>{let o,i,s,a;if(null!=t?(o=Ye(t),o>500?(i=tt.warn,s=` [*${o}ms] (slow)`):(i=u,s=` [${o}ms]`)):(s="",i=u),null!=r)if("function"==typeof r)try{a=r(e)}catch(e){a=`@log.exit error: ${e}`}else!0===r&&(a=`returned ${tt.toLoggable(e)}`);else w?.exitFailed?(a=w.exitFailed,i=tt.error):a="completed";d?(0===l||o>l)&&i.call(tt,P?`${x}${$}(${P}) ${a}${w?.exitDetails||""}${s}`:`${x}${$} ${a}${w?.exitDetails||""}${s}`):i.call(tt,P?`${x}(${P}) ${a}${w?.exitDetails||""}${s}`:`${x} ${a}${w?.exitDetails||""}${s}`),c&&Ne(v)};return null!=i&&We(i)?i.then(s,o):s(i),i}return m.apply(this,e)}}}(e,!0)}const Xe=new Set(["accessToken","password","token"]),et=function(e,t){return Xe.has(e)?`<${t}>`:t},tt=new class Logger2{constructor(){this._isDebugging=!1,this.level=0,this._logLevel="off"}configure(e,t,o=!1){this.provider=e,this._isDebugging=o,this.logLevel=t}enabled(e){return this.level>=ot(e)}get isDebugging(){return this._isDebugging}get logLevel(){return this._logLevel}set logLevel(e){this._logLevel=e,this.level=ot(this._logLevel),"off"===e?(this.output?.dispose?.(),this.output=void 0):this.output??=this.provider.createChannel(this.provider.name)}get timestamp(){return`[${(new Date).toISOString().replace(/T/," ").slice(0,-1)}]`}debug(e,...t){if(this.level<4&&!this.isDebugging)return;let o;"string"==typeof e?o=e:(o=t.shift(),null!=e&&(o=`${e.prefix} ${o??""}`)),this.isDebugging,null==this.output||this.level<4||this.output.appendLine(`${this.timestamp} ${o??""}${this.toLoggableParams(!0,t)}`)}error(e,t,...o){if(this.level<1&&!this.isDebugging)return;let i;if(i=null==t||"string"==typeof t?t:`${t.prefix} ${o.shift()??""}`,null==i){const t=e instanceof Error?e.stack:void 0;if(t){const e=/.*\s*?at\s(.+?)\s/.exec(t);null!=e&&(i=e[1])}}this.isDebugging,null==this.output||this.level<1||this.output.appendLine(`${this.timestamp} ${i??""}${this.toLoggableParams(!1,o)}${null!=e?`\n${String(e)}`:""}`)}log(e,...t){if(this.level<3&&!this.isDebugging)return;let o;"string"==typeof e?o=e:(o=t.shift(),null!=e&&(o=`${e.prefix} ${o??""}`)),this.isDebugging,null==this.output||this.level<3||this.output.appendLine(`${this.timestamp} ${o??""}${this.toLoggableParams(!1,t)}`)}warn(e,...t){if(this.level<2&&!this.isDebugging)return;let o;"string"==typeof e?o=e:(o=t.shift(),null!=e&&(o=`${e.prefix} ${o??""}`)),this.isDebugging,null==this.output||this.level<2||this.output.appendLine(`${this.timestamp} ${o??""}${this.toLoggableParams(!1,t)}`)}showOutputChannel(e){this.output?.show?.(e)}toLoggable(e,t){if("object"!=typeof e)return String(e);if(t??=this.provider.sanitize??et,Array.isArray(e))return`[${e.map((e=>this.toLoggable(e,t))).join(", ")}]`;const o=this.provider.toLoggable?.(e);if(null!=o)return o;try{return JSON.stringify(e,t)}catch{return"<error>"}}toLoggableParams(e,t){if(0===t.length||e&&this.level<4&&!this.isDebugging)return"";const o=t.map((e=>this.toLoggable(e))).join(", ");return 0!==o.length?` — ${o}`:""}};function ot(e){switch(e){case"off":default:return 0;case"error":return 1;case"warn":return 2;case"info":return 3;case"debug":return 4}}const it={enabled:e=>tt.enabled(e)||tt.isDebugging,log:(e,t,o,...i)=>{switch(e){case"error":tt.error(void 0,t,o,...i);break;case"warn":tt.warn(t,o,...i);break;case"info":tt.log(t,o,...i);break;default:tt.debug(t,o,...i)}}};class LoggerContext{constructor(e){this.scope=Ge(e,void 0),tt.configure({name:e,createChannel:function(e){return{name:e,appendLine:function(e){}}}},"off")}log(e,...t){"string"==typeof e?tt.log(this.scope,e,...t):tt.log(e,t.shift(),...t)}}class TelemetryContext{constructor(e){this.disposables=[],this.ipc=e}sendEvent(e){this.ipc.sendCommand(xe,e)}dispose(){this.disposables.forEach((e=>e.dispose()))}}Symbol.dispose??=Symbol("Symbol.dispose"),Symbol.asyncDispose??=Symbol("Symbol.asyncDispose");class Stopwatch{constructor(e,t,...o){let i;if(this._stopped=!1,this.logScope=null!=e&&"string"!=typeof e?e:Ge(e??"",!1),i="boolean"==typeof t?.log?t.log?{}:void 0:t?.log??{},this.logLevel=t?.logLevel??"info",this.logProvider=t?.provider??it,this._time=Ie(),null!=i){if(!this.logProvider.enabled(this.logLevel))return;o.length?this.logProvider.log(this.logLevel,this.logScope,`${i.message??""}${i.suffix??""}`,...o):this.logProvider.log(this.logLevel,this.logScope,`${i.message??""}${i.suffix??""}`)}}get startTime(){return this._time}[Symbol.dispose](){this.stop()}elapsed(){const[e,t]=Ie(this._time);return 1e3*e+Math.floor(t/1e6)}log(e){this.logCore(e,!1)}restart(e){this.logCore(e,!0),this._time=Ie(),this._stopped=!1}stop(e){this._stopped||(this.restart(e),this._stopped=!0)}logCore(e,t){if(!this.logProvider.enabled(this.logLevel))return;if(!t)return void this.logProvider.log(this.logLevel,this.logScope,`${e?.message??""}${e?.suffix??""}`);const[o,i]=Ie(this._time),s=1e3*o+Math.floor(i/1e6),r=e?.message??"";this.logProvider.log(s>250?"warn":this.logLevel,this.logScope,`${r?`${r} `:""}[${s}ms]${e?.suffix??""}`)}}var nt;(nt||(nt={})).on=function(e,t,o,i){let s=!1;if("string"==typeof e){const r=function(t){const i=t?.target?.closest(e);null!=i&&o(t,i)};return document.addEventListener(t,r,i??!0),{dispose:()=>{s||(s=!0,document.removeEventListener(t,r,i??!0))}}}const r=function(e){o(e,this)};return e.addEventListener(t,r,i??!1),{dispose:()=>{s||(s=!0,e.removeEventListener(t,r,i??!1))}}};const st=class _Emitter{constructor(){this._disposed=!1}get event(){return null==this._event&&(this._event=(e,t,o)=>{null==this.listeners&&(this.listeners=new LinkedList);const i=this.listeners.push(null==t?e:[e,t]),s={dispose:()=>{s.dispose=_Emitter._noop,this._disposed||i()}};return Array.isArray(o)&&o.push(s),s}),this._event}fire(e){if(null!=this.listeners){null==this._deliveryQueue&&(this._deliveryQueue=new LinkedList);for(let t=this.listeners.iterator(),o=t.next();!o.done;o=t.next())this._deliveryQueue.push([o.value,e]);for(;this._deliveryQueue.size>0;){const[e,t]=this._deliveryQueue.shift();try{"function"==typeof e?e(t):e[0].call(e[1],t)}catch(e){}}}}dispose(){this.listeners?.clear(),this._deliveryQueue?.clear(),this._disposed=!0}};st._noop=function(){};let rt=st;const at={done:!0,value:void 0},lt=class _Node{constructor(e){this.element=e,this.next=_Node.Undefined,this.prev=_Node.Undefined}};lt.Undefined=new lt(void 0);let ct=lt;class LinkedList{constructor(){this._first=ct.Undefined,this._last=ct.Undefined,this._size=0}get size(){return this._size}isEmpty(){return this._first===ct.Undefined}clear(){this._first=ct.Undefined,this._last=ct.Undefined,this._size=0}unshift(e){return this._insert(e,!1)}push(e){return this._insert(e,!0)}_insert(e,t){const o=new ct(e);if(this._first===ct.Undefined)this._first=o,this._last=o;else if(t){const e=this._last;this._last=o,o.prev=e,e.next=o}else{const e=this._first;this._first=o,o.next=e,e.prev=o}this._size+=1;let i=!1;return()=>{i||(i=!0,this._remove(o))}}shift(){if(this._first===ct.Undefined)return;const e=this._first.element;return this._remove(this._first),e}pop(){if(this._last===ct.Undefined)return;const e=this._last.element;return this._remove(this._last),e}_remove(e){if(e.prev!==ct.Undefined&&e.next!==ct.Undefined){const t=e.prev;t.next=e.next,e.next.prev=t}else e.prev===ct.Undefined&&e.next===ct.Undefined?(this._first=ct.Undefined,this._last=ct.Undefined):e.next===ct.Undefined?(this._last=this._last.prev,this._last.next=ct.Undefined):e.prev===ct.Undefined&&(this._first=this._first.next,this._first.prev=ct.Undefined);this._size-=1}iterator(){let e,t=this._first;return{next:function(){return t===ct.Undefined?at:(null==e?e={done:!1,value:t.element}:e.value=t.element,t=t.next,e)}}}toArray(){const e=[];for(let t=this._first;t!==ct.Undefined;t=t.next)e.push(t.element);return e}}var dt=Object.defineProperty,pt=Object.getOwnPropertyDescriptor,ht=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?pt(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&dt(t,o,r),r};let ut;const gt=Ue();function ft(){return`webview:${gt.next()}`}let bt=class{constructor(e){this.appName=e,this._onReceiveMessage=new rt,this._pendingHandlers=new Map,this._api=ut??=acquireVsCodeApi(),this._disposable=nt.on(window,"message",(e=>this.onMessageReceived(e)))}get onReceiveMessage(){return this._onReceiveMessage.event}dispose(){this._disposable.dispose()}onMessageReceived(e){const t=Be.get(Me.current),o=e.data;if(o.packed&&o.params instanceof Uint8Array){const i=function(e,t,...o){return(t?.provider??it).enabled(t?.logLevel??"info")?new Stopwatch(e,t,...o):void 0}(Ge(` deserializing msg=${e.data.method}`,t),{log:!1,logLevel:"debug"});this._textDecoder??=new TextDecoder,o.params=JSON.parse(this._textDecoder.decode(o.params)),i?.stop()}if(null==o.completionId)this._onReceiveMessage.fire(o);else{const e=vt(o.method,o.completionId);this._pendingHandlers.get(e)?.(o)}}sendCommand(e,t){const o=ft();this.postMessage({id:o,scope:e.scope,method:e.method,params:t})}async sendRequest(e,t){const o=ft(),i=new Promise(((t,i)=>{const s=vt(e.response.method,o);let r;function a(){clearTimeout(r),r=void 0,this._pendingHandlers.delete(s)}r=setTimeout((()=>{a.call(this),i(new Error(`Timed out waiting for completion of ${s}`))}),6e4),this._pendingHandlers.set(s,(e=>{a.call(this),queueMicrotask((()=>t(e.params)))}))}));return this.postMessage({id:o,scope:e.scope,method:e.method,params:t,completionId:o}),i}setState(e){this._api.setState(e)}postMessage(e){this._api.postMessage(e)}};var mt;function vt(e,t){return`${e}|${t}`}ht([Je({args:{0:e=>`${e.data.id}, method=${e.data.method}`}})],bt.prototype,"onMessageReceived",1),ht([Je({args:{0:e=>e.method,1:!1}})],bt.prototype,"sendCommand",1),ht([Je({args:{0:e=>e.method,1:!1,2:!1}})],bt.prototype,"sendRequest",1),ht([Je({args:{0:e=>`${e.id}, method=${e.method}`}})],bt.prototype,"postMessage",1),bt=ht([(mt=(e,t)=>`${e.appName}(${t})`,e=>{e[Qe]=mt})],bt);var yt=Object.defineProperty,_t=Object.getOwnPropertyDescriptor,wt=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?_t(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&yt(t,o,r),r};class GlApp extends GlElement{constructor(){super(...arguments),this.placement="editor",this.disposables=[],this.onFocusIn=e=>{const t=e.composedPath().some((e=>"INPUT"===e.tagName));!0===this._focused&&this._inputFocused===t||(this._focused=!0,this._inputFocused=t,this._sendWebviewFocusChangedCommandDebounced({focused:!0,inputFocused:t}))},this.onFocusOut=e=>{!1===this._focused&&!1===this._inputFocused||(this._focused=!1,this._inputFocused=!1,this._sendWebviewFocusChangedCommandDebounced({focused:!1,inputFocused:!1}))}}connectedCallback(){super.connectedCallback(),this._logger=new LoggerContext(this.name),this._logger.log("connected"),this._ipc=new bt(this.name),this.disposables.push(this._stateProvider=this.createStateProvider(this.state,this._ipc),this._ipc.onReceiveMessage((e=>{if(!0===ke.is(e))window.dispatchEvent(new CustomEvent(e.params.focused?"webview-focus":"webview-blur"))})),this._ipc,this._telemetry=new TelemetryContext(this._ipc)),this._ipc.sendCommand(_e,void 0),this._sendWebviewFocusChangedCommandDebounced=Re((e=>{this._ipc.sendCommand(we,e)}),150),document.querySelectorAll("a").forEach((e=>{e.href===e.title&&e.removeAttribute("title")})),document.addEventListener("focusin",this.onFocusIn),document.addEventListener("focusout",this.onFocusOut),document.body.classList.contains("preload")&&setTimeout((()=>{document.body.classList.remove("preload")}),500)}disconnectedCallback(){super.disconnectedCallback(),this._logger.log("disconnected"),document.removeEventListener("focusin",this.onFocusIn),document.removeEventListener("focusout",this.onFocusOut),this.disposables.forEach((e=>e.dispose()))}render(){return ie`<slot></slot>`}}GlApp.shadowRootOptions={...lit_element_r.shadowRootOptions,delegatesFocus:!0},wt([be({type:String})],GlApp.prototype,"name",2),wt([be({type:String})],GlApp.prototype,"placement",2),wt([Te({context:"ipc"})],GlApp.prototype,"_ipc",2),wt([Te({context:"logger"})],GlApp.prototype,"_logger",2),wt([Te({context:"telemetry"})],GlApp.prototype,"_telemetry",2),wt([be({type:Object})],GlApp.prototype,"state",2);d`
	.sr-only,
	.sr-only-focusable:not(:active):not(:focus) {
		clip: rect(0 0 0 0);
		clip-path: inset(50%);
		width: 1px;
		height: 1px;
		overflow: hidden;
		position: absolute;
		white-space: nowrap;
	}
`;const xt=d`
	outline: 1px solid var(--color-focus-border);
	outline-offset: 2px;
`,kt=d`
	:host {
		box-sizing: border-box;
	}
	:host *,
	:host *::before,
	:host *::after {
		box-sizing: inherit;
	}
	[hidden] {
		display: none !important;
	}
`,$t=d`
	a {
		color: var(--vscode-textLink-foreground);
		text-decoration: none;
	}
	a:focus {
		${d`
	outline: 1px solid var(--color-focus-border);
	outline-offset: -1px;
`}
	}
	a:hover {
		text-decoration: underline;
	}
`,Pt=d`
	::-webkit-scrollbar {
		width: 10px;
		height: 10px;
	}
	::-webkit-scrollbar-corner {
		background-color: transparent;
	}

	::-webkit-scrollbar-thumb {
		background-color: transparent;
		border-color: inherit;
		border-right-style: inset;
		border-right-width: calc(100vw + 100vh);
		border-radius: unset !important;
	}
	::-webkit-scrollbar-thumb:hover {
		border-color: var(--vscode-scrollbarSlider-hoverBackground);
	}
	::-webkit-scrollbar-thumb:active {
		border-color: var(--vscode-scrollbarSlider-activeBackground);
	}

	.scrollable {
		border-color: transparent;
		transition: border-color 1s linear;
	}

	:host(:hover) .scrollable,
	:host(:focus-within) .scrollable {
		border-color: var(--vscode-scrollbarSlider-background);
		transition: none;
	}

	:host-context(.preload) .scrollable {
		transition: none;
	}
`,St=d`
	* {
		box-sizing: border-box;
	}

	:not(:defined) {
		visibility: hidden;
	}

	[hidden] {
		display: none !important;
	}

	/* roll into shared focus style */
	:focus-visible {
		outline: 1px solid var(--vscode-focusBorder);
		outline-offset: -1px;
	}

	b {
		font-weight: 600;
	}

	p {
		margin-top: 0;
	}

	ul {
		margin-top: 0;
		padding-left: 1.2em;
	}
`,Ct=d`
	.home {
		padding: 0;
		height: 100vh;
		display: flex;
		flex-direction: column;
		gap: 0.4rem;
		overflow: hidden;
	}
	.home__header {
		flex: none;
		padding: 0 2rem;
		position: relative;
	}
	.home__main {
		flex: 1;
		overflow: auto;
		padding: 0.8rem 2rem;
	}
	.home__main > *:last-child {
		margin-bottom: 0;
	}
	.home__nav {
		flex: none;
	}
	.home__footer {
		flex: none;
	}

	gl-home-account-content {
		margin-bottom: 0;
	}

	gl-repo-alerts:not([has-alerts]) {
		display: none;
	}
`,Et=d`
	.inline-nav {
		display: flex;
		flex-direction: row;
		justify-content: space-between;
	}
	.inline-nav__group {
		display: flex;
		flex-direction: row;
	}
	.inline-nav__link {
		display: flex;
		justify-content: center;
		align-items: center;
		width: 2.2rem;
		height: 2.2rem;
		color: inherit;
		border-radius: 0.3rem;
	}
	.inline-nav__link .code-icon {
		line-height: 1.6rem;
	}
	.inline-nav__link:hover {
		color: inherit;
		text-decoration: none;
	}
	:host-context(.vscode-dark) .inline-nav__link:hover {
		background-color: var(--color-background--lighten-10);
	}
	:host-context(.vscode-light) .inline-nav__link:hover {
		background-color: var(--color-background--darken-10);
	}
	@media (max-width: 370px) {
		.inline-nav__link--text > :last-child {
			display: none;
		}
	}
	@media (min-width: 371px) {
		.inline-nav__link--text {
			flex: none;
			padding-left: 0.3rem;
			padding-right: 0.3rem;
			gap: 0.2rem;
			min-width: 2.2rem;
			width: fit-content;
		}
		.inline-nav__link--text + .inline-nav__link--text {
			margin-left: 0.2rem;
		}
	}

	.promo-banner {
		text-align: center;
		margin-bottom: 1rem;
	}
	.promo-banner--eyebrow {
		color: var(--color-foreground--50);
		margin-bottom: 0.2rem;
	}
	.promo-banner:not([has-promo]) {
		display: none;
	}
`,At=d`
	.button-container {
		margin: 1rem auto 0;
		text-align: left;
		max-width: 30rem;
		transition: max-width 0.2s ease-out;
	}

	@media (min-width: 640px) {
		.button-container {
			max-width: 100%;
		}
	}
	.button-container--trio > gl-button:first-child {
		margin-bottom: 0.4rem;
	}

	.button-group {
		display: inline-flex;
		gap: 0.4rem;
	}
	.button-group--single {
		width: 100%;
		max-width: 30rem;
	}
	.button-group gl-button {
		margin-top: 0;
	}
	.button-group gl-button:not(:first-child) {
		border-top-left-radius: 0;
		border-bottom-left-radius: 0;
	}
	.button-group gl-button:not(:last-child) {
		border-top-right-radius: 0;
		border-bottom-right-radius: 0;
	}
`,Ot=d`
	.alert {
		position: relative;
		padding: 0.8rem 1.2rem;
		line-height: 1.2;
		margin-bottom: 1.2rem;
		background-color: var(--color-alert-neutralBackground);
		border-left: 0.3rem solid var(--color-alert-neutralBorder);
		color: var(--color-alert-foreground);
	}
	.alert__title {
		font-size: 1.4rem;
		margin: 0;
	}
	.alert__description {
		font-size: 1.2rem;
		margin: 0.4rem 0 0;
	}
	.alert__description > :first-child {
		margin-top: 0;
	}
	.alert__description > :last-child {
		margin-bottom: 0;
	}
	.alert__close {
		position: absolute;
		top: 0.8rem;
		right: 0.8rem;
		color: inherit;
		opacity: 0.64;
	}
	.alert__close:hover {
		color: inherit;
		opacity: 1;
	}
	.alert.is-collapsed {
		cursor: pointer;
	}
	.alert.is-collapsed:hover {
		background-color: var(--color-alert-neutralHoverBackground);
	}
	.alert.is-collapsed .alert__description,
	.alert.is-collapsed .alert__close gl-tooltip:first-child,
	.alert:not(.is-collapsed) .alert__close gl-tooltip:last-child {
		display: none;
	}
	.alert--info {
		background-color: var(--color-alert-infoBackground);
		border-left-color: var(--color-alert-infoBorder);
	}
	.alert--warning {
		background-color: var(--color-alert-warningBackground);
		border-left-color: var(--color-alert-warningBorder);
	}
	.alert--danger {
		background-color: var(--color-alert-errorBackground);
		border-left-color: var(--color-alert-errorBorder);
	}
`,Tt=d`
	.nav-list {
		margin-left: -2rem;
		margin-right: -2rem;
		display: flex;
		flex-direction: column;
		gap: 0.1rem;
		align-items: stretch;
		margin-bottom: 1.6rem;
	}
	.nav-list__item {
		display: flex;
		flex-direction: row;
		align-items: center;
		gap: 0.8rem;
		padding: 0.4rem 2rem;
	}
	.nav-list__item:hover,
	.nav-list__item:focus-within {
		background-color: var(--vscode-list-hoverBackground);
		color: var(--vscode-list-hoverForeground);
	}
	.nav-list__item:has(:first-child:focus) {
		outline: 1px solid var(--vscode-focusBorder);
		outline-offset: -1px;
	}
	.nav-list__item:has(:active) {
		background-color: var(--vscode-list-activeSelectionBackground);
		color: var(--vscode-list-activeSelectionForeground);
	}
	.nav-list__item:has(.is-disabled) {
		cursor: not-allowed;
	}
	.nav-list__link {
		flex: 1;
		display: flex;
		flex-direction: row;
		align-items: center;
		gap: 0.8rem;
		color: inherit;
	}
	.nav-list__link:hover,
	.nav-list__link:focus {
		color: inherit;
		text-decoration: none;
	}
	.nav-list__link:focus {
		outline: none;
	}
	.nav-list__link.is-disabled,
	.nav-list__link.is-disabled:hover {
		opacity: 0.5;
		pointer-events: none;
		text-decoration: none;
	}
	.nav-list__icon {
		flex: none;
		opacity: 0.5;
	}
	.nav-list__label {
		flex: 1;
		font-weight: 600;
	}
	.nav-list__desc {
		color: var(--color-foreground--65);
		font-variant: all-small-caps;
		margin-left: 1rem;
	}
	.nav-list__group {
		width: 100%;
		display: flex;
		justify-content: flex-start;
	}
	.nav-list__group .nav-list__label {
		width: auto;
	}
	.nav-list__access {
		flex: none;
		position: relative;
		left: 1.5rem;
		font-size: x-small;
		outline: none;
		white-space: nowrap;
		--gl-feature-badge-color: color-mix(in srgb, transparent 40%, currentColor);
		--gl-feature-badge-border-color: color-mix(in srgb, transparent 40%, var(--color-foreground--50));
	}
	.nav-list__item:hover .nav-list__label {
		text-decoration: underline;
	}
	.nav-list__item:hover .is-disabled .nav-list__label {
		text-decoration: none;
	}
	.nav-list__item:hover .nav-list__desc {
		color: var(--color-foreground);
	}
	.nav-list__item:focus-within .nav-list__access,
	.nav-list__item:hover .nav-list__access {
		--gl-feature-badge-color: currentColor;
		--gl-feature-badge-border-color: var(--color-foreground--50);
	}
	.nav-list__title {
		padding: 0 2rem;
	}

	.t-eyebrow {
		text-transform: uppercase;
		font-size: 1rem;
		font-weight: 600;
		color: var(--color-foreground--50);
		margin: 0;
	}
	.t-eyebrow.sticky {
		top: -8px;
	}
`,Lt="state";class HomeStateProvider{constructor(e,t,o){this._ipc=o,this.state=t,this.provider=new context_provider_i(e,{context:Lt,initialValue:t}),this.disposable=this._ipc.onReceiveMessage((e=>{switch(!0){case Se.is(e):this.state.repositories=e.params,this.state.timestamp=Date.now(),this.provider.setValue(this.state,!0);break;case Ee.is(e):this.state.subscription=e.params.subscription,this.state.avatar=e.params.avatar,this.state.organizationsCount=e.params.organizationsCount,this.state.timestamp=Date.now(),this.provider.setValue(this.state,!0);break;case Ae.is(e):this.state.orgSettings=e.params.orgSettings,this.state.timestamp=Date.now(),this.provider.setValue(this.state,!0);break;case Ce.is(e):this.state.hasAnyIntegrationConnected=e.params.hasAnyIntegrationConnected,this.state.timestamp=Date.now(),this.provider.setValue(this.state,!0)}}))}dispose(){this.disposable.dispose()}}function Rt(e,t,o){return e?t(e):o?.(e)}var zt=(e=>(e.Community="community",e.CommunityWithAccount="community-with-account",e.Pro="pro",e.Teams="teams",e.Enterprise="enterprise",e))(zt||{}),Dt=(e=>(e[e.VerificationRequired=-1]="VerificationRequired",e[e.Community=0]="Community",e[e.ProPreview=1]="ProPreview",e[e.ProPreviewExpired=2]="ProPreviewExpired",e[e.ProTrial=3]="ProTrial",e[e.ProTrialExpired=4]="ProTrialExpired",e[e.ProTrialReactivationEligible=5]="ProTrialReactivationEligible",e[e.Paid=6]="Paid",e))(Dt||{});const jt=[{key:"launchpad",code:"GLLAUNCHPAD24",states:[Dt.Community,Dt.ProPreview,Dt.ProPreviewExpired,Dt.ProTrial,Dt.ProTrialExpired,Dt.ProTrialReactivationEligible],expiresOn:new Date("2024-09-27T06:59:00.000Z").getTime(),commandTooltip:"Launchpad Sale: Save 75% or more on GitLens Pro"},{key:"launchpad-extended",code:"GLLAUNCHPAD24",states:[Dt.Community,Dt.ProPreview,Dt.ProPreviewExpired,Dt.ProTrial,Dt.ProTrialExpired,Dt.ProTrialReactivationEligible],startsOn:new Date("2024-09-27T06:59:00.000Z").getTime(),expiresOn:new Date("2024-10-14T06:59:00.000Z").getTime(),commandTooltip:"Launchpad Sale: Save 75% or more on GitLens Pro"},{key:"pro50",states:[Dt.Community,Dt.ProPreview,Dt.ProPreviewExpired,Dt.ProTrial,Dt.ProTrialExpired,Dt.ProTrialReactivationEligible],commandTooltip:"Limited-Time Sale: Save 33% or more on your 1st seat of Pro. See your special price"}];function Ft(e,t){if(null!=e)for(const o of jt)if((null==t||t===o.key)&&It(o,e))return o}function It(e,t){const o=Date.now();return(null==e.states||e.states.includes(t))&&(null==e.expiresOn||e.expiresOn>o)&&(null==e.startsOn||e.startsOn<o)}function Ut(e){switch(e){case zt.CommunityWithAccount:return"GitLens Free";case zt.Pro:return"GitLens Pro";case zt.Teams:return"GitLens Teams";case zt.Enterprise:return"GitLens Enterprise";case zt.Community:default:return"GitLens"}}zt.Community,zt.CommunityWithAccount,zt.Pro,zt.Teams,zt.Enterprise;function Mt(e,t){return Bt(e.plan.effective.expiresOn,t)}function Bt(e,t){return null!=e?function(e,t,o,i){const s=("number"==typeof t?t:t.getTime())-("number"==typeof e?e:e.getTime()),r=i??Math.floor;switch(o){case"days":return r(s/864e5);case"hours":return r(s/36e5);case"minutes":return r(s/6e4);case"seconds":return r(s/1e3);default:return s}}(Date.now(),new Date(e),t,Math.round):void 0}var Nt=Object.defineProperty,Ht=Object.getOwnPropertyDescriptor,Gt=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?Ht(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&Nt(t,o,r),r};let Wt=class extends lit_element_r{constructor(){super(...arguments),this.open=!1}get headerId(){return`gl-accordion-header-${this.id??Math.random().toString(36).substring(2,9)}`}render(){return ie`
			<details ?open=${this.open} @toggle=${this._handleToggle} role="region" aria-labelledby=${this.headerId}>
				<summary part="header" class="header" id=${this.headerId} role="button" aria-expanded=${this.open}>
					<slot class="label" name="header"></slot>
					<code-icon class="icon" icon=${this.open?"chevron-down":"chevron-right"}></code-icon>
				</summary>
				<div part="content" class="content">
					<slot></slot>
				</div>
			</details>
		`}_handleToggle(e){const t=e.target;this.open=t.open,this.dispatchEvent(new CustomEvent("gl-toggle",{detail:{open:this.open},bubbles:!0,composed:!0}))}};Wt.shadowRootOptions={...lit_element_r.shadowRootOptions,delegatesFocus:!0},Wt.styles=d`
		:host {
			display: block;
			font-family: var(--vscode-font-family);
			font-size: var(--vscode-font-size);
			font-weight: var(--vscode-font-weight);
			background-color: var(--vscode-editor-background);
			color: var(--vscode-foreground);
		}

		/*
		details {
			border: 1px solid var(--vscode-panel-border);
			border-radius: 4px;
			overflow: hidden;
		}
		*/

		.header {
			padding: 8px 12px;
			background-color: var(--vscode-sideBar-background);
			cursor: pointer;
			user-select: none;
			list-style: none;
			outline: none;
			display: flex;
			align-items: center;
			gap: 0.6rem;
		}

		.header::-webkit-details-marker {
			display: none;
		}

		.label {
			flex: 1;
			display: block;
		}

		.icon {
			flex: none;
			width: 20px;
			color: var(--vscode-foreground);
			opacity: 0.6;
		}

		.header:hover {
			background-color: var(--vscode-list-hoverBackground);
		}

		.header:focus {
			outline: 1px solid var(--vscode-focusBorder);
			outline-offset: -1px;
		}

		.content {
			padding: 12px;
			background-color: var(--vscode-editor-background);
		}
	`,Gt([be({type:Boolean})],Wt.prototype,"open",2),Wt=Gt([ue("gl-accordion")],Wt);var qt=Object.defineProperty,Vt=Object.defineProperties,Kt=Object.getOwnPropertyDescriptor,Yt=Object.getOwnPropertyDescriptors,Zt=Object.getOwnPropertySymbols,Qt=Object.prototype.hasOwnProperty,Jt=Object.prototype.propertyIsEnumerable,Xt=(e,t,o)=>t in e?qt(e,t,{enumerable:!0,configurable:!0,writable:!0,value:o}):e[t]=o,eo=(e,t)=>{for(var o in t||(t={}))Qt.call(t,o)&&Xt(e,o,t[o]);if(Zt)for(var o of Zt(t))Jt.call(t,o)&&Xt(e,o,t[o]);return e},to=(e,t)=>Vt(e,Yt(t)),oo=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?Kt(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&qt(t,o,r),r},io=(e,t,o)=>{if(!t.has(e))throw TypeError("Cannot "+o)},no=new Map,so=new WeakMap;function ro(e){return null!=e?e:{keyframes:[],options:{duration:0}}}function ao(e,t){return"rtl"===t.toLowerCase()?{keyframes:e.rtlKeyframes||e.keyframes,options:e.options}:e}function lo(e,t){no.set(e,ro(t))}function co(e,t,o){const i=so.get(e);if(null==i?void 0:i[t])return ao(i[t],o.dir);const s=no.get(t);return s?ao(s,o.dir):{keyframes:[],options:{duration:0}}}var po,ho=d`
  :host {
    --max-width: 20rem;
    --hide-delay: 0ms;
    --show-delay: 150ms;

    display: contents;
  }

  .tooltip {
    --arrow-size: var(--sl-tooltip-arrow-size);
    --arrow-color: var(--sl-tooltip-background-color);
  }

  .tooltip::part(popup) {
    z-index: var(--sl-z-index-tooltip);
  }

  .tooltip[placement^='top']::part(popup) {
    transform-origin: bottom;
  }

  .tooltip[placement^='bottom']::part(popup) {
    transform-origin: top;
  }

  .tooltip[placement^='left']::part(popup) {
    transform-origin: right;
  }

  .tooltip[placement^='right']::part(popup) {
    transform-origin: left;
  }

  .tooltip__body {
    display: block;
    width: max-content;
    max-width: var(--max-width);
    border-radius: var(--sl-tooltip-border-radius);
    background-color: var(--sl-tooltip-background-color);
    font-family: var(--sl-tooltip-font-family);
    font-size: var(--sl-tooltip-font-size);
    font-weight: var(--sl-tooltip-font-weight);
    line-height: var(--sl-tooltip-line-height);
    text-align: start;
    white-space: normal;
    color: var(--sl-tooltip-color);
    padding: var(--sl-tooltip-padding);
    pointer-events: none;
    user-select: none;
    -webkit-user-select: none;
  }
`,uo=d`
  :host {
    --arrow-color: var(--sl-color-neutral-1000);
    --arrow-size: 6px;

    /*
     * These properties are computed to account for the arrow's dimensions after being rotated 45º. The constant
     * 0.7071 is derived from sin(45), which is the diagonal size of the arrow's container after rotating.
     */
    --arrow-size-diagonal: calc(var(--arrow-size) * 0.7071);
    --arrow-padding-offset: calc(var(--arrow-size-diagonal) - var(--arrow-size));

    display: contents;
  }

  .popup {
    position: absolute;
    isolation: isolate;
    max-width: var(--auto-size-available-width, none);
    max-height: var(--auto-size-available-height, none);
  }

  .popup--fixed {
    position: fixed;
  }

  .popup:not(.popup--active) {
    display: none;
  }

  .popup__arrow {
    position: absolute;
    width: calc(var(--arrow-size-diagonal) * 2);
    height: calc(var(--arrow-size-diagonal) * 2);
    rotate: 45deg;
    background: var(--arrow-color);
    z-index: -1;
  }

  /* Hover bridge */
  .popup-hover-bridge:not(.popup-hover-bridge--visible) {
    display: none;
  }

  .popup-hover-bridge {
    position: fixed;
    z-index: calc(var(--sl-z-index-dropdown) - 1);
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    clip-path: polygon(
      var(--hover-bridge-top-left-x, 0) var(--hover-bridge-top-left-y, 0),
      var(--hover-bridge-top-right-x, 0) var(--hover-bridge-top-right-y, 0),
      var(--hover-bridge-bottom-right-x, 0) var(--hover-bridge-bottom-right-y, 0),
      var(--hover-bridge-bottom-left-x, 0) var(--hover-bridge-bottom-left-y, 0)
    );
  }
`,go=d`
  :host {
    box-sizing: border-box;
  }

  :host *,
  :host *::before,
  :host *::after {
    box-sizing: inherit;
  }

  [hidden] {
    display: none !important;
  }
`,fo=class extends lit_element_r{constructor(){super(),((e,t,o)=>{if(t.has(e))throw TypeError("Cannot add the same private member more than once");t instanceof WeakSet?t.add(e):t.set(e,o)})(this,po,!1),this.initialReflectedProperties=new Map,Object.entries(this.constructor.dependencies).forEach((([e,t])=>{this.constructor.define(e,t)}))}emit(e,t){const o=new CustomEvent(e,eo({bubbles:!0,cancelable:!1,composed:!0,detail:{}},t));return this.dispatchEvent(o),o}static define(e,t=this,o={}){const i=customElements.get(e);if(!i){try{customElements.define(e,t,o)}catch(i){customElements.define(e,class extends t{},o)}return}let s=" (unknown version)",r=s;"version"in t&&t.version&&(s=" v"+t.version),"version"in i&&i.version&&(r=" v"+i.version)}attributeChangedCallback(e,t,o){var i,s,r;io(i=this,s=po,"read from private field"),(r?r.call(i):s.get(i))||(this.constructor.elementProperties.forEach(((e,t)=>{e.reflect&&null!=this[t]&&this.initialReflectedProperties.set(t,this[t])})),((e,t,o,i)=>{io(e,t,"write to private field"),i?i.call(e,o):t.set(e,o)})(this,po,!0)),super.attributeChangedCallback(e,t,o)}willUpdate(e){super.willUpdate(e),this.initialReflectedProperties.forEach(((t,o)=>{e.has(o)&&null==this[o]&&(this[o]=t)}))}};po=new WeakMap,fo.version="2.17.1",fo.dependencies={},oo([be()],fo.prototype,"dir",2),oo([be()],fo.prototype,"lang",2);const bo=Math.min,mo=Math.max,vo=Math.round,yo=Math.floor,_o=e=>({x:e,y:e}),wo={left:"right",right:"left",bottom:"top",top:"bottom"},xo={start:"end",end:"start"};function ko(e,t,o){return mo(e,bo(t,o))}function $o(e,t){return"function"==typeof e?e(t):e}function Po(e){return e.split("-")[0]}function So(e){return e.split("-")[1]}function Co(e){return"x"===e?"y":"x"}function Eo(e){return"y"===e?"height":"width"}function Ao(e){return["top","bottom"].includes(Po(e))?"y":"x"}function Oo(e){return Co(Ao(e))}function To(e){return e.replace(/start|end/g,(e=>xo[e]))}function Lo(e){return e.replace(/left|right|bottom|top/g,(e=>wo[e]))}function Ro(e){return"number"!=typeof e?function(e){return{top:0,right:0,bottom:0,left:0,...e}}(e):{top:e,right:e,bottom:e,left:e}}function zo(e){const{x:t,y:o,width:i,height:s}=e;return{width:i,height:s,top:o,left:t,right:t+i,bottom:o+s,x:t,y:o}}function Do(e,t,o){let{reference:i,floating:s}=e;const r=Ao(t),a=Oo(t),l=Eo(a),c=Po(t),d="y"===r,p=i.x+i.width/2-s.width/2,h=i.y+i.height/2-s.height/2,u=i[l]/2-s[l]/2;let g;switch(c){case"top":g={x:p,y:i.y-s.height};break;case"bottom":g={x:p,y:i.y+i.height};break;case"right":g={x:i.x+i.width,y:h};break;case"left":g={x:i.x-s.width,y:h};break;default:g={x:i.x,y:i.y}}switch(So(t)){case"start":g[a]-=u*(o&&d?-1:1);break;case"end":g[a]+=u*(o&&d?-1:1)}return g}async function jo(e,t){var o;void 0===t&&(t={});const{x:i,y:s,platform:r,rects:a,elements:l,strategy:c}=e,{boundary:d="clippingAncestors",rootBoundary:p="viewport",elementContext:h="floating",altBoundary:u=!1,padding:g=0}=$o(t,e),f=Ro(g),m=l[u?"floating"===h?"reference":"floating":h],v=zo(await r.getClippingRect({element:null==(o=await(null==r.isElement?void 0:r.isElement(m)))||o?m:m.contextElement||await(null==r.getDocumentElement?void 0:r.getDocumentElement(l.floating)),boundary:d,rootBoundary:p,strategy:c})),y="floating"===h?{x:i,y:s,width:a.floating.width,height:a.floating.height}:a.reference,_=await(null==r.getOffsetParent?void 0:r.getOffsetParent(l.floating)),w=await(null==r.isElement?void 0:r.isElement(_))&&await(null==r.getScale?void 0:r.getScale(_))||{x:1,y:1},x=zo(r.convertOffsetParentRelativeRectToViewportRelativeRect?await r.convertOffsetParentRelativeRectToViewportRelativeRect({elements:l,rect:y,offsetParent:_,strategy:c}):y);return{top:(v.top-x.top+f.top)/w.y,bottom:(x.bottom-v.bottom+f.bottom)/w.y,left:(v.left-x.left+f.left)/w.x,right:(x.right-v.right+f.right)/w.x}}function Fo(){return"undefined"!=typeof window}function Io(e){return Bo(e)?(e.nodeName||"").toLowerCase():"#document"}function Uo(e){var t;return(null==e||null==(t=e.ownerDocument)?void 0:t.defaultView)||window}function Mo(e){var t;return null==(t=(Bo(e)?e.ownerDocument:e.document)||window.document)?void 0:t.documentElement}function Bo(e){return!!Fo()&&(e instanceof Node||e instanceof Uo(e).Node)}function No(e){return!!Fo()&&(e instanceof Element||e instanceof Uo(e).Element)}function Ho(e){return!!Fo()&&(e instanceof HTMLElement||e instanceof Uo(e).HTMLElement)}function Go(e){return!(!Fo()||"undefined"==typeof ShadowRoot)&&(e instanceof ShadowRoot||e instanceof Uo(e).ShadowRoot)}function Wo(e){const{overflow:t,overflowX:o,overflowY:i,display:s}=Qo(e);return/auto|scroll|overlay|hidden|clip/.test(t+i+o)&&!["inline","contents"].includes(s)}function qo(e){return["table","td","th"].includes(Io(e))}function Vo(e){return[":popover-open",":modal"].some((t=>{try{return e.matches(t)}catch(e){return!1}}))}function Ko(e){const t=Yo(),o=No(e)?Qo(e):e;return"none"!==o.transform||"none"!==o.perspective||!!o.containerType&&"normal"!==o.containerType||!t&&!!o.backdropFilter&&"none"!==o.backdropFilter||!t&&!!o.filter&&"none"!==o.filter||["transform","perspective","filter"].some((e=>(o.willChange||"").includes(e)))||["paint","layout","strict","content"].some((e=>(o.contain||"").includes(e)))}function Yo(){return!("undefined"==typeof CSS||!CSS.supports)&&CSS.supports("-webkit-backdrop-filter","none")}function Zo(e){return["html","body","#document"].includes(Io(e))}function Qo(e){return Uo(e).getComputedStyle(e)}function Jo(e){return No(e)?{scrollLeft:e.scrollLeft,scrollTop:e.scrollTop}:{scrollLeft:e.scrollX,scrollTop:e.scrollY}}function Xo(e){if("html"===Io(e))return e;const t=e.assignedSlot||e.parentNode||Go(e)&&e.host||Mo(e);return Go(t)?t.host:t}function ei(e){const t=Xo(e);return Zo(t)?e.ownerDocument?e.ownerDocument.body:e.body:Ho(t)&&Wo(t)?t:ei(t)}function ti(e,t,o){var i;void 0===t&&(t=[]),void 0===o&&(o=!0);const s=ei(e),r=s===(null==(i=e.ownerDocument)?void 0:i.body),a=Uo(s);if(r){const e=oi(a);return t.concat(a,a.visualViewport||[],Wo(s)?s:[],e&&o?ti(e):[])}return t.concat(s,ti(s,[],o))}function oi(e){return e.parent&&Object.getPrototypeOf(e.parent)?e.frameElement:null}function ii(e){const t=Qo(e);let o=parseFloat(t.width)||0,i=parseFloat(t.height)||0;const s=Ho(e),r=s?e.offsetWidth:o,a=s?e.offsetHeight:i,l=vo(o)!==r||vo(i)!==a;return l&&(o=r,i=a),{width:o,height:i,$:l}}function ni(e){return No(e)?e:e.contextElement}function si(e){const t=ni(e);if(!Ho(t))return _o(1);const o=t.getBoundingClientRect(),{width:i,height:s,$:r}=ii(t);let a=(r?vo(o.width):o.width)/i,l=(r?vo(o.height):o.height)/s;return a&&Number.isFinite(a)||(a=1),l&&Number.isFinite(l)||(l=1),{x:a,y:l}}const ri=_o(0);function ai(e){const t=Uo(e);return Yo()&&t.visualViewport?{x:t.visualViewport.offsetLeft,y:t.visualViewport.offsetTop}:ri}function li(e,t,o,i){void 0===t&&(t=!1),void 0===o&&(o=!1);const s=e.getBoundingClientRect(),r=ni(e);let a=_o(1);t&&(i?No(i)&&(a=si(i)):a=si(e));const l=function(e,t,o){return void 0===t&&(t=!1),!(!o||t&&o!==Uo(e))&&t}(r,o,i)?ai(r):_o(0);let c=(s.left+l.x)/a.x,d=(s.top+l.y)/a.y,p=s.width/a.x,h=s.height/a.y;if(r){const e=Uo(r),t=i&&No(i)?Uo(i):i;let o=e,s=oi(o);for(;s&&i&&t!==o;){const e=si(s),t=s.getBoundingClientRect(),i=Qo(s),r=t.left+(s.clientLeft+parseFloat(i.paddingLeft))*e.x,a=t.top+(s.clientTop+parseFloat(i.paddingTop))*e.y;c*=e.x,d*=e.y,p*=e.x,h*=e.y,c+=r,d+=a,o=Uo(s),s=oi(o)}}return zo({width:p,height:h,x:c,y:d})}function ci(e,t){const o=Jo(e).scrollLeft;return t?t.left+o:li(Mo(e)).left+o}function di(e,t,o){let i;if("viewport"===t)i=function(e,t){const o=Uo(e),i=Mo(e),s=o.visualViewport;let r=i.clientWidth,a=i.clientHeight,l=0,c=0;if(s){r=s.width,a=s.height;const e=Yo();(!e||e&&"fixed"===t)&&(l=s.offsetLeft,c=s.offsetTop)}return{width:r,height:a,x:l,y:c}}(e,o);else if("document"===t)i=function(e){const t=Mo(e),o=Jo(e),i=e.ownerDocument.body,s=mo(t.scrollWidth,t.clientWidth,i.scrollWidth,i.clientWidth),r=mo(t.scrollHeight,t.clientHeight,i.scrollHeight,i.clientHeight);let a=-o.scrollLeft+ci(e);const l=-o.scrollTop;return"rtl"===Qo(i).direction&&(a+=mo(t.clientWidth,i.clientWidth)-s),{width:s,height:r,x:a,y:l}}(Mo(e));else if(No(t))i=function(e,t){const o=li(e,!0,"fixed"===t),i=o.top+e.clientTop,s=o.left+e.clientLeft,r=Ho(e)?si(e):_o(1);return{width:e.clientWidth*r.x,height:e.clientHeight*r.y,x:s*r.x,y:i*r.y}}(t,o);else{const o=ai(e);i={...t,x:t.x-o.x,y:t.y-o.y}}return zo(i)}function pi(e,t){const o=Xo(e);return!(o===t||!No(o)||Zo(o))&&("fixed"===Qo(o).position||pi(o,t))}function hi(e,t,o){const i=Ho(t),s=Mo(t),r="fixed"===o,a=li(e,!0,r,t);let l={scrollLeft:0,scrollTop:0};const c=_o(0);if(i||!i&&!r)if(("body"!==Io(t)||Wo(s))&&(l=Jo(t)),i){const e=li(t,!0,r,t);c.x=e.x+t.clientLeft,c.y=e.y+t.clientTop}else s&&(c.x=ci(s));let d=0,p=0;if(s&&!i&&!r){const e=s.getBoundingClientRect();p=e.top+l.scrollTop,d=e.left+l.scrollLeft-ci(s,e)}return{x:a.left+l.scrollLeft-c.x-d,y:a.top+l.scrollTop-c.y-p,width:a.width,height:a.height}}function ui(e){return"static"===Qo(e).position}function gi(e,t){if(!Ho(e)||"fixed"===Qo(e).position)return null;if(t)return t(e);let o=e.offsetParent;return Mo(e)===o&&(o=o.ownerDocument.body),o}function fi(e,t){const o=Uo(e);if(Vo(e))return o;if(!Ho(e)){let t=Xo(e);for(;t&&!Zo(t);){if(No(t)&&!ui(t))return t;t=Xo(t)}return o}let i=gi(e,t);for(;i&&qo(i)&&ui(i);)i=gi(i,t);return i&&Zo(i)&&ui(i)&&!Ko(i)?o:i||function(e){let t=Xo(e);for(;Ho(t)&&!Zo(t);){if(Ko(t))return t;if(Vo(t))return null;t=Xo(t)}return null}(e)||o}const bi={convertOffsetParentRelativeRectToViewportRelativeRect:function(e){let{elements:t,rect:o,offsetParent:i,strategy:s}=e;const r="fixed"===s,a=Mo(i),l=!!t&&Vo(t.floating);if(i===a||l&&r)return o;let c={scrollLeft:0,scrollTop:0},d=_o(1);const p=_o(0),h=Ho(i);if((h||!h&&!r)&&(("body"!==Io(i)||Wo(a))&&(c=Jo(i)),Ho(i))){const e=li(i);d=si(i),p.x=e.x+i.clientLeft,p.y=e.y+i.clientTop}return{width:o.width*d.x,height:o.height*d.y,x:o.x*d.x-c.scrollLeft*d.x+p.x,y:o.y*d.y-c.scrollTop*d.y+p.y}},getDocumentElement:Mo,getClippingRect:function(e){let{element:t,boundary:o,rootBoundary:i,strategy:s}=e;const r=[..."clippingAncestors"===o?Vo(t)?[]:function(e,t){const o=t.get(e);if(o)return o;let i=ti(e,[],!1).filter((e=>No(e)&&"body"!==Io(e))),s=null;const r="fixed"===Qo(e).position;let a=r?Xo(e):e;for(;No(a)&&!Zo(a);){const t=Qo(a),o=Ko(a);o||"fixed"!==t.position||(s=null),(r?!o&&!s:!o&&"static"===t.position&&s&&["absolute","fixed"].includes(s.position)||Wo(a)&&!o&&pi(e,a))?i=i.filter((e=>e!==a)):s=t,a=Xo(a)}return t.set(e,i),i}(t,this._c):[].concat(o),i],a=r[0],l=r.reduce(((e,o)=>{const i=di(t,o,s);return e.top=mo(i.top,e.top),e.right=bo(i.right,e.right),e.bottom=bo(i.bottom,e.bottom),e.left=mo(i.left,e.left),e}),di(t,a,s));return{width:l.right-l.left,height:l.bottom-l.top,x:l.left,y:l.top}},getOffsetParent:fi,getElementRects:async function(e){const t=this.getOffsetParent||fi,o=this.getDimensions,i=await o(e.floating);return{reference:hi(e.reference,await t(e.floating),e.strategy),floating:{x:0,y:0,width:i.width,height:i.height}}},getClientRects:function(e){return Array.from(e.getClientRects())},getDimensions:function(e){const{width:t,height:o}=ii(e);return{width:t,height:o}},getScale:si,isElement:No,isRTL:function(e){return"rtl"===Qo(e).direction}};function mi(e,t,o,i){void 0===i&&(i={});const{ancestorScroll:s=!0,ancestorResize:r=!0,elementResize:a="function"==typeof ResizeObserver,layoutShift:l="function"==typeof IntersectionObserver,animationFrame:c=!1}=i,d=ni(e),p=s||r?[...d?ti(d):[],...ti(t)]:[];p.forEach((e=>{s&&e.addEventListener("scroll",o,{passive:!0}),r&&e.addEventListener("resize",o)}));const h=d&&l?function(e,t){let o,i=null;const s=Mo(e);function r(){var e;clearTimeout(o),null==(e=i)||e.disconnect(),i=null}return function a(l,c){void 0===l&&(l=!1),void 0===c&&(c=1),r();const{left:d,top:p,width:h,height:u}=e.getBoundingClientRect();if(l||t(),!h||!u)return;const g={rootMargin:-yo(p)+"px "+-yo(s.clientWidth-(d+h))+"px "+-yo(s.clientHeight-(p+u))+"px "+-yo(d)+"px",threshold:mo(0,bo(1,c))||1};let f=!0;function m(e){const t=e[0].intersectionRatio;if(t!==c){if(!f)return a();t?a(!1,t):o=setTimeout((()=>{a(!1,1e-7)}),1e3)}f=!1}try{i=new IntersectionObserver(m,{...g,root:s.ownerDocument})}catch(e){i=new IntersectionObserver(m,g)}i.observe(e)}(!0),r}(d,o):null;let u,g=-1,f=null;a&&(f=new ResizeObserver((e=>{let[i]=e;i&&i.target===d&&f&&(f.unobserve(t),cancelAnimationFrame(g),g=requestAnimationFrame((()=>{var e;null==(e=f)||e.observe(t)}))),o()})),d&&!c&&f.observe(d),f.observe(t));let m=c?li(e):null;return c&&function t(){const i=li(e);!m||i.x===m.x&&i.y===m.y&&i.width===m.width&&i.height===m.height||o();m=i,u=requestAnimationFrame(t)}(),o(),()=>{var e;p.forEach((e=>{s&&e.removeEventListener("scroll",o),r&&e.removeEventListener("resize",o)})),null==h||h(),null==(e=f)||e.disconnect(),f=null,c&&cancelAnimationFrame(u)}}const vi=function(e){return void 0===e&&(e=0),{name:"offset",options:e,async fn(t){var o,i;const{x:s,y:r,placement:a,middlewareData:l}=t,c=await async function(e,t){const{placement:o,platform:i,elements:s}=e,r=await(null==i.isRTL?void 0:i.isRTL(s.floating)),a=Po(o),l=So(o),c="y"===Ao(o),d=["left","top"].includes(a)?-1:1,p=r&&c?-1:1,h=$o(t,e);let{mainAxis:u,crossAxis:g,alignmentAxis:f}="number"==typeof h?{mainAxis:h,crossAxis:0,alignmentAxis:null}:{mainAxis:h.mainAxis||0,crossAxis:h.crossAxis||0,alignmentAxis:h.alignmentAxis};return l&&"number"==typeof f&&(g="end"===l?-1*f:f),c?{x:g*p,y:u*d}:{x:u*d,y:g*p}}(t,e);return a===(null==(o=l.offset)?void 0:o.placement)&&null!=(i=l.arrow)&&i.alignmentOffset?{}:{x:s+c.x,y:r+c.y,data:{...c,placement:a}}}}},yi=function(e){return void 0===e&&(e={}),{name:"shift",options:e,async fn(t){const{x:o,y:i,placement:s}=t,{mainAxis:r=!0,crossAxis:a=!1,limiter:l={fn:e=>{let{x:t,y:o}=e;return{x:t,y:o}}},...c}=$o(e,t),d={x:o,y:i},p=await jo(t,c),h=Ao(Po(s)),u=Co(h);let g=d[u],f=d[h];if(r){const e="y"===u?"bottom":"right";g=ko(g+p["y"===u?"top":"left"],g,g-p[e])}if(a){const e="y"===h?"bottom":"right";f=ko(f+p["y"===h?"top":"left"],f,f-p[e])}const m=l.fn({...t,[u]:g,[h]:f});return{...m,data:{x:m.x-o,y:m.y-i,enabled:{[u]:r,[h]:a}}}}}},_i=function(e){return void 0===e&&(e={}),{name:"flip",options:e,async fn(t){var o,i;const{placement:s,middlewareData:r,rects:a,initialPlacement:l,platform:c,elements:d}=t,{mainAxis:p=!0,crossAxis:h=!0,fallbackPlacements:u,fallbackStrategy:g="bestFit",fallbackAxisSideDirection:f="none",flipAlignment:m=!0,...v}=$o(e,t);if(null!=(o=r.arrow)&&o.alignmentOffset)return{};const y=Po(s),_=Ao(l),w=Po(l)===l,x=await(null==c.isRTL?void 0:c.isRTL(d.floating)),$=u||(w||!m?[Lo(l)]:function(e){const t=Lo(e);return[To(e),t,To(t)]}(l)),P="none"!==f;!u&&P&&$.push(...function(e,t,o,i){const s=So(e);let r=function(e,t,o){const i=["left","right"],s=["right","left"],r=["top","bottom"],a=["bottom","top"];switch(e){case"top":case"bottom":return o?t?s:i:t?i:s;case"left":case"right":return t?r:a;default:return[]}}(Po(e),"start"===o,i);return s&&(r=r.map((e=>e+"-"+s)),t&&(r=r.concat(r.map(To)))),r}(l,m,f,x));const S=[l,...$],C=await jo(t,v),E=[];let A=(null==(i=r.flip)?void 0:i.overflows)||[];if(p&&E.push(C[y]),h){const e=function(e,t,o){void 0===o&&(o=!1);const i=So(e),s=Oo(e),r=Eo(s);let a="x"===s?i===(o?"end":"start")?"right":"left":"start"===i?"bottom":"top";return t.reference[r]>t.floating[r]&&(a=Lo(a)),[a,Lo(a)]}(s,a,x);E.push(C[e[0]],C[e[1]])}if(A=[...A,{placement:s,overflows:E}],!E.every((e=>e<=0))){var O,T;const e=((null==(O=r.flip)?void 0:O.index)||0)+1,t=S[e];if(t)return{data:{index:e,overflows:A},reset:{placement:t}};let o=null==(T=A.filter((e=>e.overflows[0]<=0)).sort(((e,t)=>e.overflows[1]-t.overflows[1]))[0])?void 0:T.placement;if(!o)switch(g){case"bestFit":{var D;const e=null==(D=A.filter((e=>{if(P){const t=Ao(e.placement);return t===_||"y"===t}return!0})).map((e=>[e.placement,e.overflows.filter((e=>e>0)).reduce(((e,t)=>e+t),0)])).sort(((e,t)=>e[1]-t[1]))[0])?void 0:D[0];e&&(o=e);break}case"initialPlacement":o=l}if(s!==o)return{reset:{placement:o}}}return{}}}},wi=function(e){return void 0===e&&(e={}),{name:"size",options:e,async fn(t){var o,i;const{placement:s,rects:r,platform:a,elements:l}=t,{apply:c=()=>{},...d}=$o(e,t),p=await jo(t,d),h=Po(s),u=So(s),g="y"===Ao(s),{width:f,height:m}=r.floating;let v,y;"top"===h||"bottom"===h?(v=h,y=u===(await(null==a.isRTL?void 0:a.isRTL(l.floating))?"start":"end")?"left":"right"):(y=h,v="end"===u?"top":"bottom");const _=m-p.top-p.bottom,w=f-p.left-p.right,x=bo(m-p[v],_),$=bo(f-p[y],w),P=!t.middlewareData.shift;let S=x,C=$;if(null!=(o=t.middlewareData.shift)&&o.enabled.x&&(C=w),null!=(i=t.middlewareData.shift)&&i.enabled.y&&(S=_),P&&!u){const e=mo(p.left,0),t=mo(p.right,0),o=mo(p.top,0),i=mo(p.bottom,0);g?C=f-2*(0!==e||0!==t?e+t:mo(p.left,p.right)):S=m-2*(0!==o||0!==i?o+i:mo(p.top,p.bottom))}await c({...t,availableWidth:C,availableHeight:S});const E=await a.getDimensions(l.floating);return f!==E.width||m!==E.height?{reset:{rects:!0}}:{}}}},xi=e=>({name:"arrow",options:e,async fn(t){const{x:o,y:i,placement:s,rects:r,platform:a,elements:l,middlewareData:c}=t,{element:d,padding:p=0}=$o(e,t)||{};if(null==d)return{};const h=Ro(p),u={x:o,y:i},g=Oo(s),f=Eo(g),m=await a.getDimensions(d),v="y"===g,y=v?"top":"left",_=v?"bottom":"right",w=v?"clientHeight":"clientWidth",x=r.reference[f]+r.reference[g]-u[g]-r.floating[f],$=u[g]-r.reference[g],P=await(null==a.getOffsetParent?void 0:a.getOffsetParent(d));let S=P?P[w]:0;S&&await(null==a.isElement?void 0:a.isElement(P))||(S=l.floating[w]||r.floating[f]);const C=x/2-$/2,E=S/2-m[f]/2-1,A=bo(h[y],E),O=bo(h[_],E),T=A,D=S-m[f]-O,j=S/2-m[f]/2+C,F=ko(T,j,D),U=!c.arrow&&null!=So(s)&&j!==F&&r.reference[f]/2-(j<T?A:O)-m[f]/2<0,B=U?j<T?j-T:j-D:0;return{[g]:u[g]+B,data:{[g]:F,centerOffset:j-F-B,...U&&{alignmentOffset:B}},reset:U}}}),ki=(e,t,o)=>{const i=new Map,s={platform:bi,...o},r={...s.platform,_c:i};return(async(e,t,o)=>{const{placement:i="bottom",strategy:s="absolute",middleware:r=[],platform:a}=o,l=r.filter(Boolean),c=await(null==a.isRTL?void 0:a.isRTL(t));let d=await a.getElementRects({reference:e,floating:t,strategy:s}),{x:p,y:h}=Do(d,i,c),u=i,g={},f=0;for(let o=0;o<l.length;o++){const{name:r,fn:m}=l[o],{x:v,y,data:_,reset:w}=await m({x:p,y:h,initialPlacement:i,placement:u,strategy:s,middlewareData:g,rects:d,platform:a,elements:{reference:e,floating:t}});p=null!=v?v:p,h=null!=y?y:h,g={...g,[r]:{...g[r],..._}},w&&f<=50&&(f++,"object"==typeof w&&(w.placement&&(u=w.placement),w.rects&&(d=!0===w.rects?await a.getElementRects({reference:e,floating:t,strategy:s}):w.rects),({x:p,y:h}=Do(d,u,c))),o=-1)}return{x:p,y:h,placement:u,strategy:s,middlewareData:g}})(e,t,{...s,platform:r})},$i=1;class directive_i{constructor(e){}get _$AU(){return this._$AM._$AU}_$AT(e,t,o){this._$Ct=e,this._$AM=t,this._$Ci=o}_$AS(e,t){return this.update(e,t)}update(e,t){return this.render(...t)}}const Pi=(e=>(...t)=>({_$litDirective$:e,values:t}))(class extends directive_i{constructor(e){if(super(e),e.type!==$i||"class"!==e.name||e.strings?.length>2)throw Error("`classMap()` can only be used in the `class` attribute and must be the only part in the attribute.")}render(e){return" "+Object.keys(e).filter((t=>e[t])).join(" ")+" "}update(e,[t]){if(void 0===this.st){this.st=new Set,void 0!==e.strings&&(this.nt=new Set(e.strings.join(" ").split(/\s/).filter((e=>""!==e))));for(const e in t)t[e]&&!this.nt?.has(e)&&this.st.add(e);return this.render(t)}const o=e.element.classList;for(const e of this.st)e in t||(o.remove(e),this.st.delete(e));for(const e in t){const i=!!t[e];i===this.st.has(e)||this.nt?.has(e)||(i?(o.add(e),this.st.add(e)):(o.remove(e),this.st.delete(e)))}return ne}});function Si(e){return Ei(e)}function Ci(e){return e.assignedSlot?e.assignedSlot:e.parentNode instanceof ShadowRoot?e.parentNode.host:e.parentNode}function Ei(e){for(let t=e;t;t=Ci(t))if(t instanceof Element&&"none"===getComputedStyle(t).display)return null;for(let t=Ci(e);t;t=Ci(t)){if(!(t instanceof Element))continue;const e=getComputedStyle(t);if("contents"!==e.display){if("static"!==e.position||"none"!==e.filter)return t;if("BODY"===t.tagName)return t}}return null}var Ai=class extends fo{constructor(){super(...arguments),this.active=!1,this.placement="top",this.strategy="absolute",this.distance=0,this.skidding=0,this.arrow=!1,this.arrowPlacement="anchor",this.arrowPadding=10,this.flip=!1,this.flipFallbackPlacements="",this.flipFallbackStrategy="best-fit",this.flipPadding=0,this.shift=!1,this.shiftPadding=0,this.autoSizePadding=0,this.hoverBridge=!1,this.updateHoverBridge=()=>{if(this.hoverBridge&&this.anchorEl){const e=this.anchorEl.getBoundingClientRect(),t=this.popup.getBoundingClientRect();let o=0,i=0,s=0,r=0,a=0,l=0,c=0,d=0;this.placement.includes("top")||this.placement.includes("bottom")?e.top<t.top?(o=e.left,i=e.bottom,s=e.right,r=e.bottom,a=t.left,l=t.top,c=t.right,d=t.top):(o=t.left,i=t.bottom,s=t.right,r=t.bottom,a=e.left,l=e.top,c=e.right,d=e.top):e.left<t.left?(o=e.right,i=e.top,s=t.left,r=t.top,a=e.right,l=e.bottom,c=t.left,d=t.bottom):(o=t.right,i=t.top,s=e.left,r=e.top,a=t.right,l=t.bottom,c=e.left,d=e.bottom),this.style.setProperty("--hover-bridge-top-left-x",`${o}px`),this.style.setProperty("--hover-bridge-top-left-y",`${i}px`),this.style.setProperty("--hover-bridge-top-right-x",`${s}px`),this.style.setProperty("--hover-bridge-top-right-y",`${r}px`),this.style.setProperty("--hover-bridge-bottom-left-x",`${a}px`),this.style.setProperty("--hover-bridge-bottom-left-y",`${l}px`),this.style.setProperty("--hover-bridge-bottom-right-x",`${c}px`),this.style.setProperty("--hover-bridge-bottom-right-y",`${d}px`)}}}async connectedCallback(){super.connectedCallback(),await this.updateComplete,this.start()}disconnectedCallback(){super.disconnectedCallback(),this.stop()}async updated(e){super.updated(e),e.has("active")&&(this.active?this.start():this.stop()),e.has("anchor")&&this.handleAnchorChange(),this.active&&(await this.updateComplete,this.reposition())}async handleAnchorChange(){if(await this.stop(),this.anchor&&"string"==typeof this.anchor){const e=this.getRootNode();this.anchorEl=e.getElementById(this.anchor)}else this.anchor instanceof Element||function(e){return null!==e&&"object"==typeof e&&"getBoundingClientRect"in e&&(!("contextElement"in e)||e instanceof Element)}(this.anchor)?this.anchorEl=this.anchor:this.anchorEl=this.querySelector('[slot="anchor"]');this.anchorEl instanceof HTMLSlotElement&&(this.anchorEl=this.anchorEl.assignedElements({flatten:!0})[0]),this.anchorEl&&this.active&&this.start()}start(){this.anchorEl&&(this.cleanup=mi(this.anchorEl,this.popup,(()=>{this.reposition()})))}async stop(){return new Promise((e=>{this.cleanup?(this.cleanup(),this.cleanup=void 0,this.removeAttribute("data-current-placement"),this.style.removeProperty("--auto-size-available-width"),this.style.removeProperty("--auto-size-available-height"),requestAnimationFrame((()=>e()))):e()}))}reposition(){if(!this.active||!this.anchorEl)return;const e=[vi({mainAxis:this.distance,crossAxis:this.skidding})];this.sync?e.push(wi({apply:({rects:e})=>{const t="width"===this.sync||"both"===this.sync,o="height"===this.sync||"both"===this.sync;this.popup.style.width=t?`${e.reference.width}px`:"",this.popup.style.height=o?`${e.reference.height}px`:""}})):(this.popup.style.width="",this.popup.style.height=""),this.flip&&e.push(_i({boundary:this.flipBoundary,fallbackPlacements:this.flipFallbackPlacements,fallbackStrategy:"best-fit"===this.flipFallbackStrategy?"bestFit":"initialPlacement",padding:this.flipPadding})),this.shift&&e.push(yi({boundary:this.shiftBoundary,padding:this.shiftPadding})),this.autoSize?e.push(wi({boundary:this.autoSizeBoundary,padding:this.autoSizePadding,apply:({availableWidth:e,availableHeight:t})=>{"vertical"===this.autoSize||"both"===this.autoSize?this.style.setProperty("--auto-size-available-height",`${t}px`):this.style.removeProperty("--auto-size-available-height"),"horizontal"===this.autoSize||"both"===this.autoSize?this.style.setProperty("--auto-size-available-width",`${e}px`):this.style.removeProperty("--auto-size-available-width")}})):(this.style.removeProperty("--auto-size-available-width"),this.style.removeProperty("--auto-size-available-height")),this.arrow&&e.push(xi({element:this.arrowEl,padding:this.arrowPadding}));const t="absolute"===this.strategy?e=>bi.getOffsetParent(e,Si):bi.getOffsetParent;ki(this.anchorEl,this.popup,{placement:this.placement,middleware:e,strategy:this.strategy,platform:to(eo({},bi),{getOffsetParent:t})}).then((({x:e,y:t,middlewareData:o,placement:i})=>{const s=this.matches(":dir(rtl)"),r={top:"bottom",right:"left",bottom:"top",left:"right"}[i.split("-")[0]];if(this.setAttribute("data-current-placement",i),Object.assign(this.popup.style,{left:`${e}px`,top:`${t}px`}),this.arrow){const e=o.arrow.x,t=o.arrow.y;let i="",a="",l="",c="";if("start"===this.arrowPlacement){const o="number"==typeof e?`calc(${this.arrowPadding}px - var(--arrow-padding-offset))`:"";i="number"==typeof t?`calc(${this.arrowPadding}px - var(--arrow-padding-offset))`:"",a=s?o:"",c=s?"":o}else if("end"===this.arrowPlacement){const o="number"==typeof e?`calc(${this.arrowPadding}px - var(--arrow-padding-offset))`:"";a=s?"":o,c=s?o:"",l="number"==typeof t?`calc(${this.arrowPadding}px - var(--arrow-padding-offset))`:""}else"center"===this.arrowPlacement?(c="number"==typeof e?"calc(50% - var(--arrow-size-diagonal))":"",i="number"==typeof t?"calc(50% - var(--arrow-size-diagonal))":""):(c="number"==typeof e?`${e}px`:"",i="number"==typeof t?`${t}px`:"");Object.assign(this.arrowEl.style,{top:i,right:a,bottom:l,left:c,[r]:"calc(var(--arrow-size-diagonal) * -1)"})}})),requestAnimationFrame((()=>this.updateHoverBridge())),this.emit("sl-reposition")}render(){return ie`
      <slot name="anchor" @slotchange=${this.handleAnchorChange}></slot>

      <span
        part="hover-bridge"
        class=${Pi({"popup-hover-bridge":!0,"popup-hover-bridge--visible":this.hoverBridge&&this.active})}
      ></span>

      <div
        part="popup"
        class=${Pi({popup:!0,"popup--active":this.active,"popup--fixed":"fixed"===this.strategy,"popup--has-arrow":this.arrow})}
      >
        <slot></slot>
        ${this.arrow?ie`<div part="arrow" class="popup__arrow" role="presentation"></div>`:""}
      </div>
    `}};function Oi(e,t){return new Promise((o=>{e.addEventListener(t,(function i(s){s.target===e&&(e.removeEventListener(t,i),o())}))}))}function Ti(e,t,o){return new Promise((i=>{if((null==o?void 0:o.duration)===1/0)throw new Error("Promise-based animations must be finite.");const s=e.animate(t,to(eo({},o),{duration:Ri()?0:o.duration}));s.addEventListener("cancel",i,{once:!0}),s.addEventListener("finish",i,{once:!0})}))}function Li(e){return(e=e.toString().toLowerCase()).indexOf("ms")>-1?parseFloat(e):e.indexOf("s")>-1?1e3*parseFloat(e):parseFloat(e)}function Ri(){return window.matchMedia("(prefers-reduced-motion: reduce)").matches}function zi(e){return Promise.all(e.getAnimations().map((e=>new Promise((t=>{e.cancel(),requestAnimationFrame(t)})))))}Ai.styles=[go,uo],oo([ye(".popup")],Ai.prototype,"popup",2),oo([ye(".popup__arrow")],Ai.prototype,"arrowEl",2),oo([be()],Ai.prototype,"anchor",2),oo([be({type:Boolean,reflect:!0})],Ai.prototype,"active",2),oo([be({reflect:!0})],Ai.prototype,"placement",2),oo([be({reflect:!0})],Ai.prototype,"strategy",2),oo([be({type:Number})],Ai.prototype,"distance",2),oo([be({type:Number})],Ai.prototype,"skidding",2),oo([be({type:Boolean})],Ai.prototype,"arrow",2),oo([be({attribute:"arrow-placement"})],Ai.prototype,"arrowPlacement",2),oo([be({attribute:"arrow-padding",type:Number})],Ai.prototype,"arrowPadding",2),oo([be({type:Boolean})],Ai.prototype,"flip",2),oo([be({attribute:"flip-fallback-placements",converter:{fromAttribute:e=>e.split(" ").map((e=>e.trim())).filter((e=>""!==e)),toAttribute:e=>e.join(" ")}})],Ai.prototype,"flipFallbackPlacements",2),oo([be({attribute:"flip-fallback-strategy"})],Ai.prototype,"flipFallbackStrategy",2),oo([be({type:Object})],Ai.prototype,"flipBoundary",2),oo([be({attribute:"flip-padding",type:Number})],Ai.prototype,"flipPadding",2),oo([be({type:Boolean})],Ai.prototype,"shift",2),oo([be({type:Object})],Ai.prototype,"shiftBoundary",2),oo([be({attribute:"shift-padding",type:Number})],Ai.prototype,"shiftPadding",2),oo([be({attribute:"auto-size"})],Ai.prototype,"autoSize",2),oo([be()],Ai.prototype,"sync",2),oo([be({type:Object})],Ai.prototype,"autoSizeBoundary",2),oo([be({attribute:"auto-size-padding",type:Number})],Ai.prototype,"autoSizePadding",2),oo([be({attribute:"hover-bridge",type:Boolean})],Ai.prototype,"hoverBridge",2);const Di=new Set,ji=new Map;let Fi,Ii="ltr",Ui="en";const Mi="undefined"!=typeof MutationObserver&&"undefined"!=typeof document&&void 0!==document.documentElement;if(Mi){const e=new MutationObserver(Ni);Ii=document.documentElement.dir||"ltr",Ui=document.documentElement.lang||navigator.language,e.observe(document.documentElement,{attributes:!0,attributeFilter:["dir","lang"]})}function Bi(...e){e.map((e=>{const t=e.$code.toLowerCase();ji.has(t)?ji.set(t,Object.assign(Object.assign({},ji.get(t)),e)):ji.set(t,e),Fi||(Fi=e)})),Ni()}function Ni(){Mi&&(Ii=document.documentElement.dir||"ltr",Ui=document.documentElement.lang||navigator.language),[...Di.keys()].map((e=>{"function"==typeof e.requestUpdate&&e.requestUpdate()}))}class LocalizeController{constructor(e){this.host=e,this.host.addController(this)}hostConnected(){Di.add(this.host)}hostDisconnected(){Di.delete(this.host)}dir(){return`${this.host.dir||Ii}`.toLowerCase()}lang(){return`${this.host.lang||Ui}`.toLowerCase()}getTranslationData(e){var t,o;const i=new Intl.Locale(e.replace(/_/g,"-")),s=null==i?void 0:i.language.toLowerCase(),r=null!==(o=null===(t=null==i?void 0:i.region)||void 0===t?void 0:t.toLowerCase())&&void 0!==o?o:"";return{locale:i,language:s,region:r,primary:ji.get(`${s}-${r}`),secondary:ji.get(s)}}exists(e,t){var o;const{primary:i,secondary:s}=this.getTranslationData(null!==(o=t.lang)&&void 0!==o?o:this.lang());return t=Object.assign({includeFallback:!1},t),!!(i&&i[e]||s&&s[e]||t.includeFallback&&Fi&&Fi[e])}term(e,...t){const{primary:o,secondary:i}=this.getTranslationData(this.lang());let s;if(o&&o[e])s=o[e];else if(i&&i[e])s=i[e];else{if(!Fi||!Fi[e])return String(e);s=Fi[e]}return"function"==typeof s?s(...t):s}date(e,t){return e=new Date(e),new Intl.DateTimeFormat(this.lang(),t).format(e)}number(e,t){return e=Number(e),isNaN(e)?"":new Intl.NumberFormat(this.lang(),t).format(e)}relativeTime(e,t,o){return new Intl.RelativeTimeFormat(this.lang(),o).format(e,t)}}var Hi={$code:"en",$name:"English",$dir:"ltr",carousel:"Carousel",clearEntry:"Clear entry",close:"Close",copied:"Copied",copy:"Copy",currentValue:"Current value",error:"Error",goToSlide:(e,t)=>`Go to slide ${e} of ${t}`,hidePassword:"Hide password",loading:"Loading",nextSlide:"Next slide",numOptionsSelected:e=>0===e?"No options selected":1===e?"1 option selected":`${e} options selected`,previousSlide:"Previous slide",progress:"Progress",remove:"Remove",resize:"Resize",scrollToEnd:"Scroll to end",scrollToStart:"Scroll to start",selectAColorFromTheScreen:"Select a color from the screen",showPassword:"Show password",slideNum:e=>`Slide ${e}`,toggleColorFormat:"Toggle color format"};Bi(Hi);var Gi=Hi,Wi=class extends LocalizeController{};function qi(e,t){const o=eo({waitUntilFirstUpdate:!1},t);return(t,i)=>{const{update:s}=t,r=Array.isArray(e)?e:[e];t.update=function(e){r.forEach((t=>{const s=t;if(e.has(s)){const t=e.get(s),r=this[s];t!==r&&(o.waitUntilFirstUpdate&&!this.hasUpdated||this[i](t,r))}})),s.call(this,e)}}}Bi(Gi);var Vi=class extends fo{constructor(){super(),this.localize=new Wi(this),this.content="",this.placement="top",this.disabled=!1,this.distance=8,this.open=!1,this.skidding=0,this.trigger="hover focus",this.hoist=!1,this.handleBlur=()=>{this.hasTrigger("focus")&&this.hide()},this.handleClick=()=>{this.hasTrigger("click")&&(this.open?this.hide():this.show())},this.handleFocus=()=>{this.hasTrigger("focus")&&this.show()},this.handleDocumentKeyDown=e=>{"Escape"===e.key&&(e.stopPropagation(),this.hide())},this.handleMouseOver=()=>{if(this.hasTrigger("hover")){const e=Li(getComputedStyle(this).getPropertyValue("--show-delay"));clearTimeout(this.hoverTimeout),this.hoverTimeout=window.setTimeout((()=>this.show()),e)}},this.handleMouseOut=()=>{if(this.hasTrigger("hover")){const e=Li(getComputedStyle(this).getPropertyValue("--hide-delay"));clearTimeout(this.hoverTimeout),this.hoverTimeout=window.setTimeout((()=>this.hide()),e)}},this.addEventListener("blur",this.handleBlur,!0),this.addEventListener("focus",this.handleFocus,!0),this.addEventListener("click",this.handleClick),this.addEventListener("mouseover",this.handleMouseOver),this.addEventListener("mouseout",this.handleMouseOut)}disconnectedCallback(){var e;null==(e=this.closeWatcher)||e.destroy(),document.removeEventListener("keydown",this.handleDocumentKeyDown)}firstUpdated(){this.body.hidden=!this.open,this.open&&(this.popup.active=!0,this.popup.reposition())}hasTrigger(e){return this.trigger.split(" ").includes(e)}async handleOpenChange(){var e,t;if(this.open){if(this.disabled)return;this.emit("sl-show"),"CloseWatcher"in window?(null==(e=this.closeWatcher)||e.destroy(),this.closeWatcher=new CloseWatcher,this.closeWatcher.onclose=()=>{this.hide()}):document.addEventListener("keydown",this.handleDocumentKeyDown),await zi(this.body),this.body.hidden=!1,this.popup.active=!0;const{keyframes:t,options:o}=co(this,"tooltip.show",{dir:this.localize.dir()});await Ti(this.popup.popup,t,o),this.popup.reposition(),this.emit("sl-after-show")}else{this.emit("sl-hide"),null==(t=this.closeWatcher)||t.destroy(),document.removeEventListener("keydown",this.handleDocumentKeyDown),await zi(this.body);const{keyframes:e,options:o}=co(this,"tooltip.hide",{dir:this.localize.dir()});await Ti(this.popup.popup,e,o),this.popup.active=!1,this.body.hidden=!0,this.emit("sl-after-hide")}}async handleOptionsChange(){this.hasUpdated&&(await this.updateComplete,this.popup.reposition())}handleDisabledChange(){this.disabled&&this.open&&this.hide()}async show(){if(!this.open)return this.open=!0,Oi(this,"sl-after-show")}async hide(){if(this.open)return this.open=!1,Oi(this,"sl-after-hide")}render(){return ie`
      <sl-popup
        part="base"
        exportparts="
          popup:base__popup,
          arrow:base__arrow
        "
        class=${Pi({tooltip:!0,"tooltip--open":this.open})}
        placement=${this.placement}
        distance=${this.distance}
        skidding=${this.skidding}
        strategy=${this.hoist?"fixed":"absolute"}
        flip
        shift
        arrow
        hover-bridge
      >
        ${""}
        <slot slot="anchor" aria-describedby="tooltip"></slot>

        ${""}
        <div part="body" id="tooltip" class="tooltip__body" role="tooltip" aria-live=${this.open?"polite":"off"}>
          <slot name="content">${this.content}</slot>
        </div>
      </sl-popup>
    `}};Vi.styles=[go,ho],Vi.dependencies={"sl-popup":Ai},oo([ye("slot:not([name])")],Vi.prototype,"defaultSlot",2),oo([ye(".tooltip__body")],Vi.prototype,"body",2),oo([ye("sl-popup")],Vi.prototype,"popup",2),oo([be()],Vi.prototype,"content",2),oo([be()],Vi.prototype,"placement",2),oo([be({type:Boolean,reflect:!0})],Vi.prototype,"disabled",2),oo([be({type:Number})],Vi.prototype,"distance",2),oo([be({type:Boolean,reflect:!0})],Vi.prototype,"open",2),oo([be({type:Number})],Vi.prototype,"skidding",2),oo([be()],Vi.prototype,"trigger",2),oo([be({type:Boolean})],Vi.prototype,"hoist",2),oo([qi("open",{waitUntilFirstUpdate:!0})],Vi.prototype,"handleOpenChange",1),oo([qi(["content","distance","hoist","placement","skidding"])],Vi.prototype,"handleOptionsChange",1),oo([qi("disabled")],Vi.prototype,"handleDisabledChange",1),lo("tooltip.show",{keyframes:[{opacity:0,scale:.8},{opacity:1,scale:1}],options:{duration:150,easing:"ease"}}),lo("tooltip.hide",{keyframes:[{opacity:1,scale:1},{opacity:0,scale:.8}],options:{duration:150,easing:"ease"}});Vi.define("sl-tooltip");var Ki=Object.defineProperty,Yi=Object.getOwnPropertyDescriptor,Zi=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?Yi(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&Ki(t,o,r),r};lo("tooltip.show",null),lo("tooltip.hide",null);let Qi=class extends lit_element_r{constructor(){super(...arguments),this.placement="bottom",this.disabled=!1}firstUpdated(){this.observer=new MutationObserver((e=>{for(const t of e)if("attributes"===t.type&&"data-current-placement"===t.attributeName){const e=t.target.getAttribute("data-current-placement");e?this.setAttribute("data-current-placement",e):this.removeAttribute("data-current-placement")}}));const e=this.shadowRoot?.querySelector("sl-tooltip")?.shadowRoot;this.observer.observe(e,{attributes:!0,attributeFilter:["data-current-placement"],subtree:!0})}disconnectedCallback(){this.observer?.disconnect()}render(){return ie`<sl-tooltip
			.placement=${this.placement}
			?disabled=${this.disabled}
			.distance=${this.distance??se}
			hoist
		>
			<slot></slot>
			<div slot="content">
				<slot name="content">${this.content}</slot>
			</div>
		</sl-tooltip>`}};Qi.styles=d`
		sl-tooltip {
			--max-width: 320px;
			--hide-delay: 0ms;
			--show-delay: 500ms;
		}

		sl-tooltip::part(base__popup) {
			pointer-events: none;
		}

		sl-tooltip::part(body) {
			border: 1px solid var(--gl-tooltip-border-color);
			box-shadow: 0 2px 8px var(--gl-tooltip-shadow);
		}

		sl-tooltip::part(base__arrow) {
			border: 1px solid var(--gl-tooltip-border-color);
			z-index: 1;
		}

		:host([data-current-placement^='top']) sl-tooltip::part(base__arrow) {
			border-top-width: 0;
			border-left-width: 0;
		}

		:host([data-current-placement^='bottom']) sl-tooltip::part(base__arrow) {
			border-bottom-width: 0;
			border-right-width: 0;
		}

		:host([data-current-placement^='left']) sl-tooltip::part(base__arrow) {
			border-bottom-width: 0;
			border-left-width: 0;
		}

		:host([data-current-placement^='right']) sl-tooltip::part(base__arrow) {
			border-top-width: 0;
			border-right-width: 0;
		}
	`,Zi([be()],Qi.prototype,"content",2),Zi([be({reflect:!0})],Qi.prototype,"placement",2),Zi([be({type:Boolean})],Qi.prototype,"disabled",2),Zi([be({type:Number})],Qi.prototype,"distance",2),Zi([be({type:Boolean})],Qi.prototype,"hoist",2),Qi=Zi([ue("gl-tooltip")],Qi);var Ji=Object.defineProperty,Xi=Object.getOwnPropertyDescriptor,en=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?Xi(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&Ji(t,o,r),r};let tn=class extends lit_element_r{constructor(){super(...arguments),this.disabled=!1,this.full=!1}get role(){return this.href?"link":"button"}updated(e){super.updated(e),e.has("disabled")&&this.setAttribute("aria-disabled",this.disabled.toString())}render(){return this.tooltip?ie`<gl-tooltip .content=${this.tooltip}>${this.renderControl()}</gl-tooltip>`:this.querySelectorAll('[slot="tooltip"]').length>0?ie`<gl-tooltip>
				${this.renderControl()}
				<slot name="tooltip" slot="content"></slot>
			</gl-tooltip>`:this.renderControl()}renderControl(){return null!=this.href?ie`<a
				class="control"
				tabindex="${!1===this.disabled?0:-1}"
				href=${this.href}
				@keypress=${e=>this.onLinkKeypress(e)}
				><slot name="prefix"></slot><slot class="label"></slot><slot name="suffix"></slot
			></a>`:ie`<button class="control" ?disabled=${this.disabled}>
			<slot name="prefix"></slot><slot class="label"></slot><slot name="suffix"></slot>
		</button>`}onLinkKeypress(e){" "===e.key&&this.control.click()}focus(e){this.control.focus(e)}blur(){this.control.blur()}click(){this.control.click()}};tn.shadowRootOptions={...lit_element_r.shadowRootOptions,delegatesFocus:!0},tn.styles=[kt,d`
			:host {
				--button-foreground: var(--color-button-foreground);
				--button-background: var(--color-button-background);
				--button-hover-background: var(--vscode-button-hoverBackground);
				--button-padding: 0.4rem;
				--button-gap: 0.6rem;
				--button-compact-padding: 0.4rem;
				--button-tight-padding: 0.4rem 0.8rem;
				--button-line-height: 1.35;
				--button-border: var(--vscode-button-border, transparent);

				display: inline-block;
				border: none;
				font-family: inherit;
				font-size: inherit;
				line-height: var(--button-line-height);
				text-align: center;
				text-decoration: none;
				user-select: none;
				background: var(--button-background);
				color: var(--button-foreground);
				cursor: pointer;
				border: 1px solid var(--button-border);
				border-radius: var(--gk-action-radius, 0.3rem);
			}

			.control {
				box-sizing: border-box;
				display: inline-flex;
				flex-direction: row;
				justify-content: center;
				align-items: center;
				gap: var(--button-gap);
				padding: var(--button-padding);
				line-height: var(--button-line-height);

				color: inherit;
				text-decoration: none;

				width: max-content;
				height: 100%;
				cursor: pointer;
			}

			button.control {
				appearance: none;
				background: transparent;
				border: none;
			}

			.control:focus {
				outline: none;
			}

			.label {
				display: inline-block;
			}

			:host(:hover) {
				background: var(--button-hover-background);
			}

			:host(:focus-within) {
				${xt}
			}

			:host([full]),
			:host([full]) .control {
				width: 100%;
			}

			:host([appearance='secondary']) {
				--button-background: var(--vscode-button-secondaryBackground);
				--button-foreground: var(--vscode-button-secondaryForeground);
				--button-hover-background: var(--vscode-button-secondaryHoverBackground);
			}

			:host([appearance='toolbar']) {
				--button-background: transparent;
				--button-foreground: var(--vscode-foreground);
				--button-hover-background: var(--vscode-toolbar-hoverBackground);
				--button-border: transparent;
			}

			:host([appearance='alert']) {
				--button-background: transparent;
				--button-border: var(--color-alert-infoBorder);
				--button-foreground: var(--color-button-foreground);
				--button-hover-background: var(--color-alert-infoBorder);
				--button-line-height: 1.64;
				width: max-content;
			}

			:host-context(.vscode-light):host([appearance='alert']:not(:hover)),
			:host-context(.vscode-high-contrast-light):host([appearance='alert']:not(:hover)) {
				--button-foreground: var(--color-foreground);
			}

			:host([appearance='toolbar'][href]) > a {
				display: flex;
				align-items: center;
			}

			:host([appearance='alert'][href]) > a {
				display: block;
				width: max-content;
			}

			:host([density='compact']) .control {
				padding: var(--button-compact-padding);
			}

			:host([density='tight']) .control {
				padding: var(--button-tight-padding);
			}

			:host([density='tight']) .control ::slotted(code-icon) {
				--code-icon-size: 11px;
				--code-icon-v-align: unset;
			}

			:host([disabled]) {
				opacity: 0.4;
				cursor: not-allowed;
				pointer-events: none;
			}

			gl-tooltip {
				height: 100%;
				display: inline-flex;
				align-items: center;
				justify-content: center;
			}
		`],en([ye(".control")],tn.prototype,"control",2),en([be({reflect:!0})],tn.prototype,"appearance",2),en([be({type:Boolean,reflect:!0})],tn.prototype,"disabled",2),en([be({reflect:!0})],tn.prototype,"density",2),en([be({type:Boolean,reflect:!0})],tn.prototype,"full",2),en([be()],tn.prototype,"href",2),en([be({reflect:!0})],tn.prototype,"role",1),en([be()],tn.prototype,"tooltip",2),tn=en([ue("gl-button")],tn);var on=Object.defineProperty,nn=Object.getOwnPropertyDescriptor,sn=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?nn(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&on(t,o,r),r};let rn=class extends lit_element_r{constructor(){super(...arguments),this.editor=!1}render(){return ie`<div class="group"><slot></slot></div>`}};rn.styles=[kt,d`
			:host {
				display: block;
				max-width: 30rem;
				margin-right: auto;
				margin-left: auto;
				text-align: left;
				transition: max-width 0.2s ease-out;
			}

			@media (min-width: 640px) {
				:host(:not([editor])) {
					max-width: 100%;
				}
			}

			.group {
				display: inline-flex;
				gap: 0.4rem;
				width: 100%;
				max-width: 30rem;
			}
		`],sn([be({type:Boolean})],rn.prototype,"editor",2),rn=sn([ue("button-container")],rn);var an=Object.defineProperty,ln=Object.getOwnPropertyDescriptor,cn=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?ln(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&an(t,o,r),r};const dn=Object.freeze({add:"\\ea60",plus:"\\ea60","gist-new":"\\ea60","repo-create":"\\ea60",lightbulb:"\\ea61","light-bulb":"\\ea61",repo:"\\ea62","repo-delete":"\\ea62","gist-fork":"\\ea63","repo-forked":"\\ea63","git-pull-request":"\\ea64","git-pull-request-abandoned":"\\ea64","record-keys":"\\ea65",keyboard:"\\ea65",tag:"\\ea66","tag-add":"\\ea66","tag-remove":"\\ea66",person:"\\ea67","person-follow":"\\ea67","person-outline":"\\ea67","person-filled":"\\ea67","git-branch":"\\ea68","git-branch-create":"\\ea68","git-branch-delete":"\\ea68","source-control":"\\ea68",mirror:"\\ea69","mirror-public":"\\ea69",star:"\\ea6a","star-add":"\\ea6a","star-delete":"\\ea6a","star-empty":"\\ea6a",comment:"\\ea6b","comment-add":"\\ea6b",alert:"\\ea6c",warning:"\\ea6c",search:"\\ea6d","search-save":"\\ea6d","log-out":"\\ea6e","sign-out":"\\ea6e","log-in":"\\ea6f","sign-in":"\\ea6f",eye:"\\ea70","eye-unwatch":"\\ea70","eye-watch":"\\ea70","circle-filled":"\\ea71","primitive-dot":"\\ea71","close-dirty":"\\ea71","debug-breakpoint":"\\ea71","debug-breakpoint-disabled":"\\ea71","debug-hint":"\\ea71","primitive-square":"\\ea72",edit:"\\ea73",pencil:"\\ea73",info:"\\ea74","issue-opened":"\\ea74","gist-private":"\\ea75","git-fork-private":"\\ea75",lock:"\\ea75","mirror-private":"\\ea75",close:"\\ea76","remove-close":"\\ea76",x:"\\ea76","repo-sync":"\\ea77",sync:"\\ea77",clone:"\\ea78","desktop-download":"\\ea78",beaker:"\\ea79",microscope:"\\ea79",vm:"\\ea7a","device-desktop":"\\ea7a",file:"\\ea7b","file-text":"\\ea7b",more:"\\ea7c",ellipsis:"\\ea7c","kebab-horizontal":"\\ea7c","mail-reply":"\\ea7d",reply:"\\ea7d",organization:"\\ea7e","organization-filled":"\\ea7e","organization-outline":"\\ea7e","new-file":"\\ea7f","file-add":"\\ea7f","new-folder":"\\ea80","file-directory-create":"\\ea80",trash:"\\ea81",trashcan:"\\ea81",history:"\\ea82",clock:"\\ea82",folder:"\\ea83","file-directory":"\\ea83","symbol-folder":"\\ea83","logo-github":"\\ea84","mark-github":"\\ea84",github:"\\ea84",terminal:"\\ea85",console:"\\ea85",repl:"\\ea85",zap:"\\ea86","symbol-event":"\\ea86",error:"\\ea87",stop:"\\ea87",variable:"\\ea88","symbol-variable":"\\ea88",array:"\\ea8a","symbol-array":"\\ea8a","symbol-module":"\\ea8b","symbol-package":"\\ea8b","symbol-namespace":"\\ea8b","symbol-object":"\\ea8b","symbol-method":"\\ea8c","symbol-function":"\\ea8c","symbol-constructor":"\\ea8c","symbol-boolean":"\\ea8f","symbol-null":"\\ea8f","symbol-numeric":"\\ea90","symbol-number":"\\ea90","symbol-structure":"\\ea91","symbol-struct":"\\ea91","symbol-parameter":"\\ea92","symbol-type-parameter":"\\ea92","symbol-key":"\\ea93","symbol-text":"\\ea93","symbol-reference":"\\ea94","go-to-file":"\\ea94","symbol-enum":"\\ea95","symbol-value":"\\ea95","symbol-ruler":"\\ea96","symbol-unit":"\\ea96","activate-breakpoints":"\\ea97",archive:"\\ea98","arrow-both":"\\ea99","arrow-down":"\\ea9a","arrow-left":"\\ea9b","arrow-right":"\\ea9c","arrow-small-down":"\\ea9d","arrow-small-left":"\\ea9e","arrow-small-right":"\\ea9f","arrow-small-up":"\\eaa0","arrow-up":"\\eaa1",bell:"\\eaa2",bold:"\\eaa3",book:"\\eaa4",bookmark:"\\eaa5","debug-breakpoint-conditional-unverified":"\\eaa6","debug-breakpoint-conditional":"\\eaa7","debug-breakpoint-conditional-disabled":"\\eaa7","debug-breakpoint-data-unverified":"\\eaa8","debug-breakpoint-data":"\\eaa9","debug-breakpoint-data-disabled":"\\eaa9","debug-breakpoint-log-unverified":"\\eaaa","debug-breakpoint-log":"\\eaab","debug-breakpoint-log-disabled":"\\eaab",briefcase:"\\eaac",broadcast:"\\eaad",browser:"\\eaae",bug:"\\eaaf",calendar:"\\eab0","case-sensitive":"\\eab1",check:"\\eab2",checklist:"\\eab3","chevron-down":"\\eab4","chevron-left":"\\eab5","chevron-right":"\\eab6","chevron-up":"\\eab7","chrome-close":"\\eab8","chrome-maximize":"\\eab9","chrome-minimize":"\\eaba","chrome-restore":"\\eabb","circle-outline":"\\eabc","debug-breakpoint-unverified":"\\eabc","circle-slash":"\\eabd","circuit-board":"\\eabe","clear-all":"\\eabf",clippy:"\\eac0","close-all":"\\eac1","cloud-download":"\\eac2","cloud-upload":"\\eac3",code:"\\eac4","collapse-all":"\\eac5","color-mode":"\\eac6","comment-discussion":"\\eac7","credit-card":"\\eac9",dash:"\\eacc",dashboard:"\\eacd",database:"\\eace","debug-continue":"\\eacf","debug-disconnect":"\\ead0","debug-pause":"\\ead1","debug-restart":"\\ead2","debug-start":"\\ead3","debug-step-into":"\\ead4","debug-step-out":"\\ead5","debug-step-over":"\\ead6","debug-stop":"\\ead7",debug:"\\ead8","device-camera-video":"\\ead9","device-camera":"\\eada","device-mobile":"\\eadb","diff-added":"\\eadc","diff-ignored":"\\eadd","diff-modified":"\\eade","diff-removed":"\\eadf","diff-renamed":"\\eae0",diff:"\\eae1",discard:"\\eae2","editor-layout":"\\eae3","empty-window":"\\eae4",exclude:"\\eae5",extensions:"\\eae6","eye-closed":"\\eae7","file-binary":"\\eae8","file-code":"\\eae9","file-media":"\\eaea","file-pdf":"\\eaeb","file-submodule":"\\eaec","file-symlink-directory":"\\eaed","file-symlink-file":"\\eaee","file-zip":"\\eaef",files:"\\eaf0",filter:"\\eaf1",flame:"\\eaf2","fold-down":"\\eaf3","fold-up":"\\eaf4",fold:"\\eaf5","folder-active":"\\eaf6","folder-opened":"\\eaf7",gear:"\\eaf8",gift:"\\eaf9","gist-secret":"\\eafa",gist:"\\eafb","git-commit":"\\eafc","git-compare":"\\eafd","compare-changes":"\\eafd","git-merge":"\\eafe","github-action":"\\eaff","github-alt":"\\eb00",globe:"\\eb01",grabber:"\\eb02",graph:"\\eb03",gripper:"\\eb04",heart:"\\eb05",home:"\\eb06","horizontal-rule":"\\eb07",hubot:"\\eb08",inbox:"\\eb09","issue-reopened":"\\eb0b",issues:"\\eb0c",italic:"\\eb0d",jersey:"\\eb0e",json:"\\eb0f","kebab-vertical":"\\eb10",key:"\\eb11",law:"\\eb12","lightbulb-autofix":"\\eb13","link-external":"\\eb14",link:"\\eb15","list-ordered":"\\eb16","list-unordered":"\\eb17","live-share":"\\eb18",loading:"\\eb19",location:"\\eb1a","mail-read":"\\eb1b",mail:"\\eb1c",markdown:"\\eb1d",megaphone:"\\eb1e",mention:"\\eb1f",milestone:"\\eb20","mortar-board":"\\eb21",move:"\\eb22","multiple-windows":"\\eb23",mute:"\\eb24","no-newline":"\\eb25",note:"\\eb26",octoface:"\\eb27","open-preview":"\\eb28",package:"\\eb29",paintcan:"\\eb2a",pin:"\\eb2b",play:"\\eb2c",run:"\\eb2c",plug:"\\eb2d","preserve-case":"\\eb2e",preview:"\\eb2f",project:"\\eb30",pulse:"\\eb31",question:"\\eb32",quote:"\\eb33","radio-tower":"\\eb34",reactions:"\\eb35",references:"\\eb36",refresh:"\\eb37",regex:"\\eb38","remote-explorer":"\\eb39",remote:"\\eb3a",remove:"\\eb3b","replace-all":"\\eb3c",replace:"\\eb3d","repo-clone":"\\eb3e","repo-force-push":"\\eb3f","repo-pull":"\\eb40","repo-push":"\\eb41",report:"\\eb42","request-changes":"\\eb43",rocket:"\\eb44","root-folder-opened":"\\eb45","root-folder":"\\eb46",rss:"\\eb47",ruby:"\\eb48","save-all":"\\eb49","save-as":"\\eb4a",save:"\\eb4b","screen-full":"\\eb4c","screen-normal":"\\eb4d","search-stop":"\\eb4e",server:"\\eb50","settings-gear":"\\eb51",settings:"\\eb52",shield:"\\eb53",smiley:"\\eb54","sort-precedence":"\\eb55","split-horizontal":"\\eb56","split-vertical":"\\eb57",squirrel:"\\eb58","star-full":"\\eb59","star-half":"\\eb5a","symbol-class":"\\eb5b","symbol-color":"\\eb5c","symbol-constant":"\\eb5d","symbol-enum-member":"\\eb5e","symbol-field":"\\eb5f","symbol-file":"\\eb60","symbol-interface":"\\eb61","symbol-keyword":"\\eb62","symbol-misc":"\\eb63","symbol-operator":"\\eb64","symbol-property":"\\eb65",wrench:"\\eb65","wrench-subaction":"\\eb65","symbol-snippet":"\\eb66",tasklist:"\\eb67",telescope:"\\eb68","text-size":"\\eb69","three-bars":"\\eb6a",thumbsdown:"\\eb6b",thumbsup:"\\eb6c",tools:"\\eb6d","triangle-down":"\\eb6e","triangle-left":"\\eb6f","triangle-right":"\\eb70","triangle-up":"\\eb71",twitter:"\\eb72",unfold:"\\eb73",unlock:"\\eb74",unmute:"\\eb75",unverified:"\\eb76",verified:"\\eb77",versions:"\\eb78","vm-active":"\\eb79","vm-outline":"\\eb7a","vm-running":"\\eb7b",watch:"\\eb7c",whitespace:"\\eb7d","whole-word":"\\eb7e",window:"\\eb7f","word-wrap":"\\eb80","zoom-in":"\\eb81","zoom-out":"\\eb82","list-filter":"\\eb83","list-flat":"\\eb84","list-selection":"\\eb85",selection:"\\eb85","list-tree":"\\eb86","debug-breakpoint-function-unverified":"\\eb87","debug-breakpoint-function":"\\eb88","debug-breakpoint-function-disabled":"\\eb88","debug-stackframe-active":"\\eb89","debug-stackframe-dot":"\\eb8a","debug-stackframe":"\\eb8b","debug-stackframe-focused":"\\eb8b","debug-breakpoint-unsupported":"\\eb8c","symbol-string":"\\eb8d","debug-reverse-continue":"\\eb8e","debug-step-back":"\\eb8f","debug-restart-frame":"\\eb90","debug-alt":"\\eb91","call-incoming":"\\eb92","call-outgoing":"\\eb93",menu:"\\eb94","expand-all":"\\eb95",feedback:"\\eb96","group-by-ref-type":"\\eb97","ungroup-by-ref-type":"\\eb98",account:"\\eb99","bell-dot":"\\eb9a","debug-console":"\\eb9b",library:"\\eb9c",output:"\\eb9d","run-all":"\\eb9e","sync-ignored":"\\eb9f",pinned:"\\eba0","github-inverted":"\\eba1","server-process":"\\eba2","server-environment":"\\eba3",pass:"\\eba4","issue-closed":"\\eba4","stop-circle":"\\eba5","play-circle":"\\eba6",record:"\\eba7","debug-alt-small":"\\eba8","vm-connect":"\\eba9",cloud:"\\ebaa",merge:"\\ebab",export:"\\ebac","graph-left":"\\ebad",magnet:"\\ebae",notebook:"\\ebaf",redo:"\\ebb0","check-all":"\\ebb1","pinned-dirty":"\\ebb2","pass-filled":"\\ebb3","circle-large-filled":"\\ebb4","circle-large-outline":"\\ebb5",combine:"\\ebb6",gather:"\\ebb6",table:"\\ebb7","variable-group":"\\ebb8","type-hierarchy":"\\ebb9","type-hierarchy-sub":"\\ebba","type-hierarchy-super":"\\ebbb","git-pull-request-create":"\\ebbc","run-above":"\\ebbd","run-below":"\\ebbe","notebook-template":"\\ebbf","debug-rerun":"\\ebc0","workspace-trusted":"\\ebc1","workspace-untrusted":"\\ebc2","workspace-unknown":"\\ebc3","terminal-cmd":"\\ebc4","terminal-debian":"\\ebc5","terminal-linux":"\\ebc6","terminal-powershell":"\\ebc7","terminal-tmux":"\\ebc8","terminal-ubuntu":"\\ebc9","terminal-bash":"\\ebca","arrow-swap":"\\ebcb",copy:"\\ebcc","person-add":"\\ebcd","filter-filled":"\\ebce",wand:"\\ebcf","debug-line-by-line":"\\ebd0",inspect:"\\ebd1",layers:"\\ebd2","layers-dot":"\\ebd3","layers-active":"\\ebd4",compass:"\\ebd5","compass-dot":"\\ebd6","compass-active":"\\ebd7",azure:"\\ebd8","issue-draft":"\\ebd9","git-pull-request-closed":"\\ebda","git-pull-request-draft":"\\ebdb","debug-all":"\\ebdc","debug-coverage":"\\ebdd","run-errors":"\\ebde","folder-library":"\\ebdf","debug-continue-small":"\\ebe0","beaker-stop":"\\ebe1","graph-line":"\\ebe2","graph-scatter":"\\ebe3","pie-chart":"\\ebe4",bracket:"\\eb0f","bracket-dot":"\\ebe5","bracket-error":"\\ebe6","lock-small":"\\ebe7","azure-devops":"\\ebe8","verified-filled":"\\ebe9",newline:"\\ebea",layout:"\\ebeb","layout-activitybar-left":"\\ebec","layout-activitybar-right":"\\ebed","layout-panel-left":"\\ebee","layout-panel-center":"\\ebef","layout-panel-justify":"\\ebf0","layout-panel-right":"\\ebf1","layout-panel":"\\ebf2","layout-sidebar-left":"\\ebf3","layout-sidebar-right":"\\ebf4","layout-statusbar":"\\ebf5","layout-menubar":"\\ebf6","layout-centered":"\\ebf7",target:"\\ebf8",indent:"\\ebf9","record-small":"\\ebfa","error-small":"\\ebfb","terminal-decoration-error":"\\ebfb","arrow-circle-down":"\\ebfc","arrow-circle-left":"\\ebfd","arrow-circle-right":"\\ebfe","arrow-circle-up":"\\ebff","layout-sidebar-right-off":"\\ec00","layout-panel-off":"\\ec01","layout-sidebar-left-off":"\\ec02",blank:"\\ec03","heart-filled":"\\ec04",map:"\\ec05","map-filled":"\\ec06","circle-small":"\\ec07","bell-slash":"\\ec08","bell-slash-dot":"\\ec09","comment-unresolved":"\\ec0a","git-pull-request-go-to-changes":"\\ec0b","git-pull-request-new-changes":"\\ec0c","search-fuzzy":"\\ec0d","comment-draft":"\\ec0e",send:"\\ec0f",sparkle:"\\ec10",insert:"\\ec11","gl-commit-horizontal":"\\f101","gl-graph":"\\f102","gl-next-commit":"\\f103","gl-prev-commit-menu":"\\f104","gl-prev-commit":"\\f105","gl-compare-ref-working":"\\f106","gl-branches-view":"\\f107","gl-commit-view":"\\f108","gl-commits-view":"\\f109","gl-compare-view":"\\f10a","gl-contributors-view":"\\f10b","gl-history-view":"\\f10c","gl-remotes-view":"\\f10d","gl-repositories-view":"\\f10e","gl-search-view":"\\f10f","gl-stashes-view":"\\f110","gl-tags-view":"\\f111","gl-worktrees-view":"\\f112","gl-gitlens":"\\f113","gl-stash-pop":"\\f114","gl-stash-save":"\\f115","gl-unplug":"\\f116","gl-open-revision":"\\f117","gl-switch":"\\f118","gl-expand":"\\f119","gl-list-auto":"\\f11a","gl-repo-force-push":"\\f11b","gl-pinned-filled":"\\f11c","gl-clock":"\\f11d","gl-provider-azdo":"\\f11e","gl-provider-bitbucket":"\\f11f","gl-provider-gerrit":"\\f120","gl-provider-gitea":"\\f121","gl-provider-github":"\\f122","gl-provider-gitlab":"\\f123","gl-gitlens-inspect":"\\f124","gl-workspaces-view":"\\f125","gl-cloud-patch":"\\f128","gl-cloud-patch-share":"\\f129","gl-inspect":"\\f12a","gl-repository-filled":"\\f12b","gl-code-suggestion":"\\f12d","gl-diff-multiple":"\\f12e","gl-diff-single":"\\f12f","gl-repo-fetch":"\\f130","gl-repo-pull":"\\f131","gl-repo-push":"\\f132","gl-provider-jira":"\\f133"});let pn=class extends lit_element_r{constructor(){super(...arguments),this.icon="",this.modifier="",this.size=void 0}updated(e){e.has("size")&&this.style.setProperty("--code-icon-size",`${this.size}px`),super.update(e)}};pn.styles=d`
		:host {
			--code-icon-size: 16px;
			--code-icon-v-align: text-bottom;

			font: normal normal normal var(--code-icon-size, 16px) / 1 codicon;
			display: inline-block;
			text-decoration: none;
			text-rendering: auto;
			text-align: center;
			-webkit-font-smoothing: antialiased;
			-moz-osx-font-smoothing: grayscale;
			user-select: none;
			-webkit-user-select: none;
			-ms-user-select: none;
			color: inherit;
			vertical-align: var(--code-icon-v-align);
			letter-spacing: normal;
		}

		:host([icon^='gl-']) {
			font-family: 'glicons';
		}

		${c(Object.entries(dn).map((([e,t])=>`\n\t\t\t\t\t\t:host([icon='${e}'])::before {\n\t\t\t\t\t\t\tcontent: '${t}';\n\t\t\t\t\t\t}\n\t\t\t\t\t`)).join(""))}

		:host([icon='gl-pinned-filled']):before {
			/* TODO: see relative positioning needed in every use-case */
			position: relative;
			left: 1px;
		}

		@keyframes codicon-spin {
			100% {
				transform: rotate(360deg);
			}
		}

		:host([modifier='spin']) {
			/* Use steps to throttle FPS to reduce CPU usage */
			animation: codicon-spin 1.5s steps(30) infinite;
		}
		:host([icon='loading'][modifier='spin']) {
			/* Use steps to throttle FPS to reduce CPU usage */
			animation: codicon-spin 1.5s steps(30) infinite;

			/* custom speed & easing for loading icon */
			animation-duration: 1s !important;
			animation-timing-function: cubic-bezier(0.53, 0.21, 0.29, 0.67) !important;
		}

		:host([flip='inline']) {
			transform: rotateY(180deg);
		}

		:host([flip='block']) {
			transform: rotateX(180deg);
		}

		:host([rotate='45']) {
			transform: rotateZ(45deg);
		}
	`,cn([be({reflect:!0})],pn.prototype,"icon",2),cn([be({reflect:!0})],pn.prototype,"modifier",2),cn([be({type:Number})],pn.prototype,"size",2),cn([be({reflect:!0})],pn.prototype,"flip",2),cn([be({reflect:!0})],pn.prototype,"rotate",2),pn=cn([ue("code-icon")],pn);var hn=Object.defineProperty,un=Object.getOwnPropertyDescriptor,gn=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?un(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&hn(t,o,r),r};let fn=class extends lit_element_r{constructor(){super(...arguments),this.type="info"}get hasPromo(){return null!=this.promo}render(){if(!this.promo)return;const e=this.renderPromo(this.promo);return e?"link"===this.type?ie`<a
				class="link"
				href="${this.promo.command??"command:gitlens.plus.upgrade"}"
				title="${this.promo.commandTooltip}"
				>${e}</a
			>`:ie`<p class="promo">${e}</p>`:void 0}renderPromo(e){switch(e.key){case"pro50":return ie`<span class="content${"link"===this.type?se:" muted"}"
					>Limited-Time Sale: <b>Save 33% or more on your 1st seat of Pro.</b></span
				>`;case"launchpad":case"launchpad-extended":return ie`<span class="content${"link"===this.type?se:" muted"}"
					>Launchpad Sale: <b>Save 75% or more on GitLens Pro.</b></span
				>`}}};fn.styles=[d`
			:host {
				display: block;
			}

			.promo {
				margin: 0;
				margin-top: 0.8rem;
				text-align: center;
			}

			.header {
				margin-right: 0.4rem;
			}

			.content {
				font-size: smaller;
			}

			.muted {
				opacity: 0.7;
			}

			.link {
				display: block;
				color: inherit;
				max-width: 100%;
				text-align: center;
				text-decoration: none;
				overflow: hidden;
				text-overflow: ellipsis;
				white-space: nowrap;
			}

			.link:hover {
				color: inherit;
				text-decoration: underline;
			}
		`],gn([be({type:Object})],fn.prototype,"promo",2),gn([be({reflect:!0,type:String})],fn.prototype,"type",2),gn([be({reflect:!0,type:Boolean,attribute:"has-promo"})],fn.prototype,"hasPromo",1),fn=gn([ue("gl-promo")],fn);var bn=Object.defineProperty,mn=Object.getOwnPropertyDescriptor,vn=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?mn(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&bn(t,o,r),r};let yn=class extends lit_element_r{get daysRemaining(){return null==this._state.subscription?0:Mt(this._state.subscription,"days")??0}get hasAccount(){return null!=(e=this.state)&&e!==Dt.Community&&e!==Dt.ProPreviewExpired&&e!==Dt.ProPreview;var e}get isReactivatedTrial(){return this.state===Dt.ProTrial&&(this._state.subscription?.plan.effective.trialReactivationCount??0)>0}get planId(){return this._state.subscription?.plan.actual.id??zt.Pro}get planName(){return function(e,t){switch(e){case Dt.Community:case Dt.ProPreviewExpired:return Ut(zt.Community);case Dt.ProPreview:return`${Ut(zt.Pro)} (Preview)`;case Dt.ProTrial:return`${Ut(zt.Pro)} (Trial)`;case Dt.ProTrialExpired:case Dt.ProTrialReactivationEligible:return Ut(zt.CommunityWithAccount);case Dt.VerificationRequired:return`${Ut(t??zt.Pro)} (Unverified)`;default:return Ut(t??zt.Pro)}}(this.state,this.planId)}get state(){return this._state.subscription?.state}render(){return ie`<gl-accordion id="accordion">
			<div class="header" slot="header">
				${this.hasAccount&&this._state.avatar?ie`<img class="header__media" src=${this._state.avatar} />`:ie`<code-icon class="header__media" icon="gl-gitlens" size="30"></code-icon>`}
				<span class="header__title">${this.planName}</span>
				${Rt(this.state===Dt.ProTrialReactivationEligible,(()=>ie`
						<gl-button
							appearance="secondary"
							tight
							href="command:gitlens.plus.reactivateProTrial"
							tooltip="Reactivate your Pro trial for another ${Ze("day",7)}"
							>Reactivate Pro Trial</gl-button
						>
					`))}
				${Rt(this.hasAccount,(()=>ie`
						<span class="header__actions">
							<gl-button
								appearance="toolbar"
								href="command:gitlens.views.home.account.resync"
								tooltip="Synchronize Account Status"
								aria-label="Synchronize Account Status"
								><code-icon icon="sync"></code-icon
							></gl-button>
							<gl-button
								appearance="toolbar"
								href="command:gitlens.plus.logout"
								tooltip="Sign Out"
								aria-label="Sign Out"
								><code-icon icon="sign-out"></code-icon
							></gl-button>
						</span>
					`))}
			</div>
			${this.renderOrganization()}${this.renderAccountState()}
			<slot></slot>
		</gl-accordion>`}renderOrganization(){const e=this._state.subscription?.activeOrganization?.name??"";return this.hasAccount&&e?ie`
			<div class="org">
				<div class="org__media">
					<code-icon icon="organization" size="22"></code-icon>
				</div>
				<div class="org__details">
					<p class="org__title">${e}</p>
				</div>
				${Rt(this._state.organizationsCount>1,(()=>ie`<div class="org__signout">
							<gl-button
								appearance="toolbar"
								href="command:gitlens.gk.switchOrganization"
								aria-label="Switch Active Organization"
								><span class="org__badge">+${this._state.organizationsCount-1}</span
								><code-icon icon="arrow-swap"></code-icon
								><span slot="tooltip"
									>Switch Active Organization
									<hr />
									You are in
									${Ze("organization",this._state.organizationsCount-1,{infix:" other "})}</span
								></gl-button
							>
						</div>`))}
			</div>
		`:se}renderAccountState(){const e=Ft(this.state);switch(this.state){case Dt.Paid:return ie`
					<div class="account">
						<button-container>
							<gl-button appearance="secondary" full href="command:gitlens.plus.manage"
								>Manage Account</gl-button
							>
							<gl-button
								appearance="secondary"
								full
								href="command:gitlens.plus.cloudIntegrations.manage?%7B%22source%22%3A%22account%22%7D"
								>Integrations</gl-button
							>
						</button-container>
						<p>
							Your ${Ut(this.planId)} plan provides full access to all Pro features
							and the <a href="${Ve.platform}">GitKraken DevEx platform</a>, unleashing powerful Git
							visualization &amp; productivity capabilities everywhere you work: IDE, desktop, browser,
							and terminal.
						</p>
					</div>
				`;case Dt.VerificationRequired:return ie`
					<div class="account">
						<p>You must verify your email before you can access Pro features.</p>
						<button-container>
							<gl-button full href="command:gitlens.plus.resendVerification">Resend Email</gl-button>
							<gl-button appearance="secondary" href="command:gitlens.plus.validate"
								><code-icon size="20" icon="refresh"></code-icon>
							</gl-button>
						</button-container>
					</div>
				`;case Dt.ProTrial:{const t=this.daysRemaining;return ie`
					<div class="account">
						${this.isReactivatedTrial?ie`<p>
									<code-icon icon="megaphone"></code-icon>
									See
									<a href="${Ve.releaseNotes}">what's new</a>
									in GitLens.
							  </p>`:se}
						<p>
							You have
							<strong>${t<1?"<1 day":Ze("day",t,{infix:" more "})} left</strong>
							in your Pro trial. Once your trial ends, you will only be able to use Pro features on
							publicly-hosted repos.
						</p>
						<button-container>
							<gl-button full href="command:gitlens.plus.upgrade">Upgrade to Pro</gl-button>
						</button-container>
						${this.renderPromo(e)} ${this.renderIncludesDevEx()}
					</div>
				`}case Dt.ProTrialExpired:return ie`
					<div class="account">
						<p>Your Pro trial has ended. You can now only use Pro features on publicly-hosted repos.</p>
						<button-container>
							<gl-button full href="command:gitlens.plus.upgrade">Upgrade to Pro</gl-button>
						</button-container>
						${this.renderPromo(e)} ${this.renderIncludesDevEx()}
					</div>
				`;case Dt.ProTrialReactivationEligible:return ie`
					<div class="account">
						<p>
							Reactivate your Pro trial and experience all the new Pro features — free for another
							${Ze("day",7)}!
						</p>
						<button-container>
							<gl-button
								full
								href="command:gitlens.plus.reactivateProTrial"
								tooltip="Reactivate your Pro trial for another ${Ze("day",7)}"
								>Reactivate Pro Trial</gl-button
							>
						</button-container>
						${this.renderIncludesDevEx()}
					</div>
				`;default:return ie`
					<div class="account">
						<p>
							Sign up for access to Pro features and the
							<a href="${Ve.platform}">GitKraken DevEx platform</a>, or
							<a href="command:gitlens.plus.login">sign in</a>.
						</p>
						<button-container>
							<gl-button full href="command:gitlens.plus.signUp">Sign Up</gl-button>
						</button-container>
						<p>Signing up starts your free ${7}-day Pro trial.</p>
						${this.renderIncludesDevEx()}
					</div>
				`}}renderIncludesDevEx(){return ie`
			<p>
				Includes access to the <a href="${Ve.platform}">GitKraken DevEx platform</a>, unleashing powerful Git
				visualization &amp; productivity capabilities everywhere you work: IDE, desktop, browser, and terminal.
			</p>
		`}renderPromo(e){return ie`<gl-promo .promo=${e}></gl-promo>`}focus(){this.accordionEl.focus()}show(){this.accordionEl.open=!0,this.accordionEl.focus()}};yn.shadowRootOptions={...lit_element_r.shadowRootOptions,delegatesFocus:!0},yn.styles=[kt,$t,d`
			:host {
				display: block;
				margin-bottom: 1.3rem;
			}

			:host > * {
				margin-bottom: 0;
			}

			button-container {
				margin-bottom: 1.3rem;
			}

			.header {
				display: flex;
				align-items: center;
				gap: 0.6rem;
			}

			.header__media {
				flex: none;
			}

			.header__actions {
				flex: none;
				display: flex;
				gap: 0.2rem;
				flex-direction: row;
				align-items: center;
				justify-content: center;
			}

			img.header__media {
				width: 3rem;
				aspect-ratio: 1 / 1;
				border-radius: 50%;
			}

			.header__title {
				flex: 1;
				font-size: 1.5rem;
				font-weight: 600;
				margin: 0;
			}

			.org {
				position: relative;
				display: flex;
				flex-direction: row;
				gap: 0 0.8rem;
				align-items: center;
				margin-bottom: 1.3rem;
			}

			.org__media {
				flex: none;
				width: 3.4rem;
				display: flex;
				align-items: center;
				justify-content: center;
				color: var(--color-foreground--65);
			}

			.org__image {
				width: 100%;
				aspect-ratio: 1 / 1;
				border-radius: 50%;
			}

			.org__details {
				flex: 1;
				display: flex;
				flex-direction: column;
				justify-content: center;
			}

			.org__title {
				font-size: 1.3rem;
				font-weight: 600;
				margin: 0;
			}

			.org__access {
				position: relative;
				margin: 0;
				color: var(--color-foreground--65);
			}

			.org__signout {
				flex: none;
				display: flex;
				gap: 0.2rem;
				flex-direction: row;
				align-items: center;
				justify-content: center;
			}

			.org__badge {
				display: inline-flex;
				align-items: center;
				justify-content: center;
				width: 2.4rem;
				height: 2.4rem;
				line-height: 2.4rem;
				font-size: 1rem;
				font-weight: 600;
				color: var(--color-foreground--65);
				background-color: var(--vscode-toolbar-hoverBackground);
				border-radius: 50%;
				margin-right: 0.6rem;
			}

			.account > :first-child {
				margin-block-start: 0;
			}
			.account > :last-child {
				margin-block-end: 0;
			}

			hr {
				border: none;
				border-top: 1px solid var(--color-foreground--25);
			}
		`],vn([ye("#accordion")],yn.prototype,"accordionEl",2),vn([Le({context:Lt,subscribe:!0}),me()],yn.prototype,"_state",2),yn=vn([ue("gl-home-account-content")],yn);var _n=Object.defineProperty,wn=Object.getOwnPropertyDescriptor,xn=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?wn(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&_n(t,o,r),r};let kn=class extends GlElement{constructor(){super(...arguments),this.badgeSource={source:"home",detail:"badge"}}get orgAllowsDrafts(){return this._state.orgSettings.drafts}get blockRepoFeatures(){if(!this._state)return!0;const{repositories:{openCount:e,hasUnsafe:t,trusted:o}}=this._state;return!o||0===e||t}onRepoFeatureClicked(e){return!this.blockRepoFeatures||(e.preventDefault(),e.stopPropagation(),!1)}render(){return ie`
			${Rt(this.blockRepoFeatures,(()=>ie`
					<p>
						<code-icon icon="question"></code-icon> Features which need a repository are currently
						unavailable
					</p>
				`))}
			<nav class="nav-list">
				<h2 class="nav-list__title t-eyebrow sticky">Setup</h2>
				<div class="nav-list__item">
					<a class="nav-list__link" href="command:gitlens.showSettingsPage" aria-label="Open GitLens Settings"
						><code-icon class="nav-list__icon" icon="gear"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Open GitLens Settings">
							<span>Open GitLens Settings</span></gl-tooltip
						>
					</a>
				</div>
				${Rt(!this._state.hasAnyIntegrationConnected,(()=>ie`
						<div class="nav-list__item" data-integrations="none">
							<a
								class="nav-list__link"
								href="command:gitlens.plus.cloudIntegrations.connect?%7B%22source%22%3A%22home%22%7D"
								aria-label="Connect an Integration on GitKraken.dev"
								><code-icon class="nav-list__icon" icon="gl-unplug"></code-icon
								><gl-tooltip
									hoist
									class="nav-list__label"
									content="Connect an Integration on GitKraken.dev"
									><span>Connect an Integration</span></gl-tooltip
								>
							</a>
						</div>
					`),(()=>ie`
						<div class="nav-list__item" data-integrations="connected">
							<a
								class="nav-list__link"
								href="command:gitlens.plus.cloudIntegrations.manage?%7B%22source%22%3A%22home%22%7D"
								aria-label="Manage Integrations on GitKraken.dev"
								><code-icon class="nav-list__icon" icon="settings"></code-icon
								><gl-tooltip
									hoist
									class="nav-list__label"
									content="Manage Integrations on GitKraken.dev"
									><span>Manage Integrations</span></gl-tooltip
								>
							</a>
						</div>
					`))}
				<div class="nav-list__item">
					<a
						class="nav-list__link"
						href="command:gitlens.showSettingsPage!autolinks"
						aria-label="Open Autolinks Settings"
						><code-icon class="nav-list__icon" icon="link"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Open Autolinks Settings"
							><span>Configure Autolinks</span></gl-tooltip
						>
					</a>
				</div>
			</nav>
			<nav class="nav-list">
				<h2 class="nav-list__title t-eyebrow sticky">Popular</h2>
				<div class="nav-list__item">
					<a
						class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
						href="command:gitlens.showGraph"
						aria-label="Show Commit Graph"
						data-requires="repo"
						@click=${e=>this.onRepoFeatureClicked(e)}
					>
						<code-icon class="nav-list__icon" icon="gl-graph"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Show Commit Graph">
							<span>Commit Graph</span>
						</gl-tooltip>
					</a>
					<gl-feature-badge
						.source=${this.badgeSource}
						.subscription=${this._state.subscription}
						placement="left"
						class="nav-list__access"
					></gl-feature-badge>
				</div>
				<div class="nav-list__item">
					<a
						class="nav-list__link"
						href="command:gitlens.showLaunchpad?%7B%22source%22%3A%22home%22%7D"
						aria-label="Open Launchpad"
						><code-icon class="nav-list__icon" icon="rocket"></code-icon
						><gl-tooltip hoist class="nav-list__group" content="Open Launchpad"
							><span class="nav-list__label">Launchpad</span
							><span class="nav-list__desc">New!</span></gl-tooltip
						>
					</a>
					<gl-feature-badge
						.source=${this.badgeSource}
						.subscription=${this._state.subscription}
						placement="left"
						class="nav-list__access"
						preview
					></gl-feature-badge>
				</div>
				<div class="nav-list__item">
					<a
						class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
						href="command:gitlens.showCommitsView"
						aria-label="Show Commits view"
						data-requires="repo"
						><code-icon class="nav-list__icon" icon="gl-commits-view"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Show Commits view">
							<span>Commits</span></gl-tooltip
						>
					</a>
				</div>
				<div class="nav-list__item">
					<a
						class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
						href="command:gitlens.showCommitDetailsView"
						aria-label="Show Inspect view"
						data-requires="repo"
						><code-icon class="nav-list__icon" icon="gl-commit-view"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Show Inspect view">
							<span>Inspect</span></gl-tooltip
						>
					</a>
				</div>
				${Rt(this.orgAllowsDrafts,(()=>ie`
						<div class="nav-list__item">
							<a
								class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
								href="command:gitlens.openWalkthrough?%7B%22step%22%3A%22code-collab%22,%22source%22%3A%22home%22%7D"
								data-requires="repo"
								data-org-requires="drafts"
								aria-label="Open Code Suggest walkthrough"
								><code-icon class="nav-list__icon" icon="gl-code-suggestion"></code-icon
								><gl-tooltip hoist class="nav-list__group" content="Open Code Suggest walkthrough"
									><span class="nav-list__label">Code Suggest</span
									><span class="nav-list__desc">New!</span></gl-tooltip
								>
							</a>
							<gl-feature-badge
								.source=${this.badgeSource}
								.subscription=${this._state.subscription}
								placement="left"
								class="nav-list__access"
								preview
							></gl-feature-badge>
						</div>
						<div class="nav-list__item">
							<a
								class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
								href="command:gitlens.showDraftsView"
								data-requires="repo"
								data-org-requires="drafts"
								aria-label="Show Cloud Patches view"
								><code-icon class="nav-list__icon" icon="gl-cloud-patch"></code-icon
								><gl-tooltip hoist class="nav-list__group" content="Show Cloud Patches view"
									><span class="nav-list__label">Cloud Patches</span
									><span class="nav-list__desc">New!</span></gl-tooltip
								>
							</a>
							<gl-feature-badge
								placement="left"
								class="nav-list__access"
								cloud
								preview
							></gl-feature-badge>
						</div>
					`))}
				<div class="nav-list__item">
					<a
						class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
						href="command:gitlens.showFileHistoryView"
						aria-label="Show File History view"
						data-requires="repo"
						><code-icon class="nav-list__icon" icon="gl-history-view"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Show File History view">
							<span>File History</span></gl-tooltip
						>
					</a>
				</div>
				<div class="nav-list__item">
					<a
						class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
						href="command:gitlens.showTimelineView"
						aria-label="Show Visual File History view"
						data-requires="repo"
						><code-icon class="nav-list__icon" icon="graph-scatter"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Show Visual File History view">
							<span>Visual File History</span></gl-tooltip
						>
					</a>
					<gl-feature-badge
						.source=${this.badgeSource}
						.subscription=${this._state.subscription}
						placement="left"
						class="nav-list__access"
					></gl-feature-badge>
				</div>
				<div class="nav-list__item">
					<a
						class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
						href="command:gitlens.showStashesView"
						aria-label="Show Stashes view"
						data-requires="repo"
						><code-icon class="nav-list__icon" icon="gl-stashes-view"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Show Stashes view">
							<span>Stashes</span></gl-tooltip
						>
					</a>
				</div>
				<div class="nav-list__item">
					<a
						class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
						href="command:gitlens.showSearchAndCompareView"
						aria-label="Show Search &amp; Compare view"
						data-requires="repo"
						><code-icon class="nav-list__icon" icon="gl-search-view"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Show Search &amp; Compare view">
							<span>Search &amp; Compare</span></gl-tooltip
						>
					</a>
				</div>
				<div class="nav-list__item">
					<a
						class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
						href="command:gitlens.showWorkspacesView"
						aria-label="Show GitKraken Workspaces view"
						data-requires="repo"
						><code-icon class="nav-list__icon" icon="gl-workspaces-view"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Show GitKraken Workspaces view">
							<span>GK Workspaces</span></gl-tooltip
						>
					</a>
					<gl-feature-badge placement="left" class="nav-list__access" cloud preview></gl-feature-badge>
				</div>
				<div class="nav-list__item">
					<a
						class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
						href="command:gitlens.showWorktreesView"
						aria-label="Show Worktrees view"
						data-requires="repo"
						><code-icon class="nav-list__icon" icon="gl-worktrees-view"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Show Worktrees view">
							<span>Worktrees</span></gl-tooltip
						>
					</a>
					<gl-feature-badge
						.source=${this.badgeSource}
						.subscription=${this._state.subscription}
						placement="left"
						class="nav-list__access"
					></gl-feature-badge>
				</div>
			</nav>
			<nav class="nav-list">
				<h2 class="nav-list__title t-eyebrow sticky">Activity Bar</h2>
				<div class="nav-list__item">
					<a
						class="nav-list__link"
						href="command:workbench.view.extension.gitlens"
						aria-label="Show GitLens Side Bar"
						><code-icon class="nav-list__icon" icon="gl-gitlens"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Show GitLens Side Bar"
							><span>GitLens</span></gl-tooltip
						>
					</a>
				</div>
				<div class="nav-list__item">
					<a
						class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
						href="command:workbench.view.extension.gitlensInspect"
						aria-label="Show GitLens Inspect Side Bar"
						data-requires="repo"
						><code-icon class="nav-list__icon" icon="gl-gitlens-inspect"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Show GitLens Inspect Side Bar"
							><span>GitLens Inspect</span></gl-tooltip
						>
					</a>
				</div>
				<div class="nav-list__item">
					<a
						class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
						href="command:workbench.view.scm"
						aria-label="Show GitLens Side Bar"
						data-requires="repo"
						><code-icon class="nav-list__icon" icon="source-control"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Show Source Control Side Bar"
							><span>Source Control</span></gl-tooltip
						>
					</a>
				</div>
			</nav>
			<nav class="nav-list">
				<h3 class="nav-list__title t-eyebrow sticky">Commands</h3>
				<div class="nav-list__item">
					<a
						class="nav-list__link"
						href=${"command:workbench.action.quickOpen?%22>GitLens%3A%22"}
						aria-label="Show GitLens Commands"
						><code-icon class="nav-list__icon" icon="symbol-event"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Show GitLens Commands"
							><span>Commands</span></gl-tooltip
						>
					</a>
				</div>
				<div class="nav-list__item">
					<a
						class="nav-list__link${this.blockRepoFeatures?" is-disabled":""}"
						href="command:gitlens.gitCommands"
						aria-label="Open Git Command Palette"
						data-requires="repo"
						><code-icon class="nav-list__icon" icon="symbol-color"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Open Git Command Palette"
							><span>Git Command Palette</span></gl-tooltip
						>
					</a>
				</div>
			</nav>
			<nav class="nav-list">
				<h2 class="nav-list__title t-eyebrow sticky">Companion Tools</h2>
				<div class="nav-list__item">
					<a
						class="nav-list__link"
						href=${"https://gitkraken.com/browser-extension?utm_source=gitlens-extension&utm_medium=in-app-links"}
						aria-label="Try the GitKraken Browser Extension"
						><code-icon class="nav-list__icon" icon="extensions"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Try the GitKraken Browser Extension"
							><span>GitKraken Browser Extension</span></gl-tooltip
						>
					</a>
				</div>
				<div class="nav-list__item">
					<a
						class="nav-list__link"
						href=${"https://gitkraken.com/cli?utm_source=gitlens-extension&utm_medium=in-app-links"}
						aria-label="Try the GitKraken CLI"
						><code-icon class="nav-list__icon" icon="terminal"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Try the GitKraken CLI"
							><span>GitKraken CLI</span></gl-tooltip
						>
					</a>
				</div>
				<div class="nav-list__item">
					<a
						class="nav-list__link"
						href=${"https://gitkraken.dev?utm_source=gitlens-extension&utm_medium=in-app-links"}
						aria-label="Try GitKraken.dev"
						><code-icon class="nav-list__icon" icon="globe"></code-icon
						><gl-tooltip hoist class="nav-list__label" content="Try GitKraken.dev"
							><span>GitKraken.dev</span></gl-tooltip
						>
					</a>
				</div>
			</nav>
		`}};kn.styles=[$t,St,Tt,d``],xn([be({type:Object})],kn.prototype,"badgeSource",2),xn([Le({context:Lt,subscribe:!0}),me()],kn.prototype,"_state",2),kn=xn([ue("gl-feature-nav")],kn);var $n=Object.defineProperty,Pn=Object.getOwnPropertyDescriptor,Sn=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?Pn(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&$n(t,o,r),r};let Cn=class extends lit_element_r{render(){return ie`
			<gl-promo
				.promo=${Ft(this._state.subscription.state)}
				class="promo-banner promo-banner--eyebrow"
				id="promo"
				type="link"
			></gl-promo>
			<nav class="inline-nav" id="links" aria-label="Help and Resources">
				<div class="inline-nav__group">
					<gl-tooltip hoist>
						<a
							class="inline-nav__link inline-nav__link--text"
							href="https://help.gitkraken.com/gitlens/gitlens-release-notes-current/"
							aria-label="What's New"
							><code-icon icon="megaphone"></code-icon><span>What's New</span></a
						>
						<span slot="content">What's New</span>
					</gl-tooltip>
					<gl-tooltip hoist>
						<a
							class="inline-nav__link inline-nav__link--text"
							href="https://help.gitkraken.com/gitlens/gitlens-home/"
							aria-label="Help Center"
							><code-icon icon="question"></code-icon><span>Help</span></a
						>
						<span slot="content">Help Center</span>
					</gl-tooltip>
					<gl-tooltip hoist>
						<a
							class="inline-nav__link inline-nav__link--text"
							href="https://github.com/gitkraken/vscode-gitlens/issues"
							aria-label="Feedback"
							><code-icon icon="feedback"></code-icon><span>Feedback</span></a
						>
						<span slot="content">Feedback</span>
					</gl-tooltip>
				</div>
				<div class="inline-nav__group">
					<gl-tooltip hoist>
						<a
							class="inline-nav__link"
							href="https://github.com/gitkraken/vscode-gitlens/discussions"
							aria-label="GitHub Discussions"
							><code-icon icon="comment-discussion"></code-icon
						></a>
						<span slot="content">GitHub Discussions</span>
					</gl-tooltip>
					<gl-tooltip hoist>
						<a
							class="inline-nav__link"
							href="https://github.com/gitkraken/vscode-gitlens"
							aria-label="GitHub Repo"
							><code-icon icon="github"></code-icon
						></a>
						<span slot="content">GitHub Repo</span>
					</gl-tooltip>
					<gl-tooltip hoist>
						<a class="inline-nav__link" href="https://twitter.com/gitlens" aria-label="@gitlens on Twitter"
							><code-icon icon="twitter"></code-icon
						></a>
						<span slot="content">@gitlens on Twitter</span>
					</gl-tooltip>
					<gl-tooltip hoist>
						<a
							class="inline-nav__link"
							href=${"https://gitkraken.com/gitlens?utm_source=gitlens-extension&utm_medium=in-app-links&utm_campaign=gitlens-logo-links"}
							aria-label="GitLens Website"
							><code-icon icon="globe"></code-icon
						></a>
						<span slot="content">GitLens Website</span>
					</gl-tooltip>
				</div>
			</nav>
		`}};Cn.styles=[$t,St,Et,d`
			:host {
				display: block;
			}
		`],Sn([Le({context:Lt,subscribe:!0}),me()],Cn.prototype,"_state",2),Cn=Sn([ue("gl-home-nav")],Cn);var En=Object.defineProperty,An=Object.getOwnPropertyDescriptor,On=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?An(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&En(t,o,r),r};let Tn=class extends GlElement{get hasAlerts(){return this.alertVisibility.header}get alertVisibility(){const e={header:!1,untrusted:!1,noRepo:!1,unsafeRepo:!1};return null==this._state||(this._state.repositories.trusted?0===this._state.repositories.openCount?(e.header=!0,e.noRepo=!0):this._state.repositories.hasUnsafe&&(e.header=!0,e.unsafeRepo=!0):(e.header=!0,e.untrusted=!0)),e}render(){if(null!=this._state&&this.alertVisibility.header)return ie`
			${Rt(this.alertVisibility.noRepo,(()=>ie`
					<div id="no-repo-alert" class="alert alert--info mb-0">
						<h1 class="alert__title">No repository detected</h1>
						<div class="alert__description">
							<p>
								To use GitLens, open a folder containing a git repository or clone from a URL from the
								Explorer.
							</p>
							<p class="centered">
								<gl-button class="is-basic" href="command:workbench.view.explorer"
									>Open a Folder or Repository</gl-button
								>
							</p>
							<p class="mb-0">
								If you have opened a folder with a repository, please let us know by
								<a class="one-line" href="https://github.com/gitkraken/vscode-gitlens/issues/new/choose"
									>creating an Issue</a
								>.
							</p>
						</div>
					</div>
				`))}
			${Rt(this.alertVisibility.unsafeRepo,(()=>ie`
					<div id="unsafe-repo-alert" class="alert alert--info mb-0">
						<h1 class="alert__title">Unsafe repository</h1>
						<div class="alert__description">
							<p>
								Unable to open any repositories as Git blocked them as potentially unsafe, due to the
								folder(s) not being owned by the current user.
							</p>
							<p class="centered">
								<gl-button class="is-basic" href="command:workbench.view.scm"
									>Manage in Source Control</gl-button
								>
							</p>
						</div>
					</div>
				`))}
			${Rt(this.alertVisibility.untrusted,(()=>ie`
					<div id="untrusted-alert" class="alert alert--info mb-0" aria-hidden="true">
						<h1 class="alert__title">Untrusted workspace</h1>
						<div class="alert__description">
							<p>Unable to open repositories in Restricted Mode.</p>
							<p class="centered">
								<gl-button class="is-basic" href="command:workbench.trust.manage"
									>Manage Workspace Trust</gl-button
								>
							</p>
						</div>
					</div>
				`))}
		`}};Tn.styles=[$t,St,Ot,d`
			.alert {
				margin-bottom: 0;
			}

			.centered {
				text-align: center;
			}

			.one-line {
				white-space: nowrap;
			}

			gl-button.is-basic {
				max-width: 300px;
				width: 100%;
			}
			gl-button.is-basic + gl-button.is-basic {
				margin-top: 1rem;
			}
		`],On([be({type:Boolean,reflect:!0,attribute:"has-alerts"})],Tn.prototype,"hasAlerts",1),On([Le({context:Lt,subscribe:!0}),me()],Tn.prototype,"_state",2),Tn=On([ue("gl-repo-alerts")],Tn);var Ln=Object.defineProperty,Rn=Object.getOwnPropertyDescriptor,zn=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?Rn(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&Ln(t,o,r),r};let Dn=class extends lit_element_r{onSectionExpandClicked(e,t=!1){t&&e.stopImmediatePropagation();const o=e.target.closest("[data-section-expand]"),i=o?.dataset.sectionExpand;"walkthrough"===i&&(t?this.updateCollapsedSections(!this._state.walkthroughCollapsed):this.updateCollapsedSections(!1))}updateCollapsedSections(e=this._state.walkthroughCollapsed){this._state.walkthroughCollapsed=e,this.requestUpdate(),this._ipc.sendCommand(Pe,{section:"walkthrough",collapsed:e})}render(){return ie`
			<div
				id="section-walkthrough"
				data-section-expand="walkthrough"
				class="alert${this._state.walkthroughCollapsed?" is-collapsed":""}"
				@click=${e=>this.onSectionExpandClicked(e)}
			>
				<h1 class="alert__title">Get Started with GitLens</h1>
				<div class="alert__description">
					<p>Explore all of the powerful features in GitLens</p>
					<p class="button-container button-container--trio">
						<gl-button
							appearance="secondary"
							full
							href="command:gitlens.showWelcomePage"
							aria-label="Open Welcome"
							>Start Here (Welcome)</gl-button
						>
						<span class="button-group button-group--single">
							<gl-button appearance="secondary" full href="command:gitlens.getStarted?%22home%22"
								>Walkthrough</gl-button
							>
							<gl-button
								appearance="secondary"
								full
								href=${"https://youtu.be/oJdlGtsbc3U?utm_source=inapp&utm_medium=home_banner&utm_id=GitLens+tutorial"}
								aria-label="Watch the GitLens Tutorial video"
								tooltip="Watch the GitLens Tutorial video"
								><code-icon icon="vm-running" slot="prefix"></code-icon>Tutorial</gl-button
							>
						</span>
					</p>
				</div>
				<a
					href="#"
					class="alert__close"
					data-section-toggle="walkthrough"
					@click=${e=>this.onSectionExpandClicked(e,!0)}
				>
					<gl-tooltip hoist>
						<code-icon icon="chevron-down" aria-label="Collapse walkthrough section"></code-icon>
						<span slot="content">Collapse</span>
					</gl-tooltip>
					<gl-tooltip hoist>
						<code-icon icon="chevron-right" aria-label="Expand walkthrough section"></code-icon>
						<span slot="content">Expand</span>
					</gl-tooltip>
				</a>
			</div>
		`}};Dn.styles=[Ot,St,At],zn([Le({context:Lt,subscribe:!0}),me()],Dn.prototype,"_state",2),zn([Le({context:"ipc",subscribe:!0}),me()],Dn.prototype,"_ipc",2),Dn=zn([ue("gl-onboarding")],Dn);var jn=Object.defineProperty,Fn=Object.getOwnPropertyDescriptor,In=(e,t,o,i)=>{for(var s,r=i>1?void 0:i?Fn(t,o):t,a=e.length-1;a>=0;a--)(s=e[a])&&(r=(i?s(t,o,r):s(r))||r);return i&&r&&jn(t,o,r),r};let Un=class extends GlApp{constructor(){super(...arguments),this.badgeSource={source:"home",detail:"badge"}}createStateProvider(e,t){return new HomeStateProvider(this,e,t)}connectedCallback(){super.connectedCallback(),this.disposable=this._ipc.onReceiveMessage((e=>{if(!0===Oe.is(e))this.accountContentEl.show()}))}disconnectedCallback(){super.disconnectedCallback(),this.disposable?.dispose()}render(){return ie`
			<div class="home scrollable">
				<gl-home-nav class="home__nav"></gl-home-nav>
				<gl-repo-alerts class="home__header"></gl-repo-alerts>
				<main class="home__main scrollable" id="main">
					<gl-onboarding></gl-onboarding>
					<gl-feature-nav .badgeSource=${this.badgeSource}></gl-feature-nav>
				</main>

				<footer class="home__footer">
					<gl-home-account-content id="account-content"> </gl-home-account-content>
				</footer>
			</div>
		`}};Un.styles=[St,Pt,Ct],In([ye("#account-content")],Un.prototype,"accountContentEl",2),Un=In([ue("gl-home-app")],Un);var Mn=i.K;export{Mn as GlHomeApp};