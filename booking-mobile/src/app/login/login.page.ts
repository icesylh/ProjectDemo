import { Component, OnInit } from '@angular/core';
import { AlertController, ToastController } from '@ionic/angular';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {
  username = ""
  password = ""
  resp: any = {}

  constructor(private alertController: AlertController, private router: Router, private toastController: ToastController, private httpClient: HttpClient) { }

  ngOnInit() {
  }

  async login() {
    if (this.username.length == 0 || this.password.length == 0) {
      const alert = await this.alertController.create({
        header: 'Alert',
        message: 'username or password is empty!',
        buttons: ['OK'],
      });

      await alert.present();
      return
    }

    this.httpClient.post("http://localhost:8080/booking/user/app/login", { username: this.username, password: this.password, role: 0 })
      .subscribe(async resp => {
        console.log(resp)
        this.resp = resp
        if (this.resp["code"] == 200) {
          this.router.navigate(["home"], { queryParams: { name: this.username } })
        } else {
          const toast = await this.toastController.create({
            message: this.resp["message"],
            duration: 1000,
            position: 'middle'
          });

          await toast.present();
        }
      })
  }

}
