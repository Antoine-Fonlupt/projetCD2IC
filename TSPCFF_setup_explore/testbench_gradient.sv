// The testbench for the timing measurement of an invertor
// This code is purely digital code, using SystemVerilog language.
// This code mimics what can be done with a real breadboard using
// signal generators and oscilloscopes.

`timescale 1ns/100fs

module testbench;


// The testbench will generate "events" for the breadboard. We define here the time interval
// between two events. The time interval should be long enough to be sure that the DUT (Device
// Under Test) signals are stable when a measurement is asked to the breadboard.
// Warning: a two long time interval may lead to very slow simulations...
parameter real digital_tick    = 10  ;    // (ns) Time between two events on the DUT inputs.

// Logical signals
logic  din                ; // The logic input of the invertor.
logic  clk ;
wire dout                 ; // The logic output of the invertor
// Real signals used send values to the breadboard 
real load_capacitor_val ; // The choosen value of a load capacitor loading the output of the invertor
real din_tt_val  = 1.0e-10           ; // The choosen value of the transition time of the input
real clk_tt_val ;
real din_delay_val = 0.0    ; // An arbitrary incremental delay added to the input transition
real clk_delay_val = 0.0    ;
// Real signals used receive measured values from the breadboard 
real propagation_time   ; // The measured output transition time for a falling output


real xn = 50.0*1e-12;
      real h = 3*1e-12;
      real xn_old = 0;
      real f_xn = 0;
      real f_xnph = 0;
      real alpha = 2e-12;
      

// Breadboard instanciation, using connected signals
board bdut(
                          .clk_logic(clk),
                          .clk_tt_val(clk_tt_val),
                          .din_logic(din), 
                          .dout_electrical(dout),
                          .din_tt_val(din_tt_val),
                          .din_delay_val(din_delay_val),
                          .clk_delay_val(clk_delay_val),
                          .load_capacitor_val(load_capacitor_val),
                          .propagation_time(propagation_time)
                          ) ;

// The list of measurement points is defined by 2 parameters tables extracted from the Liberty 
// files of the gcslib045 library.
// The input slope should no excess the max_input_transition of the library : 200ps
localparam NBSLOPES = 1 ;
localparam NBCAPA = 1 ;
localparam real slope_values[0:NBSLOPES-1] = '{0.10} ; // ns
localparam real capa_values[0:NBCAPA-1] = '{11}; // fF

// Defines a file name for storing output results
string outfilename ;
// Define a file pointer for the file.
int outfile ;
// Define the standard error channel.
integer STDERR = 32'h8000_0002;

logic dout_ref ;
always @(posedge clk)
    dout_ref <= din ;


initial 
begin:simu
   int slope_index,capa_index, clk_delay_val_index ;

   // The ouput file
   $swrite(outfilename,"measurements.dat") ;

   // Open the file for writing
   outfile = $fopen(outfilename,"w") ;

   // Write parameter infos on the first line of the resulting file
   // $fwrite(outfile,"islope(ns) ");
   for(capa_index=0;capa_index<NBCAPA;capa_index++) 
   $fwrite(outfile,"clk_delay_val(ps)  o_fall(ns) ");
   $fwrite(outfile,"\n") ;

   
   // At time 0 input is initialized to 0
   clk = 1'b0 ;
   din = 1'b0 ;

   // Main loop on the din slopes
   for(slope_index=0;slope_index<NBSLOPES;slope_index++) 
   begin
     // We wait on tick in order to be sure that the DUT is "quiet"
     #(digital_tick) ; 

     // Then we update the value of the input slope
     clk_tt_val = slope_values[slope_index]*1.0e-9  ;
     // And we write the slope value in the file
     //$fwrite(outfile,"%010.6f ",slope_values[slope_index] ) ;

     // Secondary loop on the output load capacitor
     for(capa_index=0;capa_index<NBCAPA;capa_index++) 
     begin

      // Add 4th loop here
      clk_delay_val = 100.0*1e-12;

      
      while(((xn-xn_old)>0.2e-12) || ((xn-xn_old)<-0.2e-12))
      begin
         
         clk_delay_val = xn;
         load_capacitor_val = capa_values[capa_index]*1.0e-15  ;
         #(digital_tick) ;
          clk = 1'b1 ;
          #(digital_tick) ;
          clk = 1'b0 ;
          #(digital_tick) ;
          din = 1'b1 ;
          clk = 1'b1 ;
          #(digital_tick) ;
          clk = 1'b0 ;
          din = 1'b0 ;
        f_xn = propagation_time + clk_delay_val;

          clk_delay_val = xn+h;
         load_capacitor_val = capa_values[capa_index]*1.0e-15  ;
         #(digital_tick) ;
          clk = 1'b1 ;
          #(digital_tick) ;
          clk = 1'b0 ;
          #(digital_tick) ;
          din = 1'b1 ;
          clk = 1'b1 ;
          #(digital_tick) ;
          clk = 1'b0 ;
          din = 1'b0 ;
        f_xnph = propagation_time + clk_delay_val;

        xn_old = xn;
         xn = xn - alpha*(f_xnph-f_xn)/h;
        

         $fwrite(outfile,"%010.4f ", clk_delay_val*1e12 ) ;
       $fwrite(outfile,"%010.6f \n",propagation_time/1.0e-9 ) ;
      
       
      end
     end
     $fwrite(outfile,"\n") ;
   end
   $fclose(outfile) ;
   $stop ;
end

endmodule
