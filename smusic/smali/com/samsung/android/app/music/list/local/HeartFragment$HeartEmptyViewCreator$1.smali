.class Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$1;
.super Ljava/lang/Object;
.source "HeartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->createEmptyView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;

    .prologue
    .line 1536
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1539
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->access$2600(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "MTHT"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 1541
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "101"

    const-string v4, "0031"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->access$2600(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1544
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1545
    .local v1, "i":Landroid/content/Intent;
    const-class v2, Lcom/samsung/android/app/music/common/activity/SettingReorderActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1546
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1547
    return-void
.end method
