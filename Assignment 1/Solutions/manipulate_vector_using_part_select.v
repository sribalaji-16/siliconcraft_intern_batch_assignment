/* 
Manipulate Vector Using Part Select
Assign and modify specific bits using both busA[i] = bus[i]; and busA = bus[3:0]; 
*/

module manipulate_vector_using_part_select;
  reg [7:0] bus;
  reg [3:0] busA;  
  integer i;
  initial begin
    bus = 8'b11010110;
    
    for (i = 0; i < 4; i = i + 1)
      begin
      busA[i] = bus[i];
      end
    
    $write("(Bit select process) ");
    $display("busA = %b", busA);
    busA = bus[3:0];
    
    $write("(Part select process) ");
    $display("busA = %b", busA);

  end
endmodule
