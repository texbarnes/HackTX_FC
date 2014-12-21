# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
<script type="text/javascript">

Array slideDownInitHeight = new Array();
	Array slidedown_direction = new Array();

	Boolean slidedownActive = false;
	Boolean contentHeight = false;
	slidedownSpeed = 3; 	// Higher value = faster script
	slidedownTimer = 7;	// Lower value = faster script
	slidedown_showHide(boxId)
	{
		if(!slidedown_direction[boxId])slidedown_direction[boxId] = 1;
		if(!slideDownInitHeight[boxId])slideDownInitHeight[boxId] = 0;
		
		if(slideDownInitHeight[boxId]==0)slidedown_direction[boxId]=slidedownSpeed; else slidedown_direction[boxId] = slidedownSpeed*-1;
		
		slidedownContentBox = document.getElementById(boxId);
		String subDivs = slidedownContentBox.getElementsByTagName('DIV');
		for(int no=0;no<subDivs.length;no++){
			if(subDivs[no].className=='dhtmlgoodies_content')slidedownContent = subDivs[no];	
		}

		contentHeight = slidedownContent.offsetHeight;
	
		slidedownContentBox.style.visibility='visible';
		slidedownActive = true;
		slidedown_showHide_start(slidedownContentBox,slidedownContent);
	}
	slidedown_showHide_start(slidedownContentBox,slidedownContent)
	{

		if(!slidedownActive)return;
		slideDownInitHeight[slidedownContentBox.id] = slideDownInitHeight[slidedownContentBox.id]/1 + slidedown_direction[slidedownContentBox.id];
		if(slideDownInitHeight[slidedownContentBox.id] <= 0){
			slidedownActive = false;	
			slidedownContentBox.style.visibility='hidden';
			slideDownInitHeight[slidedownContentBox.id] = 0;
		}
		if(slideDownInitHeight[slidedownContentBox.id]>contentHeight){
			slidedownActive = false;	
		}
		slidedownContentBox.style.height = slideDownInitHeight[slidedownContentBox.id] + 'px';
		slidedownContent.style.top = slideDownInitHeight[slidedownContentBox.id] - contentHeight + 'px';

		setTimeout('slidedown_showHide_start(document.getElementById("' + slidedownContentBox.id + '"),document.getElementById("' + slidedownContent.id + '"))',slidedownTimer);	// Choose a lower value than 10 to make the script move faster
	}
	
	setSlideDownSpeed(newSpeed)
	{
		slidedownSpeed = newSpeed;
		
	}
</script>