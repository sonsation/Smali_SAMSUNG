.class public Lcom/android/settings/deviceinfo/SimStatus;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/SimStatus$1;,
        Lcom/android/settings/deviceinfo/SimStatus$2;,
        Lcom/android/settings/deviceinfo/SimStatus$3;
    }
.end annotation


# static fields
.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field mContext:Landroid/content/Context;

.field private mDefaultText:Ljava/lang/String;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mImsRegistered:Z

.field private mListView:Landroid/widget/ListView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowICCID:Z

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/SimStatus;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/deviceinfo/SimStatus;I)V
    .locals 0
    .param p1, "onOff"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->setRssiNoti(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/deviceinfo/SimStatus;Ljava/lang/String;)V
    .locals 0
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePhoneInfos()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePreference()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 144
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$1;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 730
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$2;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 762
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$3;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 99
    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 771
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 770
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 805
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "opName":Ljava/lang/String;
    const-string/jumbo v1, "DCM"

    sget-object v2, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    .line 822
    :cond_0
    :goto_0
    return-object v0

    .line 808
    :cond_1
    const-string/jumbo v1, "KDI"

    sget-object v2, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "kddi"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 809
    const-string/jumbo v0, "au"

    goto :goto_0

    .line 810
    :cond_2
    const-string/jumbo v1, "TGY"

    sget-object v2, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    :cond_3
    const-string/jumbo v1, "China Telecom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 812
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 813
    :cond_4
    const-string/jumbo v1, "CU GSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "CHN-CUGSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 814
    const-string/jumbo v1, "China Unicom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 813
    if-nez v1, :cond_5

    .line 814
    const-string/jumbo v1, "CHN-UNICOM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 813
    if-eqz v1, :cond_6

    .line 815
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b054a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 816
    :cond_6
    const-string/jumbo v1, "CMCC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "CHINA MOBILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 817
    :cond_7
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b054b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 818
    :cond_8
    const-string/jumbo v1, "PCCW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "PCCW-HKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    :cond_9
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b054c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 6
    .param p1, "Sim_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, "retString":Ljava/lang/String;
    const-string/jumbo v3, "CTC"

    sget-object v4, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 850
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    const-string/jumbo v4, "gsm.sim.state"

    const-string/jumbo v5, "UNKNOWN"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, "simState1":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    const-string/jumbo v4, "gsm.sim.state"

    const-string/jumbo v5, "UNKNOWN"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 852
    .local v2, "simState2":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 853
    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b054d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 872
    .end local v1    # "simState1":Ljava/lang/String;
    .end local v2    # "simState2":Ljava/lang/String;
    .local v0, "retString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 856
    .local v0, "retString":Ljava/lang/String;
    .restart local v1    # "simState1":Ljava/lang/String;
    .restart local v2    # "simState2":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "retString":Ljava/lang/String;
    goto :goto_0

    .line 859
    .local v0, "retString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 860
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b054e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "retString":Ljava/lang/String;
    goto :goto_0

    .line 862
    .local v0, "retString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "retString":Ljava/lang/String;
    goto :goto_0

    .line 866
    .end local v1    # "simState1":Ljava/lang/String;
    .end local v2    # "simState2":Ljava/lang/String;
    .local v0, "retString":Ljava/lang/String;
    :cond_3
    if-nez p1, :cond_4

    .line 867
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "retString":Ljava/lang/String;
    goto :goto_0

    .line 869
    .local v0, "retString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "retString":Ljava/lang/String;
    goto :goto_0
.end method

.method private hasService()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 826
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 828
    .local v0, "mServiceState":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_1

    .line 833
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 840
    return v1

    .line 835
    :pswitch_0
    return v2

    .line 838
    :pswitch_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 843
    :cond_1
    return v2

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 342
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 340
    :cond_0
    return-void
.end method

