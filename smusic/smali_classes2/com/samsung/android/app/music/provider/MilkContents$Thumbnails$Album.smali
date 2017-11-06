.class public Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;
.super Ljava/lang/Object;
.source "MilkContents.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$ThumbnailColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Album"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final URI_PATH:Ljava/lang/String; = "milk/thumbnail/album"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    const-string v0, "content://com.sec.android.app.music/milk/thumbnail/album"

    .line 289
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->CONTENT_URI:Landroid/net/Uri;

    .line 288
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
