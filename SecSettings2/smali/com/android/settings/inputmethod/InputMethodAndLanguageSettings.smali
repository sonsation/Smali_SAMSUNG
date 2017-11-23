.class public Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;,
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;,
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;,
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$4;,
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;,
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;,
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;,
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String;

.field private static mLangListLoader:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

.field private static mPersona:Lcom/samsung/android/knox/SemPersonaManager;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mGameControllerCategory:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHandwritingLanguage:Landroid/preference/Preference;

.field private mHandwritingLanguageObserver:Landroid/database/ContentObserver;

.field private mHandwritingSearchCategory:Landroid/preference/PreferenceCategory;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mLanguagePref:Landroid/preference/Preference;

.field private mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

.field private final mPointerSpeedCallback:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;

.field private mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private mShowsOnlyFullImeAndKeyboardList:Z

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private mSpellCheckCachedPref:Landroid/preference/Preference;

.field private mUserCachedDicPref:Landroid/preference/PreferenceScreen;

.field private mUspLevel:I

.field private um:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandwritingLanguage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandwritingLanguageObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/hardware/input/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/android/settings/PointerSpeedPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mUspLevel:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getLocaleNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSelectLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->onSpeedChanged()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    const-class v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->TAG:Ljava/lang/String;

    .line 165
    sput-object v1, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLangListLoader:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    .line 169
    sput-object v1, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1105
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;-><init>()V

    .line 1104
    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1114
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$4;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$4;-><init>()V

    .line 1113
    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 131
    iput v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSpeedCallback:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;

    .line 156
    iput v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mUspLevel:I

    .line 158
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandwritingLanguageObserver:Landroid/database/ContentObserver;

    .line 545
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpeedObserver:Landroid/database/ContentObserver;

    .line 1399
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 107
    return-void
.end method

