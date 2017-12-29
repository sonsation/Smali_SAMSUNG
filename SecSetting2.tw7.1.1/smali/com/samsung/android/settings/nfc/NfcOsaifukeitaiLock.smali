.class public Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;
.super Landroid/app/Fragment;
.source "NfcOsaifukeitaiLock.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private final CSC_SALES_CODE:Ljava/lang/String;

.field private final OMC_SALES_CODE:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private activitySwitchBar:Lcom/android/settings/SettingsActivity;

.field private final carrier:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFelicaLockResultCode:I

.field private mIntent:Landroid/content/Intent;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field public mbSwitchBar:Z

.field private myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mbSwitchBar:Z

    .line 66
    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->OMC_SALES_CODE:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->CSC_SALES_CODE:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->carrier:Ljava/lang/String;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mFelicaLockResultCode:I

    .line 53
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getLockState()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public getSwitchBarState()Z
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[S] getSwitchBarState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mbSwitchBar:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[S] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 98
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[E] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 222
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 223
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NfcOsaifukeitaiLock onActivityResult ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iput p2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mFelicaLockResultCode:I

    .line 225
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 221
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const-string/jumbo v1, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v2, "[S] onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    .line 108
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 112
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 113
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    const v2, 0x7f0a00fe

    .line 114
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 116
    .local v0, "padding":I
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3, v3, v0, v3}, Lcom/android/settings/widget/SwitchBar;->setPaddingRelative(IIII)V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 119
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    .line 122
    const v4, 0x800015

    .line 119
    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0b1219

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 126
    .end local v0    # "padding":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->carrier:Ljava/lang/String;

    const-string/jumbo v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockDCM;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockDCM;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    .line 129
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockDCM;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.felicalock"

    const-string/jumbo v3, "com.samsung.felicalock.FelicaLockActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string/jumbo v1, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v2, "[E] onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 126
    :cond_1
    const-string/jumbo v2, "KDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    .line 133
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 126
    :cond_2
    const-string/jumbo v2, "SBM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    .line 137
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 140
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockDCM;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    const v0, 0x7f0401ca

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mView:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mView:Landroid/view/View;

    const v1, 0x7f1105d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mTextView:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 210
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[S] onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[S] removeOnSwitchChangeListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 194
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->onPause(Landroid/content/Context;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 204
    :cond_1
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 189
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 163
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "NfcOsaifukeitaiLock onResume & registerReceiver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    if-nez v0, :cond_0

    .line 166
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->onResume(Landroid/content/Context;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getLockState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b123d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getSwitchBarState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 161
    :cond_1
    return-void

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b123c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 158
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    .line 232
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 233
    const-string/jumbo v1, "[NfcOsaifukeitaiLock]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NfcOsaifukeitaiLock onSwitchChanged mFelicaLockResultCode=( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mFelicaLockResultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string/jumbo v1, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v2, "NFC_Lock_switch call FeliCaLock:S"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    const/16 v2, 0x1000

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
