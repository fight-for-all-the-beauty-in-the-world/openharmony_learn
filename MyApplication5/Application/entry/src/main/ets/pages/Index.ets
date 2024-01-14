import router from '@ohos.router';
@Entry
@Component
struct Second {
  @State username: string = router.getParams()?.['user'];
  @State pwd: string = router.getParams()?.['password'];

  build(){
    Row(){
      Column(){
        Text(this.username)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.pwd)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button("返回")
          .onClick(()=>{
          router.pushUrl({
            url:'pages/HomePage',
            params:{
              // @ts-ignore
              "user":this.user,
              // @ts-ignore
              "password":this.password}
          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}