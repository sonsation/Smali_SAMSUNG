.class public final Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$MostPlayedRank;
.super Ljava/lang/Object;
.source "MediaContents.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MostPlayedRank"
.end annotation


# static fields
.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final COUNT_OF_MOST_PLAYED:Ljava/lang/String; = "count_of_most_played"

.field public static final CP_ATTRS:Ljava/lang/String; = "cp_attrs"

.field public static final DUMMY_FOR_ALBUM_ID:Ljava/lang/String; = "dummy"

.field public static final LIST_TYPE:Ljava/lang/String; = "list_type"

.field public static NOTIFY_CONTENT_URI:Landroid/net/Uri; = null

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 985
    const-string v0, "content://com.sec.android.app.music/audio/media/most_played_rank"

    .line 986
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$MostPlayedRank;->NOTIFY_CONTENT_URI:Landroid/net/Uri;

    .line 985
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(I)Landroid/net/Uri;
    .locals 3
    .param p0, "cpAttrs"    # I

    .prologue
    .line 979
    const-string v0, "content://com.sec.android.app.music/audio/media/most_played_rank"

    .line 980
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 981
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "param_cp_attrs"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 982
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
