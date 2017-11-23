.class public Lcom/samsung/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcEnabler$1;
    }
.end annotation


# static fields
.field private static CONNECTION_NFC_AND_PAYMENT:I

.field private static NFC_AND_PAYMENT_ON_OFF:I

.field private static mIconType:Ljava/lang/String;


# instance fields
.field private isAndroidBeamAllowed:I

.field private isNFCEnabled:I

.field private isNFCStateChangeAllowed:I

.field mAlert:Landroid/app/AlertDialog;

.field private final mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

.field private mBeamDisallowedBySystem:Z

.field private final mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mNfcSettings:Landroid/preference/PreferenceScreen;

.field private final mNfcSettingsPref:Landroid/preference/PreferenceScreen;

.field private final mNfcSwitchPref:Landroid/preference/SwitchPreference;

.field private final mPaymentSim:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mTapPay:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/NfcEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateABeamChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_StatusBarIconType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nfcSwitchPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    .line 125
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 211
    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    .line 212
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    .line 213
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/preference/PreferenceScreen;

    .line 214
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 215
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 216
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    .line 217
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 218
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 219
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    .line 221
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 224
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 225
    return-void

    .line 227
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nfcSwitch"    # Lcom/android/settings/widget/SwitchBar;
    .param p3, "androidBeam"    # Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;
    .param p4, "tapPay"    # Landroid/preference/PreferenceScreen;
    .param p5, "paymentSim"    # Landroid/preference/Preference;
    .param p6, "nfcSettingsPref"    # Landroid/preference/PreferenceScreen;
    .param p7, "cardMode"    # Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;
    .param p8, "standardMode"    # Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    .line 125
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 147
    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    .line 148
    iput-object p6, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/preference/PreferenceScreen;

    .line 149
    iput-object p7, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 150
    iput-object p8, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 151
    iput-object p3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    .line 152
    iput-object p5, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    .line 153
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 154
    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    .line 155
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 156
    iput-object p4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    .line 158
    const-string/jumbo v0, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 157
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    .line 160
    const-string/jumbo v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBeamDisallowedBySystem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    .line 170
    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 171
    return-void

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    .line 177
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 145
    :cond_3
    return-void
.end method

.method private checkKnox()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 672
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "false"

    aput-object v1, v0, v4

    .line 674
    .local v0, "selectionArgsFalse":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    .line 675
    const-string/jumbo v3, "isNFCEnabled"

    .line 674
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCEnabled:I

    .line 677
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider2/MiscPolicy"

    .line 678
    const-string/jumbo v3, "isNFCStateChangeAllowed"

    .line 677
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    .line 680
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    .line 681
    const-string/jumbo v3, "isAndroidBeamAllowed"

    .line 680
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    .line 683
    const-string/jumbo v1, "NfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNFCEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , isNFCStateChangeAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , isAndroidBeamAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCEnabled:I

    if-nez v1, :cond_2

    .line 686
    const-string/jumbo v1, "NfcEnabler"

    const-string/jumbo v2, "EDM : NFC not allowed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 691
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 692
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v1, :cond_2

    .line 696
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    .line 700
    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    if-nez v1, :cond_3

    .line 701
    const-string/jumbo v1, "NfcEnabler"

    const-string/jumbo v2, "EDM : NFC state change not allowed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_3

    .line 703
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 707
    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    if-nez v1, :cond_4

    .line 708
    const-string/jumbo v1, "NfcEnabler"

    const-string/jumbo v2, "EDM : AndroidBeam not allowed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v1, :cond_4

    .line 710
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    .line 669
    :cond_4
    return-void
.end method

.method private getBeamShareActivityState()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 642
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.nfc"

    const-string/jumbo v3, "com.android.nfc.BeamShareActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android"

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v2, v7, :cond_0

    .line 647
    return v6

    .line 649
    :cond_0
    return v7

    .line 651
    :catch_0
    move-exception v1

    .line 652
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "NfcEnabler"

    const-string/jumbo v3, "Failed to retrieve PackageManager for user"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return v6
.end method

