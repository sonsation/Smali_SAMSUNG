.class public Lcom/android/settings/applications/ManageAssist;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ManageAssist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageAssist$-boolean_onPreferenceChange_android_preference_Preference_preference_java_lang_Object_newValue_LambdaImpl0;,
        Lcom/android/settings/applications/ManageAssist$1;
    }
.end annotation


# static fields
.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;


# instance fields
.field private mContextPref:Landroid/preference/SwitchPreference;

.field private mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFlashPref:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mScreenshotPref:Landroid/preference/SwitchPreference;

.field private mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;


# direct methods
.method static synthetic -get0()Lcom/samsung/android/settings/applications/EmHandler;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/ManageAssist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler;
    .locals 0

    sput-object p0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0
    .param p1, "assistPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    .line 303
    new-instance v0, Lcom/android/settings/applications/ManageAssist$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageAssist$1;-><init>(Lcom/android/settings/applications/ManageAssist;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 64
    return-void
.end method

.method private confirmNewAssist(Ljava/lang/String;)V
    .locals 11
    .param p1, "newAssitPackage"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 265
    iget-object v7, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v7, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 266
    .local v5, "selected":I
    iget-object v7, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v7}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v0, v7, v5

    .line 268
    .local v0, "appLabel":Ljava/lang/CharSequence;
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0b1d67

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "title":Ljava/lang/String;
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0b1d68

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Lcom/android/settings/applications/ManageAssist$2;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/applications/ManageAssist$2;-><init>(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V

    .line 280
    .local v4, "onAgree":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 284
    const v8, 0x7f0b1d69

    .line 281
    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 285
    const v8, 0x7f0b1d6a

    const/4 v9, 0x0

    .line 281
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 286
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 287
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 264
    return-void
.end method

.method private guardFlashPref()V
    .locals 5

    .prologue
    .line 215
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v4}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    .line 217
    .local v0, "assistant":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 218
    .local v1, "isContextChecked":Z
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/internal/app/AssistUtils;->shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    .line 219
    .local v3, "willShowFlash":Z
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/internal/app/AssistUtils;->isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    .line 221
    .local v2, "isSystemAssistant":Z
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .end local v2    # "isSystemAssistant":Z
    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 222
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 214
    return-void

    .line 221
    .restart local v2    # "isSystemAssistant":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private guardScreenshotPref()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 209
    .local v0, "isChecked":Z
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assist_screenshot_enabled"

    const/4 v5, 0x1

    .line 208
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 210
    .local v1, "screenshotPrefWasSet":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 211
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .end local v1    # "screenshotPrefWasSet":Z
    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 206
    return-void

    .line 208
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "screenshotPrefWasSet":Z
    goto :goto_0

    :cond_1
    move v1, v2

    .line 211
    goto :goto_1
.end method

