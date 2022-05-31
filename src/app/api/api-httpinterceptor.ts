import { Injectable } from '@angular/core';
import {
  HttpEvent,
  HttpHandler,
  HttpInterceptor,
  HttpRequest,
  HttpResponse,
} from '@angular/common/http';
import { Observable } from 'rxjs';
import { tap } from 'rxjs/operators';

@Injectable()
export class ApiHttpInterceptor implements HttpInterceptor {
  public static jwtToken: String = '';

  constructor() {}

  intercept(
    req: HttpRequest<any>,
    next: HttpHandler
  ): Observable<HttpEvent<any>> {
    if (ApiHttpInterceptor.jwtToken != '') {
      req = req.clone({
        setHeaders: {
          Authorization: `Bearer ${ApiHttpInterceptor.jwtToken}`,
        },
      });
    }

    return next.handle(req).pipe(
      tap((evt: HttpEvent<any>) => {
        if (evt instanceof HttpResponse) {
          let tab: Array<String>;
          let enteteAuthorization = evt.headers.get('Authorization');
          if (enteteAuthorization != null) {
            tab = enteteAuthorization.split(/Bearer\s+(.*)$/i);
            if (tab.length > 1) {
              ApiHttpInterceptor.jwtToken = tab[1];
            }
          }
        }
      })
    );
  }
}
