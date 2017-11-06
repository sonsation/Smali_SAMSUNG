.class public Lcom/mapps/android/bean/DeviceInfoBean;
.super Ljava/lang/Object;
.source "DeviceInfoBean.java"

# interfaces
.implements Lcom/mapps/android/share/AdInfoKey;
.implements Lcom/mapps/android/share/InterBannerKey;


# instance fields
.field public a_sspid:Ljava/lang/String;

.field public d_adid:Ljava/lang/String;

.field public d_app_id:Ljava/lang/String;

.field public d_app_name:Ljava/lang/String;

.field public d_app_ver:Ljava/lang/String;

.field public d_carrier:Ljava/lang/String;

.field public d_densty:I

.field public d_geo_city:Ljava/lang/String;

.field public d_geo_country:Ljava/lang/String;

.field public d_geo_lat:Ljava/lang/String;

.field public d_geo_lon:Ljava/lang/String;

.field public d_geo_region:Ljava/lang/String;

.field public d_geo_zip:Ljava/lang/String;

.field public d_h:Ljava/lang/String;

.field public d_language:Ljava/lang/String;

.field public d_maker:Ljava/lang/String;

.field public d_mcc:Ljava/lang/String;

.field public d_mnc:Ljava/lang/String;

.field public d_model:Ljava/lang/String;

.field public d_network:Ljava/lang/String;

.field public d_network_index:Ljava/lang/String;

.field public d_orientation:Ljava/lang/String;

.field public d_os:Ljava/lang/String;

.field public d_osv:Ljava/lang/String;

.field public d_screen:Ljava/lang/String;

.field public d_sdk_v:Ljava/lang/String;

.field public d_w:Ljava/lang/String;

.field public device_network:Ljava/lang/String;

