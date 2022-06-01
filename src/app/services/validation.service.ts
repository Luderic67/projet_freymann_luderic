import { Injectable } from '@angular/core';
import { FormControl } from '@angular/forms';

@Injectable({
  providedIn: 'root',
})
export class ValidationService {
  static getValidatorErrorMessage(validatorName: string, validatorValue?: any) {
    let config: any = {
      required: 'Required',
      invalidPhoneNumber: 'Is invalid phone number',
      invalidEmailAddress: 'Invalid email address',
      passwordNotCorresponding: 'Passwords not matches',
      minlength: `Minimum length ${validatorValue.requiredLength}`,
    };

    return config[validatorName];
  }

  static phoneNumberValidator(control: FormControl) {
    if (control.value.match(/^(?:(?:\+|00)33|0)\s*[1-9](?:[\s.-]*\d{2}){4}$/)) {
      return null;
    } else {
      return { invalidPhoneNumber: true };
    }
  }

  static emailValidator(control: FormControl) {
    // RFC 2822 compliant regex
    if (
      control.value.match(
        /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/
      )
    ) {
      return null;
    } else {
      return { invalidEmailAddress: true };
    }
  }

  static passwordsValidator(control: FormControl) {
    let password = control.get('password');
    let confirm_password = control.get('confirm_password');
    if (password?.value !== confirm_password?.value) {
      password?.setErrors({ passwordNotCorresponding: true });
      confirm_password?.setErrors({ passwordNotCorresponding: true });
      return { passwordNotCorresponding: true };
    } else if (
      password?.value.trim() === '' ||
      confirm_password?.value.trim() === ''
    ) {
      return { required: true };
    } else {
      password?.setErrors(null);
      confirm_password?.setErrors(null);
      return null;
    }
  }
}
