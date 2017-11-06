.class public final Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Online$StreamingCache;
.super Ljava/lang/Object;
.source "MediaContents.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$StreamingCachesColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Online;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamingCache"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final URI_PATH:Ljava/lang/String; = "audio/online/caches/streaming"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1040
    const-string v0, "content://com.sec.android.app.music/audio/online/caches/streaming"

    .line 1041
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Online$StreamingCache;->CONTENT_URI:Landroid/net/Uri;

    .line 1040
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
