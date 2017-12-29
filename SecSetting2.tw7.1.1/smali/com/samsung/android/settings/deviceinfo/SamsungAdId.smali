.class public Lcom/samsung/android/settings/deviceinfo/SamsungAdId;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SamsungAdId.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;
    }
.end annotation


# instance fields
.field private mAdId:Landroid/preference/Preference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mResetAdId:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->makeResetAdidDialogue()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->resetSamsungAdId()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 140
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;-><init>(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 36
    return-void
.end method

.method public static checkSamsungAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "samsung_adid"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "samsungAdId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 93
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->generateAndUpdateSamsungAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    return-object v0
.end method

.method private static generateAndUpdateSamsungAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "samsungAdId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "samsung_adid"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 111
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v2, "SamsungAdId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "samsung ad id generateAndUpdated as : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-object v1

    .line 114
    :cond_0
    const-string/jumbo v2, "SamsungAdId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "samsung ad id update fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeResetAdidDialogue()V
    .locals 5

    .prologue
    .line 120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0648

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 122
    const v3, 0x7f0b0649

    .line 121
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 123
    new-instance v3, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$3;-><init>(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)V

    const v4, 0x7f0b064a

    .line 121
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 129
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    .line 121
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 131
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 119
    return-void
.end method

.method private resetSamsungAdId()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mAdId:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->generateAndUpdateSamsungAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f03f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0800db

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->addPreferencesFromResource(I)V

    .line 50
    const-string/jumbo v0, "ad_id"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mAdId:Landroid/preference/Preference;

    .line 51
    const-string/jumbo v0, "reset_ad_id"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mResetAdId:Landroid/preference/Preference;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mAdId:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->checkSamsungAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mResetAdId:Landroid/preference/Preference;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$2;-><init>(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 47
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SamsungAdvertisingID"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SamsungAdvertisingID"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 72
    return-void
.end method
