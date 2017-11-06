.class public Lcom/samsung/android/app/music/provider/MilkContents$FavoriteArtistListInfos;
.super Ljava/lang/Object;
.source "MilkContents.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$FavoriteListColumn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavoriteArtistListInfos"
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field static final URI_PATH:Ljava/lang/String; = "milkfavorite_artist_list"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 556
    const-string v0, "content://com.sec.android.app.music/milkfavorite_artist_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteArtistListInfos;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLoader(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/Loader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    new-instance v0, Landroid/content/CursorLoader;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteArtistListInfos;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 563
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteArtistListInfos;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getUriPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    const-string v0, "milkfavorite_artist_list"

    return-object v0
.end method
