.class public Lcom/samsung/android/app/music/milk/help/NoticeListActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "NoticeListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mNoitem:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/help/NoticeListActivity;)Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/help/NoticeListActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->mAdapter:Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;

    return-object v0
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 76
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 80
    packed-switch p3, :pswitch_data_0

    .line 115
    .end local p4    # "rspData":Ljava/lang/Object;
    :goto_0
    return-void

    .line 82
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_0
    check-cast p4, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItemList;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItemList;->getNoticeList()Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    .local v0, "noticeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;>;"
    sget-object v1, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled - Notice received : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->mNoitem:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->mNoitem:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->mAdapter:Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;->addAll(Ljava/util/Collection;)V

    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->mAdapter:Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/android/app/music/milk/help/NoticeListActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/help/NoticeListActivity$1;-><init>(Lcom/samsung/android/app/music/milk/help/NoticeListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f040101

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f1202eb

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->mListView:Landroid/widget/ListView;

    .line 53
    const v0, 0x7f1202ec

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->mNoitem:Landroid/widget/TextView;

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;

    const v1, 0x7f0400ea

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;-><init>(Lcom/samsung/android/app/music/milk/help/NoticeListActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;->mAdapter:Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;

    .line 56
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 62
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 63
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getNoticeList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 68
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 72
    return-void
.end method
