.class Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;
.super Ljava/lang/Object;
.source "GLAlbumArtAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundQualityTagHolder"
.end annotation


# instance fields
.field final streamingTag:Landroid/widget/ImageView;

.field final tagBadge:Landroid/widget/TextView;

.field final tagDetails:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    const v0, 0x7f1201f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;->tagBadge:Landroid/widget/TextView;

    .line 425
    const v0, 0x7f1201f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;->tagDetails:Landroid/widget/TextView;

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;->streamingTag:Landroid/widget/ImageView;

    .line 427
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$1;

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
