import { Component } from '@angular/core'; 
import axios from 'axios'; 
import { Router } from '@angular/router';

@Component({
  selector: 'app-add',
  templateUrl: './add.component.html',
  styleUrls: ['./add.component.css']
})
export class AddComponent {
  name = ""
  content = ""
  date = ""
  time = ""
  number = ""
  level = ""
  names = []

  constructor(private router: Router) {

  }

  ngOnInit(): void {
    this.loadData()

  }

  async loadData() {
    var res = await axios.get("http://localhost:8080/booking/user/names")
    console.log(res);
    if (res.data.code == 200) {
      console.log(res.data);
      this.names = res.data.data
    }

  }

  async submit() {

    if (
      !this.name || this.name.length == 0 ||
      !this.content || this.content.length == 0 ||
      !this.time || this.time.length == 0 ||
      !this.date || this.date.length == 0 ||
      !this.number || this.number.length == 0 ||
      !this.level || this.level.length == 0) {
      alert("请填写全部内容")
      return
    }

    var params = { name: this.name, content: this.content, time: this.time, date: this.date, count: this.number, level: this.level }
    var res = await axios.post("http://localhost:8080/booking/booking/add", params)
    console.log(res);
    if (res.data.code == 200) {
      console.log(res.data);
      alert("add success！")
      this.router.navigateByUrl("home")
    } else {
      alert(res)
    }
  }

}
