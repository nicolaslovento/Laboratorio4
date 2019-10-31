import { Component, OnInit } from '@angular/core';
import { UploadFilesService } from 'src/app/servicios/upload-files.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  file:FileList;
  constructor(private uploadFile:UploadFilesService) { }

  ngOnInit() {
  }

  fileSubido(event){
    this.file=event.target.files;
    console.log(this.file);
  }



  subirArchivo(){


    for(let i=0;i<this.file.length;i++){
      this.uploadFile.subirArchivo(this.file[i]);
    }


  }

  /* Falta hacer grilla para transformar texto en CSV, PDF, ect
  */




}
