.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
.super Ljava/lang/Object;
.source "MusicMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAttribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

.field private final mMediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mAttribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    .line 525
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mMediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    .line 526
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 4

    .prologue
    .line 569
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mMediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    const-string v1, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mAttribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->build()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 570
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mMediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;-><init>(Landroid/media/MediaMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$1;)V

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mMediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 540
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 534
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mMediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 535
    return-object p0
.end method

.method public putMusicAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mAttribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putMusicAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    .line 545
    return-object p0
.end method

.method public putPrivateAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mAttribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putPrivateAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    .line 550
    return-object p0
.end method

.method public putRadioAdvertisementAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mAttribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putRadioAdvertisementAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    .line 560
    return-object p0
.end method

.method public putRadioAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mAttribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putRadioAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    .line 555
    return-object p0
.end method

.method public putRadioCelebAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mAttribute:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putRadioCelebAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    .line 565
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->mMediaMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 530
    return-object p0
.end method
