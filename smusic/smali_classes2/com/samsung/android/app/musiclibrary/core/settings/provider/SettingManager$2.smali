.class Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$2;
.super Landroid/os/Handler;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 438
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 439
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 440
    .local v2, "observer":Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 441
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v4, "value"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method
