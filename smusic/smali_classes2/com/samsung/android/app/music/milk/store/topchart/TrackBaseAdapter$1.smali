.class Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$1;
.super Ljava/lang/Object;
.source "TrackBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

.field final synthetic val$track:Lcom/samsung/android/app/music/common/model/SimpleTrack;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    .prologue
    .line 168
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$1;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$1;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$1;->val$track:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$1;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$1;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "simpleTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$1;->val$track:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x100050

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 176
    return-void
.end method
