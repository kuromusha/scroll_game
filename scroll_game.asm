;
  ORG  $F000
;
#0028 EQU  $0028
#03C0 EQU  $03C0
#03E7 EQU  $03E7
#D000 EQU  $D000
#D001 EQU  $D001
#D027 EQU  $D027
#D028 EQU  $D028
#D3BF EQU  $D3BF
#D3C0 EQU  $D3C0
#D3E6 EQU  $D3E6
#D3E7 EQU  $D3E7
;
  LD   A,$D0
  OUT  ($E8),A
  LD   HL,#D028
  LD   DE,#D000
  LD   BC,#03C0
  LDIR
  LD   HL,#D3C0
  LD   A,$00
  LD   B,$28
#F016
  LD   (HL),A
  INC  HL
  DEC  B
  JR   NZ,#F016
  RET
  NOP
  NOP
  NOP
  NOP
  LD   A,$D0
  OUT  ($E8),A
  LD   HL,#D3BF
  LD   DE,#D3E7
  LD   BC,#03C0
  LDDR
  LD   HL,#D000
  LD   A,$00
  LD   B,$28
#F036
  LD   (HL),A
  INC  HL
  DEC  B
  JR   NZ,#F036
  RET
  NOP
  NOP
  NOP
  NOP
  LD   A,$D0
  OUT  ($E8),A
  LD   HL,#D001
  LD   DE,#D000
  LD   BC,#03E7
  LDIR
  LD   HL,#D027
  LD   A,$00
  LD   B,$19
  LD   DE,#0028
#F059
  LD   (HL),A
  ADD  HL,DE
  DEC  B
  JR   NZ,#F059
  RET
  NOP
  LD   A,$D0
  OUT  ($E8),A
  LD   HL,#D3E6
  LD   DE,#D3E7
  LD   BC,#03E7
  LDDR
  LD   HL,#D000
  LD   A,$00
  LD   B,$19
  LD   DE,#0028
#F079
  LD   (HL),A
  ADD  HL,DE
  DEC  B
  JR   NZ,#F079
  RET
  NOP
