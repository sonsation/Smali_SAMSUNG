.class Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$LyricsHolder;
.super Ljava/lang/Object;
.source "GLAlbumArtAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricsHolder"
.end annotation


# instance fields
.field position:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$LyricsHolder;->position:I

    .line 413
    return-void
.end method
