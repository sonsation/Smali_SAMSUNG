.class public Lcom/samsung/android/app/music/provider/MilkContents$MilkTrack;
.super Ljava/lang/Object;
.source "MilkContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MilkTrack"
.end annotation


# static fields
.field public static final URI_PATH:Ljava/lang/String; = "milk/tracks"

.field public static final URI_PATH_SIMPLE:Ljava/lang/String; = "milk/tracks/simple"

.field public static final URI_PATH_UNIQUE:Ljava/lang/String; = "milk/tracks/unique"

.field public static final URL_PATH_FULL:Ljava/lang/String; = "milk/tracks/full"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 310
    const-string v0, "content://com.sec.android.app.music/milk/tracks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUriForFullTrack()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 314
    const-string v0, "content://com.sec.android.app.music/milk/tracks/full"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUriForSimpleTrack()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 318
    const-string v0, "content://com.sec.android.app.music/milk/tracks/simple"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUriForUniqueTrack()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 322
    const-string v0, "content://com.sec.android.app.music/milk/tracks/unique"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
