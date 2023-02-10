import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component'
import { LoginComponent } from './login/login.component'
import { NotfoundComponent } from './notfound/notfound.component'
import { AddComponent } from './add/add.component'

const routes: Routes = [
  {
    path: 'home',
    component: HomeComponent
  },
  {
    path: 'login',
    component: LoginComponent
  }, 
  {
    path: 'add',
    component: AddComponent
  },

  {
    path: '',
    component: LoginComponent
  },
  {
    path: '**',
    component: NotfoundComponent
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
