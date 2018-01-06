<div>
	<div style="font-size: 11pt;">
		<?php echo $company_setup[0]->company_name; ?>
		<img src="/hrispayroll/<?php echo $company_setup[0]->image_name;?>" style="width: auto; max-width: auto; height: 60px; max-height: 60px; float: right; top: 0px !important;">
		<div style="font-size: 10pt;"><?php echo $company_setup[0]->address ?>
			<br /><br />
	<strong>
		Daily Time Record <br />
		Employee Name : <?php if(count($scheddtr)!=0){ echo $scheddtr[0]->fullname;}else{echo "n/a";} ?> <br />
		Period Covered: <?php if(count($scheddtr)!=0){echo $scheddtr[0]->payperiod;}else{echo "n/a";} ?>
				<br />
				<hr><br />
			</strong>
		</div>

		<?php if(count($scheddtr)!=0){?>
					<table class="table table-striped" style="width:100%;">
						<thead class="thead-inverse">
							<tr>
								<th style="text-align: center;">#</th>
								<th><center>Date</center></th>
								<th><center>Clock In</center></th>
								<th><center>Clock Out</center></th>
								<th><center>Breaktime(hour)</center></th>
								<th><center>Total</center></th>
							</tr>
						</thead>
						<tbody>
			<?php
						$total_breaktime=0;
						$total_periodhrs=0;
						$total_minutelate=0;
						$total_ot = 0;
						$count=1;
						foreach($scheddtr as $result){
 						//  $timelate = abs($result->timelate-$result->breaktime);
 						if($result->timelate==null || $result->timelate==''){
 							$timelate="";
 						}
 						else{
 							$timelate=abs($result->timelate);
 						}
						$time_in_temp=explode(" ",$result->time_in);
						$time_out_temp=explode(" ",$result->time_out);

						$clock_in_temp=explode(" ",$result->clock_in);
						if(isset($clock_in_temp[1])==''){
							$clock_in_temp[1]='';
						}
						$clock_out_temp=explode(" ",$result->clock_out);
						if(isset($clock_out_temp[1])==''){
							$clock_out_temp[1]='';
						}
						?>
						<tr>
							<td><center><?php echo $count;?>.</center></td>
						 	<td><center><?php echo $result->date; ?></center></td>
							<td><center><?php echo $clock_in_temp[1]; ?></center></td>
							<td><center><?php echo $clock_out_temp[1]; ?></center></td>
							<td><center><?php echo $result->breaktime; ?></center></td>
							<td><center><?php echo $result->newhour; ?></center></td>
						</tr>

						<?php
							$total_breaktime+=$result->breaktime;
							$total_periodhrs+=$result->newhour;
							$total_minutelate+=$timelate;
							$total_ot+=$result->ottime;
							$count++;
 					 }
					 ?>
					 <tr>
						 <td colspan="6" style="border-bottom: 1px solid #95a5a6 !important;"></td>
					 </tr>
						 <tr>
							 <td colspan="3"></td>
							 <td><center><b>Total</b></center></td>
							 <td><center><b><?php echo $total_breaktime; ?> Hours</center><b></td>
							 <td><center><b><?php echo $total_periodhrs; ?> Hours</center><b></td>
						 </tr>
					 <?php
					}
					else{
						echo "<center><h3>No Data</h3></center>";
					}
			?>
</tbody>
</table>
</div>
