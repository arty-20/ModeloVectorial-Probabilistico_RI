import { Component, OnInit, Input} from '@angular/core';

@Component({
  selector: 'app-res',
  templateUrl: './res.component.html',
  styleUrls: ['./res.component.css']
})
export class ResComponent implements OnInit {
  @Input() palabra;
  constructor() { }

  ngOnInit() {
  }

}
