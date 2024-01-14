import router from '@ohos.router';
@Entry
@Component
struct Page {
  @State message: string = 'Hello World'
  @State text1: string = '用户名';
  @State text2: string = '密码';
  @State user: string = ' ';
  @State password: string = ' ';

  build() {
    Column() {
      Column() {
        Column() {
          Tabs({ barPosition: BarPosition.End }) {
            TabContent() {
              Column() {
                Swiper() {
                  Image($r('app.media.DianYingGuangGao2'))
                    .width("100%")
                    .height("100%")
                    .objectFit(ImageFit.Fill)
                    .objectRepeat(ImageRepeat.NoRepeat)
                    .renderMode(ImageRenderMode.Original)
                  Image($r('app.media.DianYingGuangGao1'))
                    .width("100%")
                    .height("100%")
                    .objectFit(ImageFit.Fill)
                }                
                .width("100%")
                .height("200vp")
                .offset({ x: "0vp", y: "3.42vp" })
                Search({})
                  .width("100%")
                  .height("40vp")
                Column() {
                  Image($r('app.media.ShouCang'))
                    .width("25%")
                    .height("100%")
                    .position({ x: "266.47vp", y: "0vp" })
                  Image($r('app.media.ShaiXuan'))
                    .width("25%")
                    .height("100%")
                    .position({ x: "0vp", y: "0vp" })
                  Image($r('app.media.GengDuo'))
                    .width("25%")
                    .height("100%")
                    .position({ x: "135vp", y: "0vp" })
                }                
                .width("100%")
                .height("80vp")
                .alignItems(HorizontalAlign.Center)
                .justifyContent(FlexAlign.SpaceBetween)
                Column() {
                  Text("热门电影")
                    .width("100%")
                    .height("20%")
                    .borderWidth("1vp")
                    .backgroundImageSize(ImageSize.Cover)
                    .textAlign(TextAlign.Center)
                    .fontSize("40fp")
                  List() {
                    ListItem() {
                      Column() {
                        Image($r('app.media.XiongChuMuo'))
                          .width("100%")
                          .height("60%")
                        Text("熊出没")
                          .width("100%")
                          .height("20%")
                          .textAlign(TextAlign.Center)
                          .fontSize("30fp")
                          .fontStyle(FontStyle.Normal)
                        Button("购票")
                          .width("100%")
                          .height("20%")
                          .onClick(()=>{
                            router.pushUrl({
                              url:'pages/CloudStorage',
                              params:{
                                // @ts-ignore
                                "user":this.user,
                                // @ts-ignore
                                "password":this.password}
                            })
                          })

                      }                      
                      .width("100%")
                      .height("100%")
                    }                    
                    .width("33.3%")
                    .height("100%")
                    .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                    ListItem() {
                      Column() {
                        Image($r('app.media.LiuLangDiQiu'))
                          .width("100%")
                          .height("60%")
                        Text("流浪地球")
                          .width("100%")
                          .height("20%")
                          .textAlign(TextAlign.Center)
                          .fontSize("28fp")
                        Button("购票")
                          .width("100%")
                          .height("20%")
                          .onClick(()=>{
                            router.pushUrl({
                              url:'pages/CloudStorage',
                              params:{
                                // @ts-ignore
                                "user":this.user,
                                // @ts-ignore
                                "password":this.password}
                            })
                          })
                      }                      
                      .width("100%")
                      .height("100%")
                    }                    
                    .width("33.3%")
                    .height("100%")
                    ListItem() {
                      Column() {
                        Image($r('app.media.HuanTaiPingYang'))
                          .width("100%")
                          .height("60%")
                        Text("环太平洋")
                          .width("100%")
                          .height("20%")
                          .textAlign(TextAlign.Center)
                          .fontSize("28fp")
                        Button("购票")
                          .width("100%")
                          .height("20%")
                          .fontColor("#ffffff")
                          .onClick(()=>{
                            router.pushUrl({
                              url:'pages/CloudStorage',
                              params:{
                                // @ts-ignore
                                "user":this.user,
                                // @ts-ignore
                                "password":this.password}
                            })
                          })
                      }                      
                      .width("100%")
                      .height("100%")
                    }                    
                    .width("33.3%")
                    .height("100%")
                    .sticky(Sticky.None)
                    .editable(false)
                  }                  
                  .width("100%")
                  .height("80%")
                  .offset({ x: "0vp", y: "0%" })
                  .listDirection(Axis.Horizontal)
                }                
                .width("100%")
                .height("400vp")
              }              
              .width("100%")
              .height("100%")
              .offset({ x: "0vp", y: "0vp" })
              .backgroundImage($r('app.media.YeMianBeiJing'))
              .backgroundImageSize(ImageSize.Contain)
              .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
            }            
            .backgroundColor("#fbe55b")
            .tabBar({ icon: $r('app.media.ShouYe'), text: "首页" })
            TabContent() {

              }
              .tabBar({ icon: $r('app.media.DianYing'), text: "电影" })
            TabContent(){
              Column() {

              }
            }
              .tabBar({ icon: $r('app.media.SaoYiSao'), text: "扫一扫" })
            TabContent() {
              Column() {
                Text('登录')
                  .fontSize(50)
                Text(this.text1).width('90%')
                TextInput({ placeholder: '请输入用户名' })
                  .placeholderColor("rgb(0,0,225)")
                  .placeholderFont({ size: 30, weight: 100, family: 'cursive', style: FontStyle.Italic })
                  .caretColor(Color.Blue)
                  .height(50)
                  .fontSize(30)
                  .fontWeight(FontWeight.Bold)
                  .fontFamily("sans-serif")
                  .fontStyle(FontStyle.Normal)
                  .fontColor(Color.Red)
                  .onChange((value: string) => {
                    this.user = value
                  })

                Text(this.text2).width('90%')
                TextInput({ placeholder: '请输入密码' })
                  .placeholderColor("rgb(0,0,225)")
                  .placeholderFont({ size: 30, weight: 100, family: 'cursive', style: FontStyle.Italic })
                  .caretColor(Color.Blue)
                  .height(50)
                  .fontSize(30)
                  .fontWeight(FontWeight.Bold)
                  .fontFamily("sans-serif")
                  .fontStyle(FontStyle.Normal)
                  .fontColor(Color.Red)
                  .type(InputType.Password)
                  .onChange((value: string) => {
                    this.password = value
                  })

                Button('登录', { type: ButtonType.Capsule, stateEffect: false })
                  .backgroundColor(0x317aff)
                  .width(150)
                  .height(60)
                  .onClick(()=>{
                    router.pushUrl({
                      url:'pages/Index',
                      params:{
                        // @ts-ignore
                        "user":this.user,
                        // @ts-ignore
                        "password":this.password}
                    })
                  })
                Image("")
                  .width("200vp")
                  .height("200vp")
                List() {
                  ListItem() {
                    Stack() {
                      Text()
                        .width("100%")
                        .height("100%")
                      Toggle({ type: ToggleType.Button })
                        .width("100%")
                        .height("100%")

                    }                    
                    .width("100%")
                    .height("100%")
                  }                  
                  .width("100%")
                  .height("60vp")
                }                
                .width("100%")
                .height("70%")
                .offset({ x: "0vp", y: "0%" })
                .listDirection(Axis.Vertical)
                .divider({ strokeWidth: "0vp" })
                .edgeEffect(EdgeEffect.Spring)
              }              
              .width("100%")
              .height("100%")
            }            
            .tabBar({ icon: $r('app.media.DianYingPiao'), text: "个人中心" })
          }          
          .width("100%")
          .height("100%")
          .vertical(false)
        }        
        .width("100%")
        .height("100%")
      }      
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }    
    .width("100%")
    .height("100%")
  }
}