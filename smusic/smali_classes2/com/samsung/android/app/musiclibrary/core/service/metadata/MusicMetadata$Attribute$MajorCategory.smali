.class Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;
.super Ljava/lang/Object;
.source "MusicMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MajorCategory"
.end annotation


# static fields
.field private static final MASK:I = 0xf

.field private static final MUSIC:I = 0x1

.field private static final RADIO:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 280
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;->isMusic(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 280
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;->isRadio(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(J)Z
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 280
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;->hasMajorCategory(J)Z

    move-result v0

    return v0
.end method

.method private static hasMajorCategory(J)Z
    .locals 4
    .param p0, "attribute"    # J

    .prologue
    .line 297
    const-wide/16 v0, 0xf

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMusic(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 4
    .param p0, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 289
    const-wide/16 v0, 0xf

    const-string v2, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRadio(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 4
    .param p0, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 293
    const-wide/16 v0, 0xf

    const-string v2, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
