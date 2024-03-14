import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://ilexnwpfgakwusbzhvwl.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlsZXhud3BmZ2Frd3VzYnpodndsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM0OTUzMzQsImV4cCI6MjAxOTA3MTMzNH0.cWdqrgwW4ORh4eTmP1_xk7zB8qNmlqtuV-gGWtRrCH0';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
