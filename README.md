### NOTE

### Useful Links

- [Flutter 開発する前に知っておきたい 35 の Widget 一覧](https://qiita.com/coka__01/items/dedb569f6357f1b503fd)

- stack absolute position and aligh item reference. [here](https://qiita.com/yu124choco/items/0c0b8566d7bf2c9f18fe)
- `端に余白をつける必要がなく、Widgetが幅・高さを持っているときには、Alignが便利`

```dart
Stack(
  Aligh(
    alignment: Alignment.topLeft,
    child: WidA()
  )
)

class WidA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 100.0,
      child: Container(
        alignment: Alignment(0.0, 0.0),
        color: Colors.lightGreen,
        child: Text('Widget A'),
      ),
    );
  }
}
```

- `Column` はデフォルトで画面の最大の高さまで広がってしまうよう。意図したように表示するためには `mainAxisSize` を `MainAxisSize.min` にして軸方向のサイズを最小に指定すればよい

```dart
Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("hoge",style: TextStyle(fontSize: 40.0),),
            Text("fuga",style: TextStyle(fontSize: 40.0),),
          ],
        ),
      ),
    );
  }
```
