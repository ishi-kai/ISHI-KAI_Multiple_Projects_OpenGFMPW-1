Included here are the circuit data for the dynamic comparator and 4-bit SAR ADC.  
ここに含まれているのはダイナミックコンパレータと4bit SAR ADCの回路データです。  
  
There does not seem to be a SPICE model of pfet for 5V, so a 6V model must be substituted when performing simulations.  
5Vのpfetのspiceモデルが存在しないようなので、シミュレーションを動かすには6Vのトランジスタを代わりに使用する必要があります。 
  
Except for cmp_only_5v_tb.sch, all other transistors use 3.3V transistors. The simulation works, but I abandoned the design because it seems that GFMPW-1 cannot use 3.3V transistors.  
cmp_only_5v_tb.schで参照されている回路以外すべては3.3Vのトランジスタを使用しています。シミュレーションは動きますが、GFMPW-1では3.3Vのトランジスタが使用できないようなので設計を途中で放棄しています。  
  
For some reason using labels did not pass the precheck tool, so use cmp_only_5v_no_label.gds for tapeout.  
何らかの理由でラベルがあるとプリチェックツールを合格できないので、ラベルを消したcmp_only_5v_no_label.gdsを使ってください。  
