.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$3;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->setHeader(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$400(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 549
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$400(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "NOWP"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 550
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .line 551
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getScreenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4341"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void
.end method
