.class public Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;
.super Ljava/lang/Object;
.source "Thumbnails.java"


# static fields
.field public static final DLNA:Landroid/net/Uri;

.field public static final LOCAL:Landroid/net/Uri;

.field public static final MILK_ALBUM:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->LOCAL:Landroid/net/Uri;

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    .line 22
    const-string v0, "content://com.sec.android.app.music/dlna_album_art"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->DLNA:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCpAttrsToListType(I)I
    .locals 1
    .param p0, "cpAttrs"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    invoke-static {p0}, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->convertCpAttrsToUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->convertToListType(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static convertCpAttrsToUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "cpAttrs"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/CpAttrs;->getStorageLocation(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 58
    sget-object v0, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->DLNA:Landroid/net/Uri;

    .line 62
    :goto_0
    return-object v0

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/CpAttrs;->getCpName(I)I

    move-result v0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_1

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->LOCAL:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static convertListTypeToUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "listType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    packed-switch p0, :pswitch_data_0

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->LOCAL:Landroid/net/Uri;

    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->DLNA:Landroid/net/Uri;

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x10000b
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToListType(Landroid/net/Uri;)I
    .locals 1
    .param p0, "baseThumbnailUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/samsung/android/app/music/common/martworkcache/Thumbnails;->DLNA:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const v0, 0x10000b

    .line 33
    :goto_0
    return v0

    :cond_0
    const v0, 0x110001

    goto :goto_0
.end method
