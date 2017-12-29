.class public Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;
.super Landroid/app/Fragment;
.source "NfcReaderWriterP2P.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P$1;
    }
.end annotation


# instance fields
.field private final CSC_SALES_CODE:Ljava/lang/String;

.field private final OMC_SALES_CODE:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private activitySwitchBar:Lcom/android/settings/SettingsActivity;

.field private final carrier:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;

.field private mfilter:Landroid/content/IntentFilter;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 68
    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->OMC_SALES_CODE:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->CSC_SALES_CODE:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->carrier:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P$1;-><init>(Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 220
    const v1, 0x7f1105d2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 222
    .local v0, "mTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 223
    const v1, 0x7f0b123e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 105
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    const-string/jumbo v0, "[NfcReaderWriterP2P]"

    const-string/jumbo v1, "[S] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 122
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 127
    :cond_1
    const-string/jumbo v0, "[NfcReaderWriterP2P]"

    const-string/jumbo v1, "[E] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    .line 134
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    .line 136
    new-instance v1, Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    invoke-direct {v1, v2}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 138
    const-string/jumbo v1, "[NfcReaderWriterP2P]"

    const-string/jumbo v2, "[S] onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 142
    .local v0, "padding":I
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3, v3, v0, v3}, Lcom/android/settings/widget/SwitchBar;->setPaddingRelative(IIII)V

    .line 143
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 144
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 145
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    .line 148
    const v4, 0x800015

    .line 145
    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 144
    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 150
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0b121a

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 152
    .end local v0    # "padding":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 154
    const-string/jumbo v1, "[NfcReaderWriterP2P]"

    const-string/jumbo v2, "[E] onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    const v0, 0x7f0401cc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mView:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->initView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 192
    const-string/jumbo v0, "[NfcReaderWriterP2P]"

    const-string/jumbo v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 199
    :cond_0
    const-string/jumbo v0, "[NfcReaderWriterP2P]"

    const-string/jumbo v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 160
    const-string/jumbo v1, "[NfcReaderWriterP2P]"

    const-string/jumbo v2, "NfcReaderWriterP2P onResume & registerReceiver"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 164
    .local v0, "nfcState":I
    if-eq v0, v3, :cond_0

    .line 165
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 166
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 167
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 168
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 179
    .end local v0    # "nfcState":I
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mfilter:Landroid/content/IntentFilter;

    .line 180
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mfilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 158
    :cond_2
    return-void

    .line 171
    .restart local v0    # "nfcState":I
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    const v6, 0x7f0f00ca

    const v5, 0x7f0f00c9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    const-string/jumbo v0, "[NfcReaderWriterP2P]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[S] onSwitchChanged carrier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "desiredState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-eqz p2, :cond_2

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setRWP2pStatus(Z)Z

    .line 234
    const-string/jumbo v0, "KDI"

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getABeamStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setABeamStatus(Z)Z

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setRWP2pStatus(Z)Z

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcReaderWriterP2P;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    goto :goto_0
.end method
