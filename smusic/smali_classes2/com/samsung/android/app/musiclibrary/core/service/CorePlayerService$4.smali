.class Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$4;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->handleDrmRequest(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 1533
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$4;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isMusicUiTop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    const-string v1, "com.samsung.android.app.music.core.state.DRM_REQUEST"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$4;->val$data:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1542
    :cond_0
    return-void
.end method
