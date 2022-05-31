import { HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { User } from 'shared/models/user';
import { map } from 'rxjs/operators';
import { ApiHttpInterceptor } from '../api/api-httpinterceptor';

@Injectable({
  providedIn: 'root',
})
export class AuthenticationService {
  URL_SIGNIN: string = '/api/signin';
  URL_SIGNUP: string = '/api/signup';

  private currentUserBehaviorSubject!: BehaviorSubject<User>;
  public currentUser!: Observable<User>;

  constructor(private http: HttpClient) {
    // Get user and token from localStorage if he exist
    const user: User = JSON.parse(localStorage.getItem('currentUser')!);
    ApiHttpInterceptor.jwtToken = JSON.parse(localStorage.getItem('token')!);

    // If no user is null or his token expired, we remove it from localStorage
    if (user == null || user.expiration_time < Math.floor(Date.now() / 1000)) {
      this.currentUserBehaviorSubject = new BehaviorSubject<User>(null!);
      localStorage.removeItem('currentUser');
      localStorage.removeItem('token');
    } else {
      this.currentUserBehaviorSubject = new BehaviorSubject<User>(user);
    }

    this.currentUser = this.currentUserBehaviorSubject.asObservable();
  }

  public signout() {
    localStorage.removeItem('currentUser');
    localStorage.removeItem('token');
    this.currentUserBehaviorSubject.next(null!);
  }

  public signin(username: String, password: String): Observable<User> {
    let data: String;
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/x-www-form-urlencoded',
      }),
    };

    data = `username=${username}&password=${password}`;

    return this.http.post<User>(this.URL_SIGNIN, data, httpOptions).pipe(
      map((user) => {
        localStorage.setItem('currentUser', JSON.stringify(user));
        localStorage.setItem(
          'token',
          JSON.stringify(ApiHttpInterceptor.jwtToken)
        );
        this.currentUserBehaviorSubject.next(user);

        return user;
      })
    );
  }

  public signup(formData: any): Observable<User> {
    let data: String;
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/x-www-form-urlencoded',
      }),
    };

    data = `first_name=${formData.first_name}&last_name=${formData.last_name}&email=${formData.email}&username=${formData.username}&password=${formData.password}`;

    return this.http.post<User>(this.URL_SIGNUP, data, httpOptions);
  }
}