.field public format:[Ljava/lang/String;

.field public i_banner_h:Ljava/lang/String;

.field public i_banner_w:Ljava/lang/String;

.field public i_product:Ljava/lang/String;

.field public i_product_attr:Ljava/lang/String;

.field public i_product_type:Ljava/lang/String;

.field public i_request_id:Ljava/lang/String;

.field public i_response_format:Ljava/lang/String;

.field public i_video_category:Ljava/lang/String;

.field public i_video_delivery:Ljava/lang/String;

.field public i_video_h:Ljava/lang/String;

.field public i_video_maxbitrate:Ljava/lang/String;

.field public i_video_maxduration:Ljava/lang/String;

.field public i_video_mims:Ljava/lang/String;

.field public i_video_minbitrate:Ljava/lang/String;

.field public i_video_minduration:Ljava/lang/String;

.field public i_video_startdelay:Ljava/lang/String;

.field public i_video_w:Ljava/lang/String;

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u_age:Ljava/lang/String;

.field public u_gender:Ljava/lang/String;

.field public u_gps_flag:Ljava/lang/String;

.field public videoformat:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "json"

    aput-object v1, v0, v2

    const-string/jumbo v1, "xml"

    aput-object v1, v0, v3

    const-string v1, "html"

    aput-object v1, v0, v4

    const-string v1, "js"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->format:[Ljava/lang/String;

    .line 31
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "video/mp4"

    aput-object v1, v0, v2

    const-string/jumbo v1, "video/x-ms-wmv"

    aput-object v1, v0, v3

    const-string/jumbo v1, "video/x-flv"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->videoformat:[Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_name:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_ver:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_id:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->a_sspid:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_request_id:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_response_format:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_type:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_attr:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_banner_w:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_banner_h:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_mims:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxduration:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minduration:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_w:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_h:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_startdelay:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxbitrate:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minbitrate:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_delivery:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_category:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_adid:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_country:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_city:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_region:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_zip:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lat:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lon:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->u_gps_flag:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_screen:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_maker:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_model:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network_index:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->device_network:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_carrier:Ljava/lang/String;

    .line 68
    const-string v0, "Android"

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_os:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_osv:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_w:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_h:Ljava/lang/String;

    .line 72
    iput v2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_densty:I

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_orientation:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_language:Ljava/lang/String;

    .line 75
    const-string v0, "1"

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_sdk_v:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mcc:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mnc:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->u_age:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->u_gender:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->params:Ljava/util/List;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->params:Ljava/util/List;

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 333
    const-string v1, ""

    .line 335
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mapps/android/bean/DeviceInfoBean;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 336
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 362
    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 363
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "telecom":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 366
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 372
    .end local v0    # "telecom":Ljava/lang/String;
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    .line 370
    :catch_0
    move-exception v2

    .line 372
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public getDeviceParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sdkType"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_name:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_1

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mapps/android/bean/DeviceInfoBean;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_name:Ljava/lang/String;

    .line 102
    :cond_1
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_ver:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_ver:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_3

    .line 104
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {p0, p1, v11}, Lcom/mapps/android/bean/DeviceInfoBean;->getPackageType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_ver:Ljava/lang/String;

    .line 106
    :cond_3
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_id:Ljava/lang/String;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_id:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_5

    .line 108
    :cond_4
    const/4 v11, 0x1

    invoke-virtual {p0, p1, v11}, Lcom/mapps/android/bean/DeviceInfoBean;->getPackageType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_id:Ljava/lang/String;

    .line 110
    :cond_5
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->a_sspid:Ljava/lang/String;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->a_sspid:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_7

    .line 112
    :cond_6
    const-string v11, ""

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->a_sspid:Ljava/lang/String;

    .line 115
    :cond_7
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_type:Ljava/lang/String;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_type:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_9

    .line 117
    :cond_8
    const-string v11, "4"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_39

    .line 118
    const-string v11, "2"

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_type:Ljava/lang/String;

    .line 123
    :cond_9
    :goto_0
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_attr:Ljava/lang/String;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_attr:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_b

    .line 125
    :cond_a
    iput-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_attr:Ljava/lang/String;

    .line 128
    :cond_b
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product:Ljava/lang/String;

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_d

    .line 130
    :cond_c
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->videoformat:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product:Ljava/lang/String;

    .line 133
    :cond_d
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_mims:Ljava/lang/String;

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_mims:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_f

    .line 135
    :cond_e
    const-string v11, ""

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_mims:Ljava/lang/String;

    .line 138
    :cond_f
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxduration:Ljava/lang/String;

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxduration:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_11

    .line 140
    :cond_10
    const-string v11, ""

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxduration:Ljava/lang/String;

    .line 143
    :cond_11
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minduration:Ljava/lang/String;

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minduration:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_13

    .line 145
    :cond_12
    const-string v11, ""

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minduration:Ljava/lang/String;

    .line 148
    :cond_13
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_w:Ljava/lang/String;

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_w:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_16

    :cond_14
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_h:Ljava/lang/String;

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_h:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_16

    .line 150
    :cond_15
    const-string/jumbo v11, "window"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 151
    .local v0, "defaultDisplay":Landroid/view/Display;
    if-eqz v0, :cond_16

    .line 152
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 153
    .local v2, "displayWith":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 154
    .local v1, "displayHeight":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_w:Ljava/lang/String;

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_h:Ljava/lang/String;

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_w:Ljava/lang/String;

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_h:Ljava/lang/String;

    .line 158
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "i_video_w : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_w:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 159
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "i_video_h : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_h:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 163
    .end local v0    # "defaultDisplay":Landroid/view/Display;
    .end local v1    # "displayHeight":I
    .end local v2    # "displayWith":I
    :cond_16
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_startdelay:Ljava/lang/String;

    if-eqz v11, :cond_17

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_startdelay:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_18

    .line 165
    :cond_17
    const-string v11, ""

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_startdelay:Ljava/lang/String;

    .line 168
    :cond_18
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxbitrate:Ljava/lang/String;

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxbitrate:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_1a

    .line 170
    :cond_19
    const-string v11, ""

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxbitrate:Ljava/lang/String;

    .line 173
    :cond_1a
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minbitrate:Ljava/lang/String;

    if-eqz v11, :cond_1b

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minbitrate:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_1c

    .line 175
    :cond_1b
    const-string v11, ""

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minbitrate:Ljava/lang/String;

    .line 178
    :cond_1c
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/mapps/android/share/ShareUtil;->getIsGPS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "locFlag":Ljava/lang/String;
    const-string v11, "1"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 180
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_zip:Ljava/lang/String;

    if-eqz v11, :cond_1d

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_zip:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_1e

    .line 182
    :cond_1d
    sget-object v11, Lcom/mapps/android/network/TraceGPS;->mUzipcode:Ljava/lang/String;

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_zip:Ljava/lang/String;

    .line 185
    :cond_1e
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lat:Ljava/lang/String;

    if-eqz v11, :cond_1f

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lat:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_20

    .line 187
    :cond_1f
    sget-object v11, Lcom/mapps/android/network/TraceGPS;->m_strlatitude:Ljava/lang/String;

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lat:Ljava/lang/String;

    .line 190
    :cond_20
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lon:Ljava/lang/String;

    if-eqz v11, :cond_21

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lon:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_22

    .line 192
    :cond_21
    sget-object v11, Lcom/mapps/android/network/TraceGPS;->m_strlongitude:Ljava/lang/String;

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lon:Ljava/lang/String;

    .line 194
    :cond_22
    const-string v11, "1"

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->u_gps_flag:Ljava/lang/String;

    .line 199
    :goto_1
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_screen:Ljava/lang/String;

    if-eqz v11, :cond_23

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_screen:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_24

    .line 201
    :cond_23
    const-string v11, "1"

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_screen:Ljava/lang/String;

    .line 204
    :cond_24
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_maker:Ljava/lang/String;

    if-eqz v11, :cond_25

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_maker:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_26

    .line 206
    :cond_25
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 207
    .local v7, "strMaker":Ljava/lang/String;
    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 208
    iput-object v7, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_maker:Ljava/lang/String;

    .line 211
    .end local v7    # "strMaker":Ljava/lang/String;
    :cond_26
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_model:Ljava/lang/String;

    if-eqz v11, :cond_27

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_model:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_28

    .line 213
    :cond_27
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 214
    .local v8, "strModel":Ljava/lang/String;
    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 215
    iput-object v8, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_model:Ljava/lang/String;

    .line 225
    .end local v8    # "strModel":Ljava/lang/String;
    :cond_28
    const-string v11, "connectivity"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 226
    .local v4, "manager":Landroid/net/ConnectivityManager;
    if-eqz v4, :cond_2c

    .line 227
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    .line 228
    .local v10, "wifi":Landroid/net/NetworkInfo$State;
    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v10, v11, :cond_29

    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v10, v11, :cond_2a

    .line 229
    :cond_29
    const-string v11, "2"

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network_index:Ljava/lang/String;

    .line 230
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network:Ljava/lang/String;

    .line 233
    :cond_2a
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v4, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 234
    .local v5, "mobile":Landroid/net/NetworkInfo$State;
    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v11, :cond_2b

    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v5, v11, :cond_2c

    .line 235
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/mapps/android/bean/DeviceInfoBean;->getNetworkClass(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network_index:Ljava/lang/String;

    .line 236
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v5    # "mobile":Landroid/net/NetworkInfo$State;
    .end local v10    # "wifi":Landroid/net/NetworkInfo$State;
    :cond_2c
    :goto_2
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_carrier:Ljava/lang/String;

    if-eqz v11, :cond_2d

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_carrier:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_2e

    .line 244
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/mapps/android/bean/DeviceInfoBean;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_carrier:Ljava/lang/String;

    .line 246
    :cond_2e
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_language:Ljava/lang/String;

    if-eqz v11, :cond_2f

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_language:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_30

    .line 248
    :cond_2f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v9, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 249
    .local v9, "systemLocale":Ljava/util/Locale;
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_language:Ljava/lang/String;

    .line 252
    .end local v9    # "systemLocale":Ljava/util/Locale;
    :cond_30
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_osv:Ljava/lang/String;

    if-eqz v11, :cond_31

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_osv:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_32

    .line 254
    :cond_31
    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_osv:Ljava/lang/String;

    .line 257
    :cond_32
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mcc:Ljava/lang/String;

    if-eqz v11, :cond_33

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mcc:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_34

    .line 259
    :cond_33
    const/4 v11, 0x0

    invoke-virtual {p0, p1, v11}, Lcom/mapps/android/bean/DeviceInfoBean;->getTeleInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mcc:Ljava/lang/String;

    .line 262
    :cond_34
    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mnc:Ljava/lang/String;

    if-eqz v11, :cond_35

    iget-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mnc:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_36

    .line 264
    :cond_35
    const/4 v11, 0x1

    invoke-virtual {p0, p1, v11}, Lcom/mapps/android/bean/DeviceInfoBean;->getTeleInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mnc:Ljava/lang/String;

    .line 267
    :cond_36
    iget v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_densty:I

    if-nez v11, :cond_37

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_densty:I

    .line 272
    :cond_37
    invoke-virtual {p0, p1}, Lcom/mapps/android/bean/DeviceInfoBean;->getOrientations(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_orientation:Ljava/lang/String;

    .line 273
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 274
    .local v6, "stb":Ljava/lang/StringBuffer;
    const-string v11, "&d_app_name="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    const-string v11, "&d_app_id="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    const-string v11, "&d_app_ver="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_ver:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    const-string v11, "4"

    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    .line 278
    const-string v11, "&i_video_w="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_w:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    const-string v11, "&i_video_h="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_h:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    :cond_38
    const-string v11, "&d_screen="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_screen:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    const-string v11, "&d_maker="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_maker:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    const-string v11, "&d_model="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_model:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    const-string v11, "&d_network_index="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network_index:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    const-string v11, "&d_network="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    const-string v11, "&d_carrier="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_carrier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    const-string v11, "&d_os="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_os:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const-string v11, "&d_osv="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_osv:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    const-string v11, "&d_w="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_w:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    const-string v11, "&d_h="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_h:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    const-string v11, "&d_densty="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_densty:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 292
    const-string v11, "&d_orientation="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_orientation:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const-string v11, "&d_language="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_language:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    const-string v11, "&d_mcc="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mcc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    const-string v11, "&d_mnc="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mnc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    const-string v11, "&d_sdk_v="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "101"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    const-string v11, "&u_gps_flag="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/mapps/android/bean/DeviceInfoBean;->u_gps_flag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 120
    .end local v3    # "locFlag":Ljava/lang/String;
    .end local v4    # "manager":Landroid/net/ConnectivityManager;
    .end local v6    # "stb":Ljava/lang/StringBuffer;
    :cond_39
    const-string v11, "1"

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_type:Ljava/lang/String;

    goto/16 :goto_0

    .line 196
    .restart local v3    # "locFlag":Ljava/lang/String;
    :cond_3a
    const-string v11, "0"

    iput-object v11, p0, Lcom/mapps/android/bean/DeviceInfoBean;->u_gps_flag:Ljava/lang/String;

    goto/16 :goto_1

    .line 238
    .restart local v4    # "manager":Landroid/net/ConnectivityManager;
    .restart local v10    # "wifi":Landroid/net/NetworkInfo$State;
    :catch_0
    move-exception v11

    goto/16 :goto_2
.end method

.method public getEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 377
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 378
    :catch_0
    move-exception v0

    .line 380
    const-string v0, ""

    goto :goto_0
.end method

.method public getNetworkClass(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    const/4 v2, 0x0

    .line 386
    .local v2, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    :try_start_0
    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v2, v0

    .line 387
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 388
    .local v3, "networkType":I
    packed-switch v3, :pswitch_data_0

    .line 397
    :pswitch_0
    const-string v4, "0"

    .line 400
    .end local v3    # "networkType":I
    :goto_0
    return-object v4

    .line 391
    .restart local v3    # "networkType":I
    :pswitch_1
    const-string v4, "4"

    goto :goto_0

    .line 393
    :pswitch_2
    const-string v4, "5"

    goto :goto_0

    .line 395
    :pswitch_3
    const-string v4, "6"

    goto :goto_0

    .line 399
    .end local v3    # "networkType":I
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "0"

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getOrientations(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 406
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 407
    .local v1, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 408
    .local v0, "mDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 418
    const-string v2, "1"

    :goto_0
    return-object v2

    .line 410
    :pswitch_0
    const-string v2, "1"

    goto :goto_0

    .line 412
    :pswitch_1
    const-string v2, "2"

    goto :goto_0

    .line 414
    :pswitch_2
    const-string v2, "1"

    goto :goto_0

    .line 416
    :pswitch_3
    const-string v2, "2"

    goto :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPackageType(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 349
    if-nez p2, :cond_0

    .line 350
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 357
    :goto_0
    return-object v1

    .line 352
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 357
    const-string v1, ""

    goto :goto_0
.end method

.method public getResponseFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_response_format:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_response_format:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->format:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_response_format:Ljava/lang/String;

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "i_response_format="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_response_format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTeleInfo(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 425
    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 426
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "networkOperator":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 428
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 433
    .end local v0    # "networkOperator":Ljava/lang/String;
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    .line 429
    .restart local v0    # "networkOperator":Ljava/lang/String;
    .restart local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 430
    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 431
    .end local v0    # "networkOperator":Ljava/lang/String;
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    .line 433
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getUUIDKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 343
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 344
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v1, "url":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->params:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 322
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    .local v0, "parameter":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method
