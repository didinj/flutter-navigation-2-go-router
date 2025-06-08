import 'package:flutter_gorouter_demo/screens/login_page.dart';
import 'package:flutter_gorouter_demo/screens/user_profile_page.dart';
import 'package:go_router/go_router.dart';

import 'auth_service.dart';
import 'screens/home.dart';
import 'screens/search_page.dart';
import 'screens/profile_page.dart';
import 'layout/shell_scaffold.dart';
import 'screens/error_page.dart'; // Import the ErrorPage

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/profile',
      name: 'profile',
      builder: (context, state) => const ProfilePage(),
    ),
  ],
  errorBuilder: (context, state) => ErrorPage(error: state.error),
);

// final AuthService authService = AuthService();
//
// final GoRouter router = GoRouter(
//   initialLocation: '/',
//   refreshListenable: authService, // Notifies GoRouter to reevaluate redirect
//   redirect: (context, state) {
//     final isLoggedIn = authService.isLoggedIn;
//     final isLoggingIn = state.uri.path == '/login';
//
//     if (!isLoggedIn && !isLoggingIn) return '/login';
//     if (isLoggedIn && isLoggingIn) return '/home';
//
//     return null; // no redirect
//   },
//   routes: [
//     GoRoute(
//       path: '/login',
//       name: 'login',
//       builder: (context, state) => const LoginPage(),
//     ),
//     GoRoute(
//       path: '/home',
//       name: 'home',
//       builder: (context, state) => const HomePage(),
//     ),
//     GoRoute(
//       path: '/profile',
//       name: 'profile',
//       redirect: (context, state) {
//         return authService.isLoggedIn ? null : '/login';
//       },
//       builder: (context, state) => const ProfilePage(),
//     ),
//   ],
// );

// final GoRouter router = GoRouter(
//   initialLocation: '/home',
//   routes: [
//     ShellRoute(
//       builder: (context, state, child) => ShellScaffold(child: child),
//       routes: [
//         GoRoute(
//           path: '/home',
//           name: 'home',
//           builder: (context, state) => const HomePage(),
//         ),
//         GoRoute(
//           path: '/search',
//           name: 'search',
//           builder: (context, state) => const SearchPage(),
//         ),
//         GoRoute(
//           path: '/profile',
//           name: 'profile',
//           builder: (context, state) => const ProfilePage(),
//         ),
//         GoRoute(
//           path: '/user/:id',
//           name: 'userProfile',
//           builder: (context, state) {
//             final userId = state.pathParameters['id'];
//             return UserProfilePage(userId: userId!);
//           },
//         ),
//         GoRoute(
//           path: '/',
//           redirect: (_, __) => '/home',
//         ),
//       ],
//     ),
//   ],
// );
