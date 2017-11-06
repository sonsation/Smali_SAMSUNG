.class Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$2;
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
    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$2;->val$lyrics:Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->access$200(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->access$300(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;Landroid/content/Context;Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->access$400(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;)Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "969"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;->access$400(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter;)Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreLyricsAdapter$2;->val$lyrics:Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;

    .line 119
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->toSimpleTrack()Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v2

    .line 118
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->show(Ljava/lang/String;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 123
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "969"

    const-string v2, "9703"

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 121
    :cond_0
    const-string v0, "SearchLyricsAdapter"

    const-string v1, "onClick : track detail fragment manager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
