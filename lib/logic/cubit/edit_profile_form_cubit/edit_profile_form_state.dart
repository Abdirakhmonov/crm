part of 'edit_profile_form_cubit.dart';

@freezed
class EditProfileFormState with _$EditProfileFormState {
  const factory EditProfileFormState({
    @Default(Email.pure()) Email email,
    @Default(Name.pure()) Name name,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    @Default('') String photoPath,
    @Default(false) isValid,
  }) = _EditProfileFormState;
}
