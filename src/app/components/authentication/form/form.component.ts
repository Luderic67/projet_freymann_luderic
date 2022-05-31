import { Component, Output, EventEmitter } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { ValidationService } from 'src/app/services/validation.service';

@Component({
  selector: 'app-form',
  templateUrl: './form.component.html',
  styleUrls: ['./form.component.scss'],
})
export class FormComponent {
  @Output() redirect: EventEmitter<Event> = new EventEmitter();

  registrationForm: any;
  error!: string;

  constructor(
    private formBuilder: FormBuilder,
    private authenticationService: AuthenticationService,
    private router: Router
  ) {
    this.registrationForm = this.formBuilder.group({
      first_name: ['', Validators.required],
      last_name: ['', Validators.required],
      email: ['', [Validators.required, ValidationService.emailValidator]],
      username: ['', Validators.required],
      password: ['', [Validators.required, Validators.minLength(8)]],
    });
  }

  handleSubmit(): void {
    if (this.registrationForm.dirty && this.registrationForm.valid) {
      const data: any = {
        first_name: this.registrationForm.value.first_name.trim(),
        last_name: this.registrationForm.value.last_name.trim(),
        email: this.registrationForm.value.email.trim(),
        username: this.registrationForm.value.username.trim(),
        password: this.registrationForm.value.password.trim(),
      };

      this.authenticationService.signup(data).subscribe(
        (data) => {
          this.router.navigate(['/authentication/signin']);
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
      Object.keys(this.registrationForm.controls).forEach((field) => {
        const control = this.registrationForm.get(field);
        control.markAsTouched({ onlySelf: true });
      });
    }
  }
}
