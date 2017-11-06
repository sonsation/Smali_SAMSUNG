.class public final Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;
.super Ljava/lang/Object;
.source "MediaContents.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AudioColumns;
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$CpAttrsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tracks"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String;

.field public static final MEDIA_PROVIDER_CONTENT_URI:Landroid/net/Uri;

.field public static final MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 565
    const-string v0, "content://com.sec.android.app.music/audio/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 567
    const-string v0, "content://media/external/audio/media"

    .line 568
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MEDIA_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    .line 570
    const-string v0, "content://com.sec.android.app.music/audio/media"

    .line 571
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    .line 576
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "title_pinyin"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "title"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSelectedContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "selectedArg"    # Ljava/lang/String;

    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sec.android.app.music/audio/media/selected/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
