module layer2(g,a,c0,go,ao);
input [31:0] g,a;
input c0;
output [31:0] go,ao;

assign ao[0] = a[0];
assign ao[1] = a[1];
assign ao[2] = a[2];
assign go[0] = g[0];
adder1 u1({g[1],a[1]},c0,go[1]);
adder1 u2({g[2],a[2]},g[0],go[2]);
adder2	u3	({g[3	],a[3	]},{g[1	],a[1	]},{go[3	],ao[3	]});
adder2	u4	({g[4	],a[4	]},{g[2	],a[2	]},{go[4	],ao[4	]});
adder2	u5	({g[5	],a[5	]},{g[3	],a[3	]},{go[5	],ao[5	]});
adder2	u6	({g[6	],a[6	]},{g[4	],a[4	]},{go[6	],ao[6	]});
adder2	u7	({g[7	],a[7	]},{g[5	],a[5	]},{go[7	],ao[7	]});
adder2	u8	({g[8	],a[8	]},{g[6	],a[6	]},{go[8	],ao[8	]});
adder2	u9	({g[9	],a[9	]},{g[7	],a[7	]},{go[9	],ao[9	]});
adder2	u10	({g[10	],a[10	]},{g[8	],a[8	]},{go[10	],ao[10	]});
adder2	u11	({g[11	],a[11	]},{g[9	],a[9	]},{go[11	],ao[11	]});
adder2	u12	({g[12	],a[12	]},{g[10	],a[10	]},{go[12	],ao[12	]});
adder2	u13	({g[13	],a[13	]},{g[11	],a[11	]},{go[13	],ao[13	]});
adder2	u14	({g[14	],a[14	]},{g[12	],a[12	]},{go[14	],ao[14	]});
adder2	u15	({g[15	],a[15	]},{g[13	],a[13	]},{go[15	],ao[15	]});
adder2	u16	({g[16	],a[16	]},{g[14	],a[14	]},{go[16	],ao[16	]});
adder2	u17	({g[17	],a[17	]},{g[15	],a[15	]},{go[17	],ao[17	]});
adder2	u18	({g[18	],a[18	]},{g[16	],a[16	]},{go[18	],ao[18	]});
adder2	u19	({g[19	],a[19	]},{g[17	],a[17	]},{go[19	],ao[19	]});
adder2	u20	({g[20	],a[20	]},{g[18	],a[18	]},{go[20	],ao[20	]});
adder2	u21	({g[21	],a[21	]},{g[19	],a[19	]},{go[21	],ao[21	]});
adder2	u22	({g[22	],a[22	]},{g[20	],a[20	]},{go[22	],ao[22	]});
adder2	u23	({g[23	],a[23	]},{g[21	],a[21	]},{go[23	],ao[23	]});
adder2	u24	({g[24	],a[24	]},{g[22	],a[22	]},{go[24	],ao[24	]});
adder2	u25	({g[25	],a[25	]},{g[23	],a[23	]},{go[25	],ao[25	]});
adder2	u26	({g[26	],a[26	]},{g[24	],a[24	]},{go[26	],ao[26	]});
adder2	u27	({g[27	],a[27	]},{g[25	],a[25	]},{go[27	],ao[27	]});
adder2	u28	({g[28	],a[28	]},{g[26	],a[26	]},{go[28	],ao[28	]});
adder2	u29	({g[29	],a[29	]},{g[27	],a[27	]},{go[29	],ao[29	]});
adder2	u30	({g[30	],a[30	]},{g[28	],a[28	]},{go[30	],ao[30	]});
adder2	u31	({g[31	],a[31	]},{g[29	],a[29	]},{go[31	],ao[31	]});

endmodule