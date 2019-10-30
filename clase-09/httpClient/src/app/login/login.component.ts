import { Component, OnInit } from '@angular/core';

import { AuthService } from '../servicios/auth.service';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  userName:string="";
  userPass:string="";

  constructor(private auth:AuthService) { }

  ngOnInit() {
   
  }

 

  login(){
    
    this.auth.login(this.userName,this.userPass).then(success=>{

      console.log(success);
    }).catch(error=>{

      console.log(error);
    });
   
    
  }

}
