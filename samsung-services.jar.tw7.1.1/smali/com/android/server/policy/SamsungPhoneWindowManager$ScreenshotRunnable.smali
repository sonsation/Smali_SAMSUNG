.class Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenshotRunnable"
.end annotation


# instance fields
.field mConn:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/SamsungPhoneWindowManager;
    .param p2, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 4043
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4041
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    .line 4044
    iput-object p2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    .line 4043
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4048
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4049
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4050
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4051
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 4047
    return-void

    .line 4048
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
