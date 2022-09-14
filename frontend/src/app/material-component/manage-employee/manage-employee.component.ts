import { Component, OnInit } from '@angular/core';
import { MatTableDataSource } from '@angular/material/table';
import { SnackbarService } from 'src/app/services/snackbar.service';
import { UserService } from 'src/app/services/user.service';
import { GlobalConstants } from 'src/app/shared/global-constants';

@Component({
  selector: 'app-manage-employee',
  templateUrl: './manage-employee.component.html',
  styleUrls: ['./manage-employee.component.scss']
})
export class ManageEmployeeComponent implements OnInit {
  displayedColumns: string[] = ['name','email','contactNumber','status'];
  dataSource:any;
  responseMessage:any;

  constructor(private userService: UserService,
    private snacbarService: SnackbarService) { }

  ngOnInit(): void {
    this.tableData();
  }

  tableData(){
    this.userService.getUsers().subscribe((response:any) => {
      this.dataSource = new MatTableDataSource(response);   
    },(error:any) => {
      if(error.error?.message){
        this.responseMessage = error.error?.message;
      }
      else{
        this.responseMessage = GlobalConstants.genericError;
      }
      this.snacbarService.openSnackBar(this.responseMessage, GlobalConstants.error);
    })
  }

  applyFilter(event:Event){
    const filterValue = (event.target as HTMLInputElement).value;
    this.dataSource.filter = filterValue.trim().toLowerCase();
  }

  handleChangeAction(status:any,id:any){
    var data ={
      status: status.toString(),
      id:id
    }
    this.userService.update(data).subscribe((response:any) => {
      this.responseMessage = response?.message;
      this.snacbarService.openSnackBar(this.responseMessage,"success");
    },(error:any) =>{
      if(error.error?.message){
        this.responseMessage = error.error?.message;
      }
      else{
        this.responseMessage = GlobalConstants.genericError;
      }
      this.snacbarService.openSnackBar(this.responseMessage, GlobalConstants.error);
    })
  }

}
