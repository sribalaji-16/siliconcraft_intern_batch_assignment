# Question 1
> ## Bit Select Access
 Use a vector reg [7:0] data  
 Assign data = 8'b10101100  
 Access specific bit using data[3];  
#### Implementation

+ To implement this first we need to assign a data with port size of 8 bits (i.e [7:0] data ).

+ To specifically access the bit from the vector we need to specify the bit using that data defined (i.e data [3]). 

> ### Coding
Code to implement this operation is
```verilog
module bit_select_access;
reg [7:0] data;
initial begin
assign data=8'b10101100;
$display(data[3]);
end
endmodule
```
> ### Output
![Output generation](![WhatsApp Image 2025-05-29 at 02 19 35_81882181](https://github.com/user-attachments/assets/529f3972-e8d4-48b3-8dfd-22cd76cc5623)
)

 # Question 2
> ## Part Select Operation
 Extract lower nibble from reg [7:0] bus using bus[3:0];  
#### Implementation
+ To implement this first we need to assign a data with port size of 8 bits (i.e [7:0] bus ).

+ To access the certain part of bits from the vector we need to specify the bit using that data defined in terms with specifing those ports with their positions (i.e bus [3:0]). 

> ### Coding
Code to implement this operation is
```verilog
module part_select_operation;
reg [7:0] bus;
initial begin
assign bus=8'b10101100;
$display(bus[3:0]);
end
endmodule
```
> ### Output
![Output generation](![WhatsApp Image 2025-05-29 at 02 19 35_61499b94](https://github.com/user-attachments/assets/e5916560-4c57-4081-9480-911dadad0e71)
)

 # Question 3
> ## Manipulate Vector Using Part Select
 Assign and modify specific bits using both busA[i] = bus[i]; and busA = bus[3:0];  

#### Implementation
+ To implement this first we need to assign a data with port size of 8 bits and 4 bits  (i.e [7:0] bus , [3:0] busA).

+ To access the certain part of bits from the vector we need to specify the bit using that data defined in terms with specifing those ports with their positions (i.e busA = %b", busA). 

+ To specifically access the Part select bit from the vector we need to specify the bit using that data defined (i.e busA = %b", busA). 

> ### Coding
Code to implement this operation is
```verilog
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
```
> ### Output
![Output generation](![WhatsApp Image 2025-05-29 at 02 19 35_b3e62ebf](https://github.com/user-attachments/assets/5c6bdd7e-5084-4b21-92bc-d554e4fc3c84)
)

# Question 4
> ## 1D Memory Model
 Declare reg [7:0] mem[7:0];  
 Write and read values to/from it.  

#### Implementation
+ To implement this first we need to create a memory mem of having 8 element array which has having 8 bit sizeof data

+  For writing as well as reading we can use for loop statement to implement this assignment 

> ### Coding
Code to implement this operation is
```verilog
module one_d_memory_model;
  reg [7:0] mem [7:0];
  integer i;
  initial begin
    for (i = 0; i < 8; i = i + 1)
      mem[i] = i * 8'b10100111;
    for (i = 0; i < 8; i = i + 1)
      $display("mem[%0d] = %b", i, mem[i]);
  end
endmodule
```
> ### Output
![Output generation](![WhatsApp Image 2025-05-29 at 02 19 35_3e79f061](https://github.com/user-attachments/assets/79a89236-0c8e-4871-bf97-aac532f087bd)
)
)
