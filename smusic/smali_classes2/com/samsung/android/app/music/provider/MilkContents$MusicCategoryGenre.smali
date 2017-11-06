.class public Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenre;
.super Ljava/lang/Object;
.source "MilkContents.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$GenreInfoColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicCategoryGenre"
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field static final URI_PATH:Ljava/lang/String; = "category_genre"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 343
    const-string v0, "content://com.sec.android.app.music/category_genre"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenre;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenre;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getUriPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    const-string v0, "category_genre"

    return-object v0
.end method
