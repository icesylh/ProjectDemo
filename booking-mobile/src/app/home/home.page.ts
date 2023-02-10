import { Component } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { LoadingController, ToastController } from '@ionic/angular';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  username = ""
  resp: any = {}
  datas = []
  /**
   * 生命周期函数： 创建组件的是时候，最先执行的方法，第一步
   * 注入 route 对象，ActivatedRoute 获取动态路由
   */
  constructor(private loadingController: LoadingController, private toastController: ToastController, public router: Router, private route: ActivatedRoute, private httpClient: HttpClient) {

  }

  ngOnInit() {
    const that = this;

    // data 是路由参数传递的JSON 对象
    this.route.queryParams.subscribe(function (data) {
      that.username = data['name']
    });

    this.loadData()

  }

  loadData() {
    this.httpClient.get("http://localhost:8080/booking/booking/list?username="+this.username)
      .subscribe(async resp => {
        console.log(resp)
        this.resp = resp
        if (this.resp["code"] == 200) {
          this.datas = this.resp['data']
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

  checkd(item: any) {
    console.log(item);

    if (item['isDone'] == 0) {
      item['isDone'] = 1
    } else {
      item['isDone'] = 0
    }

    this.done(item)
  }
  done(item: any) {
    this.httpClient.post("http://localhost:8080/booking/booking/update", item)
      .subscribe(async resp => {
        console.log(resp)
        this.resp = resp
        if (this.resp["code"] == 200) {
          this.loadData()
        }

        const toast = await this.toastController.create({
          message: this.resp["message"],
          duration: 1000,
          position: 'middle'
        });

        await toast.present();
      })
  }
}


