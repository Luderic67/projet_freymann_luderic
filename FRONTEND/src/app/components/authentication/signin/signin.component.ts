import { Component } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { AuthenticationService } from 'src/app/services/authentication.service';

@Component({
  selector: 'app-signin',
  templateUrl: './signin.component.html',
  styleUrls: ['./signin.component.scss'],
})
export class SigninComponent {
  signinForm: any;

  constructor(
    private formBuilder: FormBuilder,
    private authenticationService: AuthenticationService
  ) {
    this.signinForm = this.formBuilder.group({
      username: ['', Validators.required],
      password: ['', Validators.required],
    });
  }

  handleSubmit(): void {
    if (this.signinForm.dirty && this.signinForm.valid) {
      console.log({
        username: this.signinForm.value.username,
        password: this.signinForm.value.password,
      });

      this.authenticationService
        .signin(this.signinForm.value.username, this.signinForm.value.password)
        .subscribe((flux) => console.log(flux));
    } else {
      // Toggle errors
      Object.keys(this.signinForm.controls).forEach((field) => {
        const control = this.signinForm.get(field);
        control.markAsTouched({ onlySelf: true });
      });
    }
  }
}
