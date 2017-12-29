.class public Lcom/samsung/android/settings/multisound/AddAudioApplications;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AddAudioApplications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/multisound/AddAudioApplications$AlphaComparator;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mSetApplication:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mSetApplication:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 98
    new-instance v0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;-><init>(Lcom/samsung/android/settings/multisound/AddAudioApplications;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x150

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->loadAppsList()V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mContext:Landroid/content/Context;

    .line 68
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mSetApplication:Landroid/preference/PreferenceScreen;

    .line 72
    new-instance v0, Lcom/samsung/android/settings/UnclickablePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/UnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    .local v0, "descryptionPreference":Lcom/samsung/android/settings/UnclickablePreference;
    const v1, 0x7f0b0c23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mSetApplication:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 76
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1002b4

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mProgress:Landroid/app/ProgressDialog;

    .line 77
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mProgress:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 78
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications;->mProgress:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 82
    return-void
.end method
