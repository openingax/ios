#  ReactNative Demo

### 错误收集

##### pod install 时报错
``xcrun: error: invalid active developer path (/Library/Developer/CommandLineTools), missing xcrun at: /Library/Developer/CommandLineTools/usr/bin/xcrun``

第一步：
分析：看路径，判断为 CommandLineTools 出了问题
解决方法：重装 CommandLineTools
命令：`xcode-select --install`

没解决问题；

第二步：
`https://www.cnblogs.com/zzugyl/p/5438869.html`
按博客所说，给Xcode命令行工具指定路径
命令：`sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer/`

问题解决。


***********************


##### RNGL 报 `'React/RCTConvert.h' file not found` 错误

解决方法：在 RNGL target 里的 Build Settings -> Header Search Paths 里，添加 React 的路径：
``"${PODS_ROOT}/Headers/Public/React"``  non-recursive


