PulseOsc osc => dac;

220 => osc.freq;
0.05 => osc.gain;

277 => int lowCeil;
311 => int highCeil;
1500 => int timeFrame;

while(1){

    for(0=>int i; i<timeFrame;i++){
        (lowCeil + i*(highCeil-lowCeil)/timeFrame)=>osc.freq;
        1::ms=>now;
    }

    for(0=>int i; i<timeFrame;i++){
        (highCeil - i*(highCeil-lowCeil)/timeFrame)=>osc.freq;
        1::ms=>now;
    }
}