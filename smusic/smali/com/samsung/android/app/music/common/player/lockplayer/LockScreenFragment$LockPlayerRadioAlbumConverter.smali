.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerRadioAlbumConverter;
.super Ljava/lang/Object;
.source "LockScreenFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockPlayerRadioAlbumConverter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerRadioAlbumConverter;->mContext:Landroid/content/Context;

    .line 579
    return-void
.end method


# virtual methods
.method public convertAlbumArt(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$LockPlayerRadioAlbumConverter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02cc

    const v2, 0x7f0d0507

    .line 584
    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->createRoundedRingDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
