.class public Lcom/android/settings/datausage/BillingCycleSettings;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataUsageEditController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/BillingCycleSettings$1;,
        Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;
    }
.end annotation


# static fields
.field private static sBillingCycle:I

.field private static sDataLimit:I

.field private static sDataWarning:I

.field private static sSetDataLimit:I


# instance fields
.field private mBillingCycle:Landroid/preference/Preference;

.field private mBytesEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

.field private mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

.field private mDataLimit:Landroid/preference/Preference;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataWarning:Landroid/preference/Preference;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnableDataLimit:Landroid/preference/SwitchPreference;

.field private mEnableDataWarning:Landroid/preference/SwitchPreference;

.field private mIsSPR:Z

.field private mIsTMB:Z

.field private mIsVZW:Z

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/BillingCycleSettings;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->bixbyGetCycle()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/BillingCycleSettings;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->bixbyGetByte()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/datausage/BillingCycleSettings;I)V
    .locals 0
    .param p1, "date"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings;->bixbySetCycle(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/datausage/BillingCycleSettings;JZ)V
    .locals 1
    .param p1, "bytes"    # J
    .param p3, "isLimit"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/datausage/BillingCycleSettings;->bixbySetDataWarning(JZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/datausage/BillingCycleSettings;J)V
    .locals 1
    .param p1, "limitBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 90
    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsTMB:Z

    .line 95
    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 96
    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 693
    new-instance v0, Lcom/android/settings/datausage/BillingCycleSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/BillingCycleSettings$1;-><init>(Lcom/android/settings/datausage/BillingCycleSettings;)V

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 892
    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    .line 905
    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBytesEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    .line 63
    return-void
.end method

