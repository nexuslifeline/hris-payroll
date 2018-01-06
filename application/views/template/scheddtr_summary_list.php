<div>
	<div style="font-size: 11pt;">
		<?php echo $company_setup[0]->company_name; ?>
		<img src="/hrispayroll/<?php echo $company_setup[0]->image_name;?>" style="width: auto; max-width: auto; height: 60px; max-height: 60px; float: right; top: 0px !important;">
		<div style="font-size: 10pt;"><?php echo $company_setup[0]->address ?>
			<br /><br />
		<strong>
			Daily Time Record (Summary) <br />
			Period Covered : <?php if(count($period)!=0){echo $period[0]->payperiod;}else{echo "n/a";} ?>
		</strong>
		<hr><br />
	</div>

			<?php
					if(count($scheddtrsummary)!=0){
			?>
					<table class="table table-striped" style="width:100%;">
						<thead class="thead-inverse" style="text-align:left;">
							<tr>
								<th>Department</th>
								<th>#</th>
								<th>Ecode</th>
								<th>Name</th>
								<th><center>Total (Hours)</center></th>
								<th><center>Total Overtime(Minutes)</center></th>
								<th><center>Total Late(Minutes)</center></th>
							</tr>
						</thead>
						<tbody>
			<?php
						foreach($ref_department as $dept){


								$count=1;
								$lastdept=0;
								foreach($scheddtrsummary as $result){
									if($dept->ref_department_id==$result->ref_department_id){
										if($lastdept==$result->ref_department_id){
											echo "<tr>";
											echo "<td></td>";
											echo "<td>".$count."</td>";
											echo "<td>".$result->ecode."</td>";
											echo "<td>".$result->fullname."</td>";
											echo "<td><center>".$result->totalperiodhours."</center></td>";
											echo "<td><center>".$result->ottime."</center></td>";
											echo "<td><center>".$result->timelate."</center></td>";
											echo "</tr>";
										}
										else{
											echo "<tr>";
											echo "<td>".$dept->department."</td>";
											echo "<td>".$count."</td>";
											echo "<td>".$result->ecode."</td>";
											echo "<td>".$result->fullname."</td>";
											echo "<td><center>".$result->totalperiodhours."</center></td>";
											echo "<td><center>0</center></td>";
											echo "<td><center>".$result->timelate."</center></td>";
											echo "</tr>";
										}


										$count++;
										$lastdept=$result->ref_department_id;
									}

 					 			}
							}

							}
							else{
								echo "<center><h3>No Data</h3></center>";
							}

			?>
</tbody>
</table>
</div>
