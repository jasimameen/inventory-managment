import "package:freezed_annotation/freezed_annotation.dart";

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure{
const factory Failure.cliendFailure() = _CliendFailure;
const factory Failure.serverFailure() = _ServerFailure;

}