.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;
.super Ljava/lang/Object;
.source "MusicMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final UNDEFINED:J


# instance fields
.field private mAttribute:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    return-void
.end method


# virtual methods
.method public build()J
    .locals 4

    .prologue
    .line 369
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    .line 370
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;->access$600(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->putMusicAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;

    .line 374
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    return-wide v0
.end method

.method public putMusicAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;
    .locals 4

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    .line 344
    return-object p0
.end method

.method public putPrivateAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;
    .locals 4

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    .line 349
    return-object p0
.end method

.method public putRadioAdvertisementAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;
    .locals 4

    .prologue
    .line 358
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    const-wide/16 v2, 0x12

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    .line 360
    return-object p0
.end method

.method public putRadioAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;
    .locals 4

    .prologue
    .line 353
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    .line 354
    return-object p0
.end method

.method public putRadioCelebAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;
    .locals 4

    .prologue
    .line 364
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    const-wide/16 v2, 0x22

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Builder;->mAttribute:J

    .line 365
    return-object p0
.end method
