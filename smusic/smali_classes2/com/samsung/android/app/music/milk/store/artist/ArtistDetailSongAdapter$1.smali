.class Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter$1;
.super Ljava/lang/Object;
.source "ArtistDetailSongAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 77
    .local v0, "tagPosition":I
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    .line 78
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 77
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->show(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 80
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "932"

    const-string v3, "9334"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method