.method private setRssiNoti(I)V
    .locals 7
    .param p1, "onOff"    # I

    .prologue
    const/4 v6, 0x0

    .line 877
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 878
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 881
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 882
    .local v3, "fileSize":I
    const/16 v4, 0x18

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 883
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 884
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 885
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    if-eqz v1, :cond_0

    .line 891
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 898
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 875
    return-void

    .line 893
    :catch_0
    move-exception v2

    .line 894
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v4, "SimStatus"

    const-string/jumbo v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 886
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 887
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 890
    if-eqz v1, :cond_0

    .line 891
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 893
    :catch_2
    move-exception v2

    .line 894
    const-string/jumbo v4, "SimStatus"

    const-string/jumbo v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 888
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 890
    if-eqz v1, :cond_1

    .line 891
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 888
    :cond_1
    :goto_1
    throw v4

    .line 893
    :catch_3
    move-exception v2

    .line 894
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "SimStatus"

    const-string/jumbo v6, "setRssiNoti : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    iget-object p2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 352
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 353
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 347
    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 535
    if-eqz p1, :cond_0

    .line 536
    const-string/jumbo v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 5

    .prologue
    const v4, 0x7f0b114c

    .line 463
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_1

    .line 465
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    .line 467
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b114e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 484
    :goto_0
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->hasService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_0
    const-string/jumbo v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .end local v0    # "display":Ljava/lang/String;
    .end local v1    # "state":I
    :cond_1
    return-void

    .line 471
    .restart local v0    # "display":Ljava/lang/String;
    .restart local v1    # "state":I
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 474
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b114d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 477
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b114b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 480
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b114a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 9

    .prologue
    .line 360
    const/4 v2, 0x0

    .line 361
    .local v2, "networktype":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 362
    .local v4, "subId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 363
    .local v3, "phoneId":I
    iget-object v6, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 364
    .local v0, "actualDataNetworkType":I
    iget-object v6, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 367
    .local v1, "actualVoiceNetworkType":I
    iget-object v6, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v6, "gsm.network.type"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "networktype":Ljava/lang/String;
    const-string/jumbo v6, "SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNetworkType() => networkType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 371
    iget-object v6, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v6, "gsm.voice.network.type"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "voiceNetworkType":Ljava/lang/String;
    const-string/jumbo v6, "Unknown"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "Unknown"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 376
    :cond_0
    :goto_0
    const-string/jumbo v6, "CDMA-IS95A"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "CDMA-IS95B"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 377
    :cond_1
    const-string/jumbo v2, "CDMA 1x"

    .line 404
    :cond_2
    :goto_1
    const-string/jumbo v6, "SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNetworkType() isChinaCTCModel => changed networkType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .end local v5    # "voiceNetworkType":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string/jumbo v6, "SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNetworkType() => networkType name old: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string/jumbo v6, "Unknown"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 455
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 459
    :cond_4
    const-string/jumbo v6, "network_type"

    invoke-direct {p0, v6, v2}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void

    .line 373
    .restart local v5    # "voiceNetworkType":Ljava/lang/String;
    :cond_5
    move-object v2, v5

    .line 374
    const-string/jumbo v6, "SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Replace networkType with voiceNetworkType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :cond_6
    const-string/jumbo v6, "EvDo-rev.0"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 379
    const-string/jumbo v2, "CDMA EVDO"

    goto :goto_1

    .line 380
    :cond_7
    const-string/jumbo v6, "EvDo-rev.A"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 381
    const-string/jumbo v2, "CDMA EVDO"

    goto :goto_1

    .line 382
    :cond_8
    const-string/jumbo v6, "EvDo-rev.B"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 383
    const-string/jumbo v2, "CDMA EVDO"

    goto/16 :goto_1

    .line 384
    :cond_9
    const-string/jumbo v6, "1xRTT"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 385
    const-string/jumbo v2, "CDMA 1x"

    goto/16 :goto_1

    .line 386
    :cond_a
    const-string/jumbo v6, "UMTS"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 387
    const-string/jumbo v2, "WCDMA"

    goto/16 :goto_1

    .line 388
    :cond_b
    const-string/jumbo v6, "HSDPA"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v6, "HSUPA"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 389
    const-string/jumbo v6, "HSPA"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 388
    if-eqz v6, :cond_d

    .line 390
    :cond_c
    const-string/jumbo v2, "HSPA"

    goto/16 :goto_1

    .line 391
    :cond_d
    const-string/jumbo v6, "HSPAP"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 392
    const-string/jumbo v2, "HSPA+"

    goto/16 :goto_1

    .line 393
    :cond_e
    const-string/jumbo v6, "eHRPD"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 394
    const-string/jumbo v2, "eHRPD"

    goto/16 :goto_1

    .line 395
    :cond_f
    const-string/jumbo v6, "LTE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 396
    const-string/jumbo v2, "LTE"

    goto/16 :goto_1

    .line 397
    :cond_10
    const-string/jumbo v6, "GPRS"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "EDGE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 398
    const-string/jumbo v6, "GSM"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 397
    if-nez v6, :cond_2

    .line 399
    const-string/jumbo v6, "TD-SCDMA"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 400
    const-string/jumbo v2, "TD-SCDMA"

    goto/16 :goto_1

    .line 402
    :cond_11
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    goto/16 :goto_1

    .line 408
    .end local v5    # "voiceNetworkType":Ljava/lang/String;
    :cond_12
    if-eqz v0, :cond_15

    .line 409
    iget-object v6, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 410
    const-string/jumbo v6, "SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNetworkType() => actualDataNetworkType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_13
    :goto_3
    const-string/jumbo v6, "VZW"

    sget-object v7, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 419
    const-string/jumbo v6, "false"

    const-string/jumbo v7, "ro.ril.svlte1x"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 420
    iget-object v6, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_14

    .line 421
    const-string/jumbo v6, "LTE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 419
    if-eqz v6, :cond_14

    .line 422
    const-string/jumbo v2, "1x RTT"

    .line 424
    :cond_14
    const-string/jumbo v6, "SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNetworkType() => VZW svlte1x : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 411
    :cond_15
    if-eqz v1, :cond_13

    .line 412
    iget-object v6, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 413
    const-string/jumbo v6, "SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNetworkType() => actualVoiceNetworkType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 425
    :cond_16
    const-string/jumbo v6, "OMN"

    sget-object v7, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string/jumbo v6, "O2U"

    sget-object v7, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string/jumbo v6, "XEC"

    sget-object v7, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string/jumbo v6, "EVR"

    sget-object v7, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string/jumbo v6, "DCM"

    sget-object v7, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 426
    :cond_17
    const-string/jumbo v6, "LTE"

    const-string/jumbo v7, "4G"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 427
    const-string/jumbo v6, "SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNetworkType() => 4G(EUR) : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private updatePhoneInfos()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 692
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_2

    .line 695
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 694
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 696
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 697
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    .line 696
    if-eqz v1, :cond_2

    .line 698
    if-nez v0, :cond_0

    .line 699
    const-string/jumbo v1, "SimStatus"

    const-string/jumbo v2, "Unable to locate a phone object for the given Subscription ID."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void

    .line 703
    :cond_0
    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 705
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_1

    .line 706
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/SimStatus;->setRssiNoti(I)V

    .line 707
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 710
    :cond_1
    new-instance v1, Lcom/android/settings/deviceinfo/SimStatus$4;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/deviceinfo/SimStatus$4;-><init>(Lcom/android/settings/deviceinfo/SimStatus;I)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 691
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    return-void
.end method

