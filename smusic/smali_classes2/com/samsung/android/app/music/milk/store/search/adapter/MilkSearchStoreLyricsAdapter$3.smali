.class Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$3;
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
    .line 151
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$3;->val$lyrics:Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->access$500(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->access$600(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;Landroid/content/Context;Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->access$400(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;)Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "969"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->access$400(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;)Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$3;->val$lyrics:Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;

    .line 157
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getTrackId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$3;->val$lyrics:Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getTrackTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$3;->val$lyrics:Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;

    .line 158
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getArtistsName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 156
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->show(Ljava/lang/String;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "969"

    const-string v2, "9704"

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 160
    :cond_0
    const-string v0, "SearchLyricsAdapter"

    const-string v1, "onClick : lyric fragment manager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
