import { QuestionService } from './../question.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-question-manage',
  templateUrl: './question-manage.component.html',
  styleUrls: ['./question-manage.component.css']
})
export class QuestionManageComponent implements OnInit {

  constructor(private service: QuestionService) { }

  ngOnInit() {
  }

}
