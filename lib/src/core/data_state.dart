abstract class DataState<T> {
  final T? data;
  final Object? error;
  final DataType dataType;

  DataState({
    required this.dataType,
    this.data,
    this.error,
  });
}

class DataSuccess<T> extends DataState<T> {
  DataSuccess({
    required final T data,
  }) : super(
          dataType: DataType.success,
          data: data,
        );
}

class DataFailed<T> extends DataState<T> {
  DataFailed({
    required final Object error,
  }) : super(
          dataType: DataType.success,
          error: error,
        );
}

class DataEmpty<T> extends DataState<T> {
  DataEmpty()
      : super(
          dataType: DataType.empty,
        );
}

class DataLoading<T> extends DataState<T> {
  DataLoading()
      : super(
          dataType: DataType.loading,
        );
}

enum DataType {
  failed,
  empty,
  loading,
  success,
}
