.class Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;
.super Ljava/lang/Thread;
.source "ScreenCaptureTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->doScreenCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ScreenCaptureTile;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 224
    const-wide/16 v2, 0x190

    :try_start_0
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->sleep(J)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get3(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.permission.CAPTURE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "doScreenCapture Send com.samsung.android.capture.QuickPanelCapture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
