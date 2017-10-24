.class public Lcom/samsung/android/settings/notification/VibrationIntensitySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "VibrationIntensitySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$2;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field private callVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private forceTouchPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mBixbyMsgHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private notiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private systemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private vibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->callVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->notiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string/jumbo v0, "VibrationIntensity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->DEBUG:Z

    .line 264
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$2;-><init>()V

    .line 263
    sput-object v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 329
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method private initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->setType(I)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method private stopAllVibration()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->callVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->notiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->forceTouchPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 254
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f08013a

    .line 136
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    sput-object v4, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mPowerManager:Landroid/os/PowerManager;

    .line 140
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->addPreferencesFromResource(I)V

    .line 142
    const-string/jumbo v4, "ring_vibration"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->callVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 143
    const-string/jumbo v4, "notification_vibration"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->notiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 144
    const-string/jumbo v4, "system_vibration"

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 145
    const-string/jumbo v4, "force_touch"

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->forceTouchPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "UPSM"

    invoke-static {v4, v6, v5}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 149
    .local v2, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 150
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "list$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    .local v0, "list":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v0    # "list":Ljava/lang/String;
    .end local v1    # "list$iterator":Ljava/util/Iterator;
    .end local v2    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 156
    const-string/jumbo v4, "ring_vibration"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    .line 159
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isCoinDcPMIC(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    const-string/jumbo v4, "system_vibration"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    .line 163
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 164
    .local v3, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->semIsForceTouchSupported()Z

    move-result v4

    if-nez v4, :cond_3

    .line 165
    const-string/jumbo v4, "force_touch"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    .line 169
    :cond_3
    new-instance v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 135
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 241
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 240
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    const/4 v0, 0x0

    return v0

    .line 248
    :pswitch_0
    const-string/jumbo v0, "VibrationIntensity"

    const-string/jumbo v1, "onOptionsItemSelected : home"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->stopAllVibration()V

    .line 250
    const/4 v0, 0x1

    return v0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 211
    const-string/jumbo v0, "VibrationIntensity"

    const-string/jumbo v1, "onPause : "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->stopAllVibration()V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Vibrationintensity"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 174
    const-string/jumbo v0, "VibrationIntensity"

    const-string/jumbo v1, "onResume : "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Vibrationintensity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 173
    return-void
.end method
