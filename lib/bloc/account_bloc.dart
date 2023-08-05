import 'package:bloc/bloc.dart';

import '../model/account.dart';
import '../network/rest.dart';
import 'account_event.dart';
import 'account_state.dart';

class AccountsBloc extends Bloc<AccountEvent, AccountState> {
  AccountsBloc(): super(AccountLoading()) {
    on<OnWidgetInit>(_loadAccounts);
  }

  Future<void> _loadAccounts(OnWidgetInit event, Emitter<AccountState> state) async {
    try {
      List<Account> listOfAccounts = await fetchAllAccounts(event.authJwtToken);
      emit(AccountsLoaded(accountList: listOfAccounts));
    } catch (e) {
      print(e);
      emit(AccountsFailure());
    }
  }

  Future<void> _createAccount(OnCreateButtonPressed event, Emitter<AccountState> state) async {
    emit(AccountInitial());
    try {

    } catch (e) {

    }
  }
}