.method private handleNfcStateABeamChanged()V
    .locals 3

    .prologue
    .line 627
    const-string/jumbo v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBeamDisallowedBySystem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getBeamShareActivityState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NfcEnabler"

    const-string/jumbo v1, " beamshare state is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_2

    .line 631
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getBeamShareActivityState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_3

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const v1, 0x7f0b1ad9

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    .line 636
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    .line 625
    :cond_2
    :goto_0
    return-void

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const v1, 0x7f0b1ad8

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    .line 633
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private handleNfcStateChanged(I)V
    .locals 6
    .param p1, "newState"    # I

    .prologue
    const v5, 0x7f0b1ad9

    const v4, 0x7f0b1ad8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 397
    packed-switch p1, :pswitch_data_0

    .line 622
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->checkKnox()V

    .line 393
    return-void

    .line 399
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    .line 407
    :cond_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M>NFC_OFF</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_3
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 414
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    .line 415
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 424
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 427
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_6

    .line 428
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    .line 431
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_7

    .line 432
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    .line 433
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    .line 435
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_8

    .line 436
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 437
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 439
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b09ce

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 442
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 419
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    .line 420
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 448
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_a

    .line 449
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 450
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 452
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_b

    .line 453
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_13

    .line 454
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 455
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    .line 461
    :cond_b
    :goto_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 462
    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M>NFC_ON</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_c
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 468
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_d

    .line 469
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 473
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_e

    .line 474
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 475
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 478
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_f

    .line 479
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 481
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_10

    .line 482
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    .line 483
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    .line 485
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_11

    .line 486
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    .line 489
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_12

    .line 490
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 491
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 492
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 493
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 494
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b09d4

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 500
    :cond_12
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 502
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 457
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const-string/jumbo v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 496
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3

    .line 504
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 510
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_16

    .line 511
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 512
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 514
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_17

    .line 515
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 517
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_18

    .line 518
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    .line 520
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_19

    .line 521
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 523
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_1a

    .line 524
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    .line 525
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    .line 527
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_1b

    .line 528
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    .line 529
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    .line 531
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1c

    .line 532
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 533
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 535
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b09ce

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 538
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 544
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1d

    .line 545
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 546
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 548
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1e

    .line 549
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 551
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_1f

    .line 552
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    .line 554
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_20

    .line 555
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 557
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_21

    .line 558
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    .line 559
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    .line 561
    :cond_21
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_22

    .line 562
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    .line 563
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    .line 565
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_23

    .line 566
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 567
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 568
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 569
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 570
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b09d4

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 576
    :cond_23
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 572
    :cond_24
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_4

    .line 582
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_25

    .line 583
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 584
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 586
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_26

    .line 587
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 589
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_27

    .line 590
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    .line 592
    :cond_27
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_28

    .line 593
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 595
    :cond_28
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_29

    .line 596
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    .line 597
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    .line 599
    :cond_29
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_2a

    .line 600
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    .line 601
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    .line 603
    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2b

    .line 604
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 605
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 606
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 607
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b09d2

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 610
    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 612
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 614
    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isNfcTurnOn()Z
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 662
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 664
    const/4 v0, 0x0

    return v0
.end method

