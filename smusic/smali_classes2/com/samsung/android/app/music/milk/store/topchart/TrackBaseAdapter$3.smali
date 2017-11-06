.class Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$3;
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
    .line 220
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$3;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$3;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$3;->val$track:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    .line 224
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$3;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$3;"
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$3;->val$track:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 225
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 226
    return-void
.end method
