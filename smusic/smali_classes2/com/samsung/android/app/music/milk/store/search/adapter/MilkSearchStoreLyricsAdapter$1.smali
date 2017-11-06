.class Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreLyricsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

.field final synthetic val$lyrics:Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$1;->val$lyrics:Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;Landroid/content/Context;Landroid/view/View;)V

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$1;->val$lyrics:Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;

    .line 95
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 97
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "969"

    const-string v2, "9702"

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