.method private makeAlertDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "dialogType"    # Ljava/lang/String;

    .prologue
    .line 742
    move-object v0, p1

    .line 743
    .local v0, "alertType":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 745
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "NfcSettingsOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 746
    const v2, 0x7f0b09f8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 747
    const v2, 0x7f0b09fa

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 756
    :cond_0
    :goto_0
    new-instance v2, Lcom/samsung/android/settings/nfc/NfcEnabler$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$2;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Ljava/lang/String;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 769
    new-instance v2, Lcom/samsung/android/settings/nfc/NfcEnabler$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$3;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 777
    new-instance v2, Lcom/samsung/android/settings/nfc/NfcEnabler$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$4;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 784
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    .line 785
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 741
    return-void

    .line 748
    :cond_1
    const-string/jumbo v2, "AndroidBeamOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 749
    const v2, 0x7f0b09f9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 750
    const v2, 0x7f0b09fb

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 751
    :cond_2
    const-string/jumbo v2, "RwOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    const v2, 0x7f0b09f7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 753
    const v2, 0x7f0b09f1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public chinaDisabled_offslot(I)Z
    .locals 9
    .param p1, "slot"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 719
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 720
    const-string/jumbo v5, "phone1_on"

    .line 719
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    const/4 v0, 0x1

    .line 721
    .local v0, "PhoneOnMode1":Z
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 722
    const-string/jumbo v5, "phone2_on"

    .line 721
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_2

    const/4 v1, 0x1

    .line 723
    .local v1, "PhoneOnMode2":Z
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v4, "ril.ICC_TYPE"

    const-string/jumbo v5, "0"

    invoke-static {v8, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "SimState_1":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v4, "ril.ICC_TYPE"

    const-string/jumbo v5, "0"

    invoke-static {v7, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 726
    .local v3, "SimState_2":Ljava/lang/String;
    const-string/jumbo v4, "NfcEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SimState_1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string/jumbo v4, "NfcEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SimState_2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    if-nez p1, :cond_3

    .line 730
    if-eqz v0, :cond_0

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 731
    :cond_0
    return v7

    .line 719
    .end local v0    # "PhoneOnMode1":Z
    .end local v1    # "PhoneOnMode2":Z
    .end local v2    # "SimState_1":Ljava/lang/String;
    .end local v3    # "SimState_2":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "PhoneOnMode1":Z
    goto :goto_0

    .line 721
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "PhoneOnMode2":Z
    goto :goto_1

    .line 732
    .restart local v2    # "SimState_1":Ljava/lang/String;
    .restart local v3    # "SimState_2":Ljava/lang/String;
    :cond_3
    if-ne p1, v7, :cond_5

    .line 733
    if-eqz v1, :cond_4

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 734
    :cond_4
    return v7

    .line 737
    :cond_5
    return v8
.end method

.method public created()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/16 v2, 0x3e8

    const/4 v3, 0x0

    .line 343
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 345
    .local v0, "desiredState":Z
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 346
    const-string/jumbo v4, "NfcEnabler"

    const-string/jumbo v5, "onPreferenceChange - NfcSetting switch"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    if-nez v4, :cond_0

    .line 349
    const-string/jumbo v2, "NfcEnabler"

    const-string/jumbo v4, "EDM : NFC state change not allowed. so can\'t change toggle button"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return v3

    .line 353
    :cond_0
    if-eqz v0, :cond_3

    .line 354
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 355
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 357
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 365
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/samsung/android/settings/nfc/NfcEnabler;->CONNECTION_NFC_AND_PAYMENT:I

    .line 366
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 367
    sget v6, Lcom/samsung/android/settings/nfc/NfcEnabler;->CONNECTION_NFC_AND_PAYMENT:I

    if-eqz v0, :cond_5

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 366
    invoke-static {v4, v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 389
    :cond_2
    :goto_2
    const/4 v2, 0x1

    return v2

    .line 359
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 360
    const-string/jumbo v4, "NfcSettingsOff"

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    :cond_5
    move v2, v3

    .line 367
    goto :goto_1

    .line 369
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 370
    const/4 v1, 0x0

    .line 371
    .local v1, "success":Z
    const-string/jumbo v4, "NfcEnabler"

    const-string/jumbo v5, "onPreferenceChange - AndroidBeam switch"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-eqz v0, :cond_8

    .line 374
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v1

    .line 375
    .local v1, "success":Z
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const v5, 0x7f0b1ad8

    invoke-virtual {v4, v5}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    .line 384
    .end local v1    # "success":Z
    :goto_3
    if-eqz v1, :cond_7

    .line 385
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v4, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    .line 387
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1000a3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_a

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_2

    .line 377
    .local v1, "success":Z
    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 378
    const-string/jumbo v4, "AndroidBeamOff"

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_3

    .line 380
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v1

    .line 381
    .local v1, "success":Z
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const v5, 0x7f0b1ad9

    invoke-virtual {v4, v5}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    goto :goto_3

    .end local v1    # "success":Z
    :cond_a
    move v2, v3

    .line 387
    goto :goto_4
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V
    .locals 5
    .param p1, "emiter"    # Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .prologue
    const v2, 0x7f1000b1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 325
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    .line 330
    const-string/jumbo v0, "RwOff"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v0, 0x0

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNfcTurnOn()Z

    move-result v1

    if-ne v1, p2, :cond_0

    .line 299
    return-void

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 304
    if-eqz p2, :cond_3

    .line 305
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 306
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 308
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 315
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/nfc/NfcEnabler;->NFC_AND_PAYMENT_ON_OFF:I

    .line 316
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 317
    sget v3, Lcom/samsung/android/settings/nfc/NfcEnabler;->NFC_AND_PAYMENT_ON_OFF:I

    if-eqz p2, :cond_2

    const/16 v0, 0x3e8

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 316
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 319
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->checkKnox()V

    .line 296
    return-void

    .line 310
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 311
    const-string/jumbo v1, "NfcSettingsOff"

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 270
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_4

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    .line 268
    :cond_4
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 239
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateABeamChanged()V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    .line 234
    :cond_4
    return-void
.end method
