<div style="margin: 20px;">
	<div style="font-size: 11pt;">
		<?php echo $company->company_name ?>
		<img src="/hrispayroll/<?php echo $company->image_name;?>" style="width: auto; max-width: auto; height: 60px; max-height: 60px; float: right; top: 0px !important;">
		<div style="font-size: 10pt;"><?php echo $company->address ?></div> <br />

		<strong>
			Pag-Ibig Report for the Month of <?php echo $month; ?> <br />
			Branch : <?php echo $branch; ?></strong>
		<hr>
		<br />
	</div>
<table class="table" style="width:100%;">
		<thead class="thead-inverse">
			<tr>
				<th>#</th>
				<?php if ($month == "All") {?>
				<th style="text-align:left;">Period</th>
				<?php } ?>
				<th style="width:15%;text-align:left;">Ecode</th>
				<th style="width:30%;text-align:left;">Name</th>
				<th style="width:20%;text-align:left;">Pag-Ibig No.</th>
				<th style="width:20%;text-align:left;">Pag-Ibig Contribution</th>
			</tr>
		</thead>
		<tbody>
			<?php
			$total_pagibig=0;
			$count=1;
			if(count($sss_report)!=0 || count($sss_report)!=null){
				foreach($sss_report as $row){
					$total_pagibig+=$row->pagibig_deduction;
					if ($row->pagibig_deduction != 0){
				 ?>
					<tr>
					<td><?php echo $count; ?></td>
					<?php if ($month == "All"){?>
					<td>
						<?php
						$time = strtotime($row->pay_period_start);
						echo date("F", $time);
						?>
					</td>
					<?php } ?>
					<td><?php echo $row->ecode; ?></td>
					<td><?php echo $row->full_name; ?></td>
					<td><?php echo $row->pag_ibig; ?></td>
					<td><?php echo number_format($row->pagibig_deduction,2); ?></td>
				</tr>
	 		<?php
	 			$count++;
				} } }
	 			else{ ?>
	 				<tr>
							<td colspan="5" style="font-size:14pt;"><center>No Result</center></td>
					</tr>
	 			<?php
	 			} ?>
	 			<tr>
					<?php if ($month == "All"){?>
					<td style="border-bottom: 1px solid #95a5a6 !important;" colspan="6"></td>
					<?php } else { ?>
					<td style="border-bottom: 1px solid #95a5a6 !important;" colspan="5"></td>
					<?php } ?>
	 			</tr>
	 			<tr>
					<?php if ($month == "All"){?>
					<td style="text-align:right;font-weight:bold;" colspan="5">Total:</td>
					<?php } else { ?>
					<td style="text-align:right;font-weight:bold;" colspan="4">Total:</td>
					<?php } ?>
	 				<td style="font-weight:bold;color:#27ae60;"><?php echo number_format($total_pagibig,2);?></td>
	 			</tr>
		</tbody>
</table>
</div>
