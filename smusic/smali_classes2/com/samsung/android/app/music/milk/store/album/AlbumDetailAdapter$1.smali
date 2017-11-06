.class Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter$1;
.super Ljava/lang/Object;
.source "AlbumDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    .local v0, "tagPosition":I
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    .line 97
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 96
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->show(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 99
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "934"

    const-string v3, "1544"

    .line 100
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
