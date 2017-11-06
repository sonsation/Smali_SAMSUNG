.class Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$4;
.super Ljava/lang/Object;
.source "BaseServiceActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected()V
    .locals 3

    .prologue
    .line 451
    const-string v0, "SMUSIC-QuickConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " QuickConnectListener() onItemSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onQuickConnectSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->launchSconnect(Landroid/content/Context;)V

    .line 459
    :cond_0
    return-void
.end method
