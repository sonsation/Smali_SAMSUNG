.class Lcom/mapps/android/network/TraceGPS$2;
.super Ljava/lang/Object;
.source "TraceGPS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/network/TraceGPS;->getPostNumber(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$lat:D

.field private final synthetic val$longi:D


# direct methods
.method constructor <init>(DD)V
    .locals 1

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/mapps/android/network/TraceGPS$2;->val$lat:D

    iput-wide p3, p0, Lcom/mapps/android/network/TraceGPS$2;->val$longi:D

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 79
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Lcom/mapps/android/network/TraceGPS;->access$2()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 81
    .local v1, "geoCoder":Landroid/location/Geocoder;
    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    iget-wide v2, p0, Lcom/mapps/android/network/TraceGPS$2;->val$lat:D

    iget-wide v4, p0, Lcom/mapps/android/network/TraceGPS$2;->val$longi:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 84
    .local v0, "addresses":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mapps/android/network/TraceGPS;->mUzipcode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "addresses":Landroid/location/Address;
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v7

    .line 88
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/mapps/android/network/TraceGPS;->access$0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string v2, "ADSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get postnumber fail : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
