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
localparam real capa_values[0:NBCAPA-1] = '{11}; //'{0.02,1.25,2.5,5,11,21,42}; // fF

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
   $fwrite(outfile,"load_cap(fF)  clk_delay_val(ps)  dout(V)\n");
   for(capa_index=0;capa_index<NBCAPA;capa_index++) 


   // At time 0 input is initialized to 0
   clk = 1'b0 ;
   din = 1'b0 ;
   #(digital_tick) ;
   clk = 1'b1 ;
   #(digital_tick) ;
   clk = 1'b0 ;
   #(digital_tick) ; 

   // Main loop on the din slopes
   for(slope_index=0;slope_index<NBSLOPES;slope_index++) 
   begin
     // We wait on tick in order to be sure that the DUT is "quiet"

     // Then we update the value of the input slope
     clk_tt_val = slope_values[slope_index]*1.0e-9  ;
     // And we write the slope value in the file
     //$fwrite(outfile,"%010.6f ",slope_values[slope_index] ) ;

     // Secondary loop on the output load capacitor
     for(capa_index=0;capa_index<NBCAPA;capa_index++) 
     begin

      // Add 4th loop here
      real clk_delay_val_range = -146*1e-12;

      for (clk_delay_val_index = 40; clk_delay_val_index>=0; clk_delay_val_index--)
      begin
         //clk_delay_val = clk_delay_val_index*5.0e-12;
         clk_delay_val = clk_delay_val_index*clk_delay_val_range/40;
       // We wait on tick in order to be sure that the DUT is "quiet"
        // #(digital_tick) ; 

       // Then we update the value of the load capacitance
       load_capacitor_val = capa_values[capa_index]*1.0e-15  ;
       $fwrite(outfile,"%010.4f ", load_capacitor_val*1e15) ;

         // And we write the clk delay value in the file
         $fwrite(outfile,"%010.4f ", clk_delay_val*1e12 ) ;

        // Then we wait on tick in order to be sure that the DUT is "quiet"
        din = 1'b1 ;
        #(digital_tick) ;
        clk = 1'b1 ;
        din = 1'b0 ;
        #(digital_tick) ;

        // dout must be equal to 1
        $fwrite(outfile,"%010.4f \n", dout) ;

        clk = 1'b0 ;
        #(digital_tick) ;
        clk = 1'b1 ;
        #(digital_tick) ;
        clk = 1'b0 ;
        #(digital_tick) ;
        din = 1'b1 ;
        #(digital_tick) ;


      end
     end
     $fwrite(outfile,"\n") ;
   end
   $fclose(outfile) ;
   $stop ;
end

endmodule