.method private isCurrentAssistVoiceService()Z
    .locals 3

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v1

    .line 259
    .local v1, "currentAssist":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v2}, Lcom/android/settings/voice/VoiceInputListPreference;->getCurrentService()Landroid/content/ComponentName;

    move-result-object v0

    .line 260
    .local v0, "activeService":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    .line 261
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setDefaultAssist(Ljava/lang/String;)V
    .locals 1
    .param p1, "assistPackage"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->setValue(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    .line 290
    return-void
.end method

.method private updateUi()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v3}, Lcom/android/settings/applications/DefaultAssistPreference;->refreshAssistApps()V

    .line 227
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v3}, Lcom/android/settings/voice/VoiceInputListPreference;->refreshVoiceInputs()I

    move-result v0

    .line 229
    .local v0, "availableCount":I
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v3}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v1

    .line 230
    .local v1, "currentAssist":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 231
    .local v2, "hasAssistant":Z
    :cond_0
    if-eqz v2, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 240
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/AssistUtils;->allowDisablingAssistDisclosure(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 246
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->isCurrentAssistVoiceService()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_4

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->guardScreenshotPref()V

    .line 254
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->guardFlashPref()V

    .line 225
    return-void

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 249
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 250
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/voice/VoiceInputListPreference;->setAssistRestrict(Landroid/content/ComponentName;)V

    goto :goto_2
.end method


# virtual methods
.method synthetic -com_android_settings_applications_ManageAssist_lambda$1()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->guardScreenshotPref()V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->guardFlashPref()V

    .line 0
    return-void
.end method

.method public exeCustomAction()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public exeOptAction()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public exePrefAction()V
    .locals 23

    .prologue
    .line 340
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/preference/PreferenceScreen;Z)Z

    move-result v18

    .line 341
    .local v18, "isSuccess":Z
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "DeviceAssistanceAppList"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 344
    if-nez v18, :cond_0

    .line 345
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 346
    const-string/jumbo v5, "AppName"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    .line 345
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    .line 348
    return-void

    .line 351
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v22

    .line 352
    .local v22, "size":I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ge v0, v2, :cond_1

    .line 353
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exePrefAction)size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 355
    const-string/jumbo v5, "AppName"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    .line 354
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/DefaultAssistPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 357
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    .line 358
    return-void

    .line 360
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v12

    .line 361
    .local v12, "queryAppName":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exePrefAction)queryAppName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 363
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 364
    const-string/jumbo v5, "AppName"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    .line 363
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/DefaultAssistPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 400
    :goto_0
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    .line 339
    .end local v12    # "queryAppName":Ljava/lang/String;
    .end local v22    # "size":I
    :cond_2
    :goto_1
    return-void

    .line 368
    .restart local v12    # "queryAppName":Ljava/lang/String;
    .restart local v22    # "size":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->refreshAssistApps()V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 370
    .local v13, "appLabels":[Ljava/lang/CharSequence;
    const/16 v19, -0x1

    .line 371
    .local v19, "matchedIndex":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    array-length v2, v13

    move/from16 v0, v17

    if-ge v0, v2, :cond_4

    .line 372
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 373
    .local v21, "queryLowAppName":Ljava/lang/String;
    aget-object v2, v13, v17

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 374
    .local v14, "appName":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 375
    move/from16 v19, v17

    .line 379
    .end local v14    # "appName":Ljava/lang/String;
    .end local v21    # "queryLowAppName":Ljava/lang/String;
    :cond_4
    const/4 v2, -0x1

    move/from16 v0, v19

    if-le v0, v2, :cond_9

    array-length v2, v13

    move/from16 v0, v19

    if-ge v0, v2, :cond_9

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v19

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    .line 382
    .local v20, "packageName":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exePrefAction)packageName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", matchedIndex="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 384
    const-string/jumbo v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 383
    if-eqz v2, :cond_6

    .line 385
    :cond_5
    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    .line 387
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 388
    .local v16, "currentPackage":Ljava/lang/String;
    if-eqz v16, :cond_8

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 391
    :goto_3
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 392
    const-string/jumbo v8, "AppName"

    const-string/jumbo v9, "Match"

    const-string/jumbo v10, "yes"

    const-string/jumbo v11, "AppName"

    .line 391
    invoke-virtual/range {v5 .. v12}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    .end local v16    # "currentPackage":Ljava/lang/String;
    .end local v20    # "packageName":Ljava/lang/String;
    .restart local v14    # "appName":Ljava/lang/String;
    .restart local v21    # "queryLowAppName":Ljava/lang/String;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 389
    .end local v14    # "appName":Ljava/lang/String;
    .end local v21    # "queryLowAppName":Ljava/lang/String;
    .restart local v16    # "currentPackage":Ljava/lang/String;
    .restart local v20    # "packageName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V

    goto :goto_3

    .line 394
    .end local v16    # "currentPackage":Ljava/lang/String;
    .end local v20    # "packageName":Ljava/lang/String;
    :cond_9
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 395
    const-string/jumbo v5, "AppName"

    const-string/jumbo v6, "Match"

    const-string/jumbo v7, "no"

    .line 394
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/DefaultAssistPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    .line 401
    .end local v12    # "queryAppName":Ljava/lang/String;
    .end local v13    # "appLabels":[Ljava/lang/CharSequence;
    .end local v17    # "i":I
    .end local v19    # "matchedIndex":I
    .end local v22    # "size":I
    :cond_a
    const-string/jumbo v2, "DeviceAssistanceAppSetting"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 402
    if-eqz v18, :cond_c

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getSettingsIcon()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getSettingsIcon()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 405
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 406
    const-string/jumbo v8, "Settings"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "yes"

    .line 405
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_4
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_1

    .line 408
    :cond_b
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 409
    const-string/jumbo v8, "Settings"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "no"

    .line 408
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 412
    :cond_c
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 413
    const-string/jumbo v8, "Settings"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "no"

    .line 412
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 416
    :cond_d
    const-string/jumbo v2, "AnalyzeOnScreenTextOn"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 417
    const-string/jumbo v2, "context"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    .line 418
    .local v15, "checkPreference":Landroid/preference/SwitchPreference;
    if-eqz v18, :cond_f

    if-eqz v15, :cond_f

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 420
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 421
    const-string/jumbo v8, "AnalyzeOnScreenText"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "yes"

    .line 420
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_5
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_1

    .line 423
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 424
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 425
    const-string/jumbo v8, "AnalyzeOnScreenText"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "no"

    .line 424
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 428
    :cond_f
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 429
    const-string/jumbo v8, "Settings"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "no"

    .line 428
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 432
    .end local v15    # "checkPreference":Landroid/preference/SwitchPreference;
    :cond_10
    const-string/jumbo v2, "AnalyzeOnScreenTextOff"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 433
    const-string/jumbo v2, "context"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    .line 434
    .restart local v15    # "checkPreference":Landroid/preference/SwitchPreference;
    if-eqz v18, :cond_12

    if-eqz v15, :cond_12

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_11

    .line 436
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 437
    const-string/jumbo v8, "AnalyzeOnScreenText"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "yes"

    .line 436
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :goto_6
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_1

    .line 439
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 440
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 441
    const-string/jumbo v8, "AnalyzeOnScreenText"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "no"

    .line 440
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 444
    :cond_12
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 445
    const-string/jumbo v8, "Settings"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "no"

    .line 444
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 448
    .end local v15    # "checkPreference":Landroid/preference/SwitchPreference;
    :cond_13
    const-string/jumbo v2, "AnalyzeOnScreenImagesOn"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 449
    const-string/jumbo v2, "screenshot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    .line 450
    .restart local v15    # "checkPreference":Landroid/preference/SwitchPreference;
    if-eqz v18, :cond_15

    if-eqz v15, :cond_15

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 452
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 453
    const-string/jumbo v8, "AnalyzeOnScreenImages"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "yes"

    .line 452
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :goto_7
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_1

    .line 455
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 456
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 457
    const-string/jumbo v8, "AnalyzeOnScreenImages"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "no"

    .line 456
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 460
    :cond_15
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 461
    const-string/jumbo v8, "Settings"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "no"

    .line 460
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 464
    .end local v15    # "checkPreference":Landroid/preference/SwitchPreference;
    :cond_16
    const-string/jumbo v2, "AnalyzeOnScreenImagesOff"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 465
    const-string/jumbo v2, "screenshot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    .line 466
    .restart local v15    # "checkPreference":Landroid/preference/SwitchPreference;
    if-eqz v18, :cond_18

    if-eqz v15, :cond_18

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_17

    .line 468
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 469
    const-string/jumbo v8, "AnalyzeOnScreenImages"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "yes"

    .line 468
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :goto_8
    sget-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_1

    .line 471
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 472
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 473
    const-string/jumbo v8, "AnalyzeOnScreenImages"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "no"

    .line 472
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 476
    :cond_18
    sget-object v5, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, "DeviceAssistanceApp"

    .line 477
    const-string/jumbo v8, "Settings"

    const-string/jumbo v9, "Available"

    const-string/jumbo v10, "no"

    .line 476
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public exeViewAction()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0xc9

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 296
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v1, 0x7f0800a0

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageAssist;->addPreferencesFromResource(I)V

    .line 96
    const-string/jumbo v1, "default_assist"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultAssistPreference;

    iput-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    .line 97
    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/DefaultAssistPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 99
    const-string/jumbo v1, "context"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    .line 100
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 101
    const-string/jumbo v5, "assist_structure_enabled"

    .line 100
    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    const-string/jumbo v1, "screenshot"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    .line 105
    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    const-string/jumbo v1, "flash"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/preference/SwitchPreference;

    .line 108
    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    const-string/jumbo v1, "voice_input_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/voice/VoiceInputListPreference;

    iput-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    .line 112
    const-string/jumbo v1, "assist_description"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/UnclickablePreference;

    .line 113
    .local v0, "description":Lcom/samsung/android/settings/UnclickablePreference;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const v1, 0x7f0b044f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    .line 119
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 92
    return-void

    .end local v0    # "description":Lcom/samsung/android/settings/UnclickablePreference;
    :cond_1
    move v1, v3

    .line 100
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 152
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DeviceAssistanceApp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 148
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 164
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "assist_structure_enabled"

    move-object v2, p2

    .line 166
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 165
    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f012b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 167
    invoke-static {v2, v4, p2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 169
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings/applications/ManageAssist$-boolean_onPreferenceChange_android_preference_Preference_preference_java_lang_Object_newValue_LambdaImpl0;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/ManageAssist$-boolean_onPreferenceChange_android_preference_Preference_preference_java_lang_Object_newValue_LambdaImpl0;-><init>(Lcom/android/settings/applications/ManageAssist;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return v3

    :cond_0
    move v2, v4

    .line 166
    goto :goto_0

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_3

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "assist_screenshot_enabled"

    move-object v2, p2

    .line 177
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v4, v3

    .line 176
    :cond_2
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f012c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 178
    invoke-static {v2, v4, p2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 180
    return v3

    .line 182
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mFlashPref:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_5

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "assist_disclosure_enabled"

    .line 184
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v3

    .line 183
    :cond_4
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    return v3

    .line 187
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    if-ne p1, v2, :cond_9

    move-object v1, p2

    .line 188
    check-cast v1, Ljava/lang/String;

    .line 189
    .local v1, "newAssitPackage":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 190
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 189
    if-eqz v2, :cond_7

    .line 191
    :cond_6
    const-string/jumbo v2, ""

    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f0129

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string/jumbo v5, "none"

    .line 192
    invoke-static {v2, v3, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 194
    return v4

    .line 197
    :cond_7
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "currentPackage":Ljava/lang/String;
    if-eqz v0, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 201
    :goto_1
    return v4

    .line 199
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v1    # "newAssitPackage":Ljava/lang/String;
    :cond_9
    return v4
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 127
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ASSIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 130
    const-string/jumbo v5, "content://com.sec.knox.provider2/ApplicationPolicy"

    .line 131
    const-string/jumbo v6, "isChangeAssistDefaultAppAllowed"

    .line 132
    new-array v7, v3, [Ljava/lang/String;

    .line 133
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 129
    invoke-static {v2, v5, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, "isChangeAllowed":I
    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/settings/applications/DefaultAssistPreference;->setEnabled(Z)V

    .line 137
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/settings/voice/VoiceInputListPreference;->setEnabled(Z)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "DeviceAssistanceApp"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 123
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 136
    goto :goto_0

    :cond_2
    move v3, v4

    .line 137
    goto :goto_1
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 4
    .param p1, "stateId"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x7d0

    const/4 v2, 0x1

    .line 320
    const-string/jumbo v0, "DeviceAssistanceAppList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    sget-object v0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const-string/jumbo v0, "DeviceAssistanceAppSetting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    sget-object v0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 324
    :cond_2
    const-string/jumbo v0, "AnalyzeOnScreenTextOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    sget-object v0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 326
    :cond_3
    const-string/jumbo v0, "AnalyzeOnScreenTextOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    sget-object v0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 328
    :cond_4
    const-string/jumbo v0, "AnalyzeOnScreenImagesOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 329
    sget-object v0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 330
    :cond_5
    const-string/jumbo v0, "AnalyzeOnScreenImagesOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public stopAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 491
    sget-object v0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    .line 493
    sput-object v2, Lcom/android/settings/applications/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    .line 490
    :cond_0
    return-void
.end method
