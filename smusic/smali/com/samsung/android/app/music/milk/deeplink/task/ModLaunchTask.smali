.class public Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "ModLaunchTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAllHotId:Ljava/lang/String;

.field private mAllId:Ljava/lang/String;

.field private mAllNewId:Ljava/lang/String;

.field private mDailyId:Ljava/lang/String;

.field private mDomesticHotId:Ljava/lang/String;

.field private mDomesticId:Ljava/lang/String;

.field private mDomesticNewId:Ljava/lang/String;

.field private mInternationalHotId:Ljava/lang/String;

.field private mInternationalId:Ljava/lang/String;

.field private mInternationalNewId:Ljava/lang/String;

.field private mRadioBoxId:Ljava/lang/String;

.field private mRealTimeId:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;

.field private mTargetId:Ljava/lang/String;

.field private mTrackList:Ljava/lang/String;

.field private mWeeklyId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 54
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTarget:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTargetId:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->REALTIME_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mRealTimeId:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->DAILY_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mDailyId:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->WEEKLY_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mWeeklyId:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ALL_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mAllId:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->DOMESTIC_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mDomesticId:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->INTERNATIONAL_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mInternationalId:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ALL_NEW_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mAllNewId:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ALL_HOT_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mAllHotId:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->DOMESTIC_NEW_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mDomesticNewId:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->DOMESTIC_HOT_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mDomesticHotId:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->INTERNATIONAL_NEW_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mInternationalNewId:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->INTERNATIONAL_HOT_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mInternationalHotId:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->RADIOBOX_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mRadioBoxId:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_LIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTrackList:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private getMoreType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;
    .locals 1
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;-><init>()V

    .line 194
    .local v0, "item":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->setDisplayGroup(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->setDisplayType(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;->setDisplayId(Ljava/lang/String;)V

    .line 198
    return-object v0
.end method

.method private getStoreMainGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .locals 4
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;-><init>()V

    .line 166
    .local v0, "mainGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, "moreTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;>;"
    const-string v2, "2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    const-string v2, "2"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mRealTimeId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getMoreType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v2, "3"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mDailyId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getMoreType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v2, "4"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mWeeklyId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getMoreType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->setDisplayGroup(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->setDisplayId(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->setMoreTypeList(Ljava/util/List;)V

    .line 189
    return-object v0

    .line 172
    :cond_1
    const-string v2, "3"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    const-string v2, "20"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mAllId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getMoreType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v2, "21"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mDomesticId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getMoreType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v2, "22"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mInternationalId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getMoreType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_2
    const-string v2, "6"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const-string v2, "40"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mAllNewId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getMoreType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v2, "41"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mAllHotId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getMoreType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v2, "42"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mDomesticNewId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getMoreType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v2, "43"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mDomesticHotId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getMoreType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v2, "44"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mInternationalNewId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getMoreType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v2, "45"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mInternationalHotId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getMoreType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMoreType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    .line 119
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->moveToTab(II)V

    .line 121
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTarget:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v3

    .line 123
    .local v3, "targetType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    if-nez v3, :cond_0

    .line 162
    :goto_0
    return-void

    .line 127
    :cond_0
    sget-object v5, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$TargetType:[I

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->PICK:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->movePageMore(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTargetId:Ljava/lang/String;

    .line 130
    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTargetId:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    goto :goto_0

    .line 136
    :pswitch_3
    const-string v5, "2"

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTargetId:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getStoreMainGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v4

    .line 137
    .local v4, "topChartGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {v5, v6, v4}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->movePageMore(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    goto :goto_0

    .line 140
    .end local v4    # "topChartGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :pswitch_4
    const-string v5, "3"

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTargetId:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getStoreMainGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v2

    .line 141
    .local v2, "newReleaseGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {v5, v6, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->movePageMore(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    goto :goto_0

    .line 147
    .end local v2    # "newReleaseGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :pswitch_5
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->PICK_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTargetId:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    goto :goto_0

    .line 150
    :pswitch_6
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mRadioBoxId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveMilkRadio(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 153
    :pswitch_7
    const-string v5, "6"

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTargetId:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->getStoreMainGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v1

    .line 154
    .local v1, "musicVideoGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {v5, v6, v1}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->movePageMore(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    goto :goto_0

    .line 157
    .end local v1    # "musicVideoGroup":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :pswitch_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "contentId"

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTrackList:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v5

    const-class v6, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public isValidTask()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 75
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTarget:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    .line 77
    .local v0, "targetType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    if-nez v0, :cond_0

    .line 114
    :goto_0
    :pswitch_0
    return v1

    .line 81
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$TargetType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 114
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTargetId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mRealTimeId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mDailyId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mWeeklyId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mAllId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mDomesticId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mInternationalId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 103
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mAllNewId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mAllHotId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mDomesticNewId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mDomesticHotId:Ljava/lang/String;

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mInternationalNewId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mInternationalHotId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 109
    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->mTrackList:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
