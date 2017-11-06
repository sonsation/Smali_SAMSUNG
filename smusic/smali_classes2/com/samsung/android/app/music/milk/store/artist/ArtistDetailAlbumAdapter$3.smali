.class Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$3;
.super Ljava/lang/Object;
.source "ArtistDetailAlbumAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

.field final synthetic val$album:Lcom/samsung/android/app/music/common/model/Album;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;Lcom/samsung/android/app/music/common/model/Album;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$3;->val$album:Lcom/samsung/android/app/music/common/model/Album;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$3;->val$album:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;->playStoreAlbums(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    return-void
.end method
