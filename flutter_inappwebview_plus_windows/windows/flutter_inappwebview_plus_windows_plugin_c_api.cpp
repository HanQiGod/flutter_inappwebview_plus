#include "include/flutter_inappwebview_plus_windows/flutter_inappwebview_plus_windows_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_inappwebview_plus_windows_plugin.h"

void FlutterInappwebviewPlusWindowsPluginCApiRegisterWithRegistrar(
  FlutterDesktopPluginRegistrarRef registrar)
{
  flutter_inappwebview_plugin::FlutterInappwebviewPlusWindowsPlugin::RegisterWithRegistrar(
    flutter::PluginRegistrarManager::GetInstance()
    ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
