   M S B A M L   `   `   `  ????D  @MVVMLearn, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:MVVMLearn.ViewsMVVMLearn.Views  5   	        MVVMLearn.Views.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5   	   )localclr-namespace:MVVMLearn.Views  5   	     ? Title$  
MainWindow??5	   	   $	??450??6   $	??800??6)    ? 	Resources 5
       ?? 
TargetType ?? Property ?? Value??%  '??       '?? H     '?? ?     ?? 5   
   " ??6   .?5      ??  ? ??$ 14(?6)   5      ?? 5   
   " ??6   .?5      ??  ? ??$ 14(?6)   5      ?? 5   
   " ??6   .?5      ??  ? ??$ 40??6&   ?? 5       ? ??$ 5q?6'   5      5      .??5      ?  ? ColumnDefinitions 5   
   ?? 5      $??* ?6   ?? 5      $
??0.8* ?6    ? RowDefinitions 5   
   ?? 5      $??* ?6   ?? 5      $
??0.2* ?6   .+?5    
   ?? $??0??6   ??5!      ?? *Phones+ ?? SelectedItem 5"      ?? *SelectedPhone+??5#      ?? 5$      .R?5%      ?? $??5q?6!   .+?5&      ?? $??18(?6$   ??62   ??  ?? Path$ Title??? 5'      ??6$   ?? $ Company??? 5(      ??6$   ?? $ Price?5)      5*      5,      ?? 5.   
   $??1??6   	 ?? Orientation$	 
Horizontal=?6"   .+?5/      ?? ??6   ?? *
AddCommand+.??64   +67   ?? 50      ??6   ?? *RemoveCommand+??51      ?? *SelectedPhone+.??6@   -6C   ?? 52      $??2x??6   *  $Microsoft.Xaml.Behaviors.Interaction
   Triggers
 53      +  %Microsoft.Xaml.Behaviors.EventTrigger  54         	EventName$ MouseDoubleClick??6%   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 55      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 60   ?? *DoubleCommand+   CommandParameter 56   0   ?? *SelectedPhone+57      59      5:      ?? 5<   
   $??1??6    ? DataContext 6%   ?? *SelectedPhone+.+?5=      ?? $'??!Выбранный элемент??6   ?? 5>      $??Модель??6   ?? 5?      ??6   ?? *Title+ ?? UpdateSourceTrigger$ PropertyChanged=??? 5@      $ ??Производитель??6   ?? 5A      ??6   ?? *	Company+$ PropertyChanged=??? 5B      $??Цена??6   ?? 5C      ??6   ?? *Price+$ PropertyChanged=?5D      5F      5G      