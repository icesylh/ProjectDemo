import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';

import axios from 'axios';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})

export class HomeComponent {
  name = ""
  datas: Array<any> = []
  barOption: any

  constructor(private activateInfo: ActivatedRoute, private router: Router) {
    activateInfo.queryParams.subscribe(queryParams => {
      this.name = queryParams['name']
    });
  }

  ngOnChanges():void{

    this.loadData()

  }

  ngOnInit(): void {

    this.loadData()

    this.barOption = {
      title: {
        text: 'Charts'
      },
      tooltip: {},
      xAxis: {
        data: []
      },
      yAxis: {},
      series: [{
        type: 'line',
        data: []
      }]
    };

  }

  async loadData() {
    var res = await axios.get("http://localhost:8080/booking/booking/list")
    console.log(res);
    if (res.data.code == 200) {
      console.log(res.data);
      this.datas = res.data.data


      var xAxisData: Array<string> = []
      var seriesData: Array<number> = []


      this.datas.forEach(e => {
        var date = e['date']
        var count = e['isDone'] == 0 ? e['count'] : 0
        if (xAxisData.indexOf(date) == -1) {
          xAxisData.push(date)
          seriesData.push(count)
        } else {
          var index = xAxisData.indexOf(date)
          seriesData[index] += count
        }

      })



      this.barOption.xAxis.data = xAxisData.splice(0,7)
      this.barOption.series[0].data = seriesData.splice(0,7)



    } else {
      alert(res)
    }
  }


  add() {
    this.router.navigateByUrl("add")
  }

  async del(item: any) {
    console.log(item['id']);
    var res = await axios.post("http://localhost:8080/booking/booking/delete", { id: item['id'] })
    console.log(res);
    if (res.data.code == 200) {
      this.loadData()
      alert("delete success")
    } else {
      alert(res)
    }
  }
}

