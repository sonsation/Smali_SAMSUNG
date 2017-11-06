.class Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GLAlbumArtAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private artist:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f120129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    .line 133
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    return-object v0
.end method
