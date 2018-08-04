" Vim syntax file
" Language: WLA-DX Assembly
" Maintainer: Tommy Savaria & Samuel Volk
" Latest Revision: 3 August 2018

if exists("b:current_syntax")
	finish
endif

syn match wlaIdentifier /\w\+/
syn match wlaDirective "\.[A-Za-z][0-9A-Za-z-_]*"

syn match wlaLabel "[A-Za-z0-9_@]\+:"
syn match wlaLabel "^[+-]\+"

syn case ignore
syn keyword wla6502Instruction ADC AND ASL BCC BCS BEQ BIT BMI BNE BPL BRK BVC BVS CLC CLD CLI CLV CMP CPX CPY DEC DEX DEY EOR INC INX INY JMP JSR LDA LDX LDY LSR NOP ORA PHA PHP PLA PLP ROL ROR RTI RTS SBC SEC SED SEI STA STX STY TAX TAY TSX TXA TXS TYA 
syn keyword wla65c02Instruction	BBR0 BBR1 BBR2 BBR3 BBR4 BBR5 BBR6 BBR7 BBS0 BBS1 BBS2 BBS3 BBS4 BBS5 BBS6 BBS7 DEA INA PHX PHY PLX PLY RMB0 RMB1 RMB2 RMB3 RMB4 RMB5 RMB6 RMB7 SMB0 SMB1 SMB2 SMB3 SMB4 SMB5 SMB6 SMB7 STZ TRB TSB 
syn keyword wla65816Instruction BRA BRL COP JML JSL MVN MVP PEA PEI PER PHB PHD PHK PLB PLD REP RTL SEP TCD TCS TDC TSC TXY TYX WDM XBA XCE
syn keyword wlagbInstruction ADC ADD AND BIT CALL CCF CP CPL DAA DEBUG DEC DI EI HALT INC JP JR LD LDD LDH LDI NOP OR POP PUSH RES RET RETI RL RLA RLC RLCA RR RRA RRC RRCA RST SBC SCF SET SLA SRA SRL STOP SUB SWAP XOR
syn case match

syn match wlaDecNumber /\d\+/
syn match wlaHexNumber /\$[0-9A-Fa-f]\+/
syn match wlaHexNumber /[0-9A-Fa-f]\+h/
syn match wlaBinNumber /%[01]\+/

syn match wlaString /".*"/
syn match wlaChar /'.'/
syn match wlaComment /;.*\n/
syn match wlaComment /^\s*\*.*\n/

hi def link wla6502Instruction Keyword
hi def link wla65816Instruction Keyword
hi def link wla65C02Instruction Keyword
hi def link wlagbInstruction Keyword

hi def link wlaDirective PreProc

hi def link wlaLabel Label

hi def link wlaDecNumber Number
hi def link wlaHexNumber Number
hi def link wlaBinNumber Number

hi def link wlaComment Comment
hi def link wlaSpecial Special
hi def link wlaString String
hi def link wlaChar Character
hi def link wlaIdentifier Identifier
