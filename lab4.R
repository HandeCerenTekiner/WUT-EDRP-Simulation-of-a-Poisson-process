
poisonProcess<-function(tm){ 
  lamda=0.5
  t = 0
  c = 0
  while(TRUE)
  {
    pro1 = rexp(1,rate=lamda)
    tnew = t + pro1
    if(tnew > tm)
    {
      break;
    }
    else{
      t = tnew;
      c = c + 1;
    }
  }
  return(c)
}

PoiRes = rep(0, 10000)
for(i in 1:10000)
{
  PoiRes[i] = poisonProcess(10)
  
}

mean(PoiRes)
var(PoiRes)