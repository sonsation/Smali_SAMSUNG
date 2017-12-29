.class Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;
.super Ljava/lang/Object;
.source "WifiApQrCode.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 187
    const-string/jumbo v0, "WifiApQrCode"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {p2}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/qragent/service/IQRService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->generateQrCode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;Z)Z

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->updateView(Z)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->updateView(Z)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 203
    const-string/jumbo v0, "WifiApQrCode"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;

    .line 202
    return-void
.end method
