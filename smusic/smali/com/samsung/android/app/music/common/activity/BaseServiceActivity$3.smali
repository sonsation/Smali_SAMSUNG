.class Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "BaseServiceActivity.java"


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
    .line 435
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onReceiveMediaState(Landroid/content/Intent;)V

    .line 439
    return-void
.end method
