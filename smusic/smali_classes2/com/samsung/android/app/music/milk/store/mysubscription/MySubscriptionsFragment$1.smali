.class Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$1;
.super Ljava/lang/Object;
.source "MySubscriptionsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 113
    const-string v3, "MySubscriptionsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onItemClick() | position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-wide/16 v4, -0xa

    cmp-long v3, p3, v4

    if-nez v3, :cond_2

    .line 119
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkAccount(Landroid/app/Activity;Ljava/util/HashSet;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;)Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->getUserStatus()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    .line 121
    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 120
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->launchSamsungAccountSetting(ILandroid/content/Context;)Z

    .line 124
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "953"

    const-string v6, "9521"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    .line 127
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v3

    sget-object v7, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->PremiumUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 128
    invoke-virtual {v3, v7}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Premium"

    .line 125
    :goto_0
    invoke-virtual {v4, v5, v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_1
    return-void

    .line 128
    :cond_1
    const-string v3, "Normal"

    goto :goto_0

    .line 131
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;

    invoke-virtual {v3, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 132
    .local v0, "c":Landroid/database/Cursor;
    const-string v3, "orderId"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "orderId":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "order_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
