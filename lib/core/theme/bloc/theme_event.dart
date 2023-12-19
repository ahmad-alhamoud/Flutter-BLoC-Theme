part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class GetCurrentThemeEvent extends ThemeEvent {}

class ThemeChangedEvent extends ThemeEvent {
 final AppTheme theme ;
 const ThemeChangedEvent({required this.theme}) ;

  @override
  // TODO: implement props
  List<Object?> get props => [theme];

}