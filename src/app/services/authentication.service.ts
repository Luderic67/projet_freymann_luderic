import { HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { User } from 'shared/models/user';

@Injectable({
  providedIn: 'root',
})
export class AuthenticationService {
  URL_SIGNIN: string =
    'https://projet-freymann-luderic.herokuapp.com/api/signin';
  URL_SIGNUP: string = '/api/signup';

  constructor(private http: HttpClient) {}

  public signin(username: String, password: String): Observable<User> {
    let data: String;
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/x-www-form-urlencoded',
      }),
    };

    data = `username=${username}&password=${password}`;

    return this.http.post<User>(this.URL_SIGNIN, data, httpOptions);
  }
}
