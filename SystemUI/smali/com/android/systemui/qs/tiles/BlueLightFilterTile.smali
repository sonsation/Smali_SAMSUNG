.class public Lcom/android/systemui/qs/tiles/BlueLightFilterTile;
.super Lcom/android/systemui/qs/QSTile;
.source "BlueLightFilterTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;,
        Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;,
        Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_BLUE_LIGHT_FILTER:Ljava/lang/String; = "com.samsung.android.bluelightfilter.intent.action.BLUE_LIGHT_FILTER_SETTING"

.field private static final BLF_INTENT_EXTRA_SET_OFF:I = 0x16

.field private static final BLF_INTENT_EXTRA_SET_ON:I = 0x15

.field private static final BLF_INTENT_EXTRA_SET_START_DETAIL:I = 0x1f

.field private static final BLF_INTENT_EXTRA_SET_STOP_DETAIL:I = 0x20

.field private static final BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

.field private static final DB_BLUE_LIGHT_FILTER:Ljava/lang/String; = "blue_light_filter"

.field private static final DB_BLUE_LIGHT_FILTER_OP:Ljava/lang/String; = "blue_light_filter_opacity"

.field private static final DB_COLOR_ADJUSTMENT:Ljava/lang/String; = "color_blind"

.field private static final DB_GRAYSCALE:Ljava/lang/String; = "greyscale_mode"

.field private static final DB_NEGATIVE_COLORS:Ljava/lang/String; = "high_contrast"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private mDetailListening:Z

.field private final mFeatureEnabled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureObserver:Landroid/database/ContentObserver;

.field private mListening:Z

.field public final mOpacityObserver:Landroid/database/ContentObserver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailListening:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->showItPolicyToast()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 66
    const-class v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$BlueLightFilterSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/HashMap;

    .line 242
    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    .line 374
    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mOpacityObserver:Landroid/database/ContentObserver;

    .line 101
    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v3, "blue_light_filter"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->addFeature()V

    .line 111
    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 99
    return-void
.end method

.method private addFeature()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 259
    const-string/jumbo v0, "greyscale_mode"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->addFeature(Ljava/lang/String;)V

    .line 260
    const-string/jumbo v0, "high_contrast"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->addFeature(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v0, "color_blind"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->addFeature(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private addFeature(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 265
    sget-object v2, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " addFeature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/HashMap;

    .line 267
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v3, p1, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 266
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    .line 269
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 268
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 264
    return-void

    :cond_0
    move v0, v1

    .line 267
    goto :goto_0
.end method

.method private isFeatureEnabled()Z
    .locals 3

    .prologue
    .line 226
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const/4 v2, 0x1

    return v2

    .line 230
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private sendIntent(I)V
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 234
    sget-object v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntent() BLUE_LIGHT_SETTING - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.bluelightfilter"

    .line 237
    const-string/jumbo v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    .line 236
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 238
    const-string/jumbo v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 233
    return-void
.end method

.method private setMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 172
    if-eqz p1, :cond_1

    const/16 v0, 0x15

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    .line 170
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :cond_1
    const/16 v0, 0x16

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isBlueLightFilterTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->showItPolicyToast()V

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 214
    const/16 v0, 0x1f4

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isBlueLightFilterTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->showItPolicyToast()V

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v0, :cond_1

    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    .line 160
    return-void

    .line 167
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleLongClick()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    sget-object v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v0, :cond_0

    return-void

    .line 195
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->showDetail(Z)V

    .line 192
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 205
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 206
    .local v0, "value":Z
    :cond_0
    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->isFeatureEnabled()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    .line 208
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f03c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 209
    const v1, 0x7f02037b

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 204
    return-void

    .line 205
    .end local v0    # "value":Z
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 204
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setUserId(I)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->addFeature()V

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->refreshState()V

    .line 135
    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    .line 221
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setDetailListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 145
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailListening:Z

    .line 146
    sget-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDetailListening : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-eqz p1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "blue_light_filter_opacity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mOpacityObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 143
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mOpacityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 124
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mListening:Z

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 122
    return-void
.end method
