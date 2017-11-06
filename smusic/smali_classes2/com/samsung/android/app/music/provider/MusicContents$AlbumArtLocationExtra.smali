.class public final Lcom/samsung/android/app/music/provider/MusicContents$AlbumArtLocationExtra;
.super Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtLocationExtra;
.source "MusicContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumArtLocationExtra"
.end annotation


# static fields
.field public static final MILK_ALBUM_ART:Ljava/lang/String;

.field public static final MILK_MDRM:Ljava/lang/String; = "mdrm"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "mdrm"

    .line 84
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtLocationExtra;->appendCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicContents$AlbumArtLocationExtra;->MILK_ALBUM_ART:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtLocationExtra;-><init>()V

    return-void
.end method
