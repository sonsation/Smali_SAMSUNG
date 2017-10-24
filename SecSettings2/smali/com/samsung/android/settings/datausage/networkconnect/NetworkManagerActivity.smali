.class public Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;
.super Landroid/app/TabActivity;
.source "NetworkManagerActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;
    }
.end annotation


# static fields
.field public static mApplicationNetInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mDataBackupWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mIsBixBySwitchOnOff:Z

.field public static mIsCurrentSlotWarning:Z

.field public static mIsNeedReLoad:Z

.field public static mIsWarningStatus:Z

.field public static mSlotIndex:I

.field public static mSubId:I

.field public static mSubscriberId:Ljava/lang/String;

.field public static mUidDataLongTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mUidDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mUidWifiLongTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mUidWifiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWarningWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mWhiteList:[Ljava/lang/String;


# instance fields
.field private mBackgroundApp_endTime:J

.field private mBackgroundApp_startTime:J

.field private mContext:Landroid/content/Context;

.field private mCurrentTab:Ljava/lang/String;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSharedpre:Landroid/content/SharedPreferences;

.field private mTabHost:Landroid/widget/TabHost;

.field private mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->isWarningFunctionActive()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    .line 72
    sput v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSlotIndex:I

    .line 73
    sput-boolean v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    .line 74
    sput-boolean v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    .line 79
    sput-boolean v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    .line 80
    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    .line 81
    sput v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.contacts"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.android.stk"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.stk2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWhiteList:[Ljava/lang/String;

    .line 97
    sput-boolean v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsBixBySwitchOnOff:Z

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mCurrentTab:Ljava/lang/String;

    .line 88
    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mBackgroundApp_startTime:J

    .line 89
    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mBackgroundApp_endTime:J

    .line 254
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 59
    return-void
.end method

.method private checkWarningStatus()V
    .locals 13

    .prologue
    .line 198
    new-instance v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 199
    .local v5, "utils":Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;
    const/4 v10, 0x0

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    .line 200
    const/4 v10, 0x0

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    .line 201
    invoke-virtual {v5}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getTotalUsedData()J

    move-result-wide v6

    .line 202
    .local v6, "usedTotalBytes":J
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->getActiveSubId()I

    move-result v1

    .line 203
    .local v1, "activeSubId":I
    const/4 v0, 0x0

    .line 204
    .local v0, "activeSimSlotWarningEnable":I
    const-string/jumbo v2, "max"

    .line 205
    .local v2, "allData":Ljava/lang/String;
    const-string/jumbo v9, "off"

    .line 206
    .local v9, "warningValue":Ljava/lang/String;
    const/4 v4, 0x0

    .line 207
    .local v4, "isTrafficSettingEnable":Z
    iget-object v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set_data_limit"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "max"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    iget-object v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "data_warning_set"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "off"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 209
    iget-object v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "data_warning_whitelist_enable_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 210
    iget-object v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "switch_traffic_settings"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 211
    .local v4, "isTrafficSettingEnable":Z
    if-nez v2, :cond_0

    .line 212
    const-string/jumbo v2, "max"

    .line 214
    :cond_0
    if-nez v9, :cond_1

    .line 215
    const-string/jumbo v9, "off"

    .line 217
    :cond_1
    const-string/jumbo v10, "off"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    if-nez v0, :cond_3

    .line 218
    :cond_2
    const/4 v10, 0x0

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    .line 219
    const/4 v10, 0x0

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    .line 220
    return-void

    .line 217
    :cond_3
    if-eqz v4, :cond_2

    const-string/jumbo v10, "max"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 222
    const/high16 v8, -0x40800000    # -1.0f

    .line 224
    .local v8, "warningBytes":F
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/high16 v11, 0x44800000    # 1024.0f

    mul-float/2addr v10, v11

    const/high16 v11, 0x44800000    # 1024.0f

    mul-float/2addr v10, v11

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v8, v10, v11

    .line 228
    :goto_0
    long-to-float v10, v6

    cmpl-float v10, v10, v8

    if-ltz v10, :cond_4

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v10, v8, v10

    if-lez v10, :cond_4

    const/4 v10, 0x1

    if-ne v0, v10, :cond_4

    .line 229
    const/4 v10, 0x1

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    .line 230
    sget v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    if-ne v1, v10, :cond_5

    .line 231
    const/4 v10, 0x1

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    .line 197
    :cond_4
    :goto_1
    return-void

    .line 225
    :catch_0
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/Exception;
    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_0

    .line 233
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v10, 0x0

    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    goto :goto_1
.end method

.method private getActiveSubId()I
    .locals 2

    .prologue
    .line 247
    sget v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 248
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    .line 250
    :cond_0
    sget v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    return v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 242
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 241
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "actualSubscriberId":Ljava/lang/String;
    return-object v0
.end method

.method private isWarningFunctionActive()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 300
    const-string/jumbo v0, "max"

    .line 301
    .local v0, "allData":Ljava/lang/String;
    const-string/jumbo v3, "off"

    .line 302
    .local v3, "warningValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 303
    .local v1, "isTrafficSettingEnable":Z
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set_data_limit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "data_warning_set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_traffic_settings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 306
    .local v2, "trafficSetting":I
    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 307
    :goto_0
    if-nez v0, :cond_0

    .line 308
    const-string/jumbo v0, "max"

    .line 310
    :cond_0
    if-nez v3, :cond_1

    .line 311
    const-string/jumbo v3, "off"

    .line 313
    :cond_1
    const-string/jumbo v4, "off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    const-string/jumbo v4, "max"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 314
    :cond_2
    return v7

    .line 306
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 316
    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method private setupNormalTab()V
    .locals 4

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    .line 143
    const-string/jumbo v2, "com.samsung.android.settings.datausage.networkconnect.NetworkConnectActivity"

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v1, "subscriberId"

    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v1, "subId"

    sget v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v3, "normal"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b0cce

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 140
    return-void
.end method

.method private setupWarningTab()V
    .locals 4

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    .line 152
    const-string/jumbo v2, "com.samsung.android.settings.datausage.networkconnect.DataWarningLimitActivity"

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string/jumbo v1, "subscriberId"

    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string/jumbo v1, "subId"

    sget v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v3, "warning"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0b0ccf

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 149
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 175
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 101
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    new-instance v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    .line 104
    iput-object p0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 107
    .local v0, "actionbar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 109
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    .line 110
    sget v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    if-eq v1, v3, :cond_0

    .line 111
    sget v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSlotIndex:I

    .line 112
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    sget v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getSubscriptionId(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    .line 114
    :cond_0
    sget v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    if-ne v1, v3, :cond_1

    .line 115
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    .line 116
    invoke-static {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    .line 117
    sget v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSlotIndex:I

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    .line 120
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 121
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->setupNormalTab()V

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->setupWarningTab()V

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v2, "normal"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 126
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 180
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 160
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 162
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->finish()V

    .line 163
    const/4 v0, 0x1

    return v0

    .line 160
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 187
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ManageAppData"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 188
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    .line 189
    new-instance v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 190
    .local v1, "utils":Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;
    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_app_whitelist_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->putWhiteList(Ljava/util/List;Ljava/lang/String;)V

    .line 191
    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    const-string/jumbo v3, "data_normal_app_whitelist"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->putWhiteList(Ljava/util/List;Ljava/lang/String;)V

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.intent.action.ACTION_DATA_WARNING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v2, "ManageAppData"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSharedpre:Landroid/content/SharedPreferences;

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->checkWarningStatus()V

    .line 130
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 171
    return-void
.end method
