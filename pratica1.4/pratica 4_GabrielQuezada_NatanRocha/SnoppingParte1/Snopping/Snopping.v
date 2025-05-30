module Snopping (
    input wire i_Start,
    input wire i_Clock,
    input wire [1:0] i_Operation
);

  wire [1:0] w_Message;
  Emissor u_Emissor (
      i_Clock,
      i_Start,
      i_Operation,
      w_Message
  );

  Receptor u_Receptor (w_Message);

endmodule
