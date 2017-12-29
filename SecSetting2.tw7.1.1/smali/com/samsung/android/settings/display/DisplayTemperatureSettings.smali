.class public Lcom/samsung/android/settings/display/DisplayTemperatureSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DisplayTemperatureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/DisplayTemperatureSettings$1;,
        Lcom/samsung/android/settings/display/DisplayTemperatureSettings$2;,
        Lcom/samsung/android/settings/display/DisplayTemperatureSettings$3;,
        Lcom/samsung/android/settings/display/DisplayTemperatureSettings$4;,
        Lcom/samsung/android/settings/display/DisplayTemperatureSettings$5;
    }
.end annotation


# static fields
.field public static blue_stored:I

.field public static green_stored:I

.field public static red_stored:I

.field private static sColorBalanceRestore:I


# instance fields
.field private final mBlueLightFilterObserver:Landroid/database/ContentObserver;

.field private mColorBalanceHandler:Landroid/os/Handler;

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
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mIsDialogAttched:Z

    .line 50
    new-instance v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$1;-><init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTRedObserver:Landroid/database/ContentObserver;

    .line 59
    new-instance v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$2;-><init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    .line 68
    new-instance v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$3;-><init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    .line 77
    new-instance v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$4;-><init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    .line 201
    new-instance v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$5;-><init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mColorBalanceHandler:Landroid/os/Handler;

    .line 22
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 94
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 88
    instance-of v0, p1, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mIsDialogAttched:Z

    .line 89
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mIsDialogAttched:Z

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;

    .end local p1    # "activity":Landroid/app/Activity;
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mColorBalanceHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->setColorBalanceHandler(Landroid/os/Handler;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->addPreferencesFromResource(I)V

    .line 107
    const-string/jumbo v0, "diplay_temperature_red"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceRed:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

    .line 108
    const-string/jumbo v0, "diplay_temperature_green"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceGreen:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

    .line 109
    const-string/jumbo v0, "diplay_temperature_blue"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceBlue:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->red_stored:I

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_green"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->green_stored:I

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_blue"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->blue_stored:I

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->setHasOptionsMenu(Z)V

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 120
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mIsDialogAttched:Z

    if-nez v0, :cond_0

    .line 121
    const v0, 0x7f0b0cef

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 187
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    const/4 v0, 0x0

    return v0

    .line 130
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->restoreSettings(Landroid/content/Context;)V

    .line 135
    const/4 v0, 0x1

    return v0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTRedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 171
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 166
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->finish()V

    .line 144
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 146
    const-string/jumbo v2, "sec_display_temperature_red"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTRedObserver:Landroid/database/ContentObserver;

    .line 145
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 148
    const-string/jumbo v2, "sec_display_temperature_green"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    .line 147
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 150
    const-string/jumbo v2, "sec_display_temperature_blue"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    .line 149
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "blue_light_filter"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceRed:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 154
    const-string/jumbo v3, "sec_display_temperature_red"

    .line 153
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->setProgress(I)V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceGreen:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 157
    const-string/jumbo v3, "sec_display_temperature_green"

    .line 156
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->setProgress(I)V

    .line 159
    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceBlue:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 160
    const-string/jumbo v3, "sec_display_temperature_blue"

    .line 159
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;->setProgress(I)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 139
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "DisplayTemperatureSettings"

    const-string/jumbo v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    .line 175
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 182
    const-string/jumbo v0, "DisplayTemperatureSettings"

    const-string/jumbo v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 181
    return-void
.end method

.method public restoreSettings(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    sget v2, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->red_stored:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_blue"

    sget v2, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->blue_stored:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_green"

    sget v2, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->green_stored:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->sColorBalanceRestore:I

    .line 196
    sget v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->sColorBalanceRestore:I

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 191
    return-void
.end method
