import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { ReactiveFormsModule } from '@angular/forms';
import { ApiHttpInterceptor } from './api/api-httpinterceptor';
import { AppComponent } from './app.component';
import { HeaderComponent } from './components/header/header.component';
import { FooterComponent } from './components/footer/footer.component';
import {
  FontAwesomeModule,
  FaIconLibrary,
} from '@fortawesome/angular-fontawesome';
import { faGithub } from '@fortawesome/free-brands-svg-icons';
import {
  faSearch,
  faFrown,
  faFileCode,
  faShoppingCart,
  faTrash,
  faMapMarkedAlt,
  faInfoCircle,
} from '@fortawesome/free-solid-svg-icons';
import { FormComponent } from './components/authentication/form/form.component';
import { ControlMessagesComponent } from './components/authentication/control-messages/control-messages.component';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { ListItemComponent } from './components/catalog/list-item/list-item.component';
import { SearchbarComponent } from './components/catalog/searchbar/searchbar.component';
import { SignupComponent } from './components/authentication/signup/signup.component';
import { NotFoundComponent } from './components/errors/not-found/not-found.component';
import { HomeComponent } from './components/home/home.component';
import { CartComponent } from './components/catalog/cart/cart.component';
import { CatalogComponent } from './components/catalog/catalog/catalog.component';
import { NgxsModule } from '@ngxs/store';
import { RouterModule, Routes } from '@angular/router';
import { ProductState } from 'shared/states/products-state';
import { ProductDetailsComponent } from './components/catalog/product-details/product-details.component';
import { SigninComponent } from './components/authentication/signin/signin.component';
import { AuthenticationService } from './services/authentication.service';
import { AccountComponent } from './components/account/account.component';

const routes: Routes = [
  { path: '', component: HomeComponent },
  {
    path: 'authentication',
    loadChildren: () =>
      import('./components/authentication/client.module').then(
        (m) => m.ClientModule
      ),
  },
  {
    path: 'products',
    loadChildren: () =>
      import('./components/catalog/catalog.module').then(
        (m) => m.CatalogModule
      ),
  },
  { path: 'account', component: AccountComponent },
  { path: 'not-found-404', component: NotFoundComponent },
  { path: '**', redirectTo: 'not-found-404' },
];

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    FormComponent,
    ControlMessagesComponent,
    ListItemComponent,
    SearchbarComponent,
    SignupComponent,
    NotFoundComponent,
    HomeComponent,
    CartComponent,
    CatalogComponent,
    ProductDetailsComponent,
    HomeComponent,
    SigninComponent,
    AccountComponent,
  ],
  imports: [
    BrowserModule,
    FontAwesomeModule,
    ReactiveFormsModule,
    HttpClientModule,
    NgxsModule.forRoot([ProductState]),
    RouterModule.forRoot(routes),
  ],
  exports: [RouterModule],
  providers: [
    AuthenticationService,
    { provide: HTTP_INTERCEPTORS, useClass: ApiHttpInterceptor, multi: true },
  ],
  bootstrap: [AppComponent],
})
export class AppModule {
  constructor(private library: FaIconLibrary) {
    library.addIcons(
      faGithub,
      faSearch,
      faFrown,
      faFileCode,
      faShoppingCart,
      faTrash,
      faMapMarkedAlt,
      faInfoCircle
    );
  }
}
