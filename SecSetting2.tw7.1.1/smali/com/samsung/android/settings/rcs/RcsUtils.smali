.class public Lcom/samsung/android/settings/rcs/RcsUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;,
        Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;,
        Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOmcSupport:Z

.field private mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    .line 89
    if-nez p1, :cond_0

    .line 90
    sget-object v3, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "The given context is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/system/etc/support_omc"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    .line 103
    iget-boolean v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    if-nez v3, :cond_1

    .line 104
    const-string/jumbo v3, "persist.sys.omc_path"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "omcPath":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.omcnw_path"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "omcNwPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    iput-boolean v4, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    .line 111
    .end local v1    # "omcNwPath":Ljava/lang/String;
    .end local v2    # "omcPath":Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-direct {v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    .line 88
    return-void

    .line 101
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getEnabledRcsFromMps(Ljava/lang/String;)Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;
    .locals 9
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v5, 0x0

    .line 237
    .local v5, "value":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isOmcDevice()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;-><init>(Ljava/lang/Boolean;)V

    .line 239
    .local v3, "parser":Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;
    const-string/jumbo v6, "Settings.IMSSetting"

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 240
    .local v1, "node":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 241
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: No Settings.IMSSetting node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6

    .line 244
    :cond_0
    const-string/jumbo v6, "Setting"

    invoke-virtual {v3, v1, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 245
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_1

    .line 246
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: No Setting node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6

    .line 250
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 252
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "NetworkName"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 255
    .local v4, "tempNode":Lorg/w3c/dom/Node;
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 256
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getEnabledRcsFromMps: Found matched node for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "RCS"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 259
    if-eqz v4, :cond_3

    .line 260
    const-string/jumbo v6, "EnableRCS"

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 266
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 269
    :cond_2
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: EnableRCS is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6

    .line 262
    .local v5, "value":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: No RCS node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6

    .line 273
    .local v5, "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->ENABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    :goto_1
    return-object v6

    :cond_5
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->DISABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    goto :goto_1

    .line 250
    .local v5, "value":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    .end local v4    # "tempNode":Lorg/w3c/dom/Node;
    :cond_7
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/rcs/RcsUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    .line 82
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    return-object v0
.end method

.method private getMccMnc()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 122
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "networkOperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    :cond_0
    return-object v4

    .line 126
    :cond_1
    return-object v0
.end method

.method private getNetworkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "mccmnc"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 137
    const/4 v5, 0x0

    .line 139
    .local v5, "value":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    :cond_0
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getNetworkName: MCCMNC is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v8

    .line 144
    :cond_1
    new-instance v3, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isOmcDevice()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;-><init>(Ljava/lang/Boolean;)V

    .line 146
    .local v3, "parser":Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;
    const-string/jumbo v6, "GeneralInfo"

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 147
    .local v1, "node":Lorg/w3c/dom/Node;
    if-nez v1, :cond_2

    .line 148
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getNetworkName: No GenralInfo node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-object v8

    .line 152
    :cond_2
    const-string/jumbo v6, "NetworkInfo"

    invoke-virtual {v3, v1, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 153
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_3

    .line 154
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getNetworkName: No NetworkInfo node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-object v8

    .line 158
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 160
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "MCCMNC"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 163
    .local v4, "tempNode":Lorg/w3c/dom/Node;
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 164
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getNetworkName: Found matched network name by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "NetworkName"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 167
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 173
    .end local v4    # "tempNode":Lorg/w3c/dom/Node;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    return-object v5

    .line 158
    .restart local v4    # "tempNode":Lorg/w3c/dom/Node;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-direct {v0}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    return-object v0
.end method

.method public isOmcDevice()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    return v0
.end method

.method public isRcsEnabledInCsc()Z
    .locals 9

    .prologue
    .line 189
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 190
    .local v0, "cscRcsEnabled":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_UseMpsForImsSetting"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 191
    .local v1, "cscUseMpsForIms":Z
    iget-object v6, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-virtual {v6}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isRcsUiForOpen()Z

    move-result v3

    .line 193
    .local v3, "isRcsUiForOpen":Z
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRcsEnabledInCsc: cscRcsEnabled("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), useMpsForIms("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), isRcsUiForOpen("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    move v5, v0

    .line 200
    .local v5, "result":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getMccMnc()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/rcs/RcsUtils;->getNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "networkName":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    .line 205
    .local v2, "customerRcsEnabled":Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;
    if-nez v4, :cond_1

    .line 206
    const/4 v5, 0x0

    .line 207
    .local v5, "result":Z
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "isRcsEnabledInCsc: RCS service is not availble(couldn\'t find matched network name)"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v2    # "customerRcsEnabled":Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;
    .end local v4    # "networkName":Ljava/lang/String;
    .end local v5    # "result":Z
    :cond_0
    :goto_0
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRcsEnabledInCsc: RCS availability is ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v5

    .line 208
    .restart local v2    # "customerRcsEnabled":Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;
    .restart local v4    # "networkName":Ljava/lang/String;
    .local v5, "result":Z
    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 209
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/rcs/RcsUtils;->getEnabledRcsFromMps(Ljava/lang/String;)Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    move-result-object v2

    .line 211
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    if-ne v2, v6, :cond_2

    .line 212
    const/4 v5, 0x0

    .line 213
    .local v5, "result":Z
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "isRcsEnabledInCsc: RCS service is not available(couldn\'t find feature tag)"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    .local v5, "result":Z
    :cond_2
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->ENABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    if-ne v2, v6, :cond_3

    const/4 v5, 0x1

    .line 216
    .local v5, "result":Z
    :goto_1
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRcsEnabledInCsc: RCS service is available(found feature tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    .local v5, "result":Z
    :cond_3
    const/4 v5, 0x0

    .local v5, "result":Z
    goto :goto_1
.end method
