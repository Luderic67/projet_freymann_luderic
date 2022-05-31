"use strict";(self.webpackChunkluderic_freymann_app=self.webpackChunkluderic_freymann_app||[]).push([[517],{6517:(B,C,c)=>{c.r(C),c.d(C,{CatalogModule:()=>E});var m=c(4910),s=c(6019),f=c(4762),p=c(5489),_=c(2765),g=c(8548),t=c(2383),u=c(8329);function Z(e,o){if(1&e&&(t.TgZ(0,"div",8),t.TgZ(1,"p"),t._uU(2),t.qZA(),t.qZA()),2&e){const n=t.oxw();t.xp6(2),t.Oqu(n.quantity)}}const O=function(){return["fas","shopping-cart"]};function v(e,o){if(1&e){const n=t.EpF();t.TgZ(0,"button",9),t.NdJ("click",function(){return t.CHM(n),t.oxw().addToCart()}),t._UZ(1,"fa-icon",10),t.qZA()}2&e&&(t.xp6(1),t.Q6J("icon",t.DdM(1,O)))}const M=function(){return["fas","trash"]};function P(e,o){if(1&e){const n=t.EpF();t.TgZ(0,"button",11),t.NdJ("click",function(){return t.CHM(n),t.oxw().removeFromCart()}),t._UZ(1,"fa-icon",10),t.qZA()}2&e&&(t.xp6(1),t.Q6J("icon",t.DdM(1,M)))}const T=function(e){return["/products/product",e]};class l{constructor(o){this.store=o}addToCart(){this.store.dispatch(new g.Rl(this.product))}removeFromCart(){this.store.dispatch(new g.R3(this.product))}}function A(e,o){if(1&e&&t._UZ(0,"app-list-item",7),2&e){const n=o.$implicit;t.Q6J("isDeletable",!0)("product",n.product)("quantity",n.quantity)}}l.\u0275fac=function(o){return new(o||l)(t.Y36(p.yh))},l.\u0275cmp=t.Xpm({type:l,selectors:[["app-list-item"]],inputs:{quantity:"quantity",product:"product",isDeletable:"isDeletable"},decls:13,vars:8,consts:[[1,"list-container"],["class","section-quantity",4,"ngIf"],[1,"section-name"],[1,"section-price"],[1,"section-actions"],[1,"details",3,"routerLink"],["class","add",3,"click",4,"ngIf"],["class","delete",3,"click",4,"ngIf"],[1,"section-quantity"],[1,"add",3,"click"],[3,"icon"],[1,"delete",3,"click"]],template:function(o,n){1&o&&(t.TgZ(0,"div",0),t.YNc(1,Z,3,1,"div",1),t.TgZ(2,"div",2),t.TgZ(3,"h3"),t._uU(4),t.qZA(),t.qZA(),t.TgZ(5,"div",3),t.TgZ(6,"p"),t._uU(7),t.qZA(),t.qZA(),t.TgZ(8,"div",4),t.TgZ(9,"button",5),t._uU(10," Details "),t.qZA(),t.YNc(11,v,2,2,"button",6),t.YNc(12,P,2,2,"button",7),t.qZA(),t.qZA()),2&o&&(t.xp6(1),t.Q6J("ngIf",n.quantity),t.xp6(3),t.Oqu(n.product.name),t.xp6(3),t.hij("",n.product.price,"\u20ac"),t.xp6(2),t.Q6J("routerLink",t.VKq(6,T,n.product.id)),t.xp6(2),t.Q6J("ngIf",!n.isDeletable),t.xp6(1),t.Q6J("ngIf",n.isDeletable))},directives:[s.O5,m.rH,u.BN],styles:["[_nghost-%COMP%]{display:flex;justify-content:center}.list-container[_ngcontent-%COMP%]{box-sizing:border-box;display:flex;flex-direction:row;align-items:center;justify-content:center;width:80%;background:rgba(255,255,255,.25);-webkit-backdrop-filter:blur(10px);backdrop-filter:blur(10px);box-shadow:#63636333 0 2px 8px;padding:.7rem 1rem;font-size:1rem;margin:.5rem 0;border:none;border-radius:15px}@media screen and (max-width: 768px){.list-container[_ngcontent-%COMP%]{width:100%}}.list-container[_ngcontent-%COMP%]   div.section-quantity[_ngcontent-%COMP%]   p[_ngcontent-%COMP%]{margin:0;padding:.4rem 1rem;border-radius:10px;background:none;font-weight:bold;color:#fff;box-shadow:0 .75rem 2rem #00000026}.list-container[_ngcontent-%COMP%]   div.section-name[_ngcontent-%COMP%]{flex:5}.list-container[_ngcontent-%COMP%]   div.section-name[_ngcontent-%COMP%]   h3[_ngcontent-%COMP%]{margin:0 1rem}.list-container[_ngcontent-%COMP%]   div.section-price[_ngcontent-%COMP%]{flex:1}.list-container[_ngcontent-%COMP%]   div.section-price[_ngcontent-%COMP%]   p[_ngcontent-%COMP%]{margin:0 1rem 0 0}.list-container[_ngcontent-%COMP%]   div.section-actions[_ngcontent-%COMP%]{flex:3;display:flex;padding:0 .5rem}.list-container[_ngcontent-%COMP%]   div.section-actions[_ngcontent-%COMP%]   button[_ngcontent-%COMP%]{flex:1;margin:0 .5rem;border:none;padding:.4rem 1rem;cursor:pointer;border-radius:10px;font-size:1rem;background:none;font-weight:bold;color:#fff;box-shadow:0 .75rem 2rem #00000026;transition:transform .15s ease-in-out}.list-container[_ngcontent-%COMP%]   div.section-actions[_ngcontent-%COMP%]   button[_ngcontent-%COMP%]:hover{transform:scale(1.15)}.list-container[_ngcontent-%COMP%]   div.section-actions[_ngcontent-%COMP%]   button[_ngcontent-%COMP%]:active{transition:transform 25ms ease-in-out;transform:scale(.9)}"]}),(0,f.gn)([(0,p.Ph)(_.o.getProducts)],l.prototype,"products$",void 0);const q=function(){return["fas","frown"]};function y(e,o){1&e&&(t.TgZ(0,"div",8),t.TgZ(1,"h3"),t._uU(2,"No product found in your cart"),t.qZA(),t._UZ(3,"fa-icon",9),t.qZA()),2&e&&(t.xp6(3),t.Q6J("icon",t.DdM(1,q)))}function w(e,o){if(1&e&&(t.TgZ(0,"div"),t.YNc(1,A,1,3,"app-list-item",5),t.YNc(2,y,4,2,"div",6),t.qZA()),2&e){const n=o.ngIf;t.xp6(1),t.Q6J("ngForOf",n),t.xp6(1),t.Q6J("ngIf",!n.length)}}function k(e,o){if(1&e){const n=t.EpF();t.TgZ(0,"button",10),t.NdJ("click",function(){return t.CHM(n),t.oxw().removeAll()}),t._uU(1," Delete all "),t.qZA()}}function U(e,o){if(1&e&&(t.TgZ(0,"p",11),t._uU(1),t.qZA()),2&e){const n=o.ngIf;t.xp6(1),t.hij("Total : ",n,"\u20ac")}}class d{constructor(o){this.store=o}removeAll(){this.store.dispatch(new g.g1)}}d.\u0275fac=function(o){return new(o||d)(t.Y36(p.yh))},d.\u0275cmp=t.Xpm({type:d,selectors:[["app-cart"]],decls:9,vars:9,consts:[[1,"card"],[1,"card_title"],[4,"ngIf"],["class","delete-all",3,"click",4,"ngIf"],["class","total",4,"ngIf"],[3,"isDeletable","product","quantity",4,"ngFor","ngForOf"],["class","error-container",4,"ngIf"],[3,"isDeletable","product","quantity"],[1,"error-container"],[1,"icon",3,"icon"],[1,"delete-all",3,"click"],[1,"total"]],template:function(o,n){1&o&&(t.TgZ(0,"div",0),t.TgZ(1,"h2",1),t._uU(2,"CART"),t.qZA(),t.YNc(3,w,3,2,"div",2),t.ALo(4,"async"),t.YNc(5,k,2,0,"button",3),t.ALo(6,"async"),t.YNc(7,U,2,1,"p",4),t.ALo(8,"async"),t.qZA()),2&o&&(t.xp6(3),t.Q6J("ngIf",t.lcZ(4,3,n.products$)),t.xp6(2),t.Q6J("ngIf",t.lcZ(6,5,n.total$)),t.xp6(2),t.Q6J("ngIf",t.lcZ(8,7,n.total$)))},directives:[s.O5,s.sg,l,u.BN],pipes:[s.Ov],styles:["[_nghost-%COMP%]{width:100%;display:flex;flex-direction:column;align-items:center}@media screen and (max-width: 768px){[_nghost-%COMP%]{margin-top:2rem}}.total[_ngcontent-%COMP%]{align-self:center;font-size:1.5rem;font-weight:bold;color:#fff;box-shadow:0 .75rem 2rem #0000001a;width:40%;text-align:center;border-radius:1rem;min-width:250px;padding:1rem 0}button.delete-all[_ngcontent-%COMP%]{align-self:center;font-size:1.5rem;font-weight:bold;color:#fff;box-shadow:0 .75rem 2rem #0000001a;width:40%;text-align:center;border-radius:1rem;min-width:250px;padding:1rem 0;border:none;background:none;margin-top:1rem;cursor:pointer;transition:background-color .6s;transition:transform .15s ease-in-out}button.delete-all[_ngcontent-%COMP%]:hover{background-color:#ff00001a;transform:scale(1.15)}button.delete-all[_ngcontent-%COMP%]:active{transition:transform 25ms ease-in-out;transform:scale(.9)}.error-container[_ngcontent-%COMP%]{display:flex;width:100%;justify-content:center;align-items:center;font-size:1.2rem}.error-container[_ngcontent-%COMP%]   .icon[_ngcontent-%COMP%]{margin-left:1rem;font-size:1.4rem}"]}),(0,f.gn)([(0,p.Ph)(_.o.getProducts)],d.prototype,"products$",void 0),(0,f.gn)([(0,p.Ph)(_.o.getTotalPrice)],d.prototype,"total$",void 0);var a=c(9133),b=c(1973);function J(e,o){if(1&e&&(t.TgZ(0,"option",8),t._uU(1),t.qZA()),2&e){const n=o.$implicit;t.Q6J("ngValue",n),t.xp6(1),t.hij(" ",n," ")}}const N=function(){return["fas","search"]};let I=(()=>{class e{constructor(n,r){this.formBuilder=n,this.listService=r,this.setList=new t.vpe,this.filters=["Most expensive","Cheapest","A - Z","Z - A"],this.subscription=null,this.searchbarForm=this.formBuilder.group({research:[""],filter:[""]})}updateList(n){this.setList.emit(n)}ngOnInit(){this.subscription=this.listService.getList().subscribe(n=>{this.updateList(n)})}handleResearch(){this.subscription=this.listService.getList().subscribe(n=>{"Most expensive"===this.searchbarForm.value.filter?n=n.sort((r,i)=>i.price-r.price):"Cheapest"===this.searchbarForm.value.filter?n=n.sort((r,i)=>r.price-i.price):"A - Z"===this.searchbarForm.value.filter?n=n.sort((r,i)=>r.name<i.name?-1:r.name>i.name?1:0):"Z - A"===this.searchbarForm.value.filter&&(n=n.sort((r,i)=>r.name>i.name?-1:r.name<i.name?1:0)),this.searchbarForm.value.research&&(n=n.filter(r=>r.name.toLowerCase().includes(this.searchbarForm.value.research.toLowerCase()))),this.updateList(n)})}ngOnDestroy(){var n;null===(n=this.subscription)||void 0===n||n.unsubscribe()}}return e.\u0275fac=function(n){return new(n||e)(t.Y36(a.qu),t.Y36(b.X))},e.\u0275cmp=t.Xpm({type:e,selectors:[["app-searchbar"]],outputs:{setList:"setList"},decls:8,vars:4,consts:[[1,"search-container"],[3,"formGroup"],[1,"search-bar"],["type","text","id","searchbar","formControlName","research",3,"input"],[1,"search-bar-icon"],[3,"icon"],["id","filter","formControlName","filter",3,"change"],[3,"ngValue",4,"ngFor","ngForOf"],[3,"ngValue"]],template:function(n,r){1&n&&(t.TgZ(0,"div",0),t.TgZ(1,"form",1),t.TgZ(2,"div",2),t.TgZ(3,"input",3),t.NdJ("input",function(){return r.handleResearch()}),t.qZA(),t.TgZ(4,"div",4),t._UZ(5,"fa-icon",5),t.qZA(),t.qZA(),t.TgZ(6,"select",6),t.NdJ("change",function(){return r.handleResearch()}),t.YNc(7,J,2,2,"option",7),t.qZA(),t.qZA(),t.qZA()),2&n&&(t.xp6(1),t.Q6J("formGroup",r.searchbarForm),t.xp6(4),t.Q6J("icon",t.DdM(3,N)),t.xp6(2),t.Q6J("ngForOf",r.filters))},directives:[a._Y,a.JL,a.sg,a.Fj,a.JJ,a.u,u.BN,a.EJ,s.sg,a.YN,a.Kr],styles:["input[_ngcontent-%COMP%]:focus, textarea[_ngcontent-%COMP%]:focus, select[_ngcontent-%COMP%]:focus{outline:none}form[_ngcontent-%COMP%]{display:flex;width:100%}@media screen and (max-width: 768px){form[_ngcontent-%COMP%]{flex-direction:column}}.search-bar[_ngcontent-%COMP%]{flex:2;display:flex;margin-right:.5rem}@media screen and (max-width: 768px){.search-bar[_ngcontent-%COMP%]{margin-right:0}}.search-bar-icon[_ngcontent-%COMP%]{box-sizing:border-box;background:rgba(255,255,255,.25);-webkit-backdrop-filter:blur(10px);backdrop-filter:blur(10px);box-shadow:#63636333 0 2px 8px;padding:.7rem 1rem;font-size:1rem;margin:.3rem 0;border:none;border-bottom-right-radius:15px;border-top-right-radius:15px}.search-container[_ngcontent-%COMP%]{display:flex}.search-container[_ngcontent-%COMP%]   input[_ngcontent-%COMP%], .search-container[_ngcontent-%COMP%]   select[_ngcontent-%COMP%]{box-sizing:border-box;width:100%;background:rgba(255,255,255,.25);-webkit-backdrop-filter:blur(10px);backdrop-filter:blur(10px);box-shadow:#63636333 0 2px 8px;padding:.7rem 1rem;font-size:1rem;margin:.3rem 0;border:none;border-radius:15px}.search-container[_ngcontent-%COMP%]   select[_ngcontent-%COMP%]{flex:1}.search-container[_ngcontent-%COMP%]   input[_ngcontent-%COMP%]{border-bottom-right-radius:0;border-top-right-radius:0}"]}),e})();function F(e,o){if(1&e&&t._UZ(0,"app-list-item",5),2&e){const n=o.$implicit;t.Q6J("isDeletable",!1)("product",n)("quantity",null)}}const L=function(){return["fas","frown"]};function D(e,o){1&e&&(t.TgZ(0,"div",6),t.TgZ(1,"h3"),t._uU(2,"Nothing found"),t.qZA(),t._UZ(3,"fa-icon",7),t.qZA()),2&e&&(t.xp6(3),t.Q6J("icon",t.DdM(1,L)))}const Y=function(){return["fas","shopping-cart"]};function z(e,o){if(1&e){const n=t.EpF();t.TgZ(0,"div",1),t.TgZ(1,"h2",2),t._uU(2),t.qZA(),t.TgZ(3,"h3",3),t._uU(4),t.qZA(),t.TgZ(5,"div",4),t.TgZ(6,"div",5),t.TgZ(7,"div",6),t.TgZ(8,"div",7),t.TgZ(9,"p",8),t._uU(10,"REFERENCE :"),t.qZA(),t.TgZ(11,"p",9),t._uU(12),t.qZA(),t.qZA(),t.TgZ(13,"div",7),t.TgZ(14,"p",8),t._uU(15,"STOCK SECTOR :"),t.qZA(),t.TgZ(16,"p",9),t._uU(17),t.qZA(),t.qZA(),t.TgZ(18,"div",7),t.TgZ(19,"p",8),t._uU(20,"STOCK NAME :"),t.qZA(),t.TgZ(21,"p",9),t._uU(22),t.qZA(),t.qZA(),t.TgZ(23,"div",7),t.TgZ(24,"p",8),t._uU(25,"STOCK MARKET :"),t.qZA(),t.TgZ(26,"p",9),t._uU(27),t.qZA(),t.qZA(),t.qZA(),t.TgZ(28,"div",10),t._UZ(29,"img",11),t.qZA(),t.qZA(),t.TgZ(30,"div",7),t.TgZ(31,"p",12),t._uU(32,"DESCRIPTION :"),t.qZA(),t.TgZ(33,"p",13),t._uU(34),t.qZA(),t.qZA(),t.TgZ(35,"button",14),t.NdJ("click",function(){return t.CHM(n),t.oxw().addToCart()}),t.TgZ(36,"p"),t._uU(37,"Add to cart"),t.qZA(),t._UZ(38,"fa-icon",15),t.qZA(),t.TgZ(39,"button",16),t._uU(40,"Back"),t.qZA(),t.qZA(),t.qZA()}if(2&e){const n=t.oxw();t.xp6(2),t.Oqu(n.product.name),t.xp6(2),t.hij("",n.product.price,"\u20ac"),t.xp6(8),t.Oqu(n.product.id),t.xp6(5),t.Oqu(n.product.stock_sector),t.xp6(5),t.Oqu(n.product.stock_name),t.xp6(5),t.Oqu(n.product.stock_market),t.xp6(7),t.Oqu(n.product.description),t.xp6(4),t.Q6J("icon",t.DdM(8,Y))}}function S(e,o){1&e&&(t.TgZ(0,"div",1),t.TgZ(1,"h2",2),t._uU(2,"PRODUCT NOT FOUND"),t.qZA(),t.TgZ(3,"p",17),t._uU(4," It seem's like, the product you're currently searching for doesn't exist! "),t.qZA(),t.qZA())}const j=[{path:"catalog",component:(()=>{class e{constructor(){this.products=[]}setList(n){this.products=n}}return e.\u0275fac=function(n){return new(n||e)},e.\u0275cmp=t.Xpm({type:e,selectors:[["app-catalog"]],decls:6,vars:2,consts:[[1,"card"],[1,"card_title"],[3,"setList"],[3,"isDeletable","product","quantity",4,"ngFor","ngForOf"],["class","error-container",4,"ngIf"],[3,"isDeletable","product","quantity"],[1,"error-container"],[1,"icon",3,"icon"]],template:function(n,r){1&n&&(t.TgZ(0,"div",0),t.TgZ(1,"h2",1),t._uU(2,"CATALOG"),t.qZA(),t.TgZ(3,"app-searchbar",2),t.NdJ("setList",function(h){return r.setList(h)}),t.qZA(),t.YNc(4,F,1,3,"app-list-item",3),t.YNc(5,D,4,2,"div",4),t.qZA()),2&n&&(t.xp6(4),t.Q6J("ngForOf",r.products),t.xp6(1),t.Q6J("ngIf",!r.products.length))},directives:[I,s.sg,s.O5,l,u.BN],styles:["[_nghost-%COMP%]{width:100%;display:flex;flex-direction:column;align-items:center}@media screen and (max-width: 768px){[_nghost-%COMP%]{margin-top:2rem}}.error-container[_ngcontent-%COMP%]{display:flex;width:100%;justify-content:center;align-items:center;font-size:1.2rem}.error-container[_ngcontent-%COMP%]   .icon[_ngcontent-%COMP%]{margin-left:1rem;font-size:1.4rem}"]}),e})()},{path:"cart",component:d},{path:"product/:id",component:(()=>{class e{constructor(n,r,i){this.route=n,this.listService=r,this.store=i,this.id=this.route.snapshot.params.id,this.subscription=this.listService.getList().subscribe(h=>{const x=h.find(R=>R.id===this.id);x?this.product=x:this.error=!0})}addToCart(){this.store.dispatch(new g.Rl(this.product))}}return e.\u0275fac=function(n){return new(n||e)(t.Y36(m.gz),t.Y36(b.X),t.Y36(p.yh))},e.\u0275cmp=t.Xpm({type:e,selectors:[["app-product-details"]],decls:2,vars:2,consts:[["class","card",4,"ngIf"],[1,"card"],[1,"card_title"],[1,"price"],[1,"content"],[1,"double"],[1,"panel_left","panel"],[1,"group"],[1,"reference_label","label"],[1,"reference_value","value"],[1,"panel_right","panel"],["src","/assets/pictures/product.jpg","alt","image"],[1,"description_label","label"],[1,"description_value","value"],[1,"add",3,"click"],[1,"icon",3,"icon"],[1,"back"],[1,"error-message"]],template:function(n,r){1&n&&(t.YNc(0,z,41,9,"div",0),t.YNc(1,S,5,0,"div",0)),2&n&&(t.Q6J("ngIf",!r.error&&r.product),t.xp6(1),t.Q6J("ngIf",r.error||!r.product))},directives:[s.O5,u.BN],styles:["[_nghost-%COMP%]{width:100%;display:flex;flex-direction:column;align-items:center}@media screen and (max-width: 768px){[_nghost-%COMP%]{margin-top:2rem}}.content[_ngcontent-%COMP%]{align-self:center;display:flex;flex-direction:column;align-items:center}@media screen and (max-width: 768px){.content[_ngcontent-%COMP%]{max-width:80%}}h2[_ngcontent-%COMP%]{margin-bottom:0!important}h3.price[_ngcontent-%COMP%]{align-self:center;font-size:1.5rem;font-weight:bold;padding:.5rem 0;color:#fff;box-shadow:0 .75rem 2rem #0000001a;width:20%;text-align:center;border-radius:1rem;min-width:250px;margin-bottom:2rem;margin-top:.5rem;background:rgba(130,197,130,.8)}img[_ngcontent-%COMP%]{object-fit:fill;max-width:100%;max-height:100%;align-self:center;border-radius:10px}.double[_ngcontent-%COMP%]{display:flex;align-items:center;margin-top:1rem}@media screen and (max-width: 768px){.double[_ngcontent-%COMP%]{flex-direction:column-reverse}}.double[_ngcontent-%COMP%]   .panel[_ngcontent-%COMP%]{width:50%}@media screen and (max-width: 768px){.double[_ngcontent-%COMP%]   .panel[_ngcontent-%COMP%]{width:100%}}.double[_ngcontent-%COMP%]   .panel_right[_ngcontent-%COMP%]{display:flex;justify-content:end}@media screen and (max-width: 768px){.double[_ngcontent-%COMP%]   .panel_right[_ngcontent-%COMP%]{justify-content:center}}.group[_ngcontent-%COMP%]{width:100%}.group[_ngcontent-%COMP%]   .label[_ngcontent-%COMP%]{font-size:1.2rem;font-weight:bold;color:#222}.group[_ngcontent-%COMP%]   .value[_ngcontent-%COMP%]{font-size:1rem;color:#fff}button[_ngcontent-%COMP%]{display:flex;justify-content:center;align-items:center;align-self:center;font-size:1.5rem;font-weight:bold;color:#fff;box-shadow:0 .75rem 2rem #0000001a;width:40%;text-align:center;border-radius:1rem;min-width:250px;padding:1rem 0;border:none;background:none;margin-top:1rem;cursor:pointer;transition:background-color .6s;transition:transform .15s ease-in-out}button[_ngcontent-%COMP%]:hover{transform:scale(1.1)}button.back[_ngcontent-%COMP%]:hover{background-color:#ff00001a}button.add[_ngcontent-%COMP%]:hover{background-color:#008cff26}button[_ngcontent-%COMP%]:active{transition:transform 25ms ease-in-out;transform:scale(.9)}button[_ngcontent-%COMP%]   p[_ngcontent-%COMP%]{margin:0}button[_ngcontent-%COMP%]   .icon[_ngcontent-%COMP%]{margin-left:1rem}.error-message[_ngcontent-%COMP%]{align-self:center;text-align:center;margin-top:4rem;font-size:1.5rem}"]}),e})()}];let E=(()=>{class e{}return e.\u0275fac=function(n){return new(n||e)},e.\u0275mod=t.oAB({type:e}),e.\u0275inj=t.cJS({imports:[[s.ez,m.Bz.forChild(j)]]}),e})()}}]);