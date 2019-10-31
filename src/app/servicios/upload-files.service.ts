import { Injectable } from '@angular/core';
import { AngularFireStorage } from '@angular/fire/storage';
import { HttpClient } from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class UploadFilesService {

  constructor(private fireStorage:AngularFireStorage,private http:HttpClient) { }

  subirArchivo(file:any){

    const ref=this.fireStorage.ref(file.name);
    ref.put(file).then(res=>{
      console.log(res);
    })
  }


}
