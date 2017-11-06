.class Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$2;
.super Ljava/lang/Object;
.source "AlbumBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

.field final synthetic val$album:Lcom/samsung/android/app/music/common/model/Album;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;Lcom/samsung/android/app/music/common/model/Album;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$2;->val$album:Lcom/samsung/android/app/music/common/model/Album;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$2;->val$album:Lcom/samsung/android/app/music/common/model/Album;

    .line 90
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 92
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "983"

    const-string v2, "9834"

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method
