\ Must be incuded after simple_hal.f

$40023800 constant RCC
$04 REGS{
   $40 OFFSET>REGS
   REG APB1ENR   REG APB2ENR
}REGS

$40012000 constant ADC1
$04 REGS{
    REG SR    REG CR1   REG CR2
    REG SMPR1 REG SMPR2 REG JOFR1
    REG JOFR2 REG JOFR3 REG JOFR4
    REG HTR   REG LTR   REG SQR1
    REG SQR2  REG SQR3  REG JSQR
    REG JDR1  REG JDR2  REG JDR3
    REG JDR4  REG DR
}REGS
$04 REGS{
    $300 OFFSET>REGS
    REG CSR  REG CCR
}REGS

8  1BIT MASK CONSTANT ADC1EN    
0  1BIT MASK CONSTANT ADON      
1  1BIT MASK CONSTANT CONT      
20 4BIT MASK CONSTANT L         \ Regular channel sequence length
4  1BIT MASK CONSTANT STRT      
30 1BIT MASK CONSTANT SWSTART   

: ADC_INIT
    ADC1EN  RCC APB2ENR bis!
    ADON  ADC1 CR2 bis!        
    CONT  ADC1 CR2 bis!       
    0 ADC1 SMPR1 !           
    L  ADC1 SQR1 bic!         
    0 ADC1 SQR3 !               
    3 0 GPIOA MODE!             
;

: ADC_ON  ADON  ADC1 CR2 bis!  ;
: ADC_OFF  ADON  ADC1 CR2 bic!  ;

: START_CONVERSION             
    STRT ADC1 SR bis!           \ Regular Channel Start Flag
    SWSTART ADC1 CR2 bis!       
;
