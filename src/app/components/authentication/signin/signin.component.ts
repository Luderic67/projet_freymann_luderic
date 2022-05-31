import { Component } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { AuthenticationService } from 'src/app/services/authentication.service';

@Component({
  selector: 'app-signin',
  templateUrl: './signin.component.html',
  styleUrls: ['./signin.component.scss'],
})
export class SigninComponent {
  signinForm: any;
  error!: string;

  constructor(
    private formBuilder: FormBuilder,
    private authenticationService: AuthenticationService,
    private router: Router
  ) {
    this.signinForm = this.formBuilder.group({
      username: ['', Validators.required],
      password: ['', Validators.required],
    });
  }

  handleSubmit(): void {
    if (this.signinForm.dirty && this.signinForm.valid) {
      console.log({
        username: this.signinForm.value.username.trim(),
        password: this.signinForm.value.password.trim(),
      });

      this.authenticationService
        .signin(this.signinForm.value.username, this.signinForm.value.password)
        .subscribe(
          (data) => {
            this.router.navigate(['/']);
          },
          (errorResponse) => {
            if (errorResponse['status'] == 404) {
              this.error = 'Unknown URL';
            } else {
              this.error = errorResponse['error']['error'];
            }
          }
        );
    } else {
      // Toggle errors
      Object.keys(this.signinForm.controls).forEach((field) => {
        const control = this.signinForm.get(field);
        control.markAsTouched({ onlySelf: true });
      });
    }
  }
}
