import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './componentes/home/home.component';
import { AngularFireModule} from '@angular/fire';
import { AngularFirestoreModule} from '@angular/fire/firestore';
import { AngularFireStorageModule } from '@angular/fire/storage';
import {HttpClientModule} from '@angular/common/http';
const firebaseConfig = {
  apiKey: "AIzaSyAHqhbqGLKgiFUFoemoRdFCKBgJx6pZIdc",
  authDomain: "clase10-8b23d.firebaseapp.com",
  databaseURL: "https://clase10-8b23d.firebaseio.com",
  projectId: "clase10-8b23d",
  storageBucket: "clase10-8b23d.appspot.com",
  messagingSenderId: "864600216754",
  appId: "1:864600216754:web:c29f5ae49e467e86f465ab"
};

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    AngularFireModule.initializeApp(firebaseConfig),
    AngularFirestoreModule,
    AngularFireStorageModule,
    HttpClientModule

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
