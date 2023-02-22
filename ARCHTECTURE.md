
# 各種Providerについて

```mermaid
flowchart TB
  subgraph Arrows
    direction LR
    start1[ ] -..->|read| stop1[ ]
    style start1 height:0px;
    style stop1 height:0px;
    start2[ ] --->|listen| stop2[ ]
    style start2 height:0px;
    style stop2 height:0px;
    start3[ ] ===>|watch| stop3[ ]
    style start3 height:0px;
    style stop3 height:0px;

  end

  subgraph Type
    direction TB
    ConsumerWidget((widget));
    Provider[[provider]];
  end

App((App));
HomeView((HomeView));
RouteErrorView((RouteErrorView));
WeatherView((WeatherView));

routerProvider[[routerProvider]];
weatherViewModelProvider[[weatherViewModelProvider]];

WeatherView ===> weatherViewModelProvider;
App ==> routerProvider;
weatherViewModelProvider -..-> routerProvider;
```

### routerProvider

- ルーティングの設定を行う
- `lib/router.dart`に記述
- ルーティング時にエラーが発生した場合、`RouteErrorView`に遷移する

### weatherViewModelProvider

- WeatherViewのViewModelを提供する
- `lib/ui/view/weather_view/weather_viewmodel.dart`に記述

# 各種Viewについて
### App
- `lib/ui/app.dart`に記述
- 上位のWidget

### HomeView
- `lib/ui/view/home_view/home_view.dart`に記述
- 緑色の画面
- 指定時間後に`WeatherView`に遷移する

### WeatherView
- `lib/ui/view/weather_view/weather_view.dart`に記述

