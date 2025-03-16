import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizeScreenExtension on num {
  double get w => ScreenUtil().setWidth(this); 
  double get h => ScreenUtil().setHeight(this);
  double get r => ScreenUtil().radius(this);
  double get sp => ScreenUtil().setSp(this);
  double get sw => ScreenUtil().screenWidth * this;
  double get sh => ScreenUtil().screenHeight * this;
  double get statusBar => ScreenUtil().statusBarHeight * this;
}
 

 /*
w (largura ajustada)
Redimensiona um valor com base na largura da tela do dispositivo, garantindo que o design fique responsivo em diferentes tamanhos de tela.

h (altura ajustada)
Ajusta a altura de um elemento proporcionalmente ao tamanho da tela.

r (raio ajustado)
Define um valor de raio responsivo para bordas arredondadas, útil para manter proporções corretas em botões e containers.

sp (tamanho de fonte ajustado)
Ajusta dinamicamente o tamanho do texto de acordo com a densidade da tela, evitando fontes muito grandes ou muito pequenas em diferentes dispositivos.

sw (proporção da largura da tela)
Retorna um valor proporcional à largura total da tela, útil para definir tamanhos de elementos em relação ao espaço disponível.
sh (proporção da altura da tela)
Retorna um valor proporcional à altura total da tela, facilitando o posicionamento e dimensionamento de elementos verticais.

statusBar (altura da barra de status)
Obtém a altura da barra de status do dispositivo, permitindo ajustar elementos para não ficarem sobrepostos a ela.
 */