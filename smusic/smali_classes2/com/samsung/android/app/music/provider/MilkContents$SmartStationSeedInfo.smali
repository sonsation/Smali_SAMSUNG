.class public Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;
.super Ljava/lang/Object;
.source "MilkContents.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$SmartStationSeedColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartStationSeedInfo"
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field static final URI_PATH:Ljava/lang/String; = "milk/smart_station_seed"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 604
    const-string v0, "content://com.sec.android.app.music/milk/smart_station_seed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 611
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getUriPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    const-string v0, "milk/smart_station_seed"

    return-object v0
.end method