.method private changeSpellCheckerPreference(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "spellcheckers_settings"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 796
    .local v2, "spellchecker":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "key_user_dictionary_settings"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 797
    .local v3, "userDic":Landroid/preference/Preference;
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 798
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v4, p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 800
    .local v1, "curIme":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 802
    monitor-enter p0

    .line 803
    if-eqz v2, :cond_0

    .line 804
    :try_start_0
    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpellCheckCachedPref:Landroid/preference/Preference;

    .line 805
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpellCheckCachedPref:Landroid/preference/Preference;

    const v5, 0x7f0b1ad9

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 806
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 808
    :cond_0
    if-eqz v3, :cond_1

    .line 809
    move-object v0, v3

    check-cast v0, Landroid/preference/PreferenceScreen;

    move-object v4, v0

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mUserCachedDicPref:Landroid/preference/PreferenceScreen;

    .line 810
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 793
    .end local v1    # "curIme":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-void

    .line 802
    .restart local v1    # "curIme":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 815
    .end local v1    # "curIme":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isInstalledAnySpellCheckerPakcage(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 816
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpellCheckCachedPref:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    .line 817
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpellCheckCachedPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 819
    :cond_4
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mUserCachedDicPref:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    .line 820
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mUserCachedDicPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private checkVOLanguage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 1018
    const/4 v0, 0x0

    .line 1019
    .local v0, "bCheck":Z
    sget-object v3, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLangListLoader:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    invoke-virtual {v3}, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->getSupportedLanguageList()[Ljava/lang/String;

    move-result-object v2

    .line 1021
    .local v2, "mLangList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1023
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1024
    const/4 v0, 0x1

    .line 1028
    :cond_0
    return v0

    .line 1021
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getLocaleNames(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 609
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 610
    .local v1, "locales":Landroid/os/LocaleList;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 613
    .local v0, "displayLocale":Ljava/util/Locale;
    const/4 v2, 0x2

    .line 612
    invoke-static {v1, v0, v2}, Lcom/android/internal/app/LocaleHelper;->getDisplayLocaleList(Landroid/os/LocaleList;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-static {v2, v0}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSelectLanguage()Ljava/lang/String;
    .locals 9

    .prologue
    .line 976
    const/4 v6, 0x0

    .line 977
    .local v6, "language":Ljava/lang/String;
    const/4 v0, 0x0

    .line 978
    .local v0, "currentLang":Ljava/lang/String;
    const/4 v5, 0x0

    .line 979
    .local v5, "langInfo":[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "handwriting_language"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, "currentLang":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 981
    const-string/jumbo v7, "en_GB"

    invoke-direct {p0, v7}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 982
    const-string/jumbo v0, "en_GB"

    .line 987
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 988
    const-string/jumbo v7, "ko_KR"

    invoke-direct {p0, v7}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 989
    const-string/jumbo v0, "ko_KR"

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "handwriting_language_list"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, "handWritingLanguage":Ljava/lang/String;
    const-string/jumbo v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v1, :cond_2

    .line 996
    :cond_1
    move-object v1, v0

    .line 998
    :cond_2
    const-string/jumbo v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 999
    .local v2, "handWritingLanguageList":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "default_input_method"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1000
    .local v4, "inputMethodId":Ljava/lang/String;
    const-string/jumbo v7, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1001
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v5

    .line 1005
    .local v5, "langInfo":[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_3

    .line 1006
    if-eqz v0, :cond_6

    .line 1007
    aget-object v7, v5, v3

    if-eqz v7, :cond_6

    aget-object v7, v5, v3

    invoke-virtual {v7}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1008
    aget-object v7, v5, v3

    invoke-virtual {v7}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 1014
    .end local v6    # "language":Ljava/lang/String;
    :cond_3
    return-object v6

    .line 984
    .end local v1    # "handWritingLanguage":Ljava/lang/String;
    .end local v2    # "handWritingLanguageList":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "inputMethodId":Ljava/lang/String;
    .local v5, "langInfo":[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .restart local v6    # "language":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "en_US"

    goto :goto_0

    .line 1003
    .restart local v1    # "handWritingLanguage":Ljava/lang/String;
    .restart local v2    # "handWritingLanguageList":[Ljava/lang/String;
    .restart local v4    # "inputMethodId":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;[Ljava/lang/String;)[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v5

    .local v5, "langInfo":[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    goto :goto_1

    .line 1005
    .restart local v3    # "i":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static haveInputDeviceWithVibrator()Z
    .locals 4

    .prologue
    .line 963
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 964
    .local v1, "devices":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 965
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 966
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 964
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 966
    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 967
    const/4 v3, 0x1

    return v3

    .line 970
    .end local v0    # "device":Landroid/view/InputDevice;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 772
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 773
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "previously_enabled_subtypes"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "imesAndSubtypesString":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    return-object v3
.end method

.method private onSpeedChanged()V
    .locals 4

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    .line 554
    .local v0, "speed":I
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {v1, v2}, Lcom/android/settings/PointerSpeedPreference;->setProgress(I)V

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 552
    return-void
.end method

.method private restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 4
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v1

    .line 760
    .local v1, "imeToEnabledSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, "imiId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 762
    .local v0, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 763
    return-void

    .line 765
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    .line 767
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 766
    invoke-static {v3, v2, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->enableInputMethodSubtypesOf(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)V

    .line 757
    return-void
.end method

.method private saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 9
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 743
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 744
    .local v0, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 745
    const/4 v8, 0x1

    .line 744
    invoke-virtual {v7, p1, v8}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    .line 746
    .local v1, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "subtype$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 747
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 748
    .local v6, "subtypeId":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 751
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "subtypeId":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v2

    .line 752
    .local v2, "imeToEnabledSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 753
    .local v3, "imiId":Ljava/lang/String;
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    invoke-direct {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    .line 742
    return-void
.end method

.method private savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p1, "subtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 780
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 781
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "imesAndSubtypesString":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "previously_enabled_subtypes"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 778
    return-void
.end method

.method private showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "keyboardLayout"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 918
    check-cast v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    .line 920
    .local v0, "fragment":Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
    if-nez v0, :cond_0

    .line 921
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    .end local v0    # "fragment":Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 922
    .restart local v0    # "fragment":Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 923
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 917
    :cond_0
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 5

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 830
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 831
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 832
    .local v2, "curPref":Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 834
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3, v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 835
    .local v1, "curIme":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 836
    monitor-enter p0

    .line 837
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 842
    .end local v1    # "curIme":Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->changeSpellCheckerPreference(Landroid/content/Context;)V

    .line 844
    if-eqz v2, :cond_3

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 846
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 828
    :cond_3
    :goto_0
    return-void

    .line 836
    .restart local v1    # "curIme":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 848
    .end local v1    # "curIme":Ljava/lang/CharSequence;
    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateGameControllers()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 950
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 951
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 954
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v4, "vibrate_input_devices"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 953
    check-cast v0, Landroid/preference/SwitchPreference;

    .line 955
    .local v0, "pref":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 956
    const-string/jumbo v4, "vibrate_input_devices"

    .line 955
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 949
    .end local v0    # "pref":Landroid/preference/SwitchPreference;
    :goto_1
    return-void

    .restart local v0    # "pref":Landroid/preference/SwitchPreference;
    :cond_0
    move v1, v2

    .line 955
    goto :goto_0

    .line 958
    .end local v0    # "pref":Landroid/preference/SwitchPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 860
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    if-nez v10, :cond_0

    .line 861
    return-void

    .line 864
    :cond_0
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 865
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 866
    .local v2, "devices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_5

    .line 867
    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 868
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_1

    .line 869
    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 866
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 870
    :cond_2
    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    .line 868
    if-eqz v10, :cond_1

    .line 871
    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    .line 873
    .local v5, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 874
    .local v7, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 875
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 877
    :goto_2
    new-instance v9, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 878
    .local v9, "pref":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 879
    if-eqz v6, :cond_4

    .line 880
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 884
    :goto_3
    new-instance v10, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$9;

    invoke-direct {v10, p0, v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$9;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 891
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 875
    .end local v9    # "pref":Landroid/preference/PreferenceScreen;
    :cond_3
    const/4 v6, 0x0

    .local v6, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    goto :goto_2

    .line 882
    .end local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .restart local v9    # "pref":Landroid/preference/PreferenceScreen;
    :cond_4
    const v10, 0x7f0b16bd

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_3

    .line 895
    .end local v1    # "device":Landroid/view/InputDevice;
    .end local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v9    # "pref":Landroid/preference/PreferenceScreen;
    :cond_5
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 913
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 859
    :goto_4
    return-void

    .line 896
    :cond_7
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_5
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_9

    .line 897
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 898
    .local v8, "pref":Landroid/preference/Preference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getOrder()I

    move-result v10

    const/16 v11, 0x3e8

    if-ge v10, v11, :cond_8

    .line 899
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_5

    .line 903
    .end local v4    # "i":I
    .end local v8    # "pref":Landroid/preference/Preference;
    .restart local v3    # "i":I
    :cond_9
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 904
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 905
    .local v0, "count":I
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_a

    .line 906
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    .line 907
    .restart local v8    # "pref":Landroid/preference/Preference;
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 908
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 905
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 911
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private updateInputDevices()V
    .locals 0

    .prologue
    .line 855
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V

    .line 856
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateGameControllers()V

    .line 854
    return-void
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews(Landroid/content/Context;)V

    .line 645
    return-void
.end method

.method private updateInputMethodPreferenceViews(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x0

    .line 652
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    if-nez v1, :cond_0

    .line 653
    return-void

    .line 656
    :cond_0
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    monitor-enter v12

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "pref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    .line 659
    .local v0, "pref":Lcom/android/settings/inputmethod/InputMethodPreference;
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 656
    .end local v0    # "pref":Lcom/android/settings/inputmethod/InputMethodPreference;
    .end local v11    # "pref$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1

    .line 661
    .restart local v11    # "pref$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 662
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v10

    .line 663
    .local v10, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v1, :cond_2

    .line 664
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v9

    .line 666
    .local v9, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_1
    if-nez v9, :cond_3

    const/4 v6, 0x0

    .line 667
    .local v6, "N":I
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v6, :cond_5

    .line 668
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 669
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v10, :cond_4

    .line 670
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 671
    :goto_4
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    .line 672
    iget-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    move-object v1, p1

    move-object v5, p0

    .line 671
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    .line 674
    .restart local v0    # "pref":Lcom/android/settings/inputmethod/InputMethodPreference;
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 665
    .end local v0    # "pref":Lcom/android/settings/inputmethod/InputMethodPreference;
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v9    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v9

    .restart local v9    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    goto :goto_1

    .line 666
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .restart local v6    # "N":I
    goto :goto_2

    .line 669
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v8    # "i":I
    :cond_4
    const/4 v4, 0x1

    .local v4, "isAllowedByOrganization":Z
    goto :goto_4

    .line 676
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "isAllowedByOrganization":Z
    :cond_5
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v7

    .line 677
    .local v7, "collator":Ljava/text/Collator;
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$8;

    invoke-direct {v3, p0, v7}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$8;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/text/Collator;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 683
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_6

    .line 684
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    .line 685
    .restart local v0    # "pref":Lcom/android/settings/inputmethod/InputMethodPreference;
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 686
    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    .line 687
    invoke-virtual {v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .end local v0    # "pref":Lcom/android/settings/inputmethod/InputMethodPreference;
    :cond_6
    monitor-exit v12

    .line 690
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 697
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 695
    invoke-static {p0, v1, v3, v13}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 651
    return-void
.end method

.method private updateUserDictionaryPreference(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "userDictionaryPreference"    # Landroid/preference/Preference;

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 338
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v1

    .line 339
    .local v1, "localeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 336
    :goto_0
    return-void

    .line 345
    :cond_0
    new-instance v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/util/TreeSet;)V

    .line 344
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0x39

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 560
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b1697

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 559
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 939
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 941
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 942
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 943
    const-string/jumbo v2, "input_device_identifier"

    .line 942
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 944
    .local v0, "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 945
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 938
    .end local v0    # "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 1034
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1035
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "current_input_method"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1036
    .local v0, "curPref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1039
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    const v9, 0x7f08008b

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 183
    invoke-static {p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    .line 187
    const-string/jumbo v9, "pointer_speed"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/PointerSpeedPreference;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    .line 188
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSpeedCallback:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreference;->setCallback(Lcom/android/settings/PointerSpeedPreference$Callback;)V

    .line 189
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreference;->setMax(I)V

    .line 191
    new-instance v9, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;-><init>(Landroid/content/Context;)V

    sput-object v9, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLangListLoader:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 195
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v9, "input_method"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 196
    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    .line 197
    const-string/jumbo v9, "user"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->um:Landroid/os/UserManager;

    .line 200
    const v9, 0x7f0b01aa

    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 199
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "phone_language"

    invoke-virtual {p0, v10}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 218
    :goto_1
    new-instance v9, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-direct {v9, p0}, Lcom/android/settings/VoiceInputOutputSettings;-><init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    invoke-virtual {v9}, Lcom/android/settings/VoiceInputOutputSettings;->onCreate()V

    .line 221
    const-string/jumbo v9, "hard_keyboard"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    .line 223
    const-string/jumbo v9, "keyboard_settings_category"

    .line 222
    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 225
    const-string/jumbo v9, "game_controller_settings_category"

    .line 224
    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    .line 227
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 229
    .local v8, "startingIntent":Landroid/content/Intent;
    const-string/jumbo v9, "android.settings.INPUT_METHOD_SETTINGS"

    .line 230
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 229
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    .line 231
    iget-boolean v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v9, :cond_1

    move-object v6, v0

    .line 234
    check-cast v6, Lcom/android/settings/SettingsActivity;

    .line 235
    .local v6, "settings_activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v6}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 239
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 245
    :cond_0
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_1

    .line 246
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 252
    .end local v6    # "settings_activity":Lcom/android/settings/SettingsActivity;
    :cond_1
    const-string/jumbo v9, "input"

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/input/InputManager;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 253
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 256
    const-string/jumbo v9, "spellcheckers_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 257
    .local v7, "spellChecker":Landroid/preference/Preference;
    if-eqz v7, :cond_2

    .line 259
    invoke-static {v7}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    .line 260
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v4, "intent":Landroid/content/Intent;
    const-class v9, Lcom/android/settings/SubSettings;

    invoke-virtual {v4, v0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 262
    const-string/jumbo v9, ":settings:show_fragment"

    .line 263
    const-class v10, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 262
    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string/jumbo v9, ":settings:show_fragment_title_resid"

    .line 265
    const v10, 0x7f0b192e

    .line 264
    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 269
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 270
    new-instance v9, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, v10, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 272
    const-string/jumbo v10, "device_policy"

    .line 271
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 277
    const-string/jumbo v9, "input_device_identifier"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 278
    .local v3, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-boolean v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    .line 279
    invoke-direct {p0, v3}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 283
    :cond_3
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->um:Landroid/os/UserManager;

    invoke-static {v9}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "current_input_method"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 285
    .local v1, "curPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "keyboard_and_input_methods_category"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 286
    .local v5, "keyboardAndInputMethodCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 287
    const-string/jumbo v9, "persona"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v9, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 288
    sget-object v9, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v9, :cond_4

    .line 289
    sget-object v9, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 290
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v9, :cond_4

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    :cond_4
    if-eqz v1, :cond_5

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 298
    :cond_5
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_6

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 301
    :cond_6
    if-eqz v5, :cond_7

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 304
    :cond_7
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v9}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 305
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V

    .line 311
    .end local v1    # "curPref":Landroid/preference/Preference;
    .end local v5    # "keyboardAndInputMethodCategory":Landroid/preference/PreferenceCategory;
    :cond_8
    const-string/jumbo v9, "handwriting_search_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandwritingSearchCategory:Landroid/preference/PreferenceCategory;

    .line 312
    const-string/jumbo v9, "handwriting_language"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandwritingLanguage:Landroid/preference/Preference;

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "com.sec.feature.spen_usp"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mUspLevel:I

    .line 315
    iget v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mUspLevel:I

    const/4 v10, 0x2

    if-ge v9, v10, :cond_9

    .line 316
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandwritingLanguage:Landroid/preference/Preference;

    if-eqz v9, :cond_9

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandwritingLanguage:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandwritingSearchCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    :cond_9
    new-instance v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 177
    return-void

    .line 208
    .end local v3    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v7    # "spellChecker":Landroid/preference/Preference;
    .end local v8    # "startingIntent":Landroid/content/Intent;
    :cond_a
    const-string/jumbo v9, "phone_language"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 201
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 567
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 572
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 577
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 522
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 526
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 529
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 530
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->pause()V

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 538
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 536
    :goto_0
    invoke-static {p0, v2, v3, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 541
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "LanguageAndInput"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 521
    return-void

    .line 538
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 642
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 584
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 585
    return v2

    .line 587
    :cond_0
    instance-of v4, p2, Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    .line 588
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 605
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 590
    :cond_2
    const-string/jumbo v3, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 592
    const-string/jumbo v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 591
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 593
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker(Z)V

    .line 594
    const-string/jumbo v2, "InputMethodAndLanguageSettings"

    const-string/jumbo v3, "onPreferenceTreeClick : after showInputMethodPicker"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    .line 597
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    instance-of v4, p2, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1

    move-object v1, p2

    .line 598
    check-cast v1, Landroid/preference/SwitchPreference;

    .line 599
    .local v1, "pref":Landroid/preference/SwitchPreference;
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v5, "vibrate_input_devices"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne v1, v4, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_input_devices"

    .line 601
    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    .line 600
    :cond_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 602
    return v3
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 378
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 383
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v10, "pointer_speed"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpeedObserver:Landroid/database/ContentObserver;

    .line 382
    invoke-virtual {v4, v10, v13, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 386
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v10}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->resume()V

    .line 387
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, p0, v12}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 389
    const-string/jumbo v10, "spellcheckers_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 391
    .local v7, "spellChecker":Landroid/preference/Preference;
    const-string/jumbo v10, "key_user_dictionary_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 393
    .local v9, "userDic":Landroid/preference/Preference;
    if-eqz v7, :cond_2

    .line 395
    const-string/jumbo v10, "textservices"

    .line 394
    invoke-virtual {p0, v10}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/textservice/TextServicesManager;

    .line 396
    .local v8, "tsm":Landroid/view/textservice/TextServicesManager;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isInstalledAnySpellCheckerPakcage(Landroid/content/Context;)Z

    move-result v2

    .line 397
    .local v2, "isInstalledSpellCheckerService":Z
    invoke-virtual {v8}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v10

    if-nez v10, :cond_9

    .line 398
    const-string/jumbo v10, "InputMethodAndLanguageSettings"

    const-string/jumbo v11, "Spell checker is not enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    if-eqz v7, :cond_0

    if-eqz v2, :cond_7

    .line 403
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    if-eqz v2, :cond_8

    .line 407
    :cond_1
    :goto_1
    const v10, 0x7f0b1ad9

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setSummary(I)V

    .line 448
    .end local v2    # "isInstalledSpellCheckerService":Z
    .end local v8    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v10, :cond_4

    .line 449
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 450
    const-string/jumbo v10, "InputMethodAndLanguageSettings"

    const-string/jumbo v11, "Current IME is Samsung Keyboard"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-eqz v7, :cond_3

    .line 452
    const-string/jumbo v10, "InputMethodAndLanguageSettings"

    const-string/jumbo v11, "spellChecker removed because Samsung Keyboard"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 455
    :cond_3
    if-eqz v9, :cond_4

    .line 456
    const-string/jumbo v10, "InputMethodAndLanguageSettings"

    const-string/jumbo v11, "userDic removed because Samsung Keyboard"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 465
    :cond_4
    :goto_3
    iget-boolean v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-nez v10, :cond_6

    .line 466
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v10, :cond_5

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getLocaleNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "localeNames":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v10, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v10, v13}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 472
    .end local v3    # "localeNames":Ljava/lang/String;
    :cond_5
    if-eqz v9, :cond_6

    .line 473
    invoke-direct {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/preference/Preference;)V

    .line 481
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 486
    .local v0, "activity":Landroid/app/Activity;
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->um:Landroid/os/UserManager;

    invoke-static {v10}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v10

    if-nez v10, :cond_11

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    const/16 v11, 0x64

    if-ge v10, v11, :cond_11

    .line 487
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v10}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 488
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V

    .line 517
    :goto_4
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v13, "LanguageAndInput"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 377
    return-void

    .line 400
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "isInstalledSpellCheckerService":Z
    .restart local v8    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_7
    const-string/jumbo v10, "InputMethodAndLanguageSettings"

    const-string/jumbo v11, "diable spellchecker pref because there isnot available SpellCheckerInfo"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 404
    :cond_8
    const-string/jumbo v10, "InputMethodAndLanguageSettings"

    const-string/jumbo v11, "diable UserDIct pref because there isnot available SpellCheckerInfo"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 409
    :cond_9
    invoke-virtual {v8}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v5

    .line 411
    .local v5, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v5, :cond_d

    .line 413
    const-string/jumbo v10, "com.sec.android.inputmethod"

    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 415
    .local v6, "skipSetSummary":Z
    if-nez v6, :cond_a

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 418
    :cond_a
    const-string/jumbo v10, ""

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    if-eqz v7, :cond_b

    if-eqz v2, :cond_c

    .line 424
    :cond_b
    :goto_5
    if-eqz v9, :cond_2

    if-nez v2, :cond_2

    .line 425
    const-string/jumbo v10, "InputMethodAndLanguageSettings"

    const-string/jumbo v11, "diable UserDIct pref because there isnot available SpellCheckerInfo"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 420
    :cond_c
    const-string/jumbo v10, "InputMethodAndLanguageSettings"

    const-string/jumbo v11, "diable spellchecker pref because there isnot available SpellCheckerInfo"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 431
    .end local v6    # "skipSetSummary":Z
    :cond_d
    const-string/jumbo v10, "InputMethodAndLanguageSettings"

    const-string/jumbo v11, "cannot find spellcheckerinfo"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    if-eqz v7, :cond_e

    if-eqz v2, :cond_f

    .line 437
    :cond_e
    :goto_6
    if-eqz v9, :cond_2

    if-nez v2, :cond_2

    .line 438
    const-string/jumbo v10, "InputMethodAndLanguageSettings"

    const-string/jumbo v11, "diable UserDIct pref because there isnot available SpellCheckerInfo"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 433
    :cond_f
    const-string/jumbo v10, "InputMethodAndLanguageSettings"

    const-string/jumbo v11, "diable spellchecker pref because there isnot available SpellCheckerInfo"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 460
    .end local v2    # "isInstalledSpellCheckerService":Z
    .end local v5    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v8    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_10
    const-string/jumbo v10, "InputMethodAndLanguageSettings"

    const-string/jumbo v11, "Current IME can show SpellPref, UserDic"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 491
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_11
    :try_start_0
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    new-instance v11, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$7;

    invoke-direct {v11, p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$7;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/app/Activity;)V

    .line 510
    const-wide/16 v12, 0xfa

    .line 491
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 511
    :catch_0
    move-exception v1

    .line 512
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public onSaveInputMethodPreference(Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 8
    .param p1, "pref"    # Lcom/android/settings/inputmethod/InputMethodPreference;

    .prologue
    const/16 v7, 0x64

    .line 703
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 704
    .local v4, "userId":I
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    .line 705
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 708
    if-ge v4, v7, :cond_0

    .line 709
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 712
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->keyboard:I

    .line 713
    const/4 v6, 0x2

    .line 712
    if-ne v5, v6, :cond_2

    const/4 v0, 0x1

    .line 714
    .local v0, "hasHardwareKeyboard":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 715
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v6

    .line 714
    invoke-static {p0, v5, v6, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 717
    if-ge v4, v7, :cond_3

    .line 721
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v5}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 723
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 729
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 733
    :cond_1
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "p$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/inputmethod/InputMethodPreference;

    .line 735
    .local v2, "p":Lcom/android/settings/inputmethod/InputMethodPreference;
    invoke-virtual {v2}, Lcom/android/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1

    .line 712
    .end local v0    # "hasHardwareKeyboard":Z
    .end local v2    # "p":Lcom/android/settings/inputmethod/InputMethodPreference;
    .end local v3    # "p$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasHardwareKeyboard":Z
    goto :goto_0

    .line 701
    :cond_3
    return-void
.end method

.method public onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 929
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 930
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 931
    const-string/jumbo v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 933
    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 934
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 928
    return-void
.end method
