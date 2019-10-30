import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(private httpClient:HttpClient) { }


  login(user:string,pass:string){
    const cliente={
      cliente:{
        user:user,
        pass:pass
      }
    }
    return new Promise((resolve,rejected)=>
      this.httpClient.post('http://127.0.0.1:3003/login',cliente).subscribe((data:any)=>{

      if(data.token){
        resolve(data);
      }else{
        rejected(data.error);
      }
        

      }));
  }
}
