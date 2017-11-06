.class Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;
.super Ljava/lang/Object;
.source "ServiceNetworkManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;->this$0:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v0, "mobile_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;->this$0:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;->this$0:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->access$500(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isMobileDataOn()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->access$402(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;Z)Z

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;->this$0:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->access$300(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V

    .line 101
    :cond_0
    return-void
.end method
