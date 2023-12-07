#  ISHI-KAI Multiple Users Project
We, [ISHI-KAI](https://ishi-kai.org/), are a community that promotes open source PDK & EDA.  
This time, we brought together eight novice semiconductor designers (most of whom were new to semiconductor design), each of whom created an analog circuit, such as an Inverter or OPAmp made using xschem & klayout with P-Cells .  
It will then be a group application that combines them into one layout.  

- ![all_members_layout](images/all_members_layout.jpg)


## How do you run an analog circuit on the OpenMPW GF-1?
Since ISHI-KAI has university professors and semiconductor companies as collaborators, we are able to borrow probers through the generosity of professors and companies.  
Therefore, we plan to prepare a pad on silicon and run analog circuits by probing.  

- ![prober_sample](images/prober_sample.jpg)
- ![pads_layout_sample](images/pads_layout_sample.jpg)


# Members (9 Members)
- [3zki](https://github.com/3zki)
- ajisai
- [bols-blue](https://github.com/bols-blue)
- [gitefu](https://github.com/Gitefu)
- [homelith](https://github.com/homelith)
- [ice458](https://github.com/ice458)
- [noritsuna](https://github.com/noritsuna)
- [ponzu840w](https://github.com/mulwak)
- [yamada3](https://github.com/keropiyo)

# Members' Designs (10 Designs)
## [3zki](member_project/3zki/)
I am a master's student in the semiconductor department.  

- ![3zki_opamp_xschem](images/3zki_opamp_xschem.jpg)
- ![3zki_opamp_layout](images/3zki_opamp_layout.jpg)

## [ajisai](member_project/ajisai/)
I designed my first semiconductor and built an inverter circuit.  

- ![ajisai_inverter_xschem](images/ajisai_inverter_xschem.jpg)
- ![ajisai_inverter_layout](images/ajisai_inverter_layout.jpg)


## [bols-blue](member_project/bols-blue/)
I designed my first semiconductor and built an inverter circuit.  

- ![bols-blue_inverter_xschem](images/bols-blue_inverter_xschem.jpg)
- ![bols-blue_inverter_layout](images/bols-blue_inverter_layout.jpg)

## [gitefu](member_project/Gitefu/)
I am a graduate school student majoring in processor research, and I am involved in robot building with a group called [tofunology](https://tofunology.github.io/site/).

One day, through an event, I learned about the organization [ISHI-KAI](https://ishi-kai.org/) and decided to participate in a project where each member creates an analog circuit to be integrated onto a single chip.

However, I had little knowledge of analog circuits. 
This was my first time making an operational amplifier, and being a beginner, I faced many challenges. However, with a lot of support from [ISHI-KAI](https://ishi-kai.org/)  members, I was able to complete it.

Through this project, I've gained a solid understanding of the fundamentals of analog circuits and the process of creating chips. I feel extremely pleased with the experience


### About My Circuit
This is the operational amplifier on a chip I made for the first time.This operational amplifier was created with reference to following website.  
Akira Tsuchiya「GF180でオペアンプ設計してみよう」[https://note.com/akira_tsuchiya/n/n710ed2d0e428](https://note.com/akira_tsuchiya/n/n710ed2d0e428) (Published:2023/09/19 23:24)

### Contact
X : [@tnk_make](https://twitter.com/tnk_make)

### TestBench
[op_tb.sch](member_project/gitefu/op_tb.sch)  
- ![gitefu_opamp_xschem](images/gitefu_opamp_xschem.jpg)
- ![gitefu_opamp_xschem_PEX](images/gitefu_opamp_xschem_PEX.jpg)

### Last Layout
[op_20231204.gds](member_project/gitefu/op_20231204.gds)  

### Flatten Layout
[op_20231204_flat.gds](member_project/gitefu/op_20231204_flat.gds)  
- ![gitefu_opamp_layout](images/gitefu_opamp_layout.jpg)


## [homelith](member_project/homelith/)
This is the first time I designed my first semiconductor, building a simple inverter circuit.
Although my PMOS design is relatively smaller than expected by counterpart NMOS, I dare submit on current composition.
This attempt tells me a important understanding of principles of semiconductor design and I would like to express my gratitude to this project.

- ![homelith_inverter_xschem](images/homelith_inverter_xschem.jpg)
- ![homelith_inverter_layout](images/homelith_inverter_layout.jpg)

## [ice458](member_project/ice458/)
I designed my first semiconductor and built an ADC circuit.  

### [xschem](member_project/ice458/dynamic_comparator/xschem/)
Included here are the circuit data for the dynamic comparator and 4-bit SAR ADC.  
There does not seem to be a SPICE model of pfet for 5V, so a 6V model must be substituted when performing simulations.  
Except for cmp_only_5v_tb.sch, all other transistors use 3.3V transistors. The simulation works, but I abandoned the design because it seems that GFMPW-1 cannot use 3.3V transistors.  
Use cmp_only_5v_no_label.gds with the labels removed, as the labels will not pass the pre-check tool for some reason.    

- ![ice458_adc_xschem](images/ice458_adc_xschem.jpg)

### [klayout](member_project/ice458/dynamic_comparator/klayout/)
Use cmp_only_5v_no_label.gds with the labels removed, as the labels will not pass the pre-check tool for some reason.  
- ![ice458_adc_layout](images/ice458_adc_layout.jpg)


## [noritsuna](member_project/noritsuna/)
I designed my first semiconductor and built an inverter&opamp circuit.  

### [inverter/xschem](member_project/noritsuna/inverter/xschem/)
Here you will find the schematic for the inverter and the test bench for PEX.  
- ![noritsuna_inverter_xschem](images/noritsuna_inverter_xschem.jpg)
- ![noritsuna_inverter_xschem_PEX](images/noritsuna_inverter_xschem_PEX.jpg)

### [inverter/klayout](member_project/noritsuna/inverter/klayout/)
Here is the layout for the inverter.  
- ![noritsuna_inverter_layout](images/noritsuna_inverter_layout.jpg)

### [opamp/xschem](member_project/noritsuna/opamp/xschem/)
Here you will find the schematic for the opamp and the test bench for PEX.  

- ![noritsuna_opamp_xschem](images/noritsuna_opamp_xschem.jpg)
- ![noritsuna_opamp_xschem_PEX](images/noritsuna_opamp_xschem_PEX.jpg)

### [opamp/klayout](member_project/noritsuna/opamp/klayout/)
Here is the layout for the opamp.  
- ![noritsuna_opamp_layout](images/noritsuna_opamp_layout.jpg)


## [ponzu840w](member_project/ponzu840w/)
I designed my first semiconductor and built an inverter circuit.  

- ![ponzu840w_inverter_xschem](images/ponzu840w_inverter_xschem.jpg)
- ![ponzu840w_inverter_layout](images/ponzu840w_inverter_layout.jpg)


## [yamada3](member_project/yamada3/)
I designed my third semiconductor and built an opamp circuit.  

- ![yamada3_opamp_xschem](images/yamada3_opamp_xschem.jpg)
- ![yamada3_opamp_layout](images/yamada3_opamp_layout.jpg)

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 
