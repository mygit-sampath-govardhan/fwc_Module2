/* Generated by Yosys 0.9+2406 (git sha1 ca763e6d5, gcc 10.2.1-6 -fPIC -Os) */

(* top =  1  *)
(* src = "/sdcard/Download/iith/iith/vaman/Assignment-10/codes/Assignment10.v:1.1-35.10" *)
module helloworldfpga(X, Y, Z, A, B, C, D, E, F, G, H);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  (* src = "/sdcard/Download/iith/iith/vaman/Assignment-10/codes/Assignment10.v:7.13-7.14" *)
  output A;
  (* src = "/sdcard/Download/iith/iith/vaman/Assignment-10/codes/Assignment10.v:8.13-8.14" *)
  output B;
  (* src = "/sdcard/Download/iith/iith/vaman/Assignment-10/codes/Assignment10.v:9.13-9.14" *)
  output C;
  (* src = "/sdcard/Download/iith/iith/vaman/Assignment-10/codes/Assignment10.v:10.13-10.14" *)
  output D;
  (* src = "/sdcard/Download/iith/iith/vaman/Assignment-10/codes/Assignment10.v:11.13-11.14" *)
  output E;
  (* src = "/sdcard/Download/iith/iith/vaman/Assignment-10/codes/Assignment10.v:12.13-12.14" *)
  output F;
  (* src = "/sdcard/Download/iith/iith/vaman/Assignment-10/codes/Assignment10.v:13.13-13.14" *)
  output G;
  (* src = "/sdcard/Download/iith/iith/vaman/Assignment-10/codes/Assignment10.v:14.13-14.14" *)
  output H;
  (* src = "/sdcard/Download/iith/iith/vaman/Assignment-10/codes/Assignment10.v:3.13-3.14" *)
  input X;
  (* src = "/sdcard/Download/iith/iith/vaman/Assignment-10/codes/Assignment10.v:4.13-4.14" *)
  input Y;
  (* src = "/sdcard/Download/iith/iith/vaman/Assignment-10/codes/Assignment10.v:5.13-5.14" *)
  input Z;
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X12Y3"),
    .IO_PAD("3"),
    .IO_TYPE("BIDIR")
  ) _11_ (
    .A(_00_),
    .P(A)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X14Y3"),
    .IO_PAD("64"),
    .IO_TYPE("BIDIR")
  ) _12_ (
    .A(_01_),
    .P(B)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X16Y3"),
    .IO_PAD("62"),
    .IO_TYPE("BIDIR")
  ) _13_ (
    .A(_02_),
    .P(C)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X18Y3"),
    .IO_PAD("63"),
    .IO_TYPE("BIDIR")
  ) _14_ (
    .A(_03_),
    .P(D)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X20Y3"),
    .IO_PAD("61"),
    .IO_TYPE("BIDIR")
  ) _15_ (
    .A(_04_),
    .P(E)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X24Y3"),
    .IO_PAD("59"),
    .IO_TYPE("BIDIR")
  ) _16_ (
    .A(_05_),
    .P(F)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X26Y3"),
    .IO_PAD("57"),
    .IO_TYPE("BIDIR")
  ) _17_ (
    .A(_06_),
    .P(G)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X28Y3"),
    .IO_PAD("56"),
    .IO_TYPE("BIDIR")
  ) _18_ (
    .A(_07_),
    .P(H)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X20Y32"),
    .IO_PAD("33"),
    .IO_TYPE("BIDIR")
  ) _19_ (
    .P(X),
    .Q(_08_)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X10Y32"),
    .IO_PAD("27"),
    .IO_TYPE("BIDIR")
  ) _20_ (
    .P(Y),
    .Q(_09_)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X4Y32"),
    .IO_PAD("23"),
    .IO_TYPE("BIDIR")
  ) _21_ (
    .P(Z),
    .Q(_10_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("0"),
    .INIT(9'h001)
  ) A_LUT3_O (
    .I0(_10_),
    .I1(_09_),
    .I2(_08_),
    .O(_00_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*~I1*~I2)"),
    .INIT(9'h002)
  ) B_LUT3_O (
    .I0(_10_),
    .I1(_09_),
    .I2(_08_),
    .O(_01_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*~I1*~I2)"),
    .INIT(9'h002)
  ) C_LUT3_O (
    .I0(_09_),
    .I1(_10_),
    .I2(_08_),
    .O(_02_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*I1*~I2)"),
    .INIT(9'h008)
  ) D_LUT3_O (
    .I0(_10_),
    .I1(_09_),
    .I2(_08_),
    .O(_03_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*~I1*~I2)"),
    .INIT(9'h002)
  ) E_LUT3_O (
    .I0(_08_),
    .I1(_10_),
    .I2(_09_),
    .O(_04_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*I1*~I2)"),
    .INIT(9'h008)
  ) F_LUT3_O (
    .I0(_10_),
    .I1(_08_),
    .I2(_09_),
    .O(_05_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*I1*~I2)"),
    .INIT(9'h008)
  ) G_LUT3_O (
    .I0(_08_),
    .I1(_09_),
    .I2(_10_),
    .O(_06_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*I1*I2)"),
    .INIT(9'h080)
  ) H_LUT3_O (
    .I0(_10_),
    .I1(_09_),
    .I2(_08_),
    .O(_07_)
  );
endmodule
