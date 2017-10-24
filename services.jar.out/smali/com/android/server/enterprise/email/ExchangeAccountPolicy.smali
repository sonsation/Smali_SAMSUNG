.class public Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;
.source "ExchangeAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;,
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$IntentFieldName;,
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;,
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;
    }
.end annotation


# static fields
.field private static final FOCUS_PKG_NAME:Ljava/lang/String; = "com.samsung.android.focus"

.field private static final NOTE_AUTHORITY:Ljava/lang/String; = "note"

.field private static final PERMISSION_SMIME_CERTIFICATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

.field private static final PERMISSION_SMIME_CERTIFICATE_OLD:Ljava/lang/String; = "android.permission.sec.SMIME_CERTIFICATE"

.field private static final RESTART_DELAY:I = 0x1388

.field private static final RESTART_EMAIL_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExchangeAccountPolicy"

.field private static final TASK_AUTHORITY:Ljava/lang/String; = "tasks"

.field private static mDeviceId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mExchangeServiceDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mRestartExtendDelay:Z

.field private mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

.field private mSMIMEOldIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;

.field private mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private preCallingUid:I


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z
    .locals 1
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "accId"    # J
    .param p5, "state"    # Z
    .param p6, "policy"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/samsung/android/knox/ContextInfo;JIIZ)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "userId"    # I
    .param p5, "type"    # I
    .param p6, "onlyupdateDB"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(I)Ljava/lang/String;
    .locals 1
    .param p0, "userId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;JII)V
    .locals 1
    .param p1, "accId"    # J
    .param p3, "status"    # I
    .param p4, "type"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendSMIMEAliasResultIntent(JII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;-><init>()V

    .line 99
    iput-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    .line 105
    iput-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 152
    iput-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEOldIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;

    .line 153
    iput-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    .line 192
    iput-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 1632
    new-instance v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    .line 156
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 157
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 160
    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v3, "oldFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.samsung.edm.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEOldIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;

    .line 163
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEOldIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "android.permission.sec.SMIME_CERTIFICATE"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 165
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    new-instance v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    .line 167
    const-string/jumbo v0, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v8, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 170
    const-string/jumbo v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "success to add receiver"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v3    # "oldFilter":Landroid/content/IntentFilter;
    .end local v7    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    const/4 v10, 0x0

    .line 178
    .local v10, "containerId":I
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 179
    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/ComponentName;

    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-direct {v13, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v13, "syncMgrCn":Landroid/content/ComponentName;
    if-eqz v12, :cond_0

    .line 182
    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 183
    const-string/jumbo v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "Enabling EAS ExchangeService"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    invoke-virtual {v12, v13, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_0
    :goto_1
    return-void

    .line 172
    .end local v10    # "containerId":I
    :catch_0
    move-exception v11

    .line 173
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "Regist BroadCast failed : "

    invoke-static {v0, v1, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 187
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v10    # "containerId":I
    :catch_1
    move-exception v11

    .line 188
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "Constructor failed : "

    invoke-static {v0, v1, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private adminSatisfiesForceSMIMECertificateRules(IJZI)Z
    .locals 14
    .param p1, "adminUid"    # I
    .param p2, "accId"    # J
    .param p4, "set"    # Z
    .param p5, "type"    # I

    .prologue
    .line 3188
    if-eqz p4, :cond_4

    .line 3190
    const/4 v7, 0x1

    .line 3194
    .local v7, "ret":Z
    const/4 v12, 0x1

    new-array v1, v12, [Ljava/lang/String;

    const-string/jumbo v12, "adminUid"

    const/4 v13, 0x0

    aput-object v12, v1, v13

    .line 3196
    .local v1, "columns":[Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 3197
    .local v8, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 3198
    .local v10, "userId":I
    const/4 v12, 0x0

    invoke-static {v12, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v12

    .line 3199
    const-string/jumbo v13, "#SelectClause#"

    .line 3198
    invoke-virtual {v8, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3200
    const-string/jumbo v12, "AccountId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3201
    const/4 v12, 0x3

    move/from16 v0, p5

    if-ne v0, v12, :cond_1

    .line 3202
    const-string/jumbo v9, "(ForceSmimeCertForSigning=1 OR ForceSmimeCert=1)"

    .line 3204
    .local v9, "str":Ljava/lang/String;
    const-string/jumbo v12, "#SelectClause#"

    invoke-virtual {v8, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    :goto_0
    iget-object v12, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3217
    const-string/jumbo v13, "ExchangeAccountTable"

    .line 3216
    invoke-virtual {v12, v13, v1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    .line 3219
    .local v11, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3270
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "userId":I
    :cond_0
    :goto_1
    return v7

    .line 3205
    .end local v11    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v10    # "userId":I
    :cond_1
    const/4 v12, 0x2

    move/from16 v0, p5

    if-ne v0, v12, :cond_2

    .line 3206
    const-string/jumbo v9, "(ForceSmimeCertForEncryption=1 OR ForceSmimeCert=1)"

    .line 3208
    .restart local v9    # "str":Ljava/lang/String;
    const-string/jumbo v12, "#SelectClause#"

    invoke-virtual {v8, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3210
    .end local v9    # "str":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "((ForceSmimeCertForEncryption=1 AND ForceSmimeCertForSigning=1) OR (ForceSmimeCert=1))"

    .line 3213
    .restart local v9    # "str":Ljava/lang/String;
    const-string/jumbo v12, "#SelectClause#"

    invoke-virtual {v8, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3221
    .restart local v11    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3222
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v12, "adminUid"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3224
    .local v3, "forcedAdminUid":I
    if-eq v3, p1, :cond_0

    .line 3225
    const/4 v7, 0x0

    goto :goto_1

    .line 3230
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "forcedAdminUid":I
    .end local v7    # "ret":Z
    .end local v8    # "selectionValues":Landroid/content/ContentValues;
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "userId":I
    .end local v11    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_4
    const/4 v7, 0x0

    .line 3234
    .restart local v7    # "ret":Z
    const/4 v12, 0x3

    new-array v1, v12, [Ljava/lang/String;

    const-string/jumbo v12, "ForceSmimeCert"

    const/4 v13, 0x0

    aput-object v12, v1, v13

    .line 3235
    const-string/jumbo v12, "ForceSmimeCertForEncryption"

    const/4 v13, 0x1

    aput-object v12, v1, v13

    .line 3236
    const-string/jumbo v12, "ForceSmimeCertForSigning"

    const/4 v13, 0x2

    aput-object v12, v1, v13

    .line 3238
    .restart local v1    # "columns":[Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 3239
    .restart local v8    # "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v12, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3240
    const-string/jumbo v12, "AccountId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3242
    iget-object v12, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3243
    const-string/jumbo v13, "ExchangeAccountTable"

    .line 3242
    invoke-virtual {v12, v13, v1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    .line 3245
    .restart local v11    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 3248
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3249
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v12, "ForceSmimeCert"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3250
    .local v4, "forcedCert":I
    const-string/jumbo v12, "ForceSmimeCertForEncryption"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3251
    .local v5, "forcedEncryptCert":I
    const-string/jumbo v12, "ForceSmimeCertForSigning"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3253
    .local v6, "forcedSignCert":I
    const/4 v12, 0x3

    move/from16 v0, p5

    if-ne v0, v12, :cond_6

    .line 3254
    const/4 v12, 0x1

    if-eq v6, v12, :cond_5

    const/4 v12, 0x1

    if-ne v4, v12, :cond_0

    .line 3255
    :cond_5
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 3257
    :cond_6
    const/4 v12, 0x2

    move/from16 v0, p5

    if-ne v0, v12, :cond_8

    .line 3258
    const/4 v12, 0x1

    if-eq v5, v12, :cond_7

    const/4 v12, 0x1

    if-ne v4, v12, :cond_0

    .line 3259
    :cond_7
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 3262
    :cond_8
    const/4 v12, 0x1

    if-ne v5, v12, :cond_9

    const/4 v12, 0x1

    if-ne v6, v12, :cond_9

    .line 3264
    :goto_2
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 3263
    :cond_9
    const/4 v12, 0x1

    if-ne v4, v12, :cond_0

    goto :goto_2
.end method

.method private convertUcmUri(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "storageName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 2976
    move-object v5, p3

    .line 2978
    .local v5, "modifiedAlias":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2979
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2980
    const/4 v1, 0x0

    .line 2981
    .local v1, "credentialStorage":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v3

    .line 2982
    .local v3, "csList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    if-eqz v3, :cond_0

    .line 2983
    const/4 v6, 0x0

    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v3, v6

    .line 2984
    .local v2, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    if-eqz v2, :cond_2

    .line 2985
    iget-object v8, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 2984
    if-eqz v8, :cond_2

    .line 2986
    move-object v1, v2

    .line 2992
    .end local v1    # "credentialStorage":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .end local v2    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_0
    if-eqz v1, :cond_3

    .line 2993
    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v6, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 2994
    .local v0, "UcmUriBuilder":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v4

    .line 2995
    .local v4, "csUri":Ljava/lang/String;
    move-object v5, v4

    .line 3001
    .end local v0    # "UcmUriBuilder":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v3    # "csList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .end local v4    # "csUri":Ljava/lang/String;
    .end local v5    # "modifiedAlias":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v5

    .line 2983
    .restart local v1    # "credentialStorage":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .restart local v2    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .restart local v3    # "csList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .restart local v5    # "modifiedAlias":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2997
    .end local v1    # "credentialStorage":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .end local v2    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_3
    const/4 v5, 0x0

    .local v5, "modifiedAlias":Ljava/lang/String;
    goto :goto_1
.end method

.method private enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    .line 204
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.sec.MDM_EXCHANGE"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 205
    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 204
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 206
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 207
    .local v0, "callingUid":I
    iget v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    if-eq v2, v0, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->setPackageNameForUid(ILjava/lang/String;)V

    .line 210
    iput v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    .line 211
    const-string/jumbo v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Calling UID changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " callingUid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "storageName"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v1

    .line 227
    .local v1, "credentialsList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    if-eqz v1, :cond_0

    .line 228
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 229
    .local v0, "credential":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    if-eqz v0, :cond_1

    .line 230
    iget-object v4, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 229
    if-eqz v4, :cond_1

    .line 231
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 220
    .end local v0    # "credential":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .end local v1    # "credentialsList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_0
    return-void

    .line 228
    .restart local v0    # "credential":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .restart local v1    # "credentialsList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Lcom/samsung/android/knox/accounts/Account;
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "info"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p3, "userID"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1302
    const-string/jumbo v7, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fillInExchangeAccountData() : accId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , userID =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1305
    .local v4, "token":J
    new-instance v0, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    .line 1308
    .local v0, "acc":Lcom/samsung/android/knox/accounts/Account;
    :try_start_0
    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v7, v0, Lcom/samsung/android/knox/accounts/Account;->id:I

    .line 1309
    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    .line 1310
    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    .line 1311
    const-string/jumbo v7, "0"

    iput-object v7, v0, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    .line 1312
    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    iput v7, v0, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    .line 1313
    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v7, v0, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    .line 1314
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    .line 1315
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    .line 1316
    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v7, v0, Lcom/samsung/android/knox/accounts/Account;->flags:I

    .line 1317
    iget-boolean v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v7, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    .line 1318
    iget-boolean v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    if-eqz v7, :cond_0

    :goto_0
    iput-boolean v3, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    .line 1319
    iget-boolean v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v3, v0, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    .line 1320
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    .line 1321
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    .line 1322
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    .line 1323
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    .line 1324
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    .line 1325
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    .line 1326
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->peakDays:I

    .line 1327
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->peakStartMinute:I

    .line 1328
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->peakEndMinute:I

    .line 1329
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->peakSyncSchedule:I

    .line 1330
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->offPeakSyncSchedule:I

    .line 1331
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->roamingSyncSchedule:I

    .line 1332
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->syncCalendarAge:I

    .line 1333
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->emailBodyTruncationSize:I

    .line 1334
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->emailRoamingBodyTruncationSize:I

    .line 1335
    new-instance v1, Landroid/accounts/Account;

    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    .line 1336
    const/4 v6, 0x1

    invoke-static {v6, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v6

    .line 1335
    invoke-direct {v1, v3, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    .local v1, "acct":Landroid/accounts/Account;
    const-string/jumbo v3, "com.android.contacts"

    .line 1337
    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/samsung/android/knox/accounts/Account;->syncContacts:Z

    .line 1340
    const-string/jumbo v3, "com.android.calendar"

    .line 1339
    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/samsung/android/knox/accounts/Account;->syncCalendar:Z

    .line 1342
    const-string/jumbo v3, "tasks"

    .line 1341
    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/samsung/android/knox/accounts/Account;->syncTasks:Z

    .line 1344
    const-string/jumbo v3, "note"

    .line 1343
    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/samsung/android/knox/accounts/Account;->syncNotes:Z

    .line 1346
    new-instance v3, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v3}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 1347
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 v6, -0x1

    iput v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 1348
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    const-string/jumbo v6, "eas"

    iput-object v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1349
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1350
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 v6, 0x0

    iput v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1351
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1352
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1353
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1354
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-boolean v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 1355
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "\\"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1357
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1358
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1359
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    const-wide/16 v6, -0x1

    iput-wide v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 1361
    new-instance v3, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v3}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 1362
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 v6, -0x1

    iput v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 1363
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    const-string/jumbo v6, "eas"

    iput-object v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1364
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1365
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 v6, 0x0

    iput v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1366
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1367
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1368
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1369
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-boolean v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 1370
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "\\"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1372
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1373
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1374
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    const-wide/16 v6, -0x1

    iput-wide v6, v3, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1382
    .end local v1    # "acct":Landroid/accounts/Account;
    :goto_3
    return-object v0

    :cond_0
    move v3, v6

    .line 1318
    goto/16 :goto_0

    .line 1356
    .restart local v1    # "acct":Landroid/accounts/Account;
    :cond_1
    :try_start_1
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_1

    .line 1371
    :cond_2
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1376
    .end local v1    # "acct":Landroid/accounts/Account;
    :catch_0
    move-exception v2

    .line 1377
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "ExchangeAccountPolicy"

    const-string/jumbo v6, "fillInExchangeAccountData() : failed."

    invoke-static {v3, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1379
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 1378
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 1379
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    throw v3
.end method

.method private getDefaultValueState(Ljava/lang/String;)Z
    .locals 4
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 2169
    const/4 v0, 0x0

    .line 2170
    .local v0, "ret":Z
    const-string/jumbo v1, "ReqSigSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2171
    const/4 v0, 0x0

    .line 2187
    :cond_0
    :goto_0
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDefaultValueState() : policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    return v0

    .line 2172
    :cond_1
    const-string/jumbo v1, "ReqEncryptSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2173
    const/4 v0, 0x0

    goto :goto_0

    .line 2174
    :cond_2
    const-string/jumbo v1, "ForceSmimeCert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2175
    const/4 v0, 0x0

    goto :goto_0

    .line 2176
    :cond_3
    const-string/jumbo v1, "AllowSettingChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2177
    const/4 v0, 0x1

    goto :goto_0

    .line 2178
    :cond_4
    const-string/jumbo v1, "AllowNotificationChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2179
    const/4 v0, 0x1

    goto :goto_0

    .line 2180
    :cond_5
    const-string/jumbo v1, "ForceSmimeCertForEncryption"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2181
    const/4 v0, 0x0

    goto :goto_0

    .line 2182
    :cond_6
    const-string/jumbo v1, "ForceSmimeCertForSigning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2183
    const/4 v0, 0x0

    goto :goto_0

    .line 2184
    :cond_7
    const-string/jumbo v1, "AttachmentEnable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2185
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDefaultValueStateInteger(Ljava/lang/String;)I
    .locals 4
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 2191
    const/4 v0, 0x0

    .line 2192
    .local v0, "ret":I
    const-string/jumbo v1, "IncomingAttachmentSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2193
    const/4 v0, 0x0

    .line 2204
    :cond_0
    :goto_0
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDefaultValueStateInteger() : policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    return v0

    .line 2194
    :cond_1
    const-string/jumbo v1, "MaxCalendarAgeFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2195
    const/4 v0, 0x0

    goto :goto_0

    .line 2196
    :cond_2
    const-string/jumbo v1, "MaxEmailAgeFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2197
    const/4 v0, 0x0

    goto :goto_0

    .line 2198
    :cond_3
    const-string/jumbo v1, "MaxEmailBodyTruncationSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2199
    const/4 v0, 0x0

    goto :goto_0

    .line 2200
    :cond_4
    const-string/jumbo v1, "MaxEmailHTMLBodyTruncationSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2201
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 197
    const-string/jumbo v1, "enterprise_policy_new"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static getExchangeServiceName(I)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I

    .prologue
    .line 1675
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".exchange.ExchangeService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1678
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".ExchangeService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPolicyState(IJLjava/lang/String;I)Z
    .locals 12
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 2075
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v8

    .line 2076
    .local v8, "ret":Z
    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    .line 2077
    .local v1, "columns":[Ljava/lang/String;
    const/4 v9, 0x0

    aput-object p4, v1, v9

    .line 2079
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2080
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v9, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2081
    const-string/jumbo v9, "userID"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2082
    const-string/jumbo v9, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2083
    const/4 v7, 0x0

    .line 2086
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "ExchangeAccountTable"

    invoke-virtual {v9, v10, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2095
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2096
    :cond_0
    const-string/jumbo v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getPolicyState() : results is default value(null), accId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2097
    const-string/jumbo v11, ", user id = "

    .line 2096
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2097
    const-string/jumbo v11, ", container id = "

    .line 2096
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    return v8

    .line 2090
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v4

    .line 2091
    .local v4, "ex":Ljava/lang/Exception;
    const-string/jumbo v9, "ExchangeAccountPolicy"

    const-string/jumbo v10, "getPolicyState() : Exception while getValuesList from EDMStorageProvider"

    invoke-static {v9, v10, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2092
    return v8

    .line 2100
    .end local v4    # "ex":Ljava/lang/Exception;
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    const-string/jumbo v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getPolicyState() : results = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", accId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2101
    const-string/jumbo v11, ", user id = "

    .line 2100
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2101
    const-string/jumbo v11, ", container id = "

    .line 2100
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v6, 0x0

    .line 2106
    .local v6, "restricterState":Z
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2107
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2108
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2109
    .local v2, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v6, :cond_4

    const-string/jumbo v9, "1"

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2110
    const-string/jumbo v9, "ExchangeAccountPolicy"

    const-string/jumbo v10, "getPolicyState: restricted. "

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    return v6

    .line 2104
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v6    # "restricterState":Z
    :cond_3
    const/4 v6, 0x1

    .restart local v6    # "restricterState":Z
    goto :goto_0

    .line 2109
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_4
    const-string/jumbo v9, "0"

    goto :goto_1

    .line 2115
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_5
    const-string/jumbo v9, "ExchangeAccountPolicy"

    const-string/jumbo v10, "getPolicyState: no restrictData. "

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    if-eqz v6, :cond_6

    const/4 v9, 0x0

    :goto_2
    return v9

    :cond_6
    const/4 v9, 0x1

    goto :goto_2
.end method

.method private getPolicyStateasInteger(IJLjava/lang/String;IZ)I
    .locals 14
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "isMinimum"    # Z

    .prologue
    .line 2120
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueStateInteger(Ljava/lang/String;)I

    move-result v9

    .line 2121
    .local v9, "ret":I
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    .line 2122
    .local v2, "columns":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object p4, v2, v11

    .line 2124
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2125
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v11, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2126
    const-string/jumbo v11, "userID"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2127
    const-string/jumbo v11, "AccountId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2128
    const/4 v8, 0x0

    .line 2130
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "ExchangeAccountTable"

    invoke-virtual {v11, v12, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 2133
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2134
    :cond_0
    return v9

    .line 2136
    :cond_1
    const-string/jumbo v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getPolicyStateasInteger() : results = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", accId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2137
    const-string/jumbo v13, ", user id = "

    .line 2136
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2137
    const-string/jumbo v13, ", container id = "

    .line 2136
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2146
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2147
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    if-eqz p6, :cond_3

    const v7, 0x7fffffff

    .line 2148
    .local v7, "result":I
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2149
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 2150
    .local v3, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 2151
    .local v10, "value":Ljava/lang/Integer;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_2

    .line 2153
    if-eqz p6, :cond_4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, v7, :cond_4

    .line 2154
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    .line 2141
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v7    # "result":I
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v10    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v5

    .line 2142
    .local v5, "ex":Ljava/lang/Exception;
    const-string/jumbo v11, "ExchangeAccountPolicy"

    const-string/jumbo v12, "getPolicyStateasInteger() : Exception while getValuesListasInteger from EDMStorageProvider"

    invoke-static {v11, v12, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2143
    return v9

    .line 2147
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    const/high16 v7, -0x80000000

    .restart local v7    # "result":I
    goto :goto_0

    .line 2155
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v10    # "value":Ljava/lang/Integer;
    :cond_4
    if-nez p6, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v7, :cond_2

    .line 2156
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    .line 2159
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v10    # "value":Ljava/lang/Integer;
    :cond_5
    if-eqz p6, :cond_8

    .line 2160
    const v11, 0x7fffffff

    if-eq v7, v11, :cond_7

    .line 2164
    :cond_6
    :goto_1
    const-string/jumbo v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getPolicyStateasInteger() : result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    return v7

    .line 2160
    :cond_7
    move v7, v9

    goto :goto_1

    .line 2162
    :cond_8
    const/high16 v11, -0x80000000

    if-ne v7, v11, :cond_6

    move v7, v9

    goto :goto_1
.end method

.method private getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .locals 1

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    .line 3481
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3480
    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 3483
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    return-object v0
.end method

.method private isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "credentialStorage"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 3491
    const/4 v0, 0x0

    .line 3492
    .local v0, "result":Z
    const-string/jumbo v1, "ExchangeAccountPolicy"

    const-string/jumbo v2, "In isCredentialStorageManaged..."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3493
    if-nez p2, :cond_0

    .line 3494
    const-string/jumbo v1, "ExchangeAccountPolicy"

    const-string/jumbo v2, "credentialStorage is null!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    return v0

    .line 3497
    :cond_0
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3499
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    .line 3503
    .end local v0    # "result":Z
    :goto_0
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3504
    return v0

    .line 3501
    .restart local v0    # "result":Z
    :cond_1
    const-string/jumbo v1, "ExchangeAccountPolicy"

    const-string/jumbo v2, "UCM service not found!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "mEmailAddress"    # Ljava/lang/String;

    .prologue
    .line 3533
    const/4 v1, 0x1

    .line 3536
    .local v1, "isMDMallowed":Z
    :try_start_0
    const-string/jumbo v3, "email_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/accounts/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v2

    .line 3537
    .local v2, "mService":Lcom/samsung/android/knox/accounts/IEmailPolicy;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3543
    .end local v1    # "isMDMallowed":Z
    .end local v2    # "mService":Lcom/samsung/android/knox/accounts/IEmailPolicy;
    :goto_0
    return v1

    .line 3537
    .restart local v1    # "isMDMallowed":Z
    .restart local v2    # "mService":Lcom/samsung/android/knox/accounts/IEmailPolicy;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 3539
    .end local v2    # "mService":Lcom/samsung/android/knox/accounts/IEmailPolicy;
    :catch_0
    move-exception v0

    .line 3540
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "ExchangeAccountPolicy"

    const-string/jumbo v4, "setMaxEmailBodyTruncationSize() : Failed talking with email policy"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3541
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUCMAllowedAndManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "credentialStorage"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 3487
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->knoxSupportUCM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 3460
    const/4 v2, 0x0

    .line 3461
    .local v2, "ret":Z
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-lez v3, :cond_0

    .line 3462
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3463
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 3464
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v0, :cond_0

    .line 3465
    const/4 v2, 0x1

    .line 3475
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_0
    :goto_0
    return v2

    .line 3469
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 3468
    invoke-static {p1, p2, p3, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v1

    .line 3470
    .local v1, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_0

    .line 3471
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private knoxSupportUCM()Z
    .locals 4

    .prologue
    .line 3508
    const-string/jumbo v1, "ExchangeAccountPolicy"

    const-string/jumbo v2, "In knoxSupportUCM..."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3509
    const/4 v0, 0x0

    .line 3511
    .local v0, "result":Z
    const/4 v0, 0x1

    .line 3512
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Does KNOX support UCM? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    return v0
.end method

.method private putPolicyState(IIJILjava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "accId"    # J
    .param p5, "value"    # I
    .param p6, "policy"    # Ljava/lang/String;

    .prologue
    .line 2058
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2059
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2060
    const-string/jumbo v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2061
    const-string/jumbo v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2062
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2064
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2065
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2066
    const-string/jumbo v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2067
    const-string/jumbo v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2069
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "ExchangeAccountTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 2070
    .local v2, "ret":Z
    const-string/jumbo v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putPolicyState: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , value  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , policy ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    return v2
.end method

.method private putPolicyState(IIJZLjava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "accId"    # J
    .param p5, "state"    # Z
    .param p6, "policy"    # Ljava/lang/String;

    .prologue
    .line 2039
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2040
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2041
    const-string/jumbo v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2042
    const-string/jumbo v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2043
    if-eqz p5, :cond_0

    const-string/jumbo v3, "1"

    :goto_0
    invoke-virtual {v0, p6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2046
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2047
    const-string/jumbo v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2048
    const-string/jumbo v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2050
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "ExchangeAccountTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 2051
    .local v2, "ret":Z
    const-string/jumbo v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putPolicyState: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , state  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , policy ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    return v2

    .line 2043
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v2    # "ret":Z
    :cond_0
    const-string/jumbo v3, "0"

    goto :goto_0
.end method

.method private resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "userId"    # I
    .param p5, "type"    # I
    .param p6, "onlyupdateDB"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3434
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3435
    .local v1, "containerId":I
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3436
    .local v0, "adminUid":I
    move v3, p4

    .line 3437
    .local v3, "userID":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3438
    .local v2, "cv":Landroid/content/ContentValues;
    const/4 v6, 0x2

    if-ne p5, v6, :cond_2

    .line 3439
    const-string/jumbo v6, "ForceSmimeCertForEncryption"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3440
    if-nez p6, :cond_0

    .line 3441
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificateForEncryption(IJI)V

    .line 3453
    :cond_0
    :goto_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3454
    .local v4, "whereValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3455
    const-string/jumbo v6, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3456
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "ExchangeAccountTable"

    invoke-virtual {v6, v7, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v6

    if-lez v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5

    .line 3444
    .end local v4    # "whereValues":Landroid/content/ContentValues;
    :cond_2
    const/4 v6, 0x3

    if-ne p5, v6, :cond_3

    .line 3445
    const-string/jumbo v6, "ForceSmimeCertForSigning"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3446
    if-nez p6, :cond_0

    .line 3447
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificateForSigning(IJI)V

    goto :goto_0

    .line 3450
    :cond_3
    const-string/jumbo v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resetForcedSMIMECertificateInternal() : failed. There is unsupport type requested : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    return v5
.end method

.method private sendReleaseSMIMECertificate(IJI)V
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    .line 2020
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendReleaseSMIMECertificate() : accId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", containerId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.enterprise.email.RELEASE_SMIME_CERTIFICATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2022
    .local v1, "oldIntent":Landroid/content/Intent;
    const-string/jumbo v4, "account_id"

    invoke-virtual {v1, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2024
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_INTERNAL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2025
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    invoke-virtual {v0, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2026
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2028
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2029
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2032
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2019
    return-void

    .line 2031
    :catchall_0
    move-exception v4

    .line 2032
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2031
    throw v4
.end method

.method private sendReleaseSMIMECertificateForEncryption(IJI)V
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    .line 2775
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendReleaseSMIMECertificateForEncryption() : accId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2776
    const-string/jumbo v6, ", containerId = "

    .line 2775
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2776
    const-string/jumbo v6, ", userId = "

    .line 2775
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.enterprise.email.RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2778
    .local v1, "oldIntent":Landroid/content/Intent;
    const-string/jumbo v4, "account_id"

    invoke-virtual {v1, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2780
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2781
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    invoke-virtual {v0, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2782
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2784
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p4}, Landroid/os/UserHandle;-><init>(I)V

    .line 2785
    const-string/jumbo v6, "android.permission.sec.SMIME_CERTIFICATE"

    .line 2784
    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2786
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p4}, Landroid/os/UserHandle;-><init>(I)V

    .line 2787
    const-string/jumbo v6, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    .line 2786
    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2789
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2774
    return-void

    .line 2788
    :catchall_0
    move-exception v4

    .line 2789
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2788
    throw v4
.end method

.method private sendReleaseSMIMECertificateForSigning(IJI)V
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    .line 2741
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendReleaseSMIMECertificateForSigning() : accId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2742
    const-string/jumbo v6, ", containerId = "

    .line 2741
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2742
    const-string/jumbo v6, ", userId = "

    .line 2741
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.enterprise.email.RELEASE_SMIME_CERTIFICATE_FOR_SIGNING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2744
    .local v1, "oldIntent":Landroid/content/Intent;
    const-string/jumbo v4, "account_id"

    invoke-virtual {v1, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2746
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2747
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    invoke-virtual {v0, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2748
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2750
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p4}, Landroid/os/UserHandle;-><init>(I)V

    .line 2751
    const-string/jumbo v6, "android.permission.sec.SMIME_CERTIFICATE"

    .line 2750
    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2752
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p4}, Landroid/os/UserHandle;-><init>(I)V

    .line 2753
    const-string/jumbo v6, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    .line 2752
    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2755
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2740
    return-void

    .line 2754
    :catchall_0
    move-exception v4

    .line 2755
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2754
    throw v4
.end method

.method private sendSMIMEAliasResultIntent(JII)V
    .locals 5
    .param p1, "accId"    # J
    .param p3, "status"    # I
    .param p4, "type"    # I

    .prologue
    .line 3520
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.edm.intent.action.ENFORCE_SMIME_ALIAS_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3521
    .local v1, "intent_old":Landroid/content/Intent;
    const-string/jumbo v2, "account_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3522
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3523
    const-string/jumbo v2, "com.samsung.edm.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3524
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3526
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3527
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3528
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SMIME_RESULT"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3529
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3530
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3519
    return-void
.end method

.method private setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 24
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;
    .param p6, "Action"    # Ljava/lang/String;

    .prologue
    .line 3341
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3342
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setForceSMIMECertificateInternal() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3344
    .local v14, "containerId":I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3345
    .local v5, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v22

    .line 3346
    .local v22, "userID":I
    const/16 v18, 0x0

    .line 3347
    .local v18, "result":I
    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3348
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setForceSMIMECertificateInternal() : No exist accId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    const/4 v4, 0x3

    return v4

    .line 3351
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3352
    :cond_1
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v6, "setForceSMIMECertificateInternal() : certPath is null"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3353
    const/4 v4, 0x1

    return v4

    .line 3355
    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3356
    :cond_3
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v6, "setForceSMIMECertificateInternal() : certPassword is null"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3357
    const/4 v4, 0x2

    return v4

    .line 3360
    :cond_4
    const/4 v9, 0x1

    .line 3361
    .local v9, "type":I
    if-eqz p6, :cond_7

    .line 3362
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3363
    const/4 v9, 0x3

    .line 3372
    :cond_5
    :goto_0
    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IJZI)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3373
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v6, "setForceSMIMECertificateInternal() : a smime certificate has already been enforced on this user"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3375
    return v18

    .line 3364
    :cond_6
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3365
    const/4 v9, 0x2

    goto :goto_0

    .line 3368
    :cond_7
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v6, "setForceSMIMECertificateInternal() : Action is null"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3369
    return v18

    .line 3378
    :cond_8
    monitor-enter p0

    .line 3379
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v10

    .line 3380
    .local v10, "certPasswordID":J
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v12

    .line 3381
    .local v12, "certResultID":J
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3382
    .local v16, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3383
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.CERT_PATH_INTERNAL"

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3384
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.CERT_PASSWORD_ID_INTERNAL"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3385
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v20

    .line 3388
    .local v20, "token":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v7, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3390
    new-instance v17, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEModeFromAction(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3391
    .local v17, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "S"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    move-result v19

    .line 3393
    .local v19, "ret":Z
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setForceSMIMECertificateInternal() : sendBroadcast success, accId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3394
    if-eqz v19, :cond_9

    const/16 v18, -0x1

    .line 3399
    :goto_1
    :try_start_2
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v17    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v19    # "ret":Z
    :goto_2
    monitor-exit p0

    .line 3402
    return v18

    .line 3394
    .restart local v17    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .restart local v19    # "ret":Z
    :cond_9
    const/16 v18, 0x0

    goto :goto_1

    .line 3395
    .end local v17    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v19    # "ret":Z
    :catch_0
    move-exception v15

    .line 3396
    .local v15, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v6, "setForceSMIMECertificateInternal() : failed. "

    invoke-static {v4, v6, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3397
    const/16 v18, 0x0

    .line 3399
    :try_start_4
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 3378
    .end local v10    # "certPasswordID":J
    .end local v12    # "certResultID":J
    .end local v15    # "ex":Ljava/lang/Exception;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v20    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 3398
    .restart local v10    # "certPasswordID":J
    .restart local v12    # "certResultID":J
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v20    # "token":J
    :catchall_1
    move-exception v4

    .line 3399
    :try_start_5
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3398
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private setOldForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;
    .param p6, "Action"    # Ljava/lang/String;

    .prologue
    .line 3294
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3295
    const-string/jumbo v18, "ExchangeAccountPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setOldForceSMIMECertificateInternal() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3297
    .local v5, "containerId":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3298
    .local v4, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    .line 3299
    .local v15, "userID":I
    const/4 v13, 0x0

    .line 3300
    .local v13, "result":I
    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v18

    if-nez v18, :cond_0

    .line 3301
    const-string/jumbo v18, "ExchangeAccountPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setOldForceSMIMECertificateInternal() : No exist accId : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3302
    const/16 v18, 0x3

    return v18

    .line 3304
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 3305
    :cond_1
    const-string/jumbo v18, "ExchangeAccountPolicy"

    const-string/jumbo v19, "setOldForceSMIMECertificateInternal() : certPath is null"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3306
    const/16 v18, 0x1

    return v18

    .line 3308
    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 3309
    :cond_3
    const-string/jumbo v18, "ExchangeAccountPolicy"

    const-string/jumbo v19, "setOldForceSMIMECertificateInternal() : certPassword is null"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3310
    const/16 v18, 0x2

    return v18

    .line 3313
    :cond_4
    monitor-enter p0

    .line 3314
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v6

    .line 3315
    .local v6, "certPasswordID":J
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v8

    .line 3316
    .local v8, "certResultID":J
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p6

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3317
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "account_id"

    move-object/from16 v0, v18

    move-wide/from16 v1, p2

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3318
    const-string/jumbo v18, "cert_path"

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3319
    const-string/jumbo v18, "cert_password_id"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3320
    const-string/jumbo v18, "certificate_result_id"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    .line 3323
    .local v16, "token":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v20, "android.permission.sec.SMIME_CERTIFICATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3325
    new-instance v12, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEModeFromAction(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, v18

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3326
    .local v12, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "S"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    move-result v14

    .line 3328
    .local v14, "ret":Z
    const-string/jumbo v18, "ExchangeAccountPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setOldForceSMIMECertificateInternal() : sendBroadcast success, accId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3329
    if-eqz v14, :cond_5

    const/4 v13, -0x1

    .line 3334
    :goto_0
    :try_start_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v12    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v14    # "ret":Z
    :goto_1
    monitor-exit p0

    .line 3337
    return v13

    .line 3329
    .restart local v12    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .restart local v14    # "ret":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_0

    .line 3330
    .end local v12    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v14    # "ret":Z
    :catch_0
    move-exception v10

    .line 3331
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v18, "ExchangeAccountPolicy"

    const-string/jumbo v19, "setOldForceSMIMECertificateInternal() : failed. "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3332
    const/4 v13, 0x0

    .line 3334
    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 3313
    .end local v6    # "certPasswordID":J
    .end local v8    # "certResultID":J
    .end local v10    # "ex":Ljava/lang/Exception;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v16    # "token":J
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 3333
    .restart local v6    # "certPasswordID":J
    .restart local v8    # "certResultID":J
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v16    # "token":J
    :catchall_1
    move-exception v18

    .line 3334
    :try_start_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3333
    throw v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "type"    # I

    .prologue
    .line 3406
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3407
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3408
    .local v7, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 3409
    .local v9, "userID":I
    const/4 v8, 0x0

    .line 3411
    .local v8, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3412
    const-string/jumbo v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReleaseSMIMECertificateInternal() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3413
    return v8

    .line 3416
    :cond_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IJZI)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3417
    const-string/jumbo v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReleaseSMIMECertificateInternal() : admin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3418
    const-string/jumbo v2, " is trying to release a certificate which was not enforced by him"

    .line 3417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    return v8

    .line 3422
    :cond_1
    const/4 v0, 0x1

    if-eq p4, v0, :cond_2

    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    .line 3423
    :cond_2
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v8

    .line 3424
    .local v8, "ret":Z
    const-string/jumbo v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReleaseSMIMECertificateInternal() : release SMIME Encryption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    .end local v8    # "ret":Z
    :cond_3
    const/4 v0, 0x1

    if-eq p4, v0, :cond_4

    const/4 v0, 0x3

    if-ne p4, v0, :cond_5

    .line 3428
    :cond_4
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v8

    .line 3429
    .restart local v8    # "ret":Z
    const-string/jumbo v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReleaseSMIMECertificateInternal() : release SMIME Signing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3431
    .end local v8    # "ret":Z
    :cond_5
    return v8
.end method

.method private updateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZ)J
    .locals 21
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accountMData"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p3, "accountId"    # J
    .param p5, "doReCreate"    # Z

    .prologue
    .line 468
    const-wide/16 v4, -0x1

    .line 469
    .local v4, "accId":J
    move-object/from16 v0, p1

    iget v7, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 470
    .local v7, "callingUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v16

    .line 471
    .local v16, "userID":I
    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 473
    .local v8, "containerId":I
    const-string/jumbo v17, "ExchangeAccountPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "updateAccount() :  userID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 475
    .local v14, "token":J
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 477
    if-eqz p5, :cond_4

    .line 478
    :try_start_0
    const-string/jumbo v17, "ExchangeAccountPolicy"

    const-string/jumbo v18, "updateAccount() : Disabling EAS ExchangeService"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 480
    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/ComponentName;

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v17

    .line 481
    invoke-static {v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v18

    .line 480
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .local v13, "syncMgrCn":Landroid/content/ComponentName;
    const/16 v17, 0x2

    const/16 v18, 0x0

    .line 482
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v13, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 484
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getCBAAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 488
    .local v6, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccount(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    .line 488
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v18

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J

    move-result-wide v4

    .line 490
    :goto_0
    const-wide/16 v18, -0x1

    cmp-long v17, v4, v18

    if-nez v17, :cond_2

    .line 491
    const-string/jumbo v17, "ExchangeAccountPolicy"

    const-string/jumbo v18, "Enabling EAS ExchangeService : delete account"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 492
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v13, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 494
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    .end local v6    # "alias":Ljava/lang/String;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_0
    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    :goto_2
    return-wide v4

    .line 489
    .restart local v6    # "alias":Ljava/lang/String;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 497
    :cond_2
    if-eqz v6, :cond_0

    .line 500
    :try_start_1
    const-string/jumbo v17, "ExchangeAccountPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "updateAccount() : Sending intent to rename"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const/4 v11, 0x0

    .line 502
    .local v11, "old_intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 503
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "old_intent":Landroid/content/Intent;
    const-string/jumbo v17, "com.samsung.android.email.RENAME_CERTIFICATE"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v11, "old_intent":Landroid/content/Intent;
    :goto_3
    const-string/jumbo v17, "accountid"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 509
    const-string/jumbo v17, "alias"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 512
    const-string/jumbo v19, "android.permission.sec.MDM_EMAIL"

    .line 511
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 515
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v17, "com.samsung.android.knox.intent.action.EMAIL_RENAME_CERTIFICATE_INTERNAL"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v17, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 517
    const-string/jumbo v17, "com.samsung.android.knox.intent.extra.CERTIFICATE_ALIAS_INTERNAL"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 520
    const-string/jumbo v19, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 519
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 528
    .end local v6    # "alias":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "old_intent":Landroid/content/Intent;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "syncMgrCn":Landroid/content/ComponentName;
    :catch_0
    move-exception v9

    .line 529
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v17, "ExchangeAccountPolicy"

    const-string/jumbo v18, "updateAccount() failed : "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 531
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 506
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v6    # "alias":Ljava/lang/String;
    .local v11, "old_intent":Landroid/content/Intent;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_3
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "old_intent":Landroid/content/Intent;
    const-string/jumbo v17, "com.android.email.RENAME_CERTIFICATE"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v11, "old_intent":Landroid/content/Intent;
    goto :goto_3

    .line 525
    .end local v6    # "alias":Ljava/lang/String;
    .end local v11    # "old_intent":Landroid/content/Intent;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 524
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v18

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto/16 :goto_1

    .line 530
    :catchall_0
    move-exception v17

    .line 531
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 530
    throw v17
.end method


# virtual methods
.method public addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .locals 32
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "easUser"    # Ljava/lang/String;
    .param p5, "easDomain"    # Ljava/lang/String;
    .param p6, "syncLookback"    # I
    .param p7, "syncInterval"    # I
    .param p8, "isDefault"    # Z
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "protocolVersion"    # Ljava/lang/String;
    .param p11, "signature"    # Ljava/lang/String;
    .param p12, "emailNotificationVibrateAlways"    # Z
    .param p13, "emailNotificationVibrateWhenSilent"    # Z
    .param p14, "serverAddress"    # Ljava/lang/String;
    .param p15, "useSSL"    # Z
    .param p16, "useTLS"    # Z
    .param p17, "acceptAllCertificates"    # Z
    .param p18, "serverPassword"    # Ljava/lang/String;
    .param p19, "serverPathPrefix"    # Ljava/lang/String;

    .prologue
    .line 297
    const-string/jumbo v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "addNewAccount() EX 2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/16 v20, 0x1e0

    const/16 v21, 0x3fc

    .line 306
    const/16 v22, 0x3e

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x4

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    .line 302
    invoke-virtual/range {v0 .. v31}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    .locals 25
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "easUser"    # Ljava/lang/String;
    .param p5, "easDomain"    # Ljava/lang/String;
    .param p6, "syncLookback"    # I
    .param p7, "syncInterval"    # I
    .param p8, "isDefault"    # Z
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "protocolVersion"    # Ljava/lang/String;
    .param p11, "signature"    # Ljava/lang/String;
    .param p12, "emailNotificationVibrateAlways"    # Z
    .param p13, "emailNotificationVibrateWhenSilent"    # Z
    .param p14, "serverAddress"    # Ljava/lang/String;
    .param p15, "useSSL"    # Z
    .param p16, "useTLS"    # Z
    .param p17, "acceptAllCertificates"    # Z
    .param p18, "serverPassword"    # Ljava/lang/String;
    .param p19, "serverPathPrefix"    # Ljava/lang/String;
    .param p20, "peakStarttime"    # I
    .param p21, "peakEndtime"    # I
    .param p22, "peakDays"    # I
    .param p23, "offPeak"    # I
    .param p24, "roamingSchedule"    # I
    .param p25, "retrivalSize"    # I
    .param p26, "periodCalendar"    # I
    .param p27, "isNotify"    # Z
    .param p28, "syncContacts"    # I
    .param p29, "syncCalendar"    # I
    .param p30, "certificate_data"    # [B
    .param p31, "certificate_password"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 323
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v5, ">>>>>>>>>>>>>>>>>\t\taddNewAccount EX "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v24

    .line 325
    .local v24, "userID":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 328
    .local v11, "containerId":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 329
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 330
    invoke-static/range {p14 .. p14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p14

    .line 331
    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .line 332
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    .line 333
    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    .line 334
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 335
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 336
    invoke-static/range {p18 .. p18}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p18

    .line 337
    invoke-static/range {p19 .. p19}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p19

    .line 339
    if-eqz p3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 340
    if-nez p14, :cond_1

    .line 341
    :cond_0
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v5, "addNewAccount() EX : Error :: Invalid input parameters."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-wide/16 v4, -0x1

    return-wide v4

    .line 340
    :cond_1
    if-eqz p10, :cond_0

    if-eqz p4, :cond_0

    .line 345
    invoke-static/range {v24 .. v24}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v14

    .line 346
    .local v14, "emailPkageName":Ljava/lang/String;
    invoke-static {v14, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "com.samsung.android.focus"

    invoke-static {v4, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 355
    :cond_2
    if-eqz p12, :cond_4

    if-eqz p13, :cond_4

    .line 356
    const-string/jumbo v4, "ExchangeAccountPolicy"

    .line 357
    const-string/jumbo v5, "addNewAccount() EX : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    .line 356
    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-wide/16 v4, -0x1

    return-wide v4

    .line 347
    :cond_3
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addNewAccount() EX : Error :: Email and Focus are not installed on user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-wide/16 v4, -0x1

    return-wide v4

    .line 361
    :cond_4
    const-string/jumbo v8, "eas"

    .line 362
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 361
    const/4 v9, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p14

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v4

    .line 362
    const-wide/16 v6, 0x0

    .line 361
    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 363
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v5, "addNewAccount() EX : Error :: Account already exists."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-wide/16 v4, -0x1

    return-wide v4

    .line 367
    :cond_5
    const-wide/16 v12, 0x0

    .line 368
    .local v12, "accId":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 371
    .local v22, "token":J
    :try_start_0
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addNewAccount() EX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v18

    .line 375
    .local v18, "newAccountID":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v20

    .line 377
    .local v20, "newCertificateID":J
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.internal.CREATE_EMAILACCOUNT"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v16, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "account_id"

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 379
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string/jumbo v4, "service"

    const-string/jumbo v5, "eas"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string/jumbo v4, "server_name"

    move-object/from16 v0, v16

    move-object/from16 v1, p14

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string/jumbo v4, "user_name"

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string/jumbo v4, "user_passwd_id"

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 384
    const-string/jumbo v4, "serverPathPrefix"

    move-object/from16 v0, v16

    move-object/from16 v1, p19

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string/jumbo v5, "use_ssl"

    if-eqz p15, :cond_6

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    const-string/jumbo v5, "use_tsl"

    if-eqz p16, :cond_7

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string/jumbo v5, "trust_all"

    if-eqz p17, :cond_8

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    const-string/jumbo v4, "domain"

    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string/jumbo v4, "peak_starttime"

    move-object/from16 v0, v16

    move/from16 v1, p20

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    const-string/jumbo v4, "peak_endtime"

    move-object/from16 v0, v16

    move/from16 v1, p21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    const-string/jumbo v4, "peak_days"

    move-object/from16 v0, v16

    move/from16 v1, p22

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    const-string/jumbo v4, "peak"

    move-object/from16 v0, v16

    move/from16 v1, p7

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string/jumbo v4, "off_peak"

    move-object/from16 v0, v16

    move/from16 v1, p23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    const-string/jumbo v4, "roaming_schedule"

    move-object/from16 v0, v16

    move/from16 v1, p24

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const-string/jumbo v4, "period_email"

    move-object/from16 v0, v16

    move/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    const-string/jumbo v4, "retrival_size"

    move-object/from16 v0, v16

    move/from16 v1, p25

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    const-string/jumbo v4, "period_calendar"

    move-object/from16 v0, v16

    move/from16 v1, p26

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    const-string/jumbo v4, "notify"

    move-object/from16 v0, v16

    move/from16 v1, p27

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 405
    const-string/jumbo v4, "sync_contacts"

    move-object/from16 v0, v16

    move/from16 v1, p28

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    const-string/jumbo v4, "sync_calendar"

    move-object/from16 v0, v16

    move/from16 v1, p29

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    const-string/jumbo v4, "account_name"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string/jumbo v4, "signature"

    move-object/from16 v0, v16

    move-object/from16 v1, p11

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string/jumbo v4, "vibrate_when_silent"

    move-object/from16 v0, v16

    move/from16 v1, p13

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    const-string/jumbo v4, "vibrate"

    move-object/from16 v0, v16

    move/from16 v1, p12

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 411
    const-string/jumbo v4, "is_default"

    move-object/from16 v0, v16

    move/from16 v1, p8

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 412
    const-string/jumbo v4, "certificate_data"

    move-object/from16 v0, v16

    move-object/from16 v1, p30

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 413
    const-string/jumbo v4, "certificate_password_id"

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 414
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v17, "newIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 419
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string/jumbo v5, "eas"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    move-object/from16 v0, v17

    move-object/from16 v1, p14

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 424
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.SERVER_PATH_PREFIX_INTERNAL"

    move-object/from16 v0, v17

    move-object/from16 v1, p19

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.USE_SSL_INTERNAL"

    if-eqz p15, :cond_9

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.USE_TLS_INTERNAL"

    if-eqz p16, :cond_a

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    if-eqz p17, :cond_b

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PEAK_START_TIME_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p20

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PEAK_END_TIME_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PEAK_DAYS_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p22

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PEAK_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p7

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.OFF_PEAK_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ROAMING_SCHEDULE_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p24

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PERIOD_EMAIL_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra."

    move-object/from16 v0, v17

    move/from16 v1, p25

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PERIOD_CALENDAR_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p26

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.NOTIFY_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p27

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.SYNC_CONTACTS_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p28

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.SYNC_CALENDAR_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p29

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ACCOUNT_NAME_INTERNAL"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

    move-object/from16 v0, v17

    move-object/from16 v1, p11

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.VIBRATE_WHEN_SILENT_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p13

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.EXTRA_VIBRATE_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p12

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.IS_DEFAULT_INTERNAL"

    move-object/from16 v0, v17

    move/from16 v1, p8

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 446
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    move-object/from16 v0, v17

    move-object/from16 v1, p30

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 447
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 448
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_EMAIL"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 452
    const-string/jumbo v4, "com.samsung.android.focus"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_EMAIL"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 455
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addNewAccount() EX : sent intent to Email app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 462
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "newIntent":Landroid/content/Intent;
    .end local v18    # "newAccountID":J
    .end local v20    # "newCertificateID":J
    :goto_6
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v5, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-wide v12

    .line 385
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v18    # "newAccountID":J
    .restart local v20    # "newCertificateID":J
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 386
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 387
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 425
    .restart local v17    # "newIntent":Landroid/content/Intent;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 426
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 427
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 457
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "newIntent":Landroid/content/Intent;
    .end local v18    # "newAccountID":J
    .end local v20    # "newCertificateID":J
    :catch_0
    move-exception v15

    .line 458
    .local v15, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v5, "addNewAccount() EX : failed. "

    invoke-static {v4, v5, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    .line 459
    .end local v15    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 460
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    throw v4
.end method

.method public addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/ExchangeAccount;)J
    .locals 42
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "account"    # Lcom/samsung/android/knox/accounts/ExchangeAccount;

    .prologue
    .line 2794
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2795
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v38

    .line 2796
    .local v38, "userID":I
    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2798
    .local v15, "containerId":I
    if-nez p2, :cond_0

    .line 2800
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v8, "addNewAccount_new : Error :: Invalid Account."

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    const-wide/16 v8, -0x1

    return-wide v8

    .line 2804
    :cond_0
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2806
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2807
    .local v16, "displayName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2808
    .local v17, "emailAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2809
    .local v7, "serverAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->protocolVersion:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2810
    .local v31, "protocolVersion":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->senderName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2811
    .local v32, "senderName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2812
    .local v35, "signature":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easUser:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2813
    .local v6, "easUser":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2814
    .local v5, "easDomain":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPassword:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2815
    .local v33, "serverPassword":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPathPrefix:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2816
    .local v34, "serverPathPrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    move/from16 v18, v0

    .line 2817
    .local v18, "emailNotificationVibrateAlways":Z
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    if-eqz v4, :cond_2

    const/16 v19, 0x0

    .line 2819
    .local v19, "emailNotificationVibrateWhenSilent":Z
    :goto_0
    if-eqz v17, :cond_1

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2820
    if-nez v7, :cond_3

    .line 2821
    :cond_1
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v8, "addNewAccount_new : Error :: Invalid input parameters."

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    const-wide/16 v8, -0x1

    return-wide v8

    .line 2817
    .end local v19    # "emailNotificationVibrateWhenSilent":Z
    :cond_2
    const/16 v19, 0x1

    .restart local v19    # "emailNotificationVibrateWhenSilent":Z
    goto :goto_0

    .line 2820
    :cond_3
    if-eqz v31, :cond_1

    if-eqz v6, :cond_1

    .line 2824
    invoke-static/range {v38 .. v38}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v20

    .line 2825
    .local v20, "emailPkageName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "com.samsung.android.focus"

    invoke-static {v4, v15}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2829
    :cond_4
    if-eqz v18, :cond_6

    if-eqz v19, :cond_6

    .line 2830
    const-string/jumbo v4, "ExchangeAccountPolicy"

    .line 2831
    const-string/jumbo v8, "addNewAccount_new : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    .line 2830
    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    const-wide/16 v8, -0x1

    return-wide v8

    .line 2826
    :cond_5
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addNewAccount() EX : Error :: Email and focus are not installed on user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    const-wide/16 v8, -0x1

    return-wide v8

    .line 2834
    :cond_6
    const-string/jumbo v8, "eas"

    .line 2835
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 2834
    const/4 v9, 0x1

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v8

    .line 2835
    const-wide/16 v40, 0x0

    .line 2834
    cmp-long v4, v8, v40

    if-lez v4, :cond_7

    .line 2836
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v8, "addNewAccount : Error :: Account already exists."

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2837
    const-wide/16 v8, -0x1

    return-wide v8

    .line 2839
    :cond_7
    const-wide/16 v12, 0x0

    .line 2840
    .local v12, "accId":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v36

    .line 2844
    .local v36, "token":J
    :try_start_0
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addNewAccount() New : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;

    if-eqz v4, :cond_9

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 2846
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v8, "addNewAccount_new : SMIME Certificate at creation time"

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2847
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificareMode:I

    move/from16 v25, v0

    .line 2849
    .local v25, "mode":I
    const-string/jumbo v4, "18"

    .line 2848
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 2851
    .local v24, "mdm_config_version":I
    const/16 v4, 0x11

    move/from16 v0, v24

    if-lt v0, v4, :cond_8

    .line 2852
    move-object/from16 v0, p2

    iget v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificateMode:I

    const/4 v8, 0x1

    if-lt v4, v8, :cond_8

    .line 2853
    move-object/from16 v0, p2

    iget v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificateMode:I

    const/4 v8, 0x3

    if-gt v4, v8, :cond_8

    .line 2854
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificateMode:I

    move/from16 v25, v0

    .line 2856
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2857
    .local v14, "caller":Ljava/lang/String;
    new-instance v23, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 2858
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    .line 2857
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v4, v8, v2}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2859
    .local v23, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    move-object/from16 v0, v23

    invoke-static {v14, v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    .line 2862
    .end local v14    # "caller":Ljava/lang/String;
    .end local v23    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v24    # "mdm_config_version":I
    .end local v25    # "mode":I
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v26

    .line 2863
    .local v26, "newAccountID":J
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificatePassword:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v28

    .line 2865
    .local v28, "newCertificateID":J
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.internal.CREATE_EMAILACCOUNT"

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2866
    .local v22, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "account_id"

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2867
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2868
    const-string/jumbo v4, "service"

    const-string/jumbo v8, "eas"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2869
    const-string/jumbo v4, "server_name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2870
    const-string/jumbo v4, "user_name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2871
    const-string/jumbo v4, "user_passwd_id"

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2872
    const-string/jumbo v4, "serverPathPrefix"

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2873
    const-string/jumbo v8, "use_ssl"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useSSL:Z

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2874
    const-string/jumbo v8, "use_tsl"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useTLS:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2875
    const-string/jumbo v8, "trust_all"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->acceptAllCertificates:Z

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2876
    const-string/jumbo v4, "domain"

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2877
    const-string/jumbo v4, "peak_starttime"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakStartTime:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2878
    const-string/jumbo v4, "peak_endtime"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakEndTime:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2879
    const-string/jumbo v4, "peak_days"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakDays:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2880
    const-string/jumbo v4, "peak"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncInterval:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2881
    const-string/jumbo v4, "off_peak"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->offPeak:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2882
    const-string/jumbo v4, "roaming_schedule"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->roamingSchedule:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2883
    const-string/jumbo v4, "period_email"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncLookback:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2884
    const-string/jumbo v4, "retrival_size"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->retrivalSize:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2885
    const-string/jumbo v4, "period_calendar"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->periodCalendar:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2886
    const-string/jumbo v4, "notify"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isNotify:Z

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2887
    const-string/jumbo v4, "sync_contacts"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncContacts:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2888
    const-string/jumbo v4, "sync_calendar"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncCalendar:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2889
    const-string/jumbo v4, "account_name"

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2890
    const-string/jumbo v4, "signature"

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2891
    const-string/jumbo v8, "vibrate_when_silent"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2892
    const-string/jumbo v4, "vibrate"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2893
    const-string/jumbo v4, "is_default"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isDefault:Z

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2894
    const-string/jumbo v4, "certificate_data"

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateData:[B

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2895
    const-string/jumbo v4, "certificate_password_id"

    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2896
    invoke-static {v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2899
    new-instance v30, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2900
    .local v30, "newIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    move-object/from16 v0, v30

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2901
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2902
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string/jumbo v8, "eas"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2903
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2904
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2905
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    move-object/from16 v0, v30

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2907
    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.USE_SSL_INTERNAL"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useSSL:Z

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2908
    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.USE_TLS_INTERNAL"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useTLS:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2909
    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->acceptAllCertificates:Z

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2910
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2911
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PEAK_START_TIME_INTERNAL"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakStartTime:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2912
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PEAK_END_TIME_INTERNAL"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakEndTime:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2913
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PEAK_DAYS_INTERNAL"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakDays:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2914
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PEAK_INTERNAL"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncInterval:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2915
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.OFF_PEAK_INTERNAL"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->offPeak:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2916
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ROAMING_SCHEDULE_INTERNAL"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->roamingSchedule:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2917
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PERIOD_EMAIL_INTERNAL"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncLookback:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2918
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra."

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->retrivalSize:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2919
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PERIOD_CALENDAR_INTERNAL"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->periodCalendar:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2920
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.NOTIFY_INTERNAL"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isNotify:Z

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2921
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.SYNC_CONTACTS_INTERNAL"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncContacts:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2922
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.SYNC_CALENDAR_INTERNAL"

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncCalendar:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2923
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ACCOUNT_NAME_INTERNAL"

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2924
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2925
    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.VIBRATE_WHEN_SILENT_INTERNAL"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    :goto_8
    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2926
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.EXTRA_VIBRATE_INTERNAL"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2927
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.IS_DEFAULT_INTERNAL"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isDefault:Z

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2928
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateData:[B

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2929
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    move-object/from16 v0, v30

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2930
    invoke-static {v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2932
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 2934
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    .line 2933
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->convertUcmUri(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2938
    .local v11, "alias":Ljava/lang/String;
    if-nez v11, :cond_12

    .line 2939
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addNewAccount : Error :: certificate storage name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2940
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    .line 2939
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2940
    const-string/jumbo v9, " does not exist!"

    .line 2939
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    const-wide/16 v8, -0x1

    .line 2958
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2941
    return-wide v8

    .line 2873
    .end local v11    # "alias":Ljava/lang/String;
    .end local v30    # "newIntent":Landroid/content/Intent;
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2874
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2875
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 2891
    :cond_d
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 2907
    .restart local v30    # "newIntent":Landroid/content/Intent;
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 2908
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 2909
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 2925
    :cond_11
    const/4 v4, 0x1

    goto/16 :goto_8

    .line 2944
    .restart local v11    # "alias":Ljava/lang/String;
    :cond_12
    :try_start_1
    const-string/jumbo v4, "certificate_alias"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2945
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.CERTIFICATE_ALIAS_INTERNAL"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2946
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addNewAccount : alias has added, alias = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    .end local v11    # "alias":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v38

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v9, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v38

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_EMAIL"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2951
    const-string/jumbo v4, "com.samsung.android.focus"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v38

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_EMAIL"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2953
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addNewAccount_new : sent intent to Email app : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2958
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2961
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v26    # "newAccountID":J
    .end local v28    # "newCertificateID":J
    .end local v30    # "newIntent":Landroid/content/Intent;
    :goto_9
    return-wide v12

    .line 2955
    :catch_0
    move-exception v21

    .line 2956
    .local v21, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addNewAccount() NEW : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2958
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9

    .line 2957
    .end local v21    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 2958
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2957
    throw v4
.end method

.method public allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "allow"    # Z

    .prologue
    .line 2369
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2370
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "allowEmailSettingsChange() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2372
    .local v3, "containerId":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2373
    .local v2, "adminUid":I
    const/4 v0, 0x0

    .line 2374
    .local v0, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2375
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "allowEmailSettingsChange() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    return v0

    .line 2378
    :cond_0
    const-string/jumbo v7, "AllowSettingChange"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    .line 2379
    .local v0, "ret":Z
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "allowEmailSettingsChange() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , allow  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    return v0
.end method

.method public allowInComingAttachments(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    .line 2292
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2293
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "allowInComingAttachments() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2295
    .local v3, "containerId":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2296
    .local v2, "adminUid":I
    const/4 v0, 0x0

    .line 2297
    .local v0, "ret":Z
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2298
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "allowInComingAttachments_new() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    return v0

    .line 2303
    :cond_0
    const-string/jumbo v7, "AttachmentEnable"

    move-object v1, p0

    move-wide v4, p3

    move v6, p2

    .line 2302
    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    .line 2304
    .local v0, "ret":Z
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "allowInComingAttachments() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , enable  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    return v0
.end method

.method public createAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "serverAddress"    # Ljava/lang/String;
    .param p6, "serverPassword"    # Ljava/lang/String;

    .prologue
    .line 251
    const-string/jumbo v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "addNewAccount() EX 1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string/jumbo v10, "2.5"

    .line 252
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 253
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 254
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v14, p5

    move-object/from16 v18, p6

    .line 252
    invoke-virtual/range {v0 .. v19}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1436
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1437
    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1438
    .local v8, "containerId":I
    const/4 v12, 0x0

    .line 1440
    .local v12, "ret":Z
    const-string/jumbo v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "deleteAccount() :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    const/4 v4, 0x0

    .line 1442
    .local v4, "EmailAddress":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1444
    .local v5, "InComingServerAddress":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v7

    .line 1446
    .local v7, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v7, :cond_0

    .line 1447
    const-string/jumbo v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "deleteAccount_new() : Not valid accId : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    return v12

    .line 1450
    :cond_0
    iget-object v4, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    .line 1451
    .local v4, "EmailAddress":Ljava/lang/String;
    iget-object v5, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    .line 1463
    .end local v7    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .local v5, "InComingServerAddress":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    if-nez v5, :cond_4

    .line 1465
    :cond_1
    const-string/jumbo v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "deleteAccount() : no Inforamtion for accId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    return v12

    .line 1454
    .local v4, "EmailAddress":Ljava/lang/String;
    .local v5, "InComingServerAddress":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v6

    .line 1455
    .local v6, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v6, :cond_3

    iget-boolean v0, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 1459
    iget-object v4, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 1460
    .local v4, "EmailAddress":Ljava/lang/String;
    iget-object v5, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .local v5, "InComingServerAddress":Ljava/lang/String;
    goto :goto_0

    .line 1456
    .local v4, "EmailAddress":Ljava/lang/String;
    .local v5, "InComingServerAddress":Ljava/lang/String;
    :cond_3
    const-string/jumbo v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "deleteAccount() : No exist accId : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    return v12

    .line 1469
    .end local v6    # "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    .local v4, "EmailAddress":Ljava/lang/String;
    .local v5, "InComingServerAddress":Ljava/lang/String;
    :cond_4
    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 1470
    const-string/jumbo v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "deleteAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    return v12

    .line 1474
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v13

    .line 1475
    .local v13, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1478
    .local v14, "token":J
    :try_start_0
    const-string/jumbo v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "deleteAccount() : accId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " , userId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v16, "edm.intent.action.internal.DELETE_EMAILACCOUNT"

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1480
    .local v11, "oldIntent":Landroid/content/Intent;
    const-string/jumbo v16, "account_id"

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1481
    const-string/jumbo v16, "user_id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1482
    const-string/jumbo v16, "service"

    const-string/jumbo v17, "eas"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1483
    const-string/jumbo v16, "server_name"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1484
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v18, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1488
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v16, "com.samsung.android.knox.intent.action.DELETE_EMAILACCOUNT_INTERNAL"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1489
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v16, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1490
    const-string/jumbo v16, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1491
    const-string/jumbo v16, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string/jumbo v17, "eas"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1492
    const-string/jumbo v16, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1493
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v18, "com.samsung.android.knox.permission.KNOX_EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1495
    const/4 v12, 0x1

    .line 1500
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1502
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "oldIntent":Landroid/content/Intent;
    :goto_1
    return v12

    .line 1496
    :catch_0
    move-exception v9

    .line 1497
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v16, "ExchangeAccountPolicy"

    const-string/jumbo v17, "deleteAccount() : failed. "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1498
    const/4 v12, 0x0

    .line 1500
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1499
    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 1500
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1499
    throw v16
.end method

.method public getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    .line 3080
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3081
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v5, " getAccountCertificatePassword calls from Profile return default value"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    const/4 v4, 0x0

    return-object v4

    .line 3084
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v4

    .line 3085
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "android.permission.sec.MDM_EXCHANGE"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 3086
    const-string/jumbo v7, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 3085
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3084
    invoke-virtual {v4, p1, v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3087
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3088
    .local v1, "containerId":I
    const/4 v3, 0x0

    .line 3090
    .local v3, "password":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "C#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3091
    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3096
    .end local v0    # "caller":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v5, "getAccountCertificatePassword() success"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    return-object v3

    .line 3092
    .restart local v3    # "password":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3093
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v5, "getAccountCertificatePassword() failed"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3094
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1279
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1280
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1281
    .local v2, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    .line 1282
    .local v4, "userID":I
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAccountDetails() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ,  userID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    const/4 v3, 0x0

    .line 1284
    .local v3, "ret":Lcom/samsung/android/knox/accounts/Account;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1285
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v1

    .line 1286
    .local v1, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v1, :cond_0

    .line 1288
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v3

    .line 1298
    .end local v1    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v3    # "ret":Lcom/samsung/android/knox/accounts/Account;
    :cond_0
    :goto_0
    return-object v3

    .line 1292
    .restart local v3    # "ret":Lcom/samsung/android/knox/accounts/Account;
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {p1, p2, p3, v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 1294
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v5, :cond_0

    .line 1295
    invoke-direct {p0, v2, v0, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v3

    .local v3, "ret":Lcom/samsung/android/knox/accounts/Account;
    goto :goto_0
.end method

.method public getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    .line 3052
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3053
    const-string/jumbo v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, " getAccountEmailPassword calls from Profile return default value"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3054
    const/4 v6, 0x0

    return-object v6

    .line 3056
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    .line 3057
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "android.permission.sec.MDM_EXCHANGE"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 3058
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 3057
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3056
    invoke-virtual {v6, p1, v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3059
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3060
    .local v2, "containerId":I
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3061
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 3062
    .local v1, "callerPkg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3064
    .local v4, "password":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "E#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3065
    .local v0, "caller":Ljava/lang/String;
    const-string/jumbo v6, "com.samsung.android.focus"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3066
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPasswordFocus(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 3074
    .end local v0    # "caller":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "getAccountEmailPassword() success"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    return-object v4

    .line 3068
    .restart local v0    # "caller":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .local v4, "password":Ljava/lang/String;
    goto :goto_0

    .line 3070
    .end local v0    # "caller":Ljava/lang/String;
    .local v4, "password":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3071
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "getAccountEmailPassword() failed"

    invoke-static {v6, v7, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3072
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "easDomain"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "activeSyncHost"    # Ljava/lang/String;

    .prologue
    .line 1264
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1265
    const-string/jumbo v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccountId() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    const-string/jumbo v4, "eas"

    .line 1267
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 1266
    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v8

    .line 1268
    .local v8, "ret":J
    const-string/jumbo v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccountId() : = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,  easDomain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", easUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", activeSyncHost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    return-wide v8
.end method

.method public getAllEASAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;
    .locals 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1392
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1393
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1394
    .local v3, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1395
    .local v9, "userID":I
    const-string/jumbo v10, "ExchangeAccountPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getAllEASAccounts() : userId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1399
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/accounts/Account;>;"
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1400
    iget-object v10, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    .line 1401
    .local v2, "accountlist":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v2, :cond_1

    .line 1402
    const/4 v10, 0x0

    array-length v11, v2

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v1, v2, v10

    .line 1403
    .local v1, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v1, :cond_0

    .line 1404
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1408
    .end local v1    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_1
    const-string/jumbo v10, "ExchangeAccountPolicy"

    const-string/jumbo v11, "getAllEASAccounts_new( ): fail to get list."

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    .end local v2    # "accountlist":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/samsung/android/knox/accounts/Account;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/samsung/android/knox/accounts/Account;

    :goto_2
    return-object v10

    .line 1413
    :cond_3
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIds(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)[J

    move-result-object v5

    .line 1414
    .local v5, "ids":[J
    if-eqz v5, :cond_2

    .line 1415
    const/4 v10, 0x0

    array-length v11, v5

    :goto_3
    if-ge v10, v11, :cond_2

    aget-wide v6, v5, v10

    .line 1417
    .local v6, "id":J
    iget-object v12, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    .line 1416
    invoke-static {p1, v6, v7, v12, v13}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 1418
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_4

    iget-boolean v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v12, :cond_4

    .line 1419
    invoke-direct {p0, v3, v0, v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1415
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1421
    .end local v0    # "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v5    # "ids":[J
    .end local v6    # "id":J
    :catch_0
    move-exception v4

    .line 1422
    .local v4, "ex":Ljava/lang/Exception;
    const-string/jumbo v10, "ExchangeAccountPolicy"

    const-string/jumbo v11, "getAllEASAccounts() : failed. "

    invoke-static {v10, v11, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1425
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_5
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public getDeviceId(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1548
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1549
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v18

    .line 1550
    .local v18, "userID":I
    const-string/jumbo v2, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDeviceId() : userID = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v10

    .line 1553
    .local v10, "emailPkageName":Ljava/lang/String;
    move/from16 v0, v18

    invoke-static {v10, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1554
    const-string/jumbo v2, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDeviceId() failed : Email App is not installed. : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    const/4 v2, 0x0

    return-object v2

    .line 1558
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1559
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1561
    const-string/jumbo v2, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDeviceId() failed : Email App is disabled. : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    const/4 v2, 0x0

    return-object v2

    .line 1565
    :cond_1
    sget-object v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1566
    sget-object v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 1568
    :cond_2
    new-instance v15, Ljava/lang/Object;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 1569
    .local v15, "sync":Ljava/lang/Object;
    monitor-enter v15

    .line 1570
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    .line 1572
    .local v16, "token":J
    :try_start_1
    new-instance v3, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Ljava/lang/Object;)V

    .line 1590
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    const/4 v8, 0x0

    .line 1591
    .local v8, "action":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1592
    .local v14, "retAction":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1593
    const-string/jumbo v8, "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_REQUEST_INTERNAL"

    .line 1594
    .local v8, "action":Ljava/lang/String;
    const-string/jumbo v14, "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_RESULT_INTERNAL"

    .line 1599
    .local v14, "retAction":Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1600
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "edm.intent.action.internal.GET_DEVICEID_RESULT"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1603
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1604
    .local v12, "intent":Landroid/content/Intent;
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.email.GET_DEVICEID"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1605
    .local v13, "old_intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v2, v13, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v2, v12, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1607
    const-string/jumbo v2, "ExchangeAccountPolicy"

    const-string/jumbo v4, "getDeviceId() : sendBroadcast "

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1609
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1610
    const-string/jumbo v2, "ExchangeAccountPolicy"

    const-string/jumbo v4, "getDeviceId() : Device id is still null, waiting 5 seconds..."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    const-wide/16 v6, 0x1388

    invoke-virtual {v15, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1616
    :cond_3
    if-eqz v3, :cond_4

    .line 1617
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1623
    :cond_4
    :goto_1
    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "action":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "old_intent":Landroid/content/Intent;
    .end local v14    # "retAction":Ljava/lang/String;
    :goto_2
    monitor-exit v15

    .line 1626
    sget-object v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 1596
    .restart local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .local v8, "action":Ljava/lang/String;
    .local v14, "retAction":Ljava/lang/String;
    :cond_5
    :try_start_5
    const-string/jumbo v8, "com.android.email.GET_DEVICEID"

    .line 1597
    .local v8, "action":Ljava/lang/String;
    const-string/jumbo v14, "android.intent.action.enterprise.GET_DEVICEID"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .local v14, "retAction":Ljava/lang/String;
    goto/16 :goto_0

    .line 1613
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v13    # "old_intent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 1614
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v2, "ExchangeAccountPolicy"

    const-string/jumbo v4, "getDeviceId() Inturrupted."

    invoke-static {v2, v4, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1616
    if-eqz v3, :cond_4

    .line 1617
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    .line 1620
    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "action":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "old_intent":Landroid/content/Intent;
    .end local v14    # "retAction":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 1621
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v2, "ExchangeAccountPolicy"

    const-string/jumbo v4, "getDeviceId() : failed. "

    invoke-static {v2, v4, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1623
    :try_start_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 1569
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v16    # "token":J
    :catchall_0
    move-exception v2

    monitor-exit v15

    throw v2

    .line 1615
    .restart local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    .restart local v8    # "action":Ljava/lang/String;
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v13    # "old_intent":Landroid/content/Intent;
    .restart local v14    # "retAction":Ljava/lang/String;
    .restart local v16    # "token":J
    :catchall_1
    move-exception v2

    .line 1616
    if-eqz v3, :cond_6

    .line 1617
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1615
    :cond_6
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1622
    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "action":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "old_intent":Landroid/content/Intent;
    .end local v14    # "retAction":Ljava/lang/String;
    :catchall_2
    move-exception v2

    .line 1623
    :try_start_b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1622
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2012
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2767
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2768
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 2769
    .local v5, "userID":I
    const-string/jumbo v4, "ForceSmimeCertForEncryption"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2733
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2734
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 2735
    .local v5, "userID":I
    const-string/jumbo v4, "ForceSmimeCertForSigning"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2336
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2337
    .local v1, "containerId":I
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2338
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 2339
    .local v5, "userID":I
    const-string/jumbo v4, "IncomingAttachmentSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2447
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2448
    .local v1, "containerId":I
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2449
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 2450
    .local v5, "userID":I
    const-string/jumbo v4, "MaxCalendarAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2511
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2512
    .local v1, "containerId":I
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2513
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 2514
    .local v5, "userID":I
    const-string/jumbo v4, "MaxEmailAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2615
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2616
    .local v1, "containerId":I
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2617
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 2618
    .local v5, "userID":I
    const-string/jumbo v4, "MaxEmailBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2718
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2719
    .local v1, "containerId":I
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2720
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 2721
    .local v5, "userID":I
    const-string/jumbo v4, "MaxEmailHTMLBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1773
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1774
    const-string/jumbo v4, "ReqEncryptSmime"

    .line 1775
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    .line 1773
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1748
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1749
    const-string/jumbo v4, "ReqSigSmime"

    .line 1750
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    .line 1748
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JI)Ljava/lang/String;
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 3274
    const/4 v1, 0x0

    .line 3275
    .local v1, "ret":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3276
    const-string/jumbo v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSMIMECertificateAlias() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    return-object v1

    .line 3280
    :cond_0
    if-nez p4, :cond_1

    .line 3281
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {p1, p2, p3, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3282
    :cond_1
    if-ne p4, v3, :cond_2

    .line 3283
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {p1, p2, p3, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 3285
    :catch_0
    move-exception v0

    .line 3286
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ExchangeAccountPolicy"

    const-string/jumbo v3, "getSMIMECertificateAlias() : failed. "

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3287
    const/4 v1, 0x0

    .line 3289
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSMIMECertificateAlias() : accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    return-object v1
.end method

.method public isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2361
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2362
    .local v1, "containerId":I
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2363
    .local v6, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 2364
    .local v5, "userID":I
    const-string/jumbo v4, "AllowNotificationChange"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2384
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2385
    .local v1, "containerId":I
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2386
    .local v6, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 2387
    .local v5, "userID":I
    const-string/jumbo v4, "AllowSettingChange"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2309
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2310
    .local v1, "containerId":I
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2311
    .local v6, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 2312
    .local v5, "userID":I
    const-string/jumbo v4, "AttachmentEnable"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 3515
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 2208
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 2213
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2256
    const-string/jumbo v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExchangeAccountPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2289
    const-string/jumbo v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExchangeAccountPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 11
    .param p1, "uid"    # I

    .prologue
    const/4 v10, 0x0

    .line 2227
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2231
    .local v7, "userId":I
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    .line 2232
    .local v2, "columns":[Ljava/lang/String;
    const-string/jumbo v8, "AccountId"

    aput-object v8, v2, v10

    .line 2233
    const-string/jumbo v8, "ForceSmimeCert"

    const/4 v9, 0x1

    aput-object v8, v2, v9

    .line 2235
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2236
    .local v3, "cvValues":Landroid/content/ContentValues;
    const-string/jumbo v8, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2238
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "ExchangeAccountTable"

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 2240
    .local v6, "emailList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_1

    .line 2241
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "email$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 2242
    .local v4, "email":Landroid/content/ContentValues;
    const-string/jumbo v8, "ForceSmimeCert"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_0

    .line 2245
    const-string/jumbo v8, "AccountId"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2246
    .local v0, "accId":J
    invoke-direct {p0, v10, v0, v1, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    goto :goto_0

    .line 2251
    .end local v0    # "accId":J
    .end local v4    # "email":Landroid/content/ContentValues;
    .end local v5    # "email$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v8, "ExchangeAccountPolicy"

    const-string/jumbo v9, "onPreAdminRemoval() : "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 12
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    const/4 v11, 0x0

    .line 2262
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2263
    .local v7, "userId":I
    const-string/jumbo v8, "ExchangeAccountPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ExchangeAccountPolicy.onPreContainerRemoval("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    .line 2267
    .local v2, "columns":[Ljava/lang/String;
    const-string/jumbo v8, "AccountId"

    aput-object v8, v2, v11

    .line 2268
    const-string/jumbo v8, "ForceSmimeCert"

    const/4 v9, 0x1

    aput-object v8, v2, v9

    .line 2270
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2271
    .local v3, "cvValues":Landroid/content/ContentValues;
    const-string/jumbo v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2273
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "ExchangeAccountTable"

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 2275
    .local v6, "emailList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_1

    .line 2276
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "email$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 2277
    .local v4, "email":Landroid/content/ContentValues;
    const-string/jumbo v8, "ForceSmimeCert"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_0

    .line 2280
    const-string/jumbo v8, "AccountId"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2281
    .local v0, "accId":J
    invoke-direct {p0, p1, v0, v1, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    goto :goto_0

    .line 2260
    .end local v0    # "accId":J
    .end local v4    # "email":Landroid/content/ContentValues;
    .end local v5    # "email$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "serverAddress"    # Ljava/lang/String;

    .prologue
    .line 1683
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1684
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1685
    .local v3, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1686
    .local v9, "userID":I
    const-string/jumbo v13, "ExchangeAccountPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removePendingAccount() : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1690
    .local v10, "token":J
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.action.internal.DELETE_NOT_VALIDATED_EMAILACCOUNT"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1691
    .local v8, "send":Landroid/content/Intent;
    const-string/jumbo v13, "user_id"

    move-object/from16 v0, p2

    invoke-virtual {v8, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1692
    const-string/jumbo v13, "service"

    const-string/jumbo v14, "eas"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1693
    const-string/jumbo v13, "server_name"

    move-object/from16 v0, p5

    invoke-virtual {v8, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1694
    const-string/jumbo v13, "user_name"

    move-object/from16 v0, p3

    invoke-virtual {v8, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1695
    const-string/jumbo v13, "domain"

    move-object/from16 v0, p4

    invoke-virtual {v8, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1696
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v9}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v15, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v13, v8, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1700
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v13, "com.samsung.android.knox.intent.action.DELETE_NOT_VALIDATED_EMAILACCOUNT_INTERNAL"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1701
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    move-object/from16 v0, p2

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1702
    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string/jumbo v14, "eas"

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1703
    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    move-object/from16 v0, p5

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1704
    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

    move-object/from16 v0, p3

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1705
    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    move-object/from16 v0, p4

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1706
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v9}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v15, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v13, v7, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1711
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1713
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "send":Landroid/content/Intent;
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 1714
    .local v12, "userId":I
    if-nez v12, :cond_0

    .line 1715
    new-instance v6, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v13}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1716
    .local v6, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1717
    .local v2, "accountInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1718
    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1719
    move-object/from16 v0, p4

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1720
    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1722
    :try_start_1
    const-string/jumbo v13, "ExchangeAccount"

    const-string/jumbo v14, "removePendingAccount"

    invoke-virtual {v6, v13, v14, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    .line 1723
    const-string/jumbo v13, "ExchangeAccountPolicy"

    const-string/jumbo v14, "removePendingAccount calling gearPolicyManager  "

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1682
    .end local v2    # "accountInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return-void

    .line 1708
    .end local v12    # "userId":I
    :catch_0
    move-exception v5

    .line 1709
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v13, "ExchangeAccountPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removePendingAccount() : fail to remove pending EAS Account. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1711
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1710
    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 1711
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1710
    throw v13

    .line 1724
    .restart local v2    # "accountInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v12    # "userId":I
    :catch_1
    move-exception v4

    .line 1725
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1510
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1511
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1512
    .local v1, "containerId":I
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1513
    .local v0, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 1514
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1516
    .local v6, "token":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;I)V

    .line 1518
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1519
    .local v4, "msg":Landroid/os/Message;
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 1520
    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 1521
    iget-boolean v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    if-nez v8, :cond_1

    .line 1522
    const-string/jumbo v8, "ExchangeAccountPolicy"

    const-string/jumbo v9, "sendAccountsChangedBroadcast()"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1529
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1531
    if-nez v5, :cond_0

    .line 1532
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1534
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string/jumbo v8, "ExchangeAccount"

    const-string/jumbo v9, "sendAccountsChangedBroadcast"

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1535
    const-string/jumbo v8, "ExchangeAccountPolicy"

    const-string/jumbo v9, "sendAccountsChangedBroadcast calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1509
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_1
    return-void

    .line 1525
    :cond_1
    :try_start_2
    const-string/jumbo v8, "ExchangeAccountPolicy"

    const-string/jumbo v9, "sendAccountsChangedBroadcast() : Delayed Broadcast"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3a98

    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1528
    .end local v4    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v8

    .line 1529
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1528
    throw v8

    .line 1536
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v4    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 1537
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "acceptAllCertificates"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 582
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 583
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAcceptAllCertificates() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 586
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_0

    .line 587
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAcceptAllCertificates_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return v6

    .line 590
    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    .line 591
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v1

    return v1

    .line 595
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 594
    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 597
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_2

    .line 598
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAcceptAllCertificates() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return v6

    .line 602
    :cond_2
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 603
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    .line 605
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZ)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v1, v8, v4

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    :cond_3
    return v6
.end method

.method public setAccountBaseParameters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "accId"    # J

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 706
    const-string/jumbo v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "setAccountBaseParameters() : deprecated "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 3031
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    .line 3032
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "android.permission.sec.MDM_EXCHANGE"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 3033
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 3032
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3031
    invoke-virtual {v6, p1, v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3034
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 3035
    .local v5, "userID":I
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3036
    .local v3, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 3037
    .local v0, "callID":J
    if-nez p2, :cond_0

    .line 3038
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3040
    :cond_0
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "C#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3041
    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3046
    const-string/jumbo v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "setAccountCertificatePassword() success"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    return-wide v0

    .line 3042
    .end local v2    # "caller":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 3043
    .local v4, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "setAccountCertificatePassword() failed"

    invoke-static {v6, v7, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3044
    const-wide/16 v6, -0x1

    return-wide v6
.end method

.method public setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 3006
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3007
    const-string/jumbo v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, " setAccountEmailPassword calls from Profile return default value"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3010
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    .line 3011
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "android.permission.sec.MDM_EXCHANGE"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 3012
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 3011
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3010
    invoke-virtual {v6, p1, v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3013
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 3014
    .local v5, "userID":I
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3015
    .local v3, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 3016
    .local v0, "callID":J
    if-nez p2, :cond_1

    .line 3017
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3019
    :cond_1
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "E#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3020
    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3021
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPasswordFocus(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3026
    const-string/jumbo v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "setAccountEmailPassword() success"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    return-wide v0

    .line 3022
    .end local v2    # "caller":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 3023
    .local v4, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "setAccountEmailPassword() failed"

    invoke-static {v6, v7, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3024
    const-wide/16 v6, -0x1

    return-wide v6
.end method

.method public setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 1031
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1032
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountName() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const/4 v7, 0x0

    .line 1035
    .local v7, "ret":Z
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1037
    if-nez p2, :cond_0

    .line 1038
    const-string/jumbo v1, "ExchangeAccountPolicy"

    const-string/jumbo v2, "setAccountName() : accountName is null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    return v7

    .line 1041
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1042
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 1043
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_1

    .line 1044
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountName_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    return v7

    .line 1048
    :cond_1
    iput-object p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    .line 1049
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v7

    .line 1065
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v7    # "ret":Z
    :goto_0
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountName() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", accountName ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , accId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    return v7

    .line 1054
    .restart local v7    # "ret":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 1053
    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 1056
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_3

    .line 1057
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountName() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    return v7

    .line 1060
    :cond_3
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 1062
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZ)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v1, v8, v4

    if-eqz v1, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 618
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 619
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlwaysVibrateOnEmailNotification() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 622
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_0

    .line 623
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlwaysVibrateOnEmailNotification_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return v6

    .line 626
    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    .line 627
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v1

    return v1

    .line 632
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 631
    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 634
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_2

    .line 635
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlwaysVibrateOnEmailNotification() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return v6

    .line 639
    :cond_2
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    .line 641
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZ)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v1, v8, v4

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    :cond_3
    return v6
.end method

.method public setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1001
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1002
    const-string/jumbo v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAsDefaultAccount() :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const/4 v1, 0x0

    .line 1004
    .local v1, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1005
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 1006
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_0

    .line 1007
    const-string/jumbo v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAsDefaultAccount_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    return v1

    .line 1011
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    .line 1012
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v1

    .line 1018
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .local v1, "ret":Z
    :goto_0
    const-string/jumbo v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAsDefaultAccount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return v1

    .line 1016
    .local v1, "ret":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Z

    move-result v1

    .local v1, "ret":Z
    goto :goto_0
.end method

.method public setClientAuthCert(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;J)V
    .locals 18
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "certData"    # [B
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "accId"    # J

    .prologue
    .line 865
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 866
    const-string/jumbo v15, "ExchangeAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setClientAuthCert() : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 869
    .local v8, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v14

    .line 871
    .local v14, "userID":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v15

    if-nez v15, :cond_0

    .line 872
    const-string/jumbo v15, "ExchangeAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setClientAuthCert() : No exist accId : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    return-void

    .line 875
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 876
    :cond_1
    const-string/jumbo v15, "ExchangeAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setClientAuthCert() : error : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    return-void

    .line 875
    :cond_2
    const-wide/16 v16, 0x1

    cmp-long v15, p4, v16

    if-ltz v15, :cond_1

    .line 880
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 882
    .local v12, "token":J
    const/4 v15, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 883
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    .line 885
    const/4 v10, 0x0

    .line 886
    .local v10, "intent":Landroid/content/Intent;
    const/4 v11, 0x0

    .line 887
    .local v11, "newintent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 888
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v15, "com.samsung.android.email.INSTALL_CERTIFICATE"

    invoke-direct {v10, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 889
    .local v10, "intent":Landroid/content/Intent;
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "newintent":Landroid/content/Intent;
    const-string/jumbo v15, "com.samsung.android.knox.intent.action.EMAIL_INSTALL_CERT_INTERNAL"

    invoke-direct {v11, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 895
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v4

    .line 896
    .local v4, "accCertID":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v6

    .line 898
    .local v6, "accCertID2":J
    const-string/jumbo v15, "data"

    move-object/from16 v0, p2

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 899
    const-string/jumbo v15, "accountid"

    move-wide/from16 v0, p4

    invoke-virtual {v10, v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 900
    const-string/jumbo v15, "password_id"

    invoke-virtual {v10, v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 902
    const-string/jumbo v15, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    move-object/from16 v0, p2

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 903
    const-string/jumbo v15, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    move-wide/from16 v0, p4

    invoke-virtual {v11, v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 904
    const-string/jumbo v15, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    invoke-virtual {v11, v15, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 906
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v17, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v10, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v17, "com.samsung.android.knox.permission.KNOX_EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v11, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 864
    .end local v4    # "accCertID":J
    .end local v6    # "accCertID2":J
    .end local v10    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 892
    .local v10, "intent":Landroid/content/Intent;
    .restart local v11    # "newintent":Landroid/content/Intent;
    :cond_3
    :try_start_1
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v15, "com.android.email.INSTALL_CERTIFICATE"

    invoke-direct {v10, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v10, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 908
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "newintent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 909
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v15, "ExchangeAccountPolicy"

    const-string/jumbo v16, "setClientAuthCert() : failed"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 911
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 910
    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    .line 911
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    throw v15
.end method

.method public setDataSyncs(Lcom/samsung/android/knox/ContextInfo;ZZZZJ)Z
    .locals 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "syncCalendar"    # Z
    .param p3, "syncContacts"    # Z
    .param p4, "syncTasks"    # Z
    .param p5, "syncNotes"    # Z
    .param p6, "accId"    # J

    .prologue
    .line 1194
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1195
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1196
    .local v5, "containerId":I
    const-string/jumbo v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setDataSyncs() : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p6

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const/4 v7, 0x1

    .line 1199
    .local v7, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    .line 1201
    .local v10, "userID":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1202
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {v11, p1, v0, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    .line 1203
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v2, :cond_0

    .line 1204
    const-string/jumbo v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setSSL_new() : No exist accId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p6

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const/4 v11, 0x0

    return v11

    .line 1208
    :cond_0
    move/from16 v0, p3

    iput-boolean v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    .line 1209
    move/from16 v0, p2

    iput-boolean v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    .line 1210
    move/from16 v0, p4

    iput-boolean v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    .line 1211
    move/from16 v0, p5

    iput-boolean v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    .line 1212
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v11, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v7

    .line 1249
    .end local v2    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v7    # "ret":Z
    :goto_0
    const-string/jumbo v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setDataSyncs() : = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ,  syncCalendar = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", syncContacts = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", accid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p6

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    return v7

    .line 1217
    .restart local v7    # "ret":Z
    :cond_1
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 1216
    move-wide/from16 v0, p6

    invoke-static {p1, v0, v1, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 1219
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_2

    .line 1220
    const-string/jumbo v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setSyncSchedules() : No exist accId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p6

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const/4 v11, 0x0

    return v11

    .line 1224
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1227
    .local v8, "token":J
    :try_start_0
    new-instance v4, Landroid/accounts/Account;

    .line 1228
    iget-object v11, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v12, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v12

    .line 1227
    invoke-direct {v4, v11, v12}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    .local v4, "acct":Landroid/accounts/Account;
    const-string/jumbo v11, "com.android.contacts"

    const/4 v12, 0x1

    invoke-static {v4, v11, v12, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1230
    const-string/jumbo v11, "com.android.contacts"

    move/from16 v0, p3

    invoke-static {v4, v11, v0, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 1232
    const-string/jumbo v11, "com.android.calendar"

    const/4 v12, 0x1

    invoke-static {v4, v11, v12, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1233
    const-string/jumbo v11, "com.android.calendar"

    move/from16 v0, p2

    invoke-static {v4, v11, v0, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 1235
    const-string/jumbo v11, "tasks"

    const/4 v12, 0x1

    invoke-static {v4, v11, v12, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1236
    const-string/jumbo v11, "tasks"

    move/from16 v0, p4

    invoke-static {v4, v11, v0, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 1238
    const-string/jumbo v11, "note"

    const/4 v12, 0x1

    invoke-static {v4, v11, v12, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1239
    const-string/jumbo v11, "note"

    move/from16 v0, p5

    invoke-static {v4, v11, v0, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1241
    .end local v4    # "acct":Landroid/accounts/Account;
    :catch_0
    move-exception v6

    .line 1242
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v11, "ExchangeAccountPolicy"

    const-string/jumbo v12, "setDataSyncs() : "

    invoke-static {v11, v12, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1243
    const/4 v7, 0x0

    .line 1245
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1244
    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 1245
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1244
    throw v11
.end method

.method public setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    .line 2344
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2345
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEmailNotificationsState() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2347
    .local v3, "containerId":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2348
    .local v2, "adminUid":I
    const/4 v0, 0x0

    .line 2349
    .local v0, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2350
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "allowInComingAttachments() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    return v0

    .line 2353
    :cond_0
    const-string/jumbo v7, "AllowNotificationChange"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    .line 2354
    .local v0, "ret":Z
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEmailNotificationsState() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , enable  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    return v0
.end method

.method public setForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    .line 2008
    const-string/jumbo v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 2007
    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setForceSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;I)Z
    .locals 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "storageName"    # Ljava/lang/String;
    .param p5, "alias"    # Ljava/lang/String;
    .param p6, "type"    # I

    .prologue
    .line 3101
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setForceSMIMECertificateAlias() : accId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", alias = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3103
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setForceSMIMECertificateAlias() : credential storage name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    :cond_0
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setForceSMIMECertificateAlias() : accId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3109
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 3111
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v17

    .line 3112
    .local v17, "userID":I
    const/16 v16, 0x0

    .line 3114
    .local v16, "ret":Z
    const/4 v4, 0x1

    move/from16 v0, p6

    if-eq v0, v4, :cond_1

    if-eqz p6, :cond_1

    .line 3115
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setForceSMIMECertificateAlias() : invalid type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3116
    return v16

    .line 3119
    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3120
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setForceSMIMECertificateAlias() : No exist accId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3121
    return v16

    .line 3124
    :cond_2
    const/4 v9, 0x3

    .line 3125
    .local v9, "convertedType":I
    if-nez p6, :cond_3

    .line 3126
    const/4 v9, 0x2

    .line 3129
    :cond_3
    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eqz p5, :cond_4

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IJZI)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3130
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setForceSMIMECertificateAlias() : either a smime certificate has already been enforced on this user by other admin or admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3131
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3131
    const-string/jumbo v6, " is trying to "

    .line 3130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3132
    const-string/jumbo v6, "release a certificate which was not enforced by him"

    .line 3130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3133
    return v16

    .line 3129
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 3136
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3138
    .local v18, "token":J
    if-eqz p5, :cond_6

    .line 3139
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->convertUcmUri(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 3143
    if-nez p5, :cond_6

    .line 3144
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setForceSMIMECertificateAlias() : storage name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " does not exist!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3112
    const/4 v4, 0x0

    .line 3179
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3145
    return v4

    .line 3149
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v14

    .line 3150
    .local v14, "resultID":J
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.edm.intent.action.ENFORCE_SMIME_ALIAS_INTERNAL"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3151
    .local v13, "oldIntent":Landroid/content/Intent;
    const-string/jumbo v4, "account_id"

    move-wide/from16 v0, p2

    invoke-virtual {v13, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3152
    const-string/jumbo v4, "com.samsung.edm.intent.extra.ENFORCE_SMIME_ALIAS_NAME"

    move-object/from16 v0, p5

    invoke-virtual {v13, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3153
    const-string/jumbo v4, "com.samsung.edm.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    move/from16 v0, p6

    invoke-virtual {v13, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3154
    const-string/jumbo v4, "certificate_result_id"

    invoke-virtual {v13, v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3156
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_INTERNAL"

    invoke-direct {v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3157
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move-wide/from16 v0, p2

    invoke-virtual {v11, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3158
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_NAME_INTERNAL"

    move-object/from16 v0, p5

    invoke-virtual {v11, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3159
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    move/from16 v0, p6

    invoke-virtual {v11, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3160
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    invoke-virtual {v11, v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3162
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3164
    const-string/jumbo v4, "com.samsung.edm.intent.extra.ENFORCE_SMIME_ALIAS_STORAGE"

    move-object/from16 v0, p4

    invoke-virtual {v13, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3165
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_STORAGE_INTERNAL"

    move-object/from16 v0, p4

    invoke-virtual {v11, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3168
    :cond_7
    new-instance v12, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v12, v0, v1, v4, v5}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3169
    .local v12, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    move-result v16

    .line 3171
    .local v16, "ret":Z
    if-eqz v16, :cond_8

    .line 3172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v4, v13, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {v4, v11, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3179
    :cond_8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3181
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v13    # "oldIntent":Landroid/content/Intent;
    .end local v14    # "resultID":J
    .end local v16    # "ret":Z
    :goto_1
    const-string/jumbo v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setForceSMIMECertificateAlias() : accId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    return v16

    .line 3175
    :catch_0
    move-exception v10

    .line 3176
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "ExchangeAccountPolicy"

    const-string/jumbo v5, "setForceSMIMECertificateAlias() : failed. "

    invoke-static {v4, v5, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3177
    const/16 v16, 0x0

    .line 3179
    .local v16, "ret":Z
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 3178
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "ret":Z
    :catchall_0
    move-exception v4

    .line 3179
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3178
    throw v4
.end method

.method public setForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    .line 2764
    const-string/jumbo v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 2763
    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    .line 2729
    const-string/jumbo v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 2728
    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    .line 2316
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2317
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setIncomingAttachmentsSize() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2319
    .local v3, "containerId":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2320
    .local v2, "adminUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2321
    .local v8, "userId":I
    const/4 v0, 0x0

    .line 2322
    .local v0, "ret":Z
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2323
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setIncomingAttachmentsSize() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    return v0

    .line 2326
    :cond_0
    if-gez p2, :cond_1

    .line 2327
    const-string/jumbo v1, "ExchangeAccountPolicy"

    const-string/jumbo v4, "setIncomingAttachmentsSize() : Error :: invalid parameter."

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    return v0

    .line 2330
    :cond_1
    const-string/jumbo v7, "IncomingAttachmentSize"

    move-object v1, p0

    move-wide v4, p3

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v0

    .line 2331
    .local v0, "ret":Z
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setIncomingAttachmentsSize() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , size  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    return v0
.end method

.method public setMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "maxage"    # I
    .param p3, "accId"    # J

    .prologue
    .line 2391
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2392
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxCalendarAgeFilter() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    move-object/from16 v0, p1

    iget v7, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2394
    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2395
    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v17

    .line 2396
    .local v17, "userID":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2397
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 2398
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_0

    .line 2399
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxCalendarAgeFilter() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    const/4 v5, 0x0

    return v5

    .line 2402
    :cond_0
    const/4 v5, 0x4

    move/from16 v0, p2

    if-lt v0, v5, :cond_1

    const/4 v5, 0x7

    move/from16 v0, p2

    if-le v0, v5, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    .line 2403
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxCalendarAgeFilter() : Error :: Invalid input parameters."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    const/4 v5, 0x0

    return v5

    .line 2406
    :cond_2
    const-string/jumbo v11, "MaxCalendarAgeFilter"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2407
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxCalendarAgeFilter() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    const/4 v5, 0x0

    return v5

    .line 2410
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v16

    .line 2411
    .local v16, "mdmPolicy":I
    iget v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    move/from16 v0, v16

    if-le v5, v0, :cond_4

    if-eqz v16, :cond_4

    .line 2412
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxCalendarAgeFilter() : need to change Account value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    move/from16 v0, v16

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    .line 2414
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v5

    return v5

    .line 2416
    :cond_4
    const/4 v5, 0x1

    return v5

    .line 2420
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v16    # "mdmPolicy":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 2419
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v15

    .line 2422
    .local v15, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v15, :cond_6

    .line 2423
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxCalendarAgeFilter_old() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    const/4 v5, 0x0

    return v5

    .line 2426
    :cond_6
    const/4 v5, 0x4

    move/from16 v0, p2

    if-lt v0, v5, :cond_7

    const/4 v5, 0x7

    move/from16 v0, p2

    if-le v0, v5, :cond_8

    :cond_7
    if-eqz p2, :cond_8

    .line 2428
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxCalendarAgeFilter_old() : Error :: Invalid input parameters."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    const/4 v5, 0x0

    return v5

    .line 2431
    :cond_8
    const-string/jumbo v11, "MaxCalendarAgeFilter"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2433
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxCalendarAgeFilter_old() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    const/4 v5, 0x0

    return v5

    .line 2436
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v16

    .line 2437
    .restart local v16    # "mdmPolicy":I
    iget v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    move/from16 v0, v16

    if-le v5, v0, :cond_b

    if-eqz v16, :cond_b

    .line 2439
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxCalendarAgeFilter_old() : need to change Account value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    .line 2441
    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v15

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v14}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZ)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v10, v8

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_a
    const/4 v5, 0x0

    goto :goto_0

    .line 2443
    :cond_b
    const/4 v5, 0x1

    return v5
.end method

.method public setMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "maxage"    # I
    .param p3, "accId"    # J

    .prologue
    .line 2454
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2455
    move-object/from16 v0, p1

    iget v7, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2456
    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2457
    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v17

    .line 2458
    .local v17, "userID":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2459
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 2460
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_0

    .line 2461
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailAgeFilter() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    const/4 v5, 0x0

    return v5

    .line 2464
    :cond_0
    if-ltz p2, :cond_1

    const/4 v5, 0x5

    move/from16 v0, p2

    if-le v0, v5, :cond_2

    .line 2465
    :cond_1
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailAgeFilter() : Error :: Invalid input parameters."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    const/4 v5, 0x0

    return v5

    .line 2468
    :cond_2
    const-string/jumbo v11, "MaxEmailAgeFilter"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2470
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailAgeFilter() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    const/4 v5, 0x0

    return v5

    .line 2473
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v16

    .line 2474
    .local v16, "mdmPolicy":I
    iget v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    move/from16 v0, v16

    if-le v5, v0, :cond_4

    if-eqz v16, :cond_4

    .line 2475
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailAgeFilter() : need to change Account value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    move/from16 v0, v16

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    .line 2477
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v5

    return v5

    .line 2479
    :cond_4
    const/4 v5, 0x1

    return v5

    .line 2483
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v16    # "mdmPolicy":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 2482
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v15

    .line 2485
    .local v15, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v15, :cond_6

    .line 2486
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailAgeFilter_old() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    const/4 v5, 0x0

    return v5

    .line 2489
    :cond_6
    if-ltz p2, :cond_7

    const/4 v5, 0x5

    move/from16 v0, p2

    if-le v0, v5, :cond_8

    .line 2491
    :cond_7
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailAgeFilter_old() : Error :: Invalid input parameters."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    const/4 v5, 0x0

    return v5

    .line 2494
    :cond_8
    const-string/jumbo v11, "MaxEmailAgeFilter"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2496
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailAgeFilter_old() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    const/4 v5, 0x0

    return v5

    .line 2499
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v16

    .line 2500
    .restart local v16    # "mdmPolicy":I
    iget v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    move/from16 v0, v16

    if-le v5, v0, :cond_b

    if-eqz v16, :cond_b

    .line 2502
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailAgeFilter_old() : need to change Account value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 2504
    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v15

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v14}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZ)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v10, v8

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_a
    const/4 v5, 0x0

    goto :goto_0

    .line 2506
    :cond_b
    const/4 v5, 0x1

    return v5
.end method

.method public setMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 23
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    .line 2519
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2520
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailBodyTruncationSize() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    move-object/from16 v0, p1

    iget v7, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2522
    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2523
    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v21

    .line 2524
    .local v21, "userID":I
    const/16 v19, 0x0

    .line 2525
    .local v19, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2526
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 2527
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_0

    .line 2528
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailBodyTruncationSize() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    const/4 v5, 0x0

    return v5

    .line 2531
    :cond_0
    if-gez p2, :cond_1

    .line 2532
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailBodyTruncationSize() : Error :: invalid parameter."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    const/4 v5, 0x0

    return v5

    .line 2535
    :cond_1
    const-string/jumbo v11, "MaxEmailBodyTruncationSize"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2537
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailBodyTruncationSize() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    const/4 v5, 0x0

    return v5

    .line 2540
    :cond_2
    const/16 v19, 0x1

    .line 2542
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v18

    .line 2543
    .local v18, "mdmPolicy":I
    iget-object v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v16

    .line 2544
    .local v16, "isMDMallowed":Z
    iget-boolean v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAllowHTMLEmail:Z

    if-nez v5, :cond_3

    if-eqz v16, :cond_4

    .line 2564
    :cond_3
    :goto_0
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailBodyTruncationSize()  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    return v19

    .line 2544
    :cond_4
    if-eqz v18, :cond_3

    .line 2546
    const/16 v17, 0x0

    .line 2547
    .local v17, "isupdate":Z
    iget-object v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v18

    if-le v5, v0, :cond_5

    .line 2548
    iget-object v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v20

    .line 2549
    .local v20, "setValue":I
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailBodyTruncationSize() : need to change Account value1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    move/from16 v0, v20

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    .line 2551
    const/16 v17, 0x1

    .line 2553
    .end local v20    # "setValue":I
    :cond_5
    iget-object v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v18

    if-le v5, v0, :cond_6

    .line 2554
    iget-object v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v20

    .line 2555
    .restart local v20    # "setValue":I
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailBodyTruncationSize() : need to change Account value2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    move/from16 v0, v20

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    .line 2557
    const/16 v17, 0x1

    .line 2559
    .end local v20    # "setValue":I
    :cond_6
    if-eqz v17, :cond_3

    .line 2560
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 2561
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailBodyTruncationSize() : updated account."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2568
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v16    # "isMDMallowed":Z
    .end local v17    # "isupdate":Z
    .end local v18    # "mdmPolicy":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 2567
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v15

    .line 2570
    .local v15, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v15, :cond_8

    .line 2571
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailBodyTruncationSize_old() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    return v19

    .line 2574
    :cond_8
    if-gez p2, :cond_9

    .line 2576
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailBodyTruncationSize_old() : Error :: invalid parameter."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    return v19

    .line 2579
    :cond_9
    const-string/jumbo v11, "MaxEmailBodyTruncationSize"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2581
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailBodyTruncationSize_old() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2582
    return v19

    .line 2584
    :cond_a
    const/16 v19, 0x1

    .line 2585
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v18

    .line 2586
    .restart local v18    # "mdmPolicy":I
    iget-object v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v16

    .line 2587
    .restart local v16    # "isMDMallowed":Z
    iget-boolean v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    if-nez v5, :cond_b

    if-eqz v16, :cond_c

    .line 2610
    .end local v19    # "ret":Z
    :cond_b
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailBodyTruncationSize_old() : success."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    return v19

    .line 2587
    .restart local v19    # "ret":Z
    :cond_c
    if-eqz v18, :cond_b

    .line 2589
    const/16 v17, 0x0

    .line 2590
    .restart local v17    # "isupdate":Z
    iget-object v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v18

    if-le v5, v0, :cond_d

    .line 2591
    iget-object v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v20

    .line 2592
    .restart local v20    # "setValue":I
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailBodyTruncationSize_old() : need to change Account value1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    move/from16 v0, v20

    iput v0, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    .line 2594
    const/16 v17, 0x1

    .line 2596
    .end local v20    # "setValue":I
    :cond_d
    iget-object v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v18

    if-le v5, v0, :cond_e

    .line 2597
    iget-object v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v20

    .line 2598
    .restart local v20    # "setValue":I
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailBodyTruncationSize_old() : need to change Account value2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    move/from16 v0, v20

    iput v0, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    .line 2600
    const/16 v17, 0x1

    .line 2602
    .end local v20    # "setValue":I
    :cond_e
    if-eqz v17, :cond_b

    .line 2603
    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v15

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v14}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZ)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v10, v8

    if-eqz v5, :cond_f

    const/16 v19, 0x1

    .line 2604
    .local v19, "ret":Z
    :goto_1
    if-nez v19, :cond_b

    .line 2605
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailBodyTruncationSize_old() : fail to update Email."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    return v19

    .line 2603
    .local v19, "ret":Z
    :cond_f
    const/16 v19, 0x0

    goto :goto_1
.end method

.method public setMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 23
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    .line 2622
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2623
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailHTMLBodyTruncationSize() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    move-object/from16 v0, p1

    iget v7, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2625
    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2626
    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v21

    .line 2627
    .local v21, "userID":I
    const/16 v19, 0x0

    .line 2628
    .local v19, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2629
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 2630
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_0

    .line 2631
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailHTMLBodyTruncationSize() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    const/4 v5, 0x0

    return v5

    .line 2634
    :cond_0
    if-gez p2, :cond_1

    .line 2635
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailHTMLBodyTruncationSize() : Error :: invalid parameter."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    const/4 v5, 0x0

    return v5

    .line 2638
    :cond_1
    const-string/jumbo v11, "MaxEmailHTMLBodyTruncationSize"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2640
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailHTMLBodyTruncationSize() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    const/4 v5, 0x0

    return v5

    .line 2643
    :cond_2
    const/16 v19, 0x1

    .line 2645
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v18

    .line 2646
    .local v18, "mdmPolicy":I
    iget-object v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v16

    .line 2647
    .local v16, "isMDMallowed":Z
    iget-boolean v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAllowHTMLEmail:Z

    if-eqz v5, :cond_5

    if-eqz v16, :cond_5

    if-eqz v18, :cond_5

    .line 2649
    const/16 v17, 0x0

    .line 2650
    .local v17, "isupdate":Z
    iget-object v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v18

    if-le v5, v0, :cond_3

    .line 2651
    iget-object v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v20

    .line 2652
    .local v20, "setValue":I
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailHTMLBodyTruncationSize() : need to change Account value1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    move/from16 v0, v20

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    .line 2654
    const/16 v17, 0x1

    .line 2656
    .end local v20    # "setValue":I
    :cond_3
    iget-object v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v18

    if-le v5, v0, :cond_4

    .line 2657
    iget-object v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v20

    .line 2658
    .restart local v20    # "setValue":I
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailHTMLBodyTruncationSize() : need to change Account value2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    move/from16 v0, v20

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    .line 2660
    const/16 v17, 0x1

    .line 2662
    .end local v20    # "setValue":I
    :cond_4
    if-eqz v17, :cond_5

    .line 2663
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 2664
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailHTMLBodyTruncationSize() : updated account."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    .end local v17    # "isupdate":Z
    :cond_5
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailHTMLBodyTruncationSize()  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    return v19

    .line 2671
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v16    # "isMDMallowed":Z
    .end local v18    # "mdmPolicy":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 2670
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v15

    .line 2673
    .local v15, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v15, :cond_7

    .line 2674
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailHTMLBodyTruncationSize_old() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    return v19

    .line 2677
    :cond_7
    if-gez p2, :cond_8

    .line 2679
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailHTMLBodyTruncationSize_old() : Error :: invalid parameter."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    return v19

    .line 2682
    :cond_8
    const-string/jumbo v11, "MaxEmailHTMLBodyTruncationSize"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2684
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailHTMLBodyTruncationSize_old() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    return v19

    .line 2687
    :cond_9
    const/16 v19, 0x1

    .line 2688
    iget-object v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v16

    .line 2689
    .restart local v16    # "isMDMallowed":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v18

    .line 2690
    .restart local v18    # "mdmPolicy":I
    iget-boolean v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    if-eqz v5, :cond_d

    if-eqz v16, :cond_d

    if-eqz v18, :cond_d

    .line 2692
    const/16 v17, 0x0

    .line 2693
    .restart local v17    # "isupdate":Z
    iget-object v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v18

    if-le v5, v0, :cond_a

    .line 2694
    iget-object v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v20

    .line 2695
    .restart local v20    # "setValue":I
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailHTMLBodyTruncationSize_old() : need to change Account value1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    move/from16 v0, v20

    iput v0, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    .line 2697
    const/16 v17, 0x1

    .line 2699
    .end local v20    # "setValue":I
    :cond_a
    iget-object v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v18

    if-le v5, v0, :cond_b

    .line 2700
    iget-object v5, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v20

    .line 2701
    .restart local v20    # "setValue":I
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailHTMLBodyTruncationSize_old() : need to change Account value2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    move/from16 v0, v20

    iput v0, v15, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    .line 2703
    const/16 v17, 0x1

    .line 2705
    .end local v20    # "setValue":I
    :cond_b
    if-eqz v17, :cond_d

    .line 2706
    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v15

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v14}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZ)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v10, v8

    if-eqz v5, :cond_c

    const/16 v19, 0x1

    .line 2707
    .local v19, "ret":Z
    :goto_0
    if-nez v19, :cond_d

    .line 2708
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailHTMLBodyTruncationSize_old() : fail to update Email."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    return v19

    .line 2706
    .local v19, "ret":Z
    :cond_c
    const/16 v19, 0x0

    goto :goto_0

    .line 2713
    .end local v17    # "isupdate":Z
    .end local v19    # "ret":Z
    :cond_d
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailHTMLBodyTruncationSize_old() : success."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    return v19
.end method

.method public setPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 756
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 757
    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 758
    .local v5, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 759
    .local v12, "userID":I
    const-string/jumbo v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPassword() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const/4 v15, 0x1

    .line 762
    .local v15, "ret":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 763
    if-nez p2, :cond_0

    .line 764
    const-string/jumbo v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "setPassword() : Invalid input parameter."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const/4 v6, 0x0

    return v6

    .line 768
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 769
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v6, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 770
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_1

    .line 771
    const-string/jumbo v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPassword_new() : No exist accId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const/4 v6, 0x0

    return v6

    .line 774
    :cond_1
    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    .line 775
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v6, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v6

    return v6

    .line 779
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 778
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v13

    .line 780
    .local v13, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v13, :cond_3

    .line 781
    const-string/jumbo v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "setPassword() : accountMData is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const/4 v6, 0x0

    return v6

    .line 785
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 787
    .local v16, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v6, p3

    move-object/from16 v8, p2

    invoke-static/range {v5 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->setPassword(IJLjava/lang/String;Landroid/content/Context;ZZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    :goto_0
    return v15

    .line 789
    :catch_0
    move-exception v14

    .line 790
    .local v14, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "setPassword() : Exception while setPassword"

    invoke-static {v6, v7, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    const/4 v15, 0x0

    .line 794
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 793
    .end local v14    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 794
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    throw v6
.end method

.method public setPastDaysToSync(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "pastDaysToSync"    # I
    .param p3, "accId"    # J

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 925
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPastDaysToSync() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const/4 v7, 0x0

    .line 928
    .local v7, "ret":Z
    const/4 v1, 0x1

    if-gt v1, p2, :cond_0

    const/4 v1, 0x6

    if-ge v1, p2, :cond_1

    .line 929
    :cond_0
    const-string/jumbo v1, "ExchangeAccountPolicy"

    const-string/jumbo v2, "setPastDaysToSync : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    return v7

    .line 932
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 933
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 934
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_2

    .line 935
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPastDaysToSync_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    return v7

    .line 938
    :cond_2
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    .line 939
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v7

    .line 954
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v7    # "ret":Z
    :goto_0
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPastDaysToSync() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , pastDaysToSync = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , accId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    return v7

    .line 942
    .restart local v7    # "ret":Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 941
    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 944
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_4

    .line 945
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPastDaysToSync() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    return v7

    .line 949
    :cond_4
    iput p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 952
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZ)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v1, v8, v4

    if-eqz v1, :cond_5

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setProtocolVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "protocolVersion"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 809
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 813
    const/4 v0, 0x0

    return v0
.end method

.method public setReleaseSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2016
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    move-result v0

    return v0
.end method

.method public setReleaseSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2772
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    move-result v0

    return v0
.end method

.method public setReleaseSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2738
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    move-result v0

    return v0
.end method

.method public setRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    .line 1755
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1756
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequireEncryptedSMIMEMessages () : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1758
    .local v3, "containerId":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1759
    .local v2, "adminUid":I
    const/4 v0, 0x0

    .line 1760
    .local v0, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1761
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequireEncryptedSMIMEMessages() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    return v0

    .line 1765
    :cond_0
    const-string/jumbo v7, "ReqEncryptSmime"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    .line 1764
    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    .line 1766
    .local v0, "ret":Z
    if-nez v0, :cond_1

    .line 1767
    const-string/jumbo v1, "ExchangeAccountPolicy"

    const-string/jumbo v4, "setRequireEncryptedSMIMEMessages() : failed."

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    :cond_1
    return v0
.end method

.method public setRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    .line 1731
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1732
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequireSignedSMIMEMessages() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1734
    .local v2, "adminUid":I
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1735
    .local v3, "containerId":I
    const/4 v0, 0x0

    .line 1736
    .local v0, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1737
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequireSignedSMIMEMessages() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    return v0

    .line 1740
    :cond_0
    const-string/jumbo v7, "ReqSigSmime"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    .line 1741
    .local v0, "ret":Z
    if-nez v0, :cond_1

    .line 1742
    const-string/jumbo v1, "ExchangeAccountPolicy"

    const-string/jumbo v4, "setRequireSignedSMIMEMessages() : failed."

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    :cond_1
    return v0
.end method

.method public setSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enableSSL"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 545
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 546
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSSL() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 549
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_0

    .line 550
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSSL_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return v6

    .line 553
    :cond_0
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    .line 554
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v1

    return v1

    .line 558
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 557
    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 560
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_2

    .line 561
    const-string/jumbo v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSSL() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    return v6

    .line 565
    :cond_2
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 566
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    .line 568
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZ)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v1, v8, v4

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    :cond_3
    return v6
.end method

.method public setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "senderName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 986
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 987
    const-string/jumbo v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSenderName() :  deprecated , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const/4 v0, 0x0

    return v0
.end method

.method public setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 17
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 824
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 825
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSignature() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 827
    .local v11, "containerId":I
    const/4 v12, 0x0

    .line 829
    .local v12, "ret":Z
    if-nez p2, :cond_0

    .line 830
    const-string/jumbo v5, "ExchangeAccountPolicy"

    const-string/jumbo v6, "setSignature() : signature is null"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const/4 v5, 0x0

    return v5

    .line 833
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 834
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 835
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_1

    .line 836
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSignature_new() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    return v12

    .line 839
    :cond_1
    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    .line 840
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v5

    return v5

    .line 843
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 842
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .line 845
    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_3

    .line 846
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSignature() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return v12

    .line 849
    :cond_3
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 851
    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZ)J

    move-result-wide v8

    const-wide/16 v14, -0x1

    cmp-long v5, v14, v8

    if-eqz v5, :cond_4

    const/4 v12, 0x1

    .line 852
    :goto_0
    const-string/jumbo v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSignature() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " , signature = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " , accId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return v12

    .line 851
    :cond_4
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 655
    const-string/jumbo v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSilentVibrateOnEmailNotification() : deprecated. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "syncInterval"    # I
    .param p3, "accId"    # J

    .prologue
    .line 969
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 970
    const-string/jumbo v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSyncInterval() : deprecated , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const/4 v0, 0x0

    return v0
.end method

.method public setSyncPeakTimings(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "peakDays"    # I
    .param p3, "peakStartMinute"    # I
    .param p4, "peakEndMinute"    # I
    .param p5, "accId"    # J

    .prologue
    .line 1081
    const-string/jumbo v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSyncPeakTimings() : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1083
    const/4 v9, 0x0

    .line 1085
    .local v9, "ret":Z
    if-ltz p2, :cond_0

    const/16 v3, 0x7f

    if-le p2, v3, :cond_1

    .line 1086
    :cond_0
    const-string/jumbo v3, "ExchangeAccountPolicy"

    const-string/jumbo v4, "setSyncPeakTimings() : peakDays is invalid"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    return v9

    .line 1089
    :cond_1
    if-ltz p3, :cond_2

    const/16 v3, 0x5a0

    move/from16 v0, p3

    if-le v0, v3, :cond_3

    .line 1090
    :cond_2
    const-string/jumbo v3, "ExchangeAccountPolicy"

    const-string/jumbo v4, "setSyncPeakTimings() : peakStartMinute is invalid"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    return v9

    .line 1093
    :cond_3
    if-ltz p4, :cond_4

    const/16 v3, 0x5a0

    move/from16 v0, p4

    if-le v0, v3, :cond_5

    .line 1094
    :cond_4
    const-string/jumbo v3, "ExchangeAccountPolicy"

    const-string/jumbo v4, "setSyncPeakTimings() : peakEndMinute is invalid"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    return v9

    .line 1097
    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1098
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p5

    invoke-static {v3, p1, v0, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    .line 1099
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v2, :cond_6

    .line 1100
    const-string/jumbo v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSSL_new() : No exist accId : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    return v9

    .line 1104
    :cond_6
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    .line 1105
    move/from16 v0, p3

    iput v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    .line 1106
    move/from16 v0, p4

    iput v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    .line 1107
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v9

    .line 1127
    .end local v2    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v9    # "ret":Z
    :goto_0
    const-string/jumbo v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSyncPeakTimings() = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " , peakDays ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", mPeakStartMinute = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", peakEndMinute = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", accid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    return v9

    .line 1114
    .restart local v9    # "ret":Z
    :cond_7
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 1113
    move-wide/from16 v0, p5

    invoke-static {p1, v0, v1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v5

    .line 1116
    .local v5, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v5, :cond_8

    .line 1117
    const-string/jumbo v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSyncPeakTimings() : No exist accId : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    return v9

    .line 1120
    :cond_8
    iput p2, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 1121
    move/from16 v0, p3

    iput v0, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 1122
    move/from16 v0, p4

    iput v0, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 1123
    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-wide/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZ)J

    move-result-wide v6

    const-wide/16 v10, -0x1

    cmp-long v3, v10, v6

    if-eqz v3, :cond_9

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public setSyncSchedules(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "peakSyncSchedule"    # I
    .param p3, "offPeakSyncSchedule"    # I
    .param p4, "roamingSyncSchedule"    # I
    .param p5, "accId"    # J

    .prologue
    .line 1145
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1146
    const-string/jumbo v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSyncSchedules() :  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const/4 v9, 0x0

    .line 1149
    .local v9, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1150
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p5

    invoke-static {v3, p1, v0, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    .line 1151
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v2, :cond_0

    .line 1152
    const-string/jumbo v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSyncSchedules_new() : No exist accId : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    return v9

    .line 1156
    :cond_0
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    .line 1157
    move/from16 v0, p3

    iput v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    .line 1158
    move/from16 v0, p4

    iput v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    .line 1159
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v9

    .line 1177
    .end local v2    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v9    # "ret":Z
    :goto_0
    const-string/jumbo v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSyncSchedules() : = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " ,  peakSyncSchedule = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", offPeakSyncSchedule = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", roamingSyncSchedule = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", accid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    return v9

    .line 1164
    .restart local v9    # "ret":Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 1163
    move-wide/from16 v0, p5

    invoke-static {p1, v0, v1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v5

    .line 1166
    .local v5, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v5, :cond_2

    .line 1167
    const-string/jumbo v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSyncSchedules() : No exist accId : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    return v9

    .line 1171
    :cond_2
    iput p2, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 1172
    move/from16 v0, p3

    iput v0, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 1173
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    iput v3, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 1175
    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-wide/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZ)J

    move-result-wide v6

    const-wide/16 v10, -0x1

    cmp-long v3, v10, v6

    if-eqz v3, :cond_4

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1173
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1175
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 2219
    return-void
.end method
