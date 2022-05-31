import { Component, Output, EventEmitter } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';
import { ValidationService } from 'src/app/services/validation.service';

@Component({
  selector: 'app-form',
  templateUrl: './form.component.html',
  styleUrls: ['./form.component.scss'],
})
export class FormComponent {
  @Output() redirect: EventEmitter<Event> = new EventEmitter();

  registrationForm: any;

  constructor(private formBuilder: FormBuilder) {
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
        first_name: this.registrationForm.value.first_name,
        last_name: this.registrationForm.value.last_name,
        email: this.registrationForm.value.email,
        username: this.registrationForm.value.username,
        password: this.registrationForm.value.password,
      };
      this.redirect.emit(data);
    } else {
      // Toggle errors
      Object.keys(this.registrationForm.controls).forEach((field) => {
        const control = this.registrationForm.get(field);
        control.markAsTouched({ onlySelf: true });
      });
    }
  }
}
