part of 'reply_bloc.dart';

abstract class ReplyState extends Equatable {
  const ReplyState();

  @override
  List<Object> get props => [];
}

class ReplyEmpty extends ReplyState {}

class ReplyLoading extends ReplyState {}

class ReplyLoaded extends ReplyState {
  final List<Reply> replies;
  final bool hasReachedMax;
  final int pageNumber;

  const ReplyLoaded(
      {@required this.replies, this.hasReachedMax, this.pageNumber = 1})
      : assert(replies != null);

  ReplyLoaded copyWith({
    List<Reply> replies,
    bool hasReachedMax,
    int pageNumber,
  }) {
    return ReplyLoaded(
      replies: replies ?? this.replies,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      pageNumber: pageNumber ?? this.pageNumber,
    );
  }

  @override
  List<Object> get props => [replies, hasReachedMax, pageNumber];

  @override
  String toString() =>
      'ReplyLoaded { replies: ${replies.length}, hasReachedMax: $hasReachedMax }';
}

class ReplyError extends ReplyState {}