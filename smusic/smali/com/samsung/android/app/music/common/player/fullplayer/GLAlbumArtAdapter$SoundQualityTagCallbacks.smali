.class Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;
.super Ljava/lang/Object;
.source "GLAlbumArtAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache$DynamicBitmapCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundQualityTagCallbacks"
.end annotation


# static fields
.field private static final BASE_URI:Ljava/lang/String; = "context://sound_quality_data/"

.field private static final STREAMING_URI:Ljava/lang/String; = "context://streaming_quality_data/"


# instance fields
.field private mDetailInfo:Ljava/lang/String;

.field private mIsStreamingContent:Z

.field private mSearchKey:Landroid/net/Uri;

.field private mSoundQualityData:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    return-void
.end method


# virtual methods
.method public getSearchKey()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;->mSearchKey:Landroid/net/Uri;

    return-object v0
.end method

.method public onBindView(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 467
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;

    .line 468
    .local v0, "vh":Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;
    if-nez v0, :cond_0

    .line 469
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;

    .end local v0    # "vh":Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;
    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$1;)V

    .line 470
    .restart local v0    # "vh":Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 472
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;->mIsStreamingContent:Z

    if-eqz v1, :cond_2

    .line 473
    iget-object v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;->tagBadge:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    iget-object v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;->tagDetails:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iget-object v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;->tagDetails:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;->mDetailInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;->streamingTag:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;->streamingTag:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    :cond_1
    :goto_0
    return-void

    .line 481
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;->streamingTag:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 482
    iget-object v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;->streamingTag:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    :cond_3
    iget-object v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;->tagBadge:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;->tagDetails:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;->mSoundQualityData:J

    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->setTag(Landroid/widget/TextView;Landroid/widget/TextView;J)V

    goto :goto_0
.end method

.method public update(J)V
    .locals 5
    .param p1, "soundQualityData"    # J

    .prologue
    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;->mIsStreamingContent:Z

    .line 450
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;->mSoundQualityData:J

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context://sound_quality_data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;->mSoundQualityData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;->mSearchKey:Landroid/net/Uri;

    .line 452
    return-void
.end method

.method updateStreaming(Ljava/lang/String;)V
    .locals 2
    .param p1, "detailsInfo"    # Ljava/lang/String;

    .prologue
    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;->mIsStreamingContent:Z

    .line 456
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;->mDetailInfo:Ljava/lang/String;

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context://streaming_quality_data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;->mSearchKey:Landroid/net/Uri;

    .line 458
    return-void
.end method
