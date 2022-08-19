import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/bloc/main_page_cubit.dart';
import 'package:flutter_application_1/feature/presentation/vmodel/theme_provider.dart';
import 'package:flutter_application_1/feature/presentation/widgets/snack_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';
import 'package:translator/translator.dart';
import 'package:word_selectable_text/word_selectable_text.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    BlocProvider.of<MainPageCubit>(context).getText();
    super.initState();
  }

  String tappedWord = 'Tap to word';
  bool stateForSwitch = false;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return LoaderOverlay(
      child: Scaffold(
        body: BlocConsumer<MainPageCubit, MainPageState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              errorState: (message) {
                buildErrorCustomSnackBar(context, message);
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator(color: Colors.red),
                );
              },
              loadingState: () {
                return const Center(
                  child: CircularProgressIndicator(color: Colors.red),
                );
              },
              loadedState: (text) {
                return SafeArea(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(64, 64, 64, 0),
                      child: Column(
                        children: [
                          Text(
                            text.textName ?? "",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w800,
                              fontSize: 35,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/moon_icon.svg'),
                              const SizedBox(
                                width: 15,
                              ),
                              FlutterSwitch(
                                activeToggleColor: const Color(0xff339ECD),
                                inactiveToggleColor: const Color(0xff6B6B6B),
                                inactiveColor: Colors.transparent,
                                activeColor: Colors.transparent,
                                activeSwitchBorder: Border.all(
                                  color: const Color(0xff339ECD),
                                  width: 2.0,
                                ),
                                inactiveSwitchBorder: Border.all(
                                  color: const Color(0xff6B6B6B),
                                  width: 2.0,
                                ),
                                width: 40,
                                height: 20,
                                toggleSize: 10,
                                value: themeProvider.isDarkMode,
                                borderRadius: 30.0,
                                onToggle: (val) {
                                  final provider = Provider.of<ThemeProvider>(
                                    context,
                                    listen: false,
                                  );
                                  provider.toggleTheme(isOn: val);
                                },
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          const Divider(
                            color: Color(0xffEBEBEB),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.red,
                              backgroundColor: const Color(0xffFE9870),
                            ),
                            onPressed: null,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                tappedWord,
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Expanded(
                            child: ListView(
                              children: [
                                WordSelectableText(
                                  highlightColor: Colors.amber,
                                  text: text.text ?? "",
                                  onWordTapped: (word, index) async {
                                    context.loaderOverlay.show();
                                    final a = await word.translate(to: 'ru');
                                    context.loaderOverlay.hide();
                                    tappedWord = a.text;
                                    setState(() {});
                                  },
                                  style: const TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