.method private bixbyGetByte()J
    .locals 2

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBytesEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBytesEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-virtual {v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->bixbyGetByte()J

    move-result-wide v0

    return-wide v0

    .line 944
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private bixbyGetCycle()I
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-virtual {v0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->bixbyGetCycle()I

    move-result v0

    return v0

    .line 902
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private bixbySetCycle(I)V
    .locals 1
    .param p1, "date"    # I

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->bixbySetCycle(I)V

    .line 894
    :cond_0
    return-void
.end method

.method private bixbySetDataWarning(JZ)V
    .locals 13
    .param p1, "bytes"    # J
    .param p3, "isLimit"    # Z

    .prologue
    const-wide/16 v10, -0x1

    .line 913
    iget-object v6, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v6, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 914
    .local v0, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 916
    .local v1, "template":Landroid/net/NetworkTemplate;
    const-string/jumbo v6, "BillingCycleSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set warning byte"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    long-to-float v6, p1

    const/high16 v7, 0x53800000

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 918
    const-wide p1, 0x10000000000L

    .line 921
    :cond_0
    if-eqz v1, :cond_2

    .line 922
    if-eqz p3, :cond_3

    .line 923
    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v4

    .line 924
    .local v4, "warning_value":J
    cmp-long v6, v4, v10

    if-eqz v6, :cond_1

    cmp-long v6, v4, p1

    if-lez v6, :cond_1

    .line 925
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 927
    :cond_1
    const-string/jumbo v6, "BillingCycleSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPolicyLimitBytes() limitBytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 938
    .end local v4    # "warning_value":J
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 912
    return-void

    .line 930
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    .line 931
    .local v2, "limit_value":J
    cmp-long v6, v2, v10

    if-eqz v6, :cond_4

    cmp-long v6, v2, p1

    if-gez v6, :cond_4

    .line 932
    move-wide p1, v2

    .line 934
    :cond_4
    const-string/jumbo v6, "BillingCycleSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPolicyWarningBytes() WarningBytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_0
.end method

.method private getDefaultWarningBytes()J
    .locals 6

    .prologue
    .line 212
    const/4 v1, 0x2

    .line 213
    .local v1, "warningBytes":I
    const-string/jumbo v2, "ro.csc.sales_code"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    const-string/jumbo v2, "BillingCycleSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDefaultWarningBytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    int-to-long v2, v1

    const-wide/32 v4, 0x40000000

    mul-long/2addr v2, v4

    return-wide v2

    .line 216
    :cond_1
    const-string/jumbo v2, "VZW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    const/4 v1, 0x2

    .line 220
    goto :goto_0

    .line 216
    :cond_2
    const-string/jumbo v2, "SPR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    const/16 v1, 0x32

    .line 225
    goto :goto_0

    .line 216
    :cond_3
    const-string/jumbo v2, "SKC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 231
    :cond_4
    const/4 v1, 0x6

    .line 232
    goto :goto_0

    .line 216
    :cond_5
    const-string/jumbo v2, "KTC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "LUC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "KOO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "TMB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 237
    :cond_6
    const/16 v1, 0x64

    .line 238
    goto :goto_0

    .line 216
    :cond_7
    const-string/jumbo v2, "TFN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "TMK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 241
    const/4 v1, 0x2

    .line 242
    goto :goto_0
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 331
    const-string/jumbo v0, "BillingCycleSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPolicyLimitBytes() limitBytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 333
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 330
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 337
    const-string/jumbo v0, "BillingCycleSettings"

    const-string/jumbo v1, "setPolicyWarningBytes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 339
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 336
    return-void
.end method

.method private updatePrefs()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 165
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v5}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 166
    .local v2, "policy":Landroid/net/NetworkPolicy;
    const/4 v1, 0x0

    .line 167
    .local v1, "isDataLimitRestrict":Z
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 168
    .local v0, "formatter":Ljava/util/Formatter;
    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "%02d"

    new-array v8, v4, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 169
    iget v3, v2, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 168
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    aput-object v3, v6, v9

    const v3, 0x7f0b1e3a

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/datausage/BillingCycleSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    if-eqz v2, :cond_2

    iget-wide v6, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v6, v12

    if-eqz v3, :cond_2

    .line 171
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 173
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 180
    :goto_1
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    :cond_0
    :goto_2
    if-eqz v1, :cond_4

    .line 185
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 186
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 202
    :goto_3
    if-eqz v2, :cond_6

    iget-wide v6, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v6, v12

    if-nez v3, :cond_6

    .line 203
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 164
    :goto_4
    return-void

    :cond_1
    move v3, v4

    .line 169
    goto :goto_0

    .line 175
    :cond_2
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 177
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 181
    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    .line 188
    :cond_4
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 189
    if-eqz v2, :cond_5

    iget-wide v6, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v3, v6, v12

    if-eqz v3, :cond_5

    .line 190
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 192
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 194
    :cond_5
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 196
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 206
    :cond_6
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object v0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 107
    new-instance v2, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "network_template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 112
    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->addPreferencesFromResource(I)V

    .line 113
    const-string/jumbo v2, "billing_cycle"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    .line 114
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 115
    const-string/jumbo v2, "set_data_warning"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/preference/SwitchPreference;

    .line 116
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    const-string/jumbo v2, "data_warning"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    .line 118
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 119
    const-string/jumbo v2, "set_data_limit"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    .line 120
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    const-string/jumbo v2, "data_limit"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    .line 122
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 125
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "sSalesCode":Ljava/lang/String;
    const-string/jumbo v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    .line 127
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    .line 128
    :cond_1
    const-string/jumbo v2, "TMB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "TMK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsTMB:Z

    .line 130
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b05a1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 131
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b05a2

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/BillingCycleSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    :cond_6
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v2, :cond_7

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 136
    const-string/jumbo v3, "enterprise_policy"

    .line 135
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 138
    :cond_7
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_8

    .line 139
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 143
    :cond_8
    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 104
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BillingCycle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v7, 0x0

    const/4 v12, 0x1

    .line 281
    iget-object v8, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    if-ne v8, p1, :cond_6

    .line 282
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 283
    .local v1, "enabled":Z
    if-eqz v1, :cond_5

    .line 285
    iget-boolean v8, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-eqz v8, :cond_1

    .line 286
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)V

    .line 309
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0092

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    sput v8, Lcom/android/settings/datausage/BillingCycleSettings;->sSetDataLimit:I

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/android/settings/datausage/BillingCycleSettings;->sSetDataLimit:I

    if-eqz v1, :cond_0

    const/16 v7, 0x3e8

    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 311
    return v12

    .line 288
    :cond_1
    iget-object v8, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v8, v8, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v9, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v8, v9}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v6

    .line 289
    .local v6, "policy":Landroid/net/NetworkPolicy;
    if-nez v6, :cond_2

    .line 290
    const-wide v8, 0x140000000L

    invoke-direct {p0, v8, v9}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    .line 291
    return v12

    .line 294
    :cond_2
    iget-wide v8, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-double v8, v8

    const-wide v10, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v8, v10

    double-to-long v4, v8

    .line 297
    .local v4, "minLimitBytes":J
    const/4 v0, 0x5

    .line 298
    .local v0, "defaultLimitGB":I
    iget-boolean v8, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    if-eqz v8, :cond_3

    const/16 v0, 0x50

    .line 299
    :cond_3
    iget-boolean v8, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsTMB:Z

    if-eqz v8, :cond_4

    const/16 v0, 0x64

    .line 301
    :cond_4
    int-to-long v8, v0

    const-wide/32 v10, 0x40000000

    mul-long/2addr v8, v10

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 302
    .local v2, "limitBytes":J
    const-wide v8, 0x1900000000L

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 303
    invoke-direct {p0, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    goto :goto_0

    .line 307
    .end local v0    # "defaultLimitGB":I
    .end local v2    # "limitBytes":J
    .end local v4    # "minLimitBytes":J
    .end local v6    # "policy":Landroid/net/NetworkPolicy;
    :cond_5
    invoke-direct {p0, v10, v11}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    goto :goto_0

    .line 312
    .end local v1    # "enabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_6
    iget-object v8, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataWarning:Landroid/preference/SwitchPreference;

    if-ne v8, p1, :cond_8

    .line 313
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 314
    .restart local v1    # "enabled":Z
    if-eqz v1, :cond_7

    .line 316
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getDefaultWarningBytes()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    .line 320
    :goto_1
    return v12

    .line 318
    :cond_7
    invoke-direct {p0, v10, v11}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyWarningBytes(J)V

    goto :goto_1

    .line 322
    .end local v1    # "enabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_8
    return v7
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 255
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 256
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mCycleEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/BillingCycleSettings;->sBillingCycle:I

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/datausage/BillingCycleSettings;->sBillingCycle:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 259
    return v2

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 262
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;Z)Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBytesEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/BillingCycleSettings;->sDataWarning:I

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/datausage/BillingCycleSettings;->sDataWarning:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 265
    return v2

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 267
    invoke-static {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;Z)Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBytesEditorFragment:Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/BillingCycleSettings;->sDataLimit:I

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/datausage/BillingCycleSettings;->sDataLimit:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 271
    return v2

    .line 275
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 153
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "BillingCycle"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public updateDataUsage()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 353
    return-void
.end method
