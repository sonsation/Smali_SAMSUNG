.class Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryDeletable;
.super Lcom/samsung/android/app/music/list/ListDeleteableImpl;
.source "RadioHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioHistoryDeletable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;Landroid/app/Fragment;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryDeletable;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .line 385
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;II)V

    .line 386
    return-void
.end method


# virtual methods
.method protected deleteItemsInternal(Landroid/app/Activity;[J)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ids"    # [J

    .prologue
    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryDeletable;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryDeletable;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$RadioHistoryDeletable;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .line 391
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->getCheckedPlayHistories([J)Ljava/util/ArrayList;

    move-result-object v0

    .line 390
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->deleteRadioHistory(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    .line 392
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "907"

    const-string v2, "9122"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method
