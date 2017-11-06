.class Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreAlbumsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;

.field final synthetic val$album:Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter$1;->val$album:Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "965"

    const-string v2, "9663"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter$1$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter$1;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter$1;->val$album:Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;

    .line 85
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playAlbum(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;Landroid/view/View;)V

    .line 87
    return-void
.end method
