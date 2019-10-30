// 标准写法
// void main() {
//   print('标准写法：hello dart');
// }

// 如果函数内部只有一个表达式，可以省略大括号，使用“=>”箭头函数；
// void main() => print('箭头函数：hello dart');

main() {
  // 布尔类型
  var isBoolVar = true;
  bool isBool = true;

  // 数字类型 num int double
  num isNumInt = 1;
  num isNumDouble = 1.1;
  int isInt = 2;
  double isDouble = 2.1;

  // 数字类型常用方法
  num pi = 3.141592653;
  print(pi.toStringAsFixed(3)); // 保留有效数字
  print(pi.floor()); // 向下取整
  print(pi.ceil()); // 向上取整
  print(pi.round()); // 四舍五入
  print((-pi).abs()); // 绝对值
  print(pi.toInt()); // 转int
  print(111.isEven); // 是否偶数
  print(111.isOdd); // 是否奇数
  print(pi.toString()); // 转字符串

  print('------------------数字类型测试结束------------------');

  // 字符串类型
  String isString1 = '单引号';
  String isString2 = "双引号";
  String isString3 = """
    三引号    三引号
    三引号    三引号
  """;
  String isStringAddNumber = '字符串 加 数字类型 $isInt';
  String isStringAddBool = '字符串 加 布尔类型 $isBool';
  String isStringSquare = '字符串 表达式 ${isNumInt * isInt}';
  print(isString3);
  print(isStringAddNumber);
  print(isStringAddBool);
  print(isStringSquare);

  // 字符串类型常用方法
  String isUrl = 'https://www.baidu.com/#/product/detail/110';
  print(isUrl.split('#')); // 字符串分割 返回 数组
  print(isUrl.substring(0,5)); // 字符串截取
  print(isUrl.startsWith('https')); // 是否以指定字符开头
  print(isUrl.endsWith('/')); // 是否以指定字符结尾
  print(isUrl.toUpperCase()); // 大写
  print(isUrl.toLowerCase()); // 小写
  print(isUrl.indexOf('#')); // 获取指定字符的索引位置，-1表示没有
  print(isUrl.contains('#')); // 是否包含指定字符
  print('   isUrl   '.trim()); // 去除收尾空格
  print(isUrl.length); // 获取字符长度
  print(isUrl.replaceFirst('/', '***')); // 替换第一次出现的指定字符
  print(isUrl.replaceAll('/', '***')); // 替换所有指定字符

  print('------------------字符串类型测试结束------------------');

  // 类型检查 is
  print(1 is num);
  print(-1 is num);
  print(1.1 is num);
  print(1 is int);
  print(-1 is int);
  print(1.1 is int);

  print('------------------类型检查测试结束------------------');

  // 对象类型 Object
  Object isObject = 0;
  print(isObject);
  isObject =  '1';
  print(isObject);

  print('------------------对象类型测试结束------------------');

  // 常量 const final
  const PI = 3.141592653;
  final nowTime = DateTime.now();
  print(nowTime);

  print('------------------常量测试结束------------------');

  // List
  List isList = [1, 2, 3, 4, 5];
  List<num> isList1 = [1, 2, 3, 4, 5]; // 定义成员类型
  List<int> isList2 = [1, 2, 3, 4, 5];
  List isList3 = <num> [1, 2, 3, 4, 5];
  List isList4 = <int> [1, 2, 3, 4, 5];
  isList.add(6);
  print(isList);
  isList.insert(1, 10); // 指定索引添加
  print(isList);
  isList.removeAt(1); // 移除指定索引
  print(isList);
  print(isList.sublist(3)); // 截取 start 之后
  print(isList.sublist(2,4)); // 截取 start 至 end
  print(isList.join('###')); // 转字符并替换指定字符
  print(isList.contains(5)); // 是否存在指定内容
  isList.clear(); // 清楚所有
  print(isList);
  print(isList.isEmpty); // 是否为空

  List<String> isListString = ['a', 'b', 'c', 'd'];
  // for-i 遍历
  for (int i = 0; i < isListString.length; i++) {
    print(isListString[i]);
  }
  print('for-i end');
  // for-in 遍历
  for (String str in isListString) {
    print(str);
  }
  print('for-in end');
  // forEach 遍历
  isListString.forEach((s) => print(s));
  print('forEach end');
  // map 遍历
  print(isListString.map((s) => s));
  print('map end');
  // every 判断是否都满足条件
  print(isListString.every((s) => s == 'a'));
  print(isListString.every((s) => s == 'a' || s == 'b' || s == 'c' || s == 'd'));
  print('every end');
  // sort
  List<int> numbers = [0, 3, 1, 2, 7, 12, 2, 4];
  numbers.sort((num1, num2) => num1 - num2); //升序排序
  print(numbers);
  numbers.sort((num1, num2) => num2 - num1); //降序排序
  print(numbers);
  print('sort end');
  // where 返回符合条件元素的集合
  print(numbers.where((num) => num > 6));
  //firstWhere 返回符合条件的第一个元素，如果没找到返回null
  print(numbers.firstWhere((num) => num == 5, orElse: () => -1)); //注意: 如果没有找到，执行orElse代码块，可返回一个指定的默认值
  print('where end');
  //List.from函数的使用，从给定集合中创建一个新的集合,相当于clone一个集合
  print(List.from(numbers));

  //expand 将集合一个元素扩展成多个元素或者将多个元素组成二维数组展开成平铺一个一位数组
  var pair = [
    [1, 2],
    [3, 4]
  ];
  print(pair.expand((pair) => pair));

  List<String> colorList = ['red', 'yellow', 'blue', 'green'];
  for (var i = 0; i < colorList.length; i++) {//可以用var或int
      if(colorList[i] == 'yellow') {
          continue;
      }
      if(colorList[i] == 'blue') {
          break;
      }
      print(colorList[i]);
  }


  print('------------------List测试结束------------------');

  // Set
  Set<String> isSet1 = {'a', 'b', 'c', 'd'};
  Set isSet2 = <String> {'aa', 'bb', 'cc', 'dd'};
  print(isSet1.intersection(isSet2)); // 交集
  print(isSet1.union(isSet2)); // 并集
  print(isSet1.difference(isSet2)); // 补集
  // for-i，forEach，for-in 遍历 参考 List

  print('------------------Set测试结束------------------');

  // Map
  Map<String, int> isMap = {'key1': 1, 'key2': 2};
  print(isMap.containsKey('key1')); // 是否存在指定索引
  print(isMap.containsValue(1)); // 是否存在指定值
  print(isMap.keys.toList()); // ['key1', 'key2']
  print(isMap.values.toList()); // [1, 2]
  isMap.addAll({'key3': 3}); //添加
  print(isMap);
  isMap.remove('key2'); // 删除指定索引
  print(isMap);

  //for-each key-value
  isMap.forEach((key, value) => print('key is $key, color value is $value'));

  // List 转换 Map
  List<String> isMapKey = ['key1', 'key2'];
  List<int> isMapValue = [1, 2];
  Map<String, int> isMap1 = Map.fromIterables(isMapKey, isMapValue);
  print(isMap1);

  print('------------------Map测试结束------------------');

  // 空安全运算符
  print( null ?? 123); // null 时 返回 123
  var isEmp;
  isEmp ??= 123; // null 时 赋值 123
  print(isEmp);
  print(isEmp?.isEven); // 不为null 时执行
  print('------------------空安全运算符测试结束------------------');

  // 函数
  add3({num a, num b, num c, num d = 100}) {//d就是默认值参数，给的默认值是100
    print(a + b + c + d);
  }
  add3(b: 200, a: 100, c: 800);

  print('------------------函数测试结束------------------');


}