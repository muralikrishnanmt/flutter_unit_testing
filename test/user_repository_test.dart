import 'package:flutter_test/flutter_test.dart';
import 'package:test_project/models/user_model.dart';
import 'package:test_project/user_repository.dart';

void main() {
  late UserRepository userRepository;

  setUp(() {
    userRepository = UserRepository();
  });

  group('UserRepository', () {
    group('getUser function', () {
      test(
        'given UserRepository class when getUser function is called and status code is 200 then a usermodel should be returned  ',
        () async {
          //Arrange

          //Act
          final user = await userRepository.getUser();
          //Assert
          expect(user, isA<User>());
        },
      );

      test('when the status code is not 200', () async {
        //Arrange
        //Act
        final user = await userRepository.getUser();
        //Assert
        expect(user, throwsException);
      });
    });
  });
}
