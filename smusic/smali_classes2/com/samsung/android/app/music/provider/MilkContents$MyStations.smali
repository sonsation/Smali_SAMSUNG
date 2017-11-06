.class public Lcom/samsung/android/app/music/provider/MilkContents$MyStations;
.super Ljava/lang/Object;
.source "MilkContents.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$MyStationColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyStations"
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field public static final GET_COUNT_MYSTATIONS:Ljava/lang/String; = "SELECT count(mystation_station_id) from my_station"

.field public static final GET_COUNT_MYSTATIONS_BY_STATIONID:Ljava/lang/String; = "SELECT count(mystation_station_id) from my_station WHERE mystation_station_id = ? "

.field static final URI_PATH:Ljava/lang/String; = "stations/mystation"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const-string v0, "content://com.sec.android.app.music/stations/mystation"

    .line 155
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$MyStations;->CONTENT_URI:Landroid/net/Uri;

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$MyStations;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;
    .locals 1
    .param p0, "stationID"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    return-object v0
.end method

.method public static getUriPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string/jumbo v0, "stations/mystation"

    return-object v0
.end method
