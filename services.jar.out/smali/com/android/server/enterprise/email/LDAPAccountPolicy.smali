.class public Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.super Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;
.source "LDAPAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;,
        Lcom/android/server/enterprise/email/LDAPAccountPolicy$OldLDAPIntentReceiver;
    }
.end annotation


# static fields
.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_BASEDN:Ljava/lang/String; = "basedn"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_HOST:Ljava/lang/String; = "host"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_ISSSL:Ljava/lang/String; = "isssl"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_PORT:Ljava/lang/String; = "port"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_SERVICE:Ljava/lang/String; = "service"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_TRUSTALL:Ljava/lang/String; = "trustall"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERID:Ljava/lang/String; = "user_id"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERNAME:Ljava/lang/String; = "user_name"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERPASSWORD_ID:Ljava/lang/String; = "user_password_id"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_iSANONYMOUS:Ljava/lang/String; = "isanonymous"

.field private static final TAG:Ljava/lang/String; = "LDAPAccountPolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/enterprise/email/LDAPAccountPolicy;IIJ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "result"    # I
    .param p3, "acctId"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 86
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 88
    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "edm.intent.action.ldap.createacct.internal"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/email/LDAPAccountPolicy$OldLDAPIntentReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$OldLDAPIntentReceiver;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 91
    const-string/jumbo v4, "android.permission.sec.MDM_LDAP_INTERNAL"

    const/4 v5, 0x0

    .line 90
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 92
    const-string/jumbo v0, "LDAPAccountPolicyService"

    const-string/jumbo v1, "success to add old receiver"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :goto_0
    :try_start_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT_INTERNAL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 101
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_LDAP"

    const/4 v5, 0x0

    .line 100
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v0, "LDAPAccountPolicyService"

    const-string/jumbo v1, "success to add receiver"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :goto_1
    return-void

    .line 94
    :catch_0
    move-exception v6

    .line 95
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "LDAPAccountPolicyService"

    const-string/jumbo v1, "Regist BroadCast failed : "

    invoke-static {v0, v1, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 104
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 105
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "LDAPAccountPolicyService"

    const-string/jumbo v1, "Regist BroadCast failed : "

    invoke-static {v0, v1, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_LDAP"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 82
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_LDAP"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 81
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAccountLDAPType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const-string/jumbo v0, "com.samsung.android.ldap"

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 70
    const-string/jumbo v1, "enterprise_policy_new"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private sendBroadcastCreateLDAPAcctResultIntent(IIJ)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "result"    # I
    .param p3, "acctId"    # J

    .prologue
    .line 353
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "edm.intent.action.ldap.createacct.result"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "edm.intent.extra.ldap.result"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string/jumbo v3, "edm.intent.extra.ldap.acct.id"

    invoke-virtual {v1, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 356
    const-string/jumbo v3, "edm.intent.extra.ldap.user.id"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 359
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v7, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v3, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v3, "LDAPAccountPolicyService"

    const-string/jumbo v6, "sendBroadcastCreateLDAPAcctResultIntent() success to send result Intent. "

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v2, "new_intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.LDAP_RESULT"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.LDAP_ACCT_ID"

    invoke-virtual {v2, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 370
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.LDAP_USER_ID"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 373
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v7, "com.samsung.android.knox.permission.KNOX_LDAP"

    invoke-virtual {v3, v2, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v3, "LDAPAccountPolicyService"

    const-string/jumbo v6, "sendBroadcastCreateLDAPAcctResultIntent() success to send result Intent 2. "

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 378
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 351
    :goto_1
    return-void

    .line 361
    .end local v2    # "new_intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 362
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "LDAPAccountPolicyService"

    const-string/jumbo v6, "sendBroadcastCreateLDAPAcctResultIntent() failed to send result Intent. "

    invoke-static {v3, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 363
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 364
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    throw v3

    .line 375
    .restart local v2    # "new_intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 376
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "LDAPAccountPolicyService"

    const-string/jumbo v6, "sendBroadcastCreateLDAPAcctResultIntent() failed to send result Intent 2. "

    invoke-static {v3, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 378
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 377
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    .line 378
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 377
    throw v3
.end method

.method private setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v6

    .line 326
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "android.permission.sec.MDM_EXCHANGE"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 327
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 326
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    invoke-virtual {v6, p1, v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 328
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 329
    .local v5, "userID":I
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 330
    .local v3, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 331
    .local v0, "callID":J
    if-nez p2, :cond_0

    .line 332
    const-wide/16 v6, -0x1

    return-wide v6

    .line 334
    :cond_0
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

    .line 335
    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    return-wide v0

    .line 336
    .end local v2    # "caller":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 337
    .local v4, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "LDAPAccountPolicyService"

    const-string/jumbo v7, "setAccountEmailPassword() failed"

    invoke-static {v6, v7, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    const-wide/16 v6, -0x1

    return-wide v6
.end method


# virtual methods
.method public declared-synchronized createLDAPAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/LDAPAccount;)V
    .locals 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ldap"    # Lcom/samsung/android/knox/accounts/LDAPAccount;

    .prologue
    monitor-enter p0

    .line 146
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 147
    .local v5, "callingUserId":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 148
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v11

    .line 149
    .local v11, "userId":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 151
    .local v6, "containerId":I
    if-nez p2, :cond_0

    .line 152
    const-string/jumbo v18, "LDAPAccountPolicyService"

    const-string/jumbo v19, "createLDAPAccount() : failed. ldap is not vaild."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 153
    return-void

    .line 156
    :cond_0
    :try_start_1
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "emailPkageName":Ljava/lang/String;
    invoke-static {v8, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v18

    if-nez v18, :cond_1

    .line 158
    const-wide/16 v18, -0x1

    const/16 v20, -0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-direct {v0, v11, v1, v2, v3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    .line 159
    const-string/jumbo v18, "LDAPAccountPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "createLDAPAccount : Error :: Email app is not installed on user "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 160
    return-void

    .line 163
    :cond_1
    :try_start_2
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 164
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    .line 168
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 169
    .local v16, "token_new":J
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "EmailPackageName":Ljava/lang/String;
    const-string/jumbo v18, "LDAPAccountPolicyService"

    const-string/jumbo v19, "createLDAPAccount_new()"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    :try_start_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v14

    .line 173
    .local v14, "password_id_old":J
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v18, "edm.intent.action.internal.CREATE_LDAPACCOUNT"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "user_id"

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 175
    const-string/jumbo v18, "user_name"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v18, "user_password_id"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 177
    const-string/jumbo v18, "port"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string/jumbo v18, "isssl"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const-string/jumbo v18, "service"

    const-string/jumbo v19, "ldap"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string/jumbo v18, "isanonymous"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string/jumbo v18, "host"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string/jumbo v18, "basedn"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string/jumbo v18, "trustall"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    invoke-virtual {v9, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v20, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v12

    .line 189
    .local v12, "password_id":J
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.knox.intent.action.CREATE_LDAPACCOUNT_INTERNAL"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v10, "newIntent":Landroid/content/Intent;
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 191
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.USER_NAME_INTERNAL"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.USER_PASSWORD_ID_INTERNAL"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 193
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.PORT_INTERNAL"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.IS_SSL_INTERNAL"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string/jumbo v19, "ldap"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.IS_ANONYMOUS_INTERNAL"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.HOST_INTERNAL"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.BASE_DN_INTERNAL"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    invoke-virtual {v10, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v20, "com.samsung.android.knox.permission.KNOX_EMAIL"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v18, "LDAPAccountPolicyService"

    const-string/jumbo v19, "createLDAPAccount_new() : successfully sent intent to Email app. "

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 203
    return-void

    .line 204
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "newIntent":Landroid/content/Intent;
    .end local v12    # "password_id":J
    .end local v14    # "password_id_old":J
    :catch_0
    move-exception v7

    .line 205
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v18, "LDAPAccountPolicyService"

    const-string/jumbo v19, "createLDAPAccount_new() : unexpected Exception occurs. "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 207
    :try_start_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    const-wide/16 v18, -0x1

    const/16 v20, -0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-direct {v0, v11, v1, v2, v3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    .line 212
    const-string/jumbo v18, "LDAPAccountPolicyService"

    const-string/jumbo v19, "createLDAPAccount() : failed with unknown error."

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    .line 144
    return-void

    .line 206
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 207
    :try_start_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    throw v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v4    # "EmailPackageName":Ljava/lang/String;
    .end local v5    # "callingUserId":I
    .end local v6    # "containerId":I
    .end local v8    # "emailPkageName":Ljava/lang/String;
    .end local v11    # "userId":I
    .end local v16    # "token_new":J
    :catchall_1
    move-exception v18

    monitor-exit p0

    throw v18
.end method

.method public declared-synchronized deleteLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 12
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "id"    # J

    .prologue
    const/4 v11, 0x0

    monitor-enter p0

    .line 221
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 222
    .local v1, "callingUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 223
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 226
    .local v5, "userId":I
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-result-object v0

    .line 227
    .local v0, "account":Lcom/samsung/android/knox/accounts/LDAPAccount;
    if-nez v0, :cond_0

    .line 228
    const-string/jumbo v8, "LDAPAccountPolicyService"

    const-string/jumbo v9, "deleteLDAPAccount() : ldapId is invalid"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 229
    return v11

    .line 232
    :cond_0
    :try_start_1
    const-string/jumbo v8, "device_account_policy"

    .line 231
    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 233
    .local v2, "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getAccountLDAPType()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v10}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 238
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 240
    .local v6, "token_new":J
    :try_start_2
    iget-object v8, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->deleteLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    .line 245
    .local v4, "ret":Z
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    .end local v4    # "ret":Z
    :goto_0
    const-string/jumbo v8, "LDAPAccountPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "deleteLDAPAccount() : id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", ret = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 249
    return v4

    .line 234
    .end local v6    # "token_new":J
    :cond_2
    :try_start_4
    const-string/jumbo v8, "LDAPAccountPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "deleteLDAPAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 235
    return v11

    .line 241
    .restart local v6    # "token_new":J
    :catch_0
    move-exception v3

    .line 242
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v8, "LDAPAccountPolicyService"

    const-string/jumbo v9, "deleteLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v8, v9, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 243
    const/4 v4, 0x0

    .line 245
    .local v4, "ret":Z
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .end local v0    # "account":Lcom/samsung/android/knox/accounts/LDAPAccount;
    .end local v1    # "callingUserId":I
    .end local v2    # "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "ret":Z
    .end local v5    # "userId":I
    .end local v6    # "token_new":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 244
    .restart local v0    # "account":Lcom/samsung/android/knox/accounts/LDAPAccount;
    .restart local v1    # "callingUserId":I
    .restart local v2    # "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .restart local v5    # "userId":I
    .restart local v6    # "token_new":J
    :catchall_1
    move-exception v8

    .line 245
    :try_start_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public getAllLDAPAccounts(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 14
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/accounts/LDAPAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 285
    .local v3, "callingUserId":I
    const-string/jumbo v11, "LDAPAccountPolicyService"

    const-string/jumbo v12, "getAllLDAPAccounts() "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 287
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    .line 288
    .local v10, "userId":I
    const/4 v6, 0x0

    .line 290
    .local v6, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/LDAPAccount;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 292
    .local v8, "token_new":J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v11, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2

    .line 293
    .local v2, "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    if-eqz v2, :cond_2

    .line 294
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .end local v6    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/LDAPAccount;>;"
    .local v7, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/LDAPAccount;>;"
    :try_start_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "acct$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    .line 296
    .local v0, "acct":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-result-object v5

    .line 297
    .local v5, "ldap_acct":Lcom/samsung/android/knox/accounts/LDAPAccount;
    if-eqz v5, :cond_0

    .line 298
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 302
    .end local v0    # "acct":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    .end local v1    # "acct$iterator":Ljava/util/Iterator;
    .end local v5    # "ldap_acct":Lcom/samsung/android/knox/accounts/LDAPAccount;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    move-object v6, v7

    .line 303
    .end local v2    # "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    .end local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/LDAPAccount;>;"
    :goto_1
    :try_start_2
    const-string/jumbo v11, "LDAPAccountPolicyService"

    const-string/jumbo v12, "getAllLDAPAccounts() : Failed, Exception occurs. "

    invoke-static {v11, v12, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    const/4 v6, 0x0

    .line 306
    .restart local v6    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/LDAPAccount;>;"
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/LDAPAccount;>;"
    :goto_2
    const-string/jumbo v12, "LDAPAccountPolicyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getAllLDAPAccounts() ret = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v6, :cond_3

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-object v6

    .restart local v1    # "acct$iterator":Ljava/util/Iterator;
    .restart local v2    # "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    .restart local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/LDAPAccount;>;"
    :cond_1
    move-object v6, v7

    .line 306
    .end local v1    # "acct$iterator":Ljava/util/Iterator;
    .end local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/LDAPAccount;>;"
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 305
    .end local v2    # "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    :catchall_0
    move-exception v11

    .line 306
    :goto_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    throw v11

    .line 308
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 305
    .restart local v2    # "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    .restart local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/LDAPAccount;>;"
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/LDAPAccount;>;"
    .local v6, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/LDAPAccount;>;"
    goto :goto_4

    .line 302
    .end local v2    # "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    .local v6, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/LDAPAccount;>;"
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .locals 10
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "id"    # J

    .prologue
    .line 257
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 258
    .local v1, "callingUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 259
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 260
    .local v6, "userId":I
    const/4 v3, 0x0

    .line 261
    .local v3, "ret":Lcom/samsung/android/knox/accounts/LDAPAccount;
    const-wide/16 v8, 0x1

    cmp-long v7, p2, v8

    if-gez v7, :cond_0

    .line 262
    const-string/jumbo v7, "LDAPAccountPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLDAPAccount() : ldapId is invalid, id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-object v3

    .line 265
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 267
    .local v4, "token_new":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    move-result-object v0

    .line 268
    .local v0, "acct":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 273
    .local v3, "ret":Lcom/samsung/android/knox/accounts/LDAPAccount;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    .end local v0    # "acct":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    .end local v3    # "ret":Lcom/samsung/android/knox/accounts/LDAPAccount;
    :goto_0
    const-string/jumbo v8, "LDAPAccountPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLDAPAccount() id = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", ret ="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v3, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-object v3

    .line 269
    .local v3, "ret":Lcom/samsung/android/knox/accounts/LDAPAccount;
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v7, "LDAPAccountPolicyService"

    const-string/jumbo v8, "getLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v7, v8, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    const/4 v3, 0x0

    .line 273
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 272
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 273
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 272
    throw v7

    .line 275
    .end local v3    # "ret":Lcom/samsung/android/knox/accounts/LDAPAccount;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 347
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 317
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 319
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 321
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 314
    const-string/jumbo v0, "LDAPAccountPolicyService"

    const-string/jumbo v1, "systemReady()... "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method
