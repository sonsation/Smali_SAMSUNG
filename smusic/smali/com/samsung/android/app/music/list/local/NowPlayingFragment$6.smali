.class Lcom/samsung/android/app/music/list/local/NowPlayingFragment$6;
.super Ljava/lang/Object;
.source "NowPlayingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$6;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 645
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$6;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 646
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$6;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 648
    const-string v1, "NOWP"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 649
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$6;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .line 650
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4341"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return-void
.end method
