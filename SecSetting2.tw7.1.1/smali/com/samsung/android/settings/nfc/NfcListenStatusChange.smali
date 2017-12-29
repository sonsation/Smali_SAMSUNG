.class public Lcom/samsung/android/settings/nfc/NfcListenStatusChange;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NfcListenStatusChange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcListenStatusChange$1;,
        Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;,
        Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;,
        Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;
    }
.end annotation


# instance fields
.field private alertDialog:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mFeliCaLock:Z

.field mHandler:Landroid/os/Handler;

.field mHandlerBF:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private final mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mSelectAccount:Ljava/lang/String;

.field private mSetReceiver:Z

.field private mUimLock:Z

.field private pNFcTypeABF:Landroid/preference/CheckBoxPreference;

.field private pNFcTypeAF:Landroid/preference/CheckBoxPreference;

.field private pNFcTypeBF:Landroid/preference/CheckBoxPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mFeliCaLock:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mFeliCaLock:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->createScreen()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->startHandlerBF()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->startHandler()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mFeliCaLock:Z

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    .line 78
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;

    .line 79
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;

    .line 80
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;

    .line 94
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$1;-><init>(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;-><init>(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V

    .line 298
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 53
    return-void
.end method

.method private createCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/CheckBoxPreference;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 275
    .local v0, "isChecked":Z
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 276
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 271
    return-void
.end method

.method private createScreen()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "00001,0"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->createCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "00001,1"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->createCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "00001,2"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->createCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method private loadSelectRadioButton()V
    .locals 2

    .prologue
    .line 281
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getNfcTypeSettings()I

    move-result v0

    .line 283
    .local v0, "Value":I
    packed-switch v0, :pswitch_data_0

    .line 280
    :goto_0
    return-void

    .line 285
    :pswitch_0
    const-string/jumbo v1, "00001,0"

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    goto :goto_0

    .line 288
    :pswitch_1
    const-string/jumbo v1, "00001,1"

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    goto :goto_0

    .line 291
    :pswitch_2
    const-string/jumbo v1, "00001,2"

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startHandler()V
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;-><init>(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V

    .line 354
    .local v0, "screen":Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;
    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;->start()V

    .line 352
    return-void
.end method

.method private startHandlerBF()V
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;-><init>(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V

    .line 369
    .local v0, "screen":Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;
    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;->start()V

    .line 367
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->startHandler()V

    .line 393
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 389
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 187
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    const v1, 0x7f0800b5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->addPreferencesFromResource(I)V

    .line 189
    const v1, 0x7f0b122c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 191
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mHandler:Landroid/os/Handler;

    .line 192
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mHandlerBF:Landroid/os/Handler;

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 195
    .local v0, "activity":Landroid/app/Activity;
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mContext:Landroid/content/Context;

    .line 196
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.sec.android.intent.action.EF_LOCK_STATE_GET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    .line 197
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.sec.android.intent.action.EF_LOCK_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.sec.android.intent.action.EF_LOCK_UPDATED_INTERNAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 203
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 205
    const v1, 0x7f0b122d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;

    .line 206
    const v1, 0x7f0b122e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;

    .line 207
    const v1, 0x7f0b122f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;

    .line 209
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 210
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 211
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 213
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    .line 214
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0b1230

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 215
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0b1231

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$3;-><init>(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0b1232

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$4;-><init>(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 240
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 385
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 256
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 257
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    if-eqz v0, :cond_0

    .line 258
    const-string/jumbo v0, "[NfcListenStatus]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ON -> OFF mSetReceiver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    .line 255
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->loadSelectRadioButton()V

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->createScreen()V

    .line 248
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    if-nez v0, :cond_0

    .line 249
    const-string/jumbo v0, "[NfcListenStatus]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OFF -> ON mSetReceiver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    .line 244
    :cond_0
    return-void
.end method
