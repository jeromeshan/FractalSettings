   M S B A M L   `   `   `  ���� J  FFractalSettings, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:FractalSettingsFractalSettings       FractalSettings.MainWindow   X TXceed.Wpf.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:FractalSettings       � Title$  
MainWindow��$	��450��$	��800��.��� .+��� -    ��Name$ connectButton��$��Отправить��$
��Left=�$��	10,41,0,0q�$	��Top=�$��75���� -    ��Name$ 	InfoLabel��$��Label��$
��Left=�$��	10,10,0,0q�$	��Top=�#  Xceed.Wpf.Toolkit.ColorPicker  -   $��color_picker��$
��Left=�$��
111,68,0,0q�$	��Top=�$	��119��   SelectedColor$ BlackX��� $��Цвет��$
��Left=�$��	10,65,0,0q�$	��Top=� J� RenderTransformOrigin$ 0.857,2.664&��� $��Период��$
��Left=�$��	10,96,0,0q�$	��Top=��� $��Дельта��$
��Left=�$��
10,127,0,0q�$	��Top=��� $��D��$
��Left=�$��
10,158,0,0q�$	��Top=��� $��N гармоник��$
��Left=�$��
10,189,0,0q�$	��Top=��� $��Sigma��$
��Left=�$��
10,220,0,0q�$	��Top=��� $��b��$
��Left=�$��
10,251,0,0q�$	��Top=�$ -2.758,0.617&��� $��b-коэффицент��$
��Left=�$��
10,282,0,0q�$	��Top=��� -    ��Name$ T_value��$
��Left=�$��23��$��
111,99,0,0q� �� TextWrapping$
 Wrap=�$��30��$	��Top=�$	��120���� -   $ dt_value��$
��Left=�$��23��$��111,131,0,0q�$
 Wrap=�$
��0.05��$	��Top=�$	��120���� -   $ D_value��$
��Left=�$��23��$��111,162,0,0q�$
 Wrap=�$	��1.6��$	��Top=�$	��120���� -   $ N_value��$
��Left=�$��23��$��111,192,0,0q�$
 Wrap=�$��10��$	��Top=�$	��120���� -   $ sigma_value��$
��Left=�$��23��$��111,224,0,0q�$
 Wrap=�$	��3.3��$	��Top=�$	��120���� -	   $ b_value��$
��Left=�$��23��$��111,255,0,0q�$
 Wrap=�$	��2.5��$	��Top=�$	��120���� -
   $ s_value��$
��Left=�$��23��$��111,286,0,0q�$
 Wrap=�$��0.005��$	��Top=�$	��120���� $��
Режим��$
��Left=�$��
10,312,0,0q�$	��Top=��� -    ��Name$ 
mode_value��$
��Left=�$��111,315,0,0q�$	��Top=�$	��120�� �� SelectedIndex$ 0��.@��� Кольцо�� Полотно�� Ничего�� -   	 ��Name$	 
distSlider��$
��Left=�$��111,345,0,0q�$	��Top=�
 � Maximum$

 0.25Q� � SmallChange$
 0.01Q�$ -1.044,-0.25&�$��80�� �� TickPlacement$ BottomRight=� �� AutoToolTipPlacement$ BottomRight=� �� TickFrequency$ 10Q� � Value$
 0.08Q� �� AutoToolTipPrecision$ 2���� -   $ discDist_value�� �� 
IsReadOnly . $
��Left=�$��23��$��196,343,0,0q�$
 Wrap=�$	��Top=�$��35��$ 0.507,-0.296&�����  �� ElementName$ 
distSlider�� �� Path$ Value� �� StringFormat$ n2�� �� UpdateSourceTrigger$ PropertyChanged=��� $��Расстояние��$
��Left=�$��
10,343,0,0q�$	��Top=