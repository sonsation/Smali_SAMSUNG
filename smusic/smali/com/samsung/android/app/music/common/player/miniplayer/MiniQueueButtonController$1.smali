.class Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController$1;
.super Ljava/lang/Object;
.source "MiniQueueButtonController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->startActivityWithQueue(Landroid/app/Activity;)V

    .line 31
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "0071"

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
