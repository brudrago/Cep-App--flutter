import 'package:equatable/equatable.dart';

class GetCepDetailsListByLocalDetailsBody extends Equatable {
  final String rua;
  final String cidade;
  final String estado;

  const GetCepDetailsListByLocalDetailsBody({
    required this.rua,
    required this.cidade,
    required this.estado,
  });

  @override
  List<Object?> get props => [rua, cidade, estado];
}
