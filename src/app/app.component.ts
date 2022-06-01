import { Component, OnInit } from '@angular/core';
import { Store, UpdateState } from '@ngxs/store';
import { SetCart } from 'shared/actions/product.action';
import { CartProduct } from 'shared/models/cartProduct';
import { User } from 'shared/models/user';
import { AuthenticationService } from './services/authentication.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent {
  title = 'luderic-freymann-app';

  currentUser!: User;

  constructor(
    private authenticationService: AuthenticationService,
    private store: Store
  ) {
    this.authenticationService.currentUser.subscribe((user) => {
      this.currentUser = user;
      this.store.dispatch(new SetCart(this.getLocalCart()));
    });
  }

  getLocalCart(): CartProduct[] {
    const localCart = localStorage.getItem('cart-' + this.currentUser.username);
    if (localCart) {
      return JSON.parse(localCart);
    }

    return [];
  }
}
