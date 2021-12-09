var oCanvas = document.getElementById("firefly");
	oCanvas.width = document.body.clientWidth
	oCanvas.height = document.body.clientHeight
			var can = oCanvas.getContext("2d");
			var w=document.body.clientWidth;
			var h=document.body.clientHeight;
			var scolor =["#EAF048","#EAF048"]
			var sBubble =[];

			function random(min,max){
				return Math.random()*(max-min)+min;
			}

			function Bubble(){};
				Bubble.prototype={
					init:function() {
						this.x=random(0,w);
						this.y=random(0,h);
						this.r=random(2,3);
						this.color=scolor[Math.floor(random(0,1))];
						this.vx=random(-0.5,0.5);
						this.vy=random(-0.5,0.5);
					},
					draw:function(){
						can.beginPath();
						can.shadowBlur=10;
						can.shadowColor="#65b8ff";
						can.fillStyle=this.color;
						can.arc(this.x,this.y,this.r,0,Math.PI*2);
						can.fill();
					},
					move:function(){
						this.x+=this.vx;
						this.y+=this.vy;
						if(this.x-this.r<0||this.x+this.r>w){
							this.vx=-this.vx;
						}
						if(this.y-this.r<0||this.y+this.r>h){
							this.vy=-this.vy;
						}
						this.draw();
					}
				}
				
				function creatBubble(num){
					for(var i=0;i<num;i++){
						var bubble = new Bubble();
							bubble.init();
							bubble.draw();
							sBubble.push(bubble);
							}
						}
						creatBubble(25);

				setInterval(function(){
					can.clearRect(0,0,w,h);
					for(var item of sBubble){
						item.move();
					}
				},1000/60)