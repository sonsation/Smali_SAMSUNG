.class Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter$AlbumDisc;
.super Lcom/samsung/android/app/music/common/model/AlbumTrack;
.source "AlbumDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumDisc"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "discNo"    # I

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/AlbumTrack;-><init>()V

    .line 215
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter$AlbumDisc;->setDiscNo(I)V

    .line 216
    return-void
.end method


# virtual methods
.method public isPlayable()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method
