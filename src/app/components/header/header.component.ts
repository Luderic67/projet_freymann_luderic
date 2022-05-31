import { Component } from '@angular/core';
import { Observable } from 'rxjs';
import { Select } from '@ngxs/store';
import { ProductState } from 'shared/states/products-state';
import { User } from 'shared/models/user';
import { Router } from '@angular/router';
import { AuthenticationService } from 'src/app/services/authentication.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
})
export class HeaderComponent {
  @Select(ProductState.getProductsLength) productsNumber$!: Observable<number>;

  currentUser!: User;

  constructor(
    private authenticationService: AuthenticationService,
    private router: Router
  ) {
    this.authenticationService.currentUser.subscribe(
      (user) => (this.currentUser = user)
    );
  }

  signout(): void {
    this.authenticationService.signout();
    this.router.navigate(['']);
  }
}
