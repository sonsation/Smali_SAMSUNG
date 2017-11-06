.class public Lcom/samsung/android/app/music/provider/MilkContents$StationSeedInfo;
.super Ljava/lang/Object;
.source "MilkContents.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$StationSeedColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StationSeedInfo"
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final URI_PATH:Ljava/lang/String; = "milk/station_seed"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 618
    const-string v0, "content://com.sec.android.app.music/milk/station_seed"

    .line 619
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$StationSeedInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 618
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 626
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$StationSeedInfo;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getUriPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    const-string v0, "milk/station_seed"

    return-object v0
.end method
