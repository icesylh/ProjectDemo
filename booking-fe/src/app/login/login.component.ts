import { Component } from '@angular/core';
import { Router } from '@angular/router';
import axios from 'axios';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {


  username = ""
  password = ""


  constructor(private router: Router) { }


  async login() {
    if (this.username.length == 0 || this.password.length == 0) {
      alert("username or password is empty!")
      return
    }

    var res = await axios.post("http://localhost:8080/booking/user/login", { username: this.username, password: this.password, role: 1 })
    console.log(res);
    console.log(res.data);
    
    if (res.data.code == 200) {
      this.router.navigate(["home"], {
        queryParams: {
          name: this.username
        }
      })
    } else {
      alert(res.data.message)
    }

  }
}
