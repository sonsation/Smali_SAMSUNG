.class Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$3;
.super Ljava/lang/Object;
.source "PickListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

.field final synthetic val$pick:Lcom/samsung/android/app/music/common/model/Pick;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;Lcom/samsung/android/app/music/common/model/Pick;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$3;->val$pick:Lcom/samsung/android/app/music/common/model/Pick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->PICK_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListAdapter$3;->val$pick:Lcom/samsung/android/app/music/common/model/Pick;

    .line 119
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Pick;->getPickId()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 120
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "991"

    const-string v2, "9901"

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method
