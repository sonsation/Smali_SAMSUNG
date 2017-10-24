.class public Lcom/samsung/android/settings/display/DisplayTemperatureSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DisplayTemperatureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/DisplayTemperatureSettings$1;,
        Lcom/samsung/android/settings/display/DisplayTemperatureSettings$2;,
        Lcom/samsung/android/settings/display/DisplayTemperatureSettings$3;,
        Lcom/samsung/android/settings/display/DisplayTemperatureSettings$4;
    }
.end annotation


# static fields
.field public static blue_stored:I

.field public static green_stored:I

.field public static red_stored:I


# instance fields
.field private final mBlueLightFilterObserver:Landroid/database/ContentObserver;

.field private final mDTBlueObserver:Landroid/database/ContentObserver;

.field private final mDTGreenObserver:Landroid/database/ContentObserver;

.field private final mDTRedObserver:Landroid/database/ContentObserver;

.field private mDTSeekBarPreferenceBlue:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

.field private mDTSeekBarPreferenceGreen:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

.field private mDTSeekBarPreferenceRed:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

.field private mIsDialogAttched:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceBlue:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceGreen:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceRed:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mIsDialogAttched:Z

    .line 45
    new-instance v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$1;-><init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTRedObserver:Landroid/database/ContentObserver;

    .line 55
    new-instance v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$2;-><init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    .line 65
    new-instance v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$3;-><init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    .line 75
    new-instance v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$4;-><init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    .line 20
    return-void
.end method

.method public static restoreSettings(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    sget v2, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->red_stored:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_blue"

    sget v2, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->blue_stored:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_green"

    sget v2, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->green_stored:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x2e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    instance-of v0, p1, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mIsDialogAttched:Z

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->addPreferencesFromResource(I)V

    .line 102
    const-string/jumbo v0, "diplay_temperature_red"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceRed:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

    .line 103
    const-string/jumbo v0, "diplay_temperature_green"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceGreen:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

    .line 104
    const-string/jumbo v0, "diplay_temperature_blue"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceBlue:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->red_stored:I

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_green"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->green_stored:I

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_blue"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->blue_stored:I

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->setHasOptionsMenu(Z)V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 115
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mIsDialogAttched:Z

    if-nez v0, :cond_0

    .line 116
    const v0, 0x7f0b0b07

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 178
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    const/4 v0, 0x0

    return v0

    .line 125
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->restoreSettings(Landroid/content/Context;)V

    .line 130
    const/4 v0, 0x1

    return v0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTRedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 162
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 157
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 135
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "sec_display_temperature_red"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTRedObserver:Landroid/database/ContentObserver;

    .line 136
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "sec_display_temperature_green"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    .line 138
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "sec_display_temperature_blue"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    .line 140
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "blue_light_filter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceRed:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 145
    const-string/jumbo v2, "sec_display_temperature_red"

    .line 144
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->setProgress(I)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceGreen:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 148
    const-string/jumbo v2, "sec_display_temperature_green"

    .line 147
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->setProgress(I)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceBlue:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 151
    const-string/jumbo v2, "sec_display_temperature_blue"

    .line 150
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;->setProgress(I)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 134
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 167
    const-string/jumbo v0, "DisplayTemperatureSettings"

    const-string/jumbo v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    .line 166
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 173
    const-string/jumbo v0, "DisplayTemperatureSettings"

    const-string/jumbo v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 172
    return-void
.end method