.method private updatePreference()V
    .locals 4

    .prologue
    .line 647
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 649
    const-string/jumbo v1, "br"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 650
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 649
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 655
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 654
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 657
    .local v0, "carrierConfig":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "show_iccid_in_sim_status_bool"

    .line 656
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowICCID:Z

    .line 686
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-nez v1, :cond_1

    .line 687
    const-string/jumbo v1, "latest_area_info"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 646
    :cond_1
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const v8, 0x7f0b19fc

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/16 v5, -0x71

    const/4 v6, 0x0

    .line 494
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 495
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b114e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 518
    :goto_0
    const-string/jumbo v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_UseChameleon"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    invoke-static {}, Lcom/android/settings/Utils;->isSupportChameleonRoaming()Z

    move-result v2

    .line 521
    if-eqz v2, :cond_1

    .line 524
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 525
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b1145

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_1
    :goto_1
    const-string/jumbo v2, "operator_name"

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void

    .line 499
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b1141

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 504
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v8, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 508
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b1142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 511
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b1144

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v8, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 527
    :cond_2
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b1146

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 282
    const/16 v0, 0x2b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mContext:Landroid/content/Context;

    .line 181
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    .line 183
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 184
    const-string/jumbo v0, "carrier_config"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    .line 189
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->addPreferencesFromResource(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    .line 192
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b1130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 194
    const-string/jumbo v0, "signal_strength"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    .line 178
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 200
    iget-object v9, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    if-nez v9, :cond_1

    .line 201
    iput-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 243
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v8

    return-object v8

    .line 203
    :cond_1
    iget-object v9, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    :cond_2
    iput-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 205
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 206
    const v8, 0x7f040138

    invoke-virtual {p1, v8, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 208
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f1103ee

    .line 207
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 209
    .local v3, "prefs_container":Landroid/view/ViewGroup;
    invoke-static {p2, v7, v3, v11}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 210
    invoke-super {p0, p1, v3, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 211
    .local v2, "prefs":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 213
    const v8, 0x1020012

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TabHost;

    iput-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    .line 214
    const v8, 0x1020013

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TabWidget;

    iput-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabWidget:Landroid/widget/TabWidget;

    .line 215
    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mListView:Landroid/widget/ListView;

    .line 217
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->setup()V

    .line 218
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 219
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 221
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 222
    iget-object v9, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 223
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 222
    invoke-direct {p0, v10, v8}, Lcom/android/settings/deviceinfo/SimStatus;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 226
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    .line 227
    const v9, 0x1020006

    .line 226
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 228
    .local v4, "simIcon":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mContext:Landroid/content/Context;

    invoke-static {v8, v1}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v0, v8, Landroid/util/DisplayMetrics;->density:F

    .line 230
    .local v0, "SCALE":F
    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v8, v0

    float-to-int v6, v8

    .line 231
    .local v6, "tab_icon_padding":I
    invoke-virtual {v4, v6, v11, v6, v11}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 232
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v8, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    .line 234
    const v9, 0x1020016

    .line 233
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 235
    .local v5, "simName":Landroid/widget/TextView;
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 236
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->getSimName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "SCALE":F
    .end local v4    # "simIcon":Landroid/widget/ImageView;
    .end local v5    # "simName":Landroid/widget/TextView;
    .end local v6    # "tab_icon_padding":I
    :cond_3
    return-object v7
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 326
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/SimStatus;->setRssiNoti(I)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 331
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 287
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 289
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    .line 290
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->setRssiNoti(I)V

    .line 291
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePreference()V

    .line 292
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 293
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 294
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateDataState()V

    .line 295
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 296
    const/16 v3, 0x141

    .line 295
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 299
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 301
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 300
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "getLatestIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 306
    const-string/jumbo v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 305
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 318
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateMmscServer()V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateSecAddtionalPreferences()V

    .line 286
    return-void

    .line 311
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "DCM"

    sget-object v2, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    :cond_2
    const-string/jumbo v1, "signal_strength"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 314
    :cond_3
    const-string/jumbo v1, "latest_area_info"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0a01d0

    const/4 v6, 0x0

    .line 248
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    const-string/jumbo v3, "SimStatus"

    const-string/jumbo v4, "in SimStatus.java onViewCreated()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 256
    .local v2, "titleView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 255
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 261
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 261
    invoke-direct {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    .local v1, "margin_lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 266
    const v5, 0x7f0a04b4

    .line 265
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 263
    invoke-virtual {v1, v6, v3, v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 267
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 268
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 271
    .local v0, "listview":Landroid/widget/ListView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 273
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 277
    .end local v0    # "listview":Landroid/widget/ListView;
    .end local v1    # "margin_lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "titleView":Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePhoneInfos()V

    .line 247
    return-void
.end method

.method updateMmscServer()V
    .locals 4

    .prologue
    .line 791
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 792
    const-string/jumbo v1, "ACG"

    sget-object v2, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mms_domain"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "mmsc_server":Ljava/lang/String;
    const-string/jumbo v1, "SimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACG MMSC server : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    if-eqz v0, :cond_0

    .line 796
    const-string/jumbo v1, "mmsc_server_acg"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    .end local v0    # "mmsc_server":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ACG"

    sget-object v2, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 800
    const-string/jumbo v1, "mmsc_server_acg"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 790
    :cond_1
    return-void
.end method

.method updateSecAddtionalPreferences()V
    .locals 2

    .prologue
    .line 781
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    const-string/jumbo v0, "sim_lock_status_kddi"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 784
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_UseChameleon"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    invoke-static {}, Lcom/android/settings/Utils;->isSupportChameleonRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    :cond_1
    :goto_0
    return-void

    .line 786
    :cond_2
    const-string/jumbo v0, "roaming_state"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 15
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 541
    iget-object v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v11, :cond_b

    .line 542
    iget-object v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    .line 543
    .local v9, "state":I
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 546
    .local v5, "r":Landroid/content/res/Resources;
    iget-object v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    .line 547
    .local v10, "subId":I
    iget-object v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    .line 548
    .local v8, "slotId":I
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 550
    .local v4, "phoneId":I
    iget-boolean v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mImsRegistered:Z

    if-eqz v11, :cond_0

    .line 551
    iget-object v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const v13, 0x7f0b19fc

    invoke-virtual {v5, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 552
    return-void

    .line 557
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v7

    .line 558
    .local v7, "signalDbm":I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v6

    .line 559
    .local v6, "signalAsu":I
    const-string/jumbo v11, "ro.baseband"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "baseband":Ljava/lang/String;
    const-string/jumbo v11, "SimStatus"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SimStatus] id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " baseband : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " D/A : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 561
    const-string/jumbo v13, "/"

    .line 560
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 561
    const-string/jumbo v13, " state : "

    .line 560
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v11, 0x1

    if-eq v11, v9, :cond_1

    .line 565
    const/4 v11, 0x2

    if-ne v11, v9, :cond_4

    .line 568
    :cond_1
    const-string/jumbo v11, "SimStatus"

    const-string/jumbo v12, "[SimStatus] out of service"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/16 v7, -0x71

    .line 570
    const/4 v6, 0x0

    .line 571
    iget-object v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 572
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 571
    const v13, 0x7f0b19fc

    invoke-virtual {v5, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 573
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "DCM"

    sget-object v12, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 574
    :cond_2
    const-string/jumbo v11, "signal_strength"

    invoke-direct {p0, v11}, Lcom/android/settings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 576
    :cond_3
    return-void

    .line 566
    :cond_4
    const/4 v11, 0x3

    if-eq v11, v9, :cond_1

    .line 580
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 581
    if-nez v8, :cond_e

    const-string/jumbo v11, "gsm.sim.selectnetwork"

    const-string/jumbo v12, "CDMA"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "CDMA"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v7

    .line 583
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v6

    .line 584
    const-string/jumbo v11, "SimStatus"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SimStatus] CTC CDMA D/A : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_5
    :goto_0
    const/4 v11, -0x1

    if-ne v11, v7, :cond_6

    .line 598
    const/4 v7, 0x0

    .line 601
    :cond_6
    const/4 v11, -0x1

    if-ne v11, v6, :cond_7

    .line 602
    const/4 v6, 0x0

    .line 606
    :cond_7
    if-eqz v2, :cond_12

    const-string/jumbo v11, "msm"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string/jumbo v11, "mdm"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 608
    :cond_8
    const-string/jumbo v11, "SimStatus"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SimStatus] baseband : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v11, -0x1

    if-eq v11, v6, :cond_9

    const/16 v11, 0x63

    if-ne v11, v6, :cond_11

    .line 610
    :cond_9
    :goto_1
    const/16 v7, -0x71

    .line 611
    const/4 v6, 0x0

    .line 630
    :cond_a
    :goto_2
    const-string/jumbo v11, "SimStatus"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SimStatus] updateSignalStrength : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 631
    const v13, 0x7f0b1151

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 630
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 631
    const-string/jumbo v13, "   "

    .line 630
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 632
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 630
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 632
    const-string/jumbo v13, " "

    .line 630
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 633
    const v13, 0x7f0b1152

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 630
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    .line 637
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 636
    const v13, 0x7f0b19fc

    invoke-virtual {v5, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 640
    .end local v2    # "baseband":Ljava/lang/String;
    .end local v4    # "phoneId":I
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "signalAsu":I
    .end local v7    # "signalDbm":I
    .end local v8    # "slotId":I
    .end local v9    # "state":I
    .end local v10    # "subId":I
    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v11

    if-nez v11, :cond_c

    const-string/jumbo v11, "DCM"

    sget-object v12, Lcom/android/settings/deviceinfo/SimStatus;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 641
    :cond_c
    const-string/jumbo v11, "signal_strength"

    invoke-direct {p0, v11}, Lcom/android/settings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 540
    :cond_d
    return-void

    .line 585
    .restart local v2    # "baseband":Ljava/lang/String;
    .restart local v4    # "phoneId":I
    .restart local v5    # "r":Landroid/content/res/Resources;
    .restart local v6    # "signalAsu":I
    .restart local v7    # "signalDbm":I
    .restart local v8    # "slotId":I
    .restart local v9    # "state":I
    .restart local v10    # "subId":I
    :cond_e
    if-nez v8, :cond_f

    const-string/jumbo v11, "gsm.sim.selectnetwork"

    const-string/jumbo v12, "CDMA"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "CDMA"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 586
    :cond_f
    const/4 v11, 0x1

    if-ne v8, v11, :cond_5

    .line 587
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v7

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v6

    .line 589
    const-string/jumbo v11, "SimStatus"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SimStatus] CTC GSM D/A : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 609
    :cond_11
    const/16 v11, 0xff

    if-ne v11, v6, :cond_a

    goto/16 :goto_1

    .line 614
    :cond_12
    iget-object v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v11, "gsm.network.type"

    iget-object v12, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    invoke-static {v4, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, "networkType":Ljava/lang/String;
    const-string/jumbo v11, "SimStatus"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SimStatus] networkType("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11, v10}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 617
    .local v0, "actualDataNetworkType":I
    iget-object v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11, v10}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 618
    .local v1, "actualVoiceNetworkType":I
    if-eqz v0, :cond_15

    .line 619
    iget-object v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 620
    const-string/jumbo v11, "SimStatus"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SimStatus] networkType data("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_13
    :goto_3
    const/4 v11, -0x1

    if-eq v11, v6, :cond_14

    const/16 v11, 0x63

    if-ne v11, v6, :cond_16

    .line 626
    :cond_14
    :goto_4
    const/16 v7, -0x71

    .line 627
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 621
    :cond_15
    if-eqz v1, :cond_13

    .line 622
    iget-object v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 623
    const-string/jumbo v11, "SimStatus"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SimStatus] networkType voice("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 625
    :cond_16
    const/16 v11, 0xff

    if-eq v11, v6, :cond_14

    iget-object v11, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    const-string/jumbo v11, "Unknown"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_4
.end method
