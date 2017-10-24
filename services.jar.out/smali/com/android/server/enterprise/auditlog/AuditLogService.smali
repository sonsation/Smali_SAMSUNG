.class public Lcom/android/server/enterprise/auditlog/AuditLogService;
.super Lcom/samsung/android/knox/log/IAuditLog$Stub;
.source "AuditLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/auditlog/AuditLogService$1;
    }
.end annotation


# static fields
.field private static final AUDIT_LOG_SERVICE:Ljava/lang/String; = "AuditLogService"

.field private static final TAG:Ljava/lang/String; = "AuditLogService"

.field private static final UID_AUDITD:I = 0x7cf

.field private static final swComponentWhitelist:[Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContainerOwnerCache:Landroid/content/ContentValues;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

.field private volatile mIsBootCompleted:Z

.field private mLinkedHashMap:Ljava/util/Map;

.field private final mMessagePackage:Ljava/lang/String;

.field private final mPattern:Ljava/util/regex/Pattern;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 85
    const-string/jumbo v1, "SKMM"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "KeyStore"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "keystore"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "AndroidKeyStoreKeyPairGeneratorSpi"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "AndroidKeyStoreSpi"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "KeyGenParameterSpec"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "OkHostnameVerifier"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "OpenSSLSocketImpl"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "OpenSSLRandom"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "PKIXRevocationChecker"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "Connection"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 96
    const-string/jumbo v1, "SocketConnector"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 97
    const-string/jumbo v1, "CertPathValidator"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 98
    const-string/jumbo v1, "ecryptfs"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "wpa_supplicant"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 84
    sput-object v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->swComponentWhitelist:[Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;-><init>()V

    .line 150
    new-instance v4, Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 120
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 121
    new-instance v4, Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-direct {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    .line 122
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 123
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 124
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    .line 125
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->createAdmins()V

    .line 126
    const-string/jumbo v4, "(^Admin) ([0-9]+) (.*$)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    .line 127
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/auditlog/InformFailure;->setContext(Landroid/content/Context;)V

    .line 129
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v1, "IFilter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v4, "android.intent.action.REBOOT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v5

    .line 138
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 139
    .end local v2    # "admin":Lcom/android/server/enterprise/auditlog/Admin;
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/Admin;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v2, v0

    .line 141
    .local v2, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "admin":Lcom/android/server/enterprise/auditlog/Admin;
    :cond_1
    monitor-exit v5

    .line 147
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mMessagePackage:Ljava/lang/String;

    .line 118
    return-void

    .line 136
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/Admin;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 21
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .param p9, "asUser"    # Z

    .prologue
    .line 991
    if-nez p9, :cond_1

    .line 992
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkIptablesEnabledForAdmins()Z

    move-result v17

    .line 993
    .local v17, "isIptablesNeeded":Z
    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 994
    .local v15, "callingUid":I
    :goto_0
    const/16 v16, 0x0

    .line 999
    .local v16, "isChangedByIptables":Z
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isIptablesMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1000
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getCorrectUserForIptables(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p8

    .line 1002
    const/16 v16, 0x1

    .line 1003
    const-string/jumbo v4, "IPT_MDM_LOG"

    const-string/jumbo v5, "IPT_MDM_LOG "

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p7

    .line 1017
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 1018
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    move/from16 v0, p5

    if-ne v0, v4, :cond_1

    :cond_0
    if-eqz v16, :cond_6

    .line 1026
    .end local v15    # "callingUid":I
    .end local v16    # "isChangedByIptables":Z
    .end local v17    # "isIptablesNeeded":Z
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1027
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    .line 1028
    .local v14, "c":Ljava/util/Collection;
    const/4 v12, 0x0

    .line 1029
    .local v12, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1030
    :try_start_0
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1031
    .end local v12    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .local v18, "it":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1032
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v12, v0

    .line 1033
    .local v12, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-virtual {v12}, Lcom/android/server/enterprise/auditlog/Admin;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 1036
    .local v13, "adminUserId":I
    const/4 v4, -0x1

    move/from16 v0, p8

    if-eq v0, v4, :cond_3

    .line 1038
    if-nez v13, :cond_7

    const/16 v4, 0x64

    move/from16 v0, p8

    if-ge v0, v4, :cond_7

    .line 1044
    :cond_3
    :goto_4
    invoke-virtual {v12}, Lcom/android/server/enterprise/auditlog/Admin;->getAuditLogRulesInfo()Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v10, p8

    move-object/from16 v11, p7

    invoke-direct/range {v4 .. v12}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterLoggingMessage(Lcom/samsung/android/knox/log/AuditLogRulesInfo;IZILjava/lang/String;ILjava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1046
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1047
    .local v19, "messageBuilder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1048
    const-string/jumbo v4, " "

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1050
    const-string/jumbo v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1052
    const-string/jumbo v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    if-eqz p4, :cond_9

    const-string/jumbo v4, "1"

    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    const-string/jumbo v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    move-object/from16 v0, v19

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1056
    const-string/jumbo v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    move-object/from16 v0, v19

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1058
    const-string/jumbo v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const-string/jumbo v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    const-string/jumbo v4, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/auditlog/Admin;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 1029
    .end local v12    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v13    # "adminUserId":I
    .end local v18    # "it":Ljava/util/Iterator;
    .end local v19    # "messageBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    monitor-exit v20

    throw v4

    .line 993
    .end local v14    # "c":Ljava/util/Collection;
    .restart local v17    # "isIptablesNeeded":Z
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .restart local v15    # "callingUid":I
    goto/16 :goto_0

    .line 1011
    .restart local v16    # "isChangedByIptables":Z
    :cond_5
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p8

    goto/16 :goto_1

    .line 1019
    :cond_6
    const/16 p8, -0x1

    goto/16 :goto_2

    .line 1040
    .end local v15    # "callingUid":I
    .end local v16    # "isChangedByIptables":Z
    .end local v17    # "isIptablesNeeded":Z
    .restart local v12    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v13    # "adminUserId":I
    .restart local v14    # "c":Ljava/util/Collection;
    .restart local v18    # "it":Ljava/util/Iterator;
    :cond_7
    move/from16 v0, p8

    if-ne v13, v0, :cond_8

    if-nez v13, :cond_3

    .line 1042
    :cond_8
    :try_start_1
    invoke-virtual {v12}, Lcom/android/server/enterprise/auditlog/Admin;->getUid()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkOwnContainerOrSelf(II)Z

    move-result v4

    .line 1036
    if-eqz v4, :cond_2

    goto/16 :goto_4

    .line 1053
    .restart local v19    # "messageBuilder":Ljava/lang/StringBuilder;
    :cond_9
    const-string/jumbo v4, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .end local v12    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v13    # "adminUserId":I
    .end local v19    # "messageBuilder":Ljava/lang/StringBuilder;
    :cond_a
    monitor-exit v20

    .line 989
    .end local v14    # "c":Ljava/util/Collection;
    .end local v18    # "it":Ljava/util/Iterator;
    :cond_b
    return-void
.end method

.method private appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 955
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 956
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 957
    .local v4, "callingPid":I
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 958
    .local v3, "callingPackageFromUid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 959
    .local v2, "callingPackage":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 960
    const-string/jumbo v12, "activity"

    .line 959
    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 961
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    .line 962
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 963
    .local v10, "token":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 965
    .local v1, "appProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 967
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 969
    if-eqz v1, :cond_1

    .line 970
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v2    # "callingPackage":Ljava/lang/String;
    .local v8, "pi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 971
    .local v7, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v9, :cond_0

    .line 972
    iget-object v2, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .local v2, "callingPackage":Ljava/lang/String;
    goto :goto_0

    .line 966
    .end local v7    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8    # "pi$iterator":Ljava/util/Iterator;
    .local v2, "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v9

    .line 967
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 966
    throw v9

    .line 975
    .end local v1    # "appProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "callingPackage":Ljava/lang/String;
    .end local v10    # "token":J
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    .local v6, "messageBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string/jumbo v9, "\n[logged by: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    const-string/jumbo v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    const-string/jumbo v9, ", pid: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 983
    const-string/jumbo v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 933
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 935
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 936
    :cond_0
    const-string/jumbo v3, "AuditLogService"

    const-string/jumbo v4, "Error: Invalid auditlog parameters!"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    return v2

    .line 940
    :cond_1
    const/4 v0, 0x0

    .line 941
    .local v0, "allowed":Z
    sget-object v3, Lcom/android/server/enterprise/auditlog/AuditLogService;->swComponentWhitelist:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 942
    .local v1, "swComponentAllowed":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 943
    const/4 v0, 0x1

    .line 948
    .end local v1    # "swComponentAllowed":Ljava/lang/String;
    :cond_2
    return v0

    .line 941
    .restart local v1    # "swComponentAllowed":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 951
    .end local v0    # "allowed":Z
    .end local v1    # "swComponentAllowed":Ljava/lang/String;
    :cond_4
    return v2
.end method

.method private checkIptablesEnabledForAdmins()Z
    .locals 9

    .prologue
    .line 773
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 774
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 775
    .local v3, "isIptablesLogsEnabled":Z
    const/4 v1, 0x0

    .line 776
    .local v1, "isAuditEnabled":Z
    const/4 v5, 0x0

    .line 777
    .end local v1    # "isAuditEnabled":Z
    .end local v3    # "isIptablesLogsEnabled":Z
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 778
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 779
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 780
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v2

    .line 781
    .local v2, "isIptablesEnables":Z
    move v3, v2

    .line 782
    .local v3, "isIptablesLogsEnabled":Z
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v1

    .line 783
    .local v1, "isAuditEnabled":Z
    if-eqz v2, :cond_0

    move v7, v1

    :goto_1
    or-int/2addr v5, v7

    .local v5, "ret":Z
    goto :goto_0

    .end local v5    # "ret":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 785
    .end local v0    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v1    # "isAuditEnabled":Z
    .end local v2    # "isIptablesEnables":Z
    .end local v3    # "isIptablesLogsEnabled":Z
    .end local v6    # "uid":I
    :cond_1
    return v5
.end method

.method private checkKernelEnabledForAdmins()Z
    .locals 7

    .prologue
    .line 755
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 756
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 757
    .local v1, "isKernelEnabled":Z
    const/4 v0, 0x0

    .line 758
    .local v0, "isAuditEnabled":Z
    const/4 v3, 0x0

    .line 759
    .end local v0    # "isAuditEnabled":Z
    .end local v1    # "isKernelEnabled":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 760
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 761
    .local v5, "uid":I
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v4

    .line 762
    .local v4, "rulesInfo":Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    invoke-virtual {v4}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v1

    .line 763
    .local v1, "isKernelEnabled":Z
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v0

    .line 764
    .local v0, "isAuditEnabled":Z
    if-eqz v1, :cond_0

    move v6, v0

    :goto_1
    or-int/2addr v3, v6

    .local v3, "ret":Z
    goto :goto_0

    .end local v3    # "ret":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 766
    .end local v0    # "isAuditEnabled":Z
    .end local v1    # "isKernelEnabled":Z
    .end local v4    # "rulesInfo":Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .end local v5    # "uid":I
    :cond_1
    return v3
.end method

.method private checkOwnContainerOrSelf(II)Z
    .locals 9
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    const/4 v8, 0x1

    .line 1072
    const/16 v5, 0x64

    if-lt p1, v5, :cond_3

    .line 1074
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1075
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1076
    .local v4, "ownerUid":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 1078
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 1079
    return v8

    .line 1082
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1083
    .local v2, "ownerAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1084
    .local v0, "adminAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1085
    .local v1, "adminUserId":I
    if-ne v2, v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 1086
    return v8

    .line 1092
    .end local v0    # "adminAppId":I
    .end local v1    # "adminUserId":I
    .end local v2    # "ownerAppId":I
    .end local v4    # "ownerUid":Ljava/lang/Integer;
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 1093
    .local v3, "ownerUid":I
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1095
    if-ne v3, p2, :cond_2

    .line 1096
    return v8

    .line 1099
    :cond_2
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1100
    .restart local v2    # "ownerAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1101
    .restart local v0    # "adminAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1102
    .restart local v1    # "adminUserId":I
    if-ne v2, v0, :cond_3

    if-ne p1, v1, :cond_3

    .line 1103
    return v8

    .line 1107
    .end local v0    # "adminAppId":I
    .end local v1    # "adminUserId":I
    .end local v2    # "ownerAppId":I
    .end local v3    # "ownerUid":I
    :cond_3
    const/4 v5, 0x0

    return v5
.end method

.method private createAdmins()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 231
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "AUDITLOG"

    invoke-virtual {v9, v10, v11, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 234
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v3, 0x0

    .line 235
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 236
    .end local v3    # "cv":Landroid/content/ContentValues;
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 237
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 238
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "adminUid"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 239
    .local v8, "uid":I
    const-string/jumbo v9, "auditLogEnabled"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 240
    new-instance v0, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v8, v9, v10}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 241
    .local v0, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    const-string/jumbo v9, "auditCriticalSize"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 242
    .local v2, "criticalSize":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 243
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    .line 245
    :cond_1
    const-string/jumbo v9, "auditMaximumSize"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 246
    .local v5, "maximumSize":Ljava/lang/Integer;
    if-eqz v5, :cond_2

    .line 247
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    .line 249
    :cond_2
    const-string/jumbo v9, "auditLogIptables"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 250
    const-string/jumbo v9, "auditLogMDM"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/auditlog/Admin;->setMDMLogging(Z)V

    .line 251
    const-string/jumbo v9, "auditLogBufferSize"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 252
    .local v1, "bufferSize":Ljava/lang/Long;
    if-eqz v1, :cond_3

    .line 253
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    .line 256
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)V

    .line 258
    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v7

    .line 260
    .local v7, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    goto/16 :goto_0

    .line 230
    .end local v0    # "admin":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v1    # "bufferSize":Ljava/lang/Long;
    .end local v2    # "criticalSize":Ljava/lang/Integer;
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "maximumSize":Ljava/lang/Integer;
    .end local v7    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "uid":I
    :cond_4
    return-void
.end method

.method private enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 595
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_AUDIT_LOG"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 596
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 595
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 593
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceLoggerPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 584
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_AUDIT_LOG"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 585
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 584
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 582
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .locals 14
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x0

    .line 266
    new-instance v4, Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    invoke-direct {v4}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>()V

    .line 267
    .local v4, "rulesInfo":Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    if-eqz p1, :cond_4

    .line 268
    const-string/jumbo v10, "auditLogRuleSeverity"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 269
    .local v6, "severityRule":Ljava/lang/Integer;
    const-string/jumbo v10, "auditLogRuleOutcome"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 270
    .local v3, "outcomeRule":Ljava/lang/Integer;
    const-string/jumbo v10, "auditLogKernelEnabled"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 271
    const-string/jumbo v11, "true"

    .line 270
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 272
    .local v0, "enableKernelLogs":Z
    const-string/jumbo v10, "auditLogRuleGroups"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "groupsRuleString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 274
    .local v1, "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v1, "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    move v10, v9

    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v5, v11, v10

    .line 277
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 281
    .end local v1    # "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    const-string/jumbo v10, "auditLogRuleUsers"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 282
    .local v8, "usersRuleString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 283
    .local v7, "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 284
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v7, "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    :goto_1
    if-ge v9, v11, :cond_1

    aget-object v5, v10, v9

    .line 286
    .restart local v5    # "s":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 290
    .end local v5    # "s":Ljava/lang/String;
    .end local v7    # "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    if-eqz v6, :cond_2

    .line 291
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setSeverityRule(I)V

    .line 293
    :cond_2
    if-eqz v3, :cond_3

    .line 294
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setOutcomeRule(I)V

    .line 296
    :cond_3
    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setGroupsRule(Ljava/util/List;)V

    .line 297
    invoke-virtual {v4, v0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setKernelLogsEnabled(Z)V

    .line 298
    invoke-virtual {v4, v7}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setUsersRule(Ljava/util/List;)V

    .line 300
    .end local v0    # "enableKernelLogs":Z
    .end local v2    # "groupsRuleString":Ljava/lang/String;
    .end local v3    # "outcomeRule":Ljava/lang/Integer;
    .end local v6    # "severityRule":Ljava/lang/Integer;
    .end local v8    # "usersRuleString":Ljava/lang/String;
    :cond_4
    return-object v4
.end method

.method private filterByGroup(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 2
    .param p1, "group"    # I
    .param p2, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .prologue
    .line 1383
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 1383
    if-nez v0, :cond_0

    .line 1385
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1383
    if-eqz v0, :cond_1

    .line 1386
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1388
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private filterByOutcome(ZLcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 4
    .param p1, "outcome"    # Z
    .param p2, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1371
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1372
    if-eqz p1, :cond_1

    .line 1373
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1376
    :cond_0
    return v3

    .line 1374
    :cond_1
    if-nez p1, :cond_2

    .line 1375
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    :cond_2
    return v2
.end method

.method private filterBySeverity(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 1
    .param p1, "severityGrade"    # I
    .param p2, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .prologue
    .line 1364
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1365
    const/4 v0, 0x1

    return v0

    .line 1367
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private filterByUser(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .prologue
    .line 1392
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 1392
    if-nez v0, :cond_0

    .line 1394
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1392
    if-nez v0, :cond_0

    .line 1395
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1396
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1398
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private filterKernel(Ljava/lang/String;Lcom/samsung/android/knox/log/AuditLogRulesInfo;Ljava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z
    .locals 3
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .param p3, "logMessage"    # Ljava/lang/String;
    .param p4, "admin"    # Lcom/android/server/enterprise/auditlog/Admin;

    .prologue
    const/4 v2, 0x1

    .line 1409
    const-string/jumbo v1, "KERNEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1413
    const-string/jumbo v1, "IPT"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1414
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1415
    invoke-virtual {p4}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1416
    return v2

    .line 1418
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1423
    return v2

    .line 1426
    .end local v0    # "index":I
    :cond_1
    return v2

    .line 1428
    .restart local v0    # "index":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private filterLoggingMessage(Lcom/samsung/android/knox/log/AuditLogRulesInfo;IZILjava/lang/String;ILjava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z
    .locals 1
    .param p1, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .param p2, "severityGrade"    # I
    .param p3, "outcome"    # Z
    .param p4, "group"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "admin"    # Lcom/android/server/enterprise/auditlog/Admin;

    .prologue
    .line 1350
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterBySeverity(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    invoke-direct {p0, p3, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByOutcome(ZLcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    .line 1350
    if-eqz v0, :cond_0

    .line 1352
    invoke-direct {p0, p4, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByGroup(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    .line 1350
    if-eqz v0, :cond_0

    .line 1353
    invoke-direct {p0, p6, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterByUser(ILcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v0

    .line 1350
    if-eqz v0, :cond_0

    .line 1354
    invoke-direct {p0, p5, p1, p7, p8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterKernel(Ljava/lang/String;Lcom/samsung/android/knox/log/AuditLogRulesInfo;Ljava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z

    move-result v0

    .line 1350
    if-eqz v0, :cond_0

    .line 1355
    const/4 v0, 0x1

    return v0

    .line 1357
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getAdminPackageNameForUid(I)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1335
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1336
    .local v0, "appUid":I
    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_1

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_0

    const/16 v2, 0x4e1f

    if-le v0, v2, :cond_1

    .line 1337
    :cond_0
    const-string/jumbo v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    return-object v2

    .line 1340
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1341
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1342
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1344
    :cond_2
    return-object v1
.end method

.method private getCorrectUserForIptables(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1435
    const-string/jumbo v3, "UID="

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1436
    .local v1, "init":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 1437
    move v0, v1

    .line 1438
    .local v0, "end":I
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    .line 1439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1441
    :cond_0
    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1442
    .local v2, "uid":I
    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_2

    .line 1443
    const/4 p3, -0x1

    .line 1448
    .end local v0    # "end":I
    .end local v2    # "uid":I
    :cond_1
    :goto_1
    return p3

    .line 1445
    .restart local v0    # "end":I
    .restart local v2    # "uid":I
    :cond_2
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    goto :goto_1
.end method

.method private getDeviceInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getDeviceInventory()Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

    move-result-object v1

    .line 203
    .local v1, "deviceInventory":Lcom/samsung/android/knox/deviceinfo/DeviceInventory;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v3, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, " -----------------------------------------\n"

    .line 206
    .local v2, "separator":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OEM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DEVICE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PLATFORM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getDeviceOS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OS VERSION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getDeviceOSVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "baseband":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BASEBAND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DEVICE ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-object v3
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 605
    const-string/jumbo v1, "enterprise_policy_new"

    .line 604
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 496
    new-instance v3, Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    invoke-direct {v3}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>()V

    .line 497
    .local v3, "ruleInfo":Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 498
    .local v1, "filterValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "AUDITLOG"

    .line 500
    const/4 v6, 0x0

    .line 499
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 501
    .local v2, "returnedValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 502
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 503
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v3

    .line 505
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-object v3
.end method

.method private isAuditLogEnabledInternal(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x1

    return v0

    .line 344
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isIptablesMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 1455
    const-string/jumbo v1, "KERNEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1456
    const-string/jumbo v1, "IPT_MDM_LOG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1457
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1458
    const/4 v1, 0x1

    return v1

    .line 1461
    .end local v0    # "index":I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private setAvailableSize(I)J
    .locals 24
    .param p1, "uid"    # I

    .prologue
    .line 681
    const-wide/16 v22, -0x1

    .line 683
    .local v22, "ret":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v20

    .line 684
    .local v20, "path":Ljava/io/File;
    new-instance v21, Landroid/os/StatFs;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 686
    .local v21, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 687
    .local v16, "blockSize":J
    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v14, v2

    .line 688
    .local v14, "availableBlocks":J
    mul-long v18, v14, v16

    .line 690
    .local v18, "freeBytesInternal":J
    const-wide/16 v2, 0x5

    mul-long v2, v2, v18

    const-wide/16 v4, 0x64

    div-long v6, v2, v4

    .line 692
    .local v6, "availableSpace":J
    const-wide/32 v2, 0xa00000

    cmp-long v2, v6, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x3200000

    cmp-long v2, v6, v2

    if-gtz v2, :cond_1

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "AUDITLOG"

    .line 694
    const-string/jumbo v5, "auditLogBufferSize"

    move/from16 v3, p1

    .line 693
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    move-wide/from16 v22, v6

    .line 704
    :cond_0
    :goto_0
    return-wide v22

    .line 698
    :cond_1
    const-wide/32 v2, 0x3200000

    cmp-long v2, v6, v2

    if-ltz v2, :cond_0

    .line 699
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "AUDITLOG"

    .line 700
    const-string/jumbo v11, "auditLogBufferSize"

    const-wide/32 v12, 0x3200000

    move/from16 v9, p1

    .line 699
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 701
    const-wide/32 v22, 0x3200000

    goto :goto_0
.end method

.method private updateEDMNativeHelperStatus()V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/internal/EDMNativeHelper;->setAuditEnabled(Z)V

    .line 185
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkKernelEnabledForAdmins()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/internal/EDMNativeHelper;->setKernelLogsEnabled(Z)V

    .line 187
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkIptablesEnabledForAdmins()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/internal/EDMNativeHelper;->setIptablesLogsEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOff()V

    .line 183
    :goto_0
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/knox/internal/EDMNativeHelper;->setIptablesLogsEnabled(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    goto :goto_0
.end method

.method private validateRulesParameters(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 4
    .param p1, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1466
    if-nez p1, :cond_0

    .line 1467
    return v2

    .line 1469
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 1470
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 1471
    :cond_1
    return v2

    .line 1473
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v0

    if-ltz v0, :cond_3

    .line 1474
    invoke-virtual {p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    .line 1475
    :cond_3
    return v2

    .line 1477
    :cond_4
    return v3
.end method


# virtual methods
.method public AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "uid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 846
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 848
    .local v12, "checkPermission":Z
    if-eqz v12, :cond_0

    .line 850
    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 849
    invoke-direct/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    .line 844
    :cond_0
    return-void
.end method

.method public AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 17
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "uid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "userId"    # I

    .prologue
    .line 867
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 868
    .local v15, "checkPermission":Z
    if-eqz v15, :cond_1

    .line 873
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 874
    .local v16, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 875
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 876
    .local v14, "appUid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "$1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 877
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 876
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 878
    const-string/jumbo v5, " $3"

    .line 876
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 881
    .end local v14    # "appUid":I
    :cond_0
    const/4 v13, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    .line 880
    invoke-direct/range {v4 .. v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    .line 865
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    return-void
.end method

.method public AuditLoggerPrivileged(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 900
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 901
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 904
    .local v9, "appendedMessage":Ljava/lang/String;
    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    .line 903
    invoke-direct/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    .line 898
    .end local v9    # "appendedMessage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public AuditLoggerPrivilegedAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "userId"    # I

    .prologue
    .line 924
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 925
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 928
    .local v9, "appendedMessage":Ljava/lang/String;
    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p8

    .line 927
    invoke-direct/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    .line 922
    .end local v9    # "appendedMessage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public checkAuditLogEnforce(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "swComponent"    # Ljava/lang/String;
    .param p3, "logMessage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 790
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 792
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 793
    :cond_0
    const-string/jumbo v4, "AuditLogService"

    const-string/jumbo v5, "Error: Invalid auditlog parameters!"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    return v6

    .line 796
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 797
    const-string/jumbo v4, "AuditLogService"

    const-string/jumbo v5, " AuditLogger calls from Profile return default value"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    return v6

    .line 801
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 802
    .local v1, "callingUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "callingPackage":Ljava/lang/String;
    const/4 v3, 0x1

    .line 806
    .local v3, "isEnforce":Z
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mMessagePackage:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x7cf

    if-ne v1, v4, :cond_6

    .line 808
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 811
    :cond_4
    if-eqz v3, :cond_5

    .line 814
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceLoggerPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :cond_5
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 807
    :cond_6
    const/16 v4, 0x138a

    if-ne v1, v4, :cond_4

    goto :goto_0

    .line 815
    :catch_0
    move-exception v2

    .line 818
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v4, "com.android.chrome"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 819
    const-string/jumbo v4, "AuditLogService"

    .line 820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AuditLogger: Module does not have AuditLog permission. Package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 819
    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_7
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v4

    .line 824
    const-string/jumbo v5, "AuditLogService"

    const-string/jumbo v6, "AuditLogger"

    .line 823
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 830
    .end local v0    # "callingPackage":Ljava/lang/String;
    .end local v1    # "callingUid":I
    .end local v2    # "ex":Ljava/lang/SecurityException;
    .end local v3    # "isEnforce":Z
    :cond_8
    return v6
.end method

.method public disableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 713
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 714
    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 715
    .local v14, "uid":I
    const/4 v13, 0x1

    .line 716
    .local v13, "ret":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/auditlog/Admin;

    .line 718
    .local v10, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v10, :cond_0

    .line 719
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 720
    .local v11, "changeValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "auditLogEnabled"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 722
    .local v12, "filterValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "adminUid"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "AUDITLOG"

    invoke-virtual {v1, v2, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v15

    .line 724
    .local v15, "updated":I
    if-lez v15, :cond_2

    .line 725
    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 726
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .line 730
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 731
    const-string/jumbo v2, "AuditLog/isAuditLogEnabled"

    .line 732
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 729
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 733
    const/4 v13, 0x1

    .line 739
    .end local v11    # "changeValues":Landroid/content/ContentValues;
    .end local v12    # "filterValues":Landroid/content/ContentValues;
    .end local v15    # "updated":I
    :cond_0
    :goto_0
    if-eqz v13, :cond_1

    .line 741
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string/jumbo v7, "AuditLogService"

    .line 742
    const-string/jumbo v8, "AuditLog status has changed to  disable"

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 740
    const/4 v3, 0x5

    .line 741
    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 740
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 745
    :cond_1
    return v13

    .line 735
    .restart local v11    # "changeValues":Landroid/content/ContentValues;
    .restart local v12    # "filterValues":Landroid/content/ContentValues;
    .restart local v15    # "updated":I
    :cond_2
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public disableIPTablesLogging(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v2, 0x0

    .line 389
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 390
    iget v12, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 391
    .local v12, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .line 392
    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v11, 0x0

    .line 394
    .local v11, "ret":Z
    if-eqz v9, :cond_0

    .line 395
    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v0

    if-nez v0, :cond_2

    .line 396
    const/4 v11, 0x1

    .line 407
    .end local v11    # "ret":Z
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    .line 409
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "AuditLogService"

    .line 410
    const-string/jumbo v7, "AuditLog iptables log status has changed to disabled"

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 408
    const/4 v2, 0x5

    .line 409
    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 408
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 412
    :cond_1
    return v11

    .line 398
    .restart local v11    # "ret":Z
    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 399
    .local v10, "cv":Landroid/content/ContentValues;
    const-string/jumbo v0, "auditLogIptables"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "AUDITLOG"

    invoke-virtual {v0, v12, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    .line 401
    .local v11, "ret":Z
    if-eqz v11, :cond_0

    .line 402
    invoke-virtual {v9, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 403
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    goto :goto_0
.end method

.method public declared-synchronized dumpLogFile(Lcom/samsung/android/knox/ContextInfo;JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "begin"    # J
    .param p4, "end"    # J
    .param p6, "filter"    # Ljava/lang/String;
    .param p7, "outputFile"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    monitor-enter p0

    .line 1239
    if-eqz p7, :cond_0

    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1241
    :cond_0
    const-string/jumbo v4, "AuditLogService"

    const-string/jumbo v5, "invalid output file"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .line 1240
    :cond_1
    :try_start_1
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1244
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 1246
    :try_start_2
    const-string/jumbo v4, "AuditLogService"

    const-string/jumbo v5, "check error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->checkError()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1255
    :cond_2
    :try_start_3
    new-instance v10, Ljava/lang/SecurityManager;

    invoke-direct {v10}, Ljava/lang/SecurityManager;-><init>()V

    .line 1256
    .local v10, "sm":Ljava/lang/SecurityManager;
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1261
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1262
    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1263
    .local v11, "uid":I
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1264
    .local v3, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v3, :cond_4

    .line 1265
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/Admin;->getDumpState()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1266
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/auditlog/Admin;->setFilter(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 1267
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .line 1248
    .end local v3    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v10    # "sm":Ljava/lang/SecurityManager;
    .end local v11    # "uid":I
    :catch_0
    move-exception v2

    .line 1249
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v4, "AuditLogService"

    const-string/jumbo v5, "error checking file descriptor"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1250
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .line 1257
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 1258
    .local v9, "ex":Ljava/lang/SecurityException;
    :try_start_6
    const-string/jumbo v4, "AuditLogService"

    const-string/jumbo v5, "can\'t write to file descriptor"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1259
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .end local v9    # "ex":Ljava/lang/SecurityException;
    .restart local v3    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v10    # "sm":Ljava/lang/SecurityManager;
    .restart local v11    # "uid":I
    :cond_3
    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p7

    .line 1269
    :try_start_7
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/auditlog/Admin;->dump(JJLandroid/os/ParcelFileDescriptor;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v4

    monitor-exit p0

    return v4

    .line 1272
    :cond_4
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .end local v3    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v10    # "sm":Ljava/lang/SecurityManager;
    .end local v11    # "uid":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public enableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 617
    const/16 v17, 0x0

    .line 618
    .local v17, "ret":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 619
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v18, v0

    .line 622
    .local v18, "uid":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 623
    const/4 v2, 0x1

    return v2

    .line 625
    :cond_0
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 626
    .local v14, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "auditLogEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "AUDITLOG"

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v17

    .line 629
    .local v17, "ret":Z
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->setAvailableSize(I)J

    move-result-wide v12

    .line 630
    .local v12, "allocatedSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_1

    .line 631
    const/16 v17, 0x0

    .line 633
    .end local v17    # "ret":Z
    :cond_1
    if-eqz v17, :cond_2

    .line 634
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 635
    .local v16, "filterValue":Landroid/content/ContentValues;
    const-string/jumbo v2, "adminUid"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 638
    new-instance v11, Lcom/android/server/enterprise/auditlog/Admin;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v18

    invoke-direct {v11, v0, v2, v3}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 639
    .local v11, "adm":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    .line 644
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    .line 646
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)V

    .line 648
    invoke-virtual {v11, v12, v13}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    .line 650
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleDirectory()V

    .line 651
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleFile()V

    .line 653
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 656
    const-string/jumbo v3, "AuditLog/isAuditLogEnabled"

    .line 657
    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 655
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 664
    .end local v11    # "adm":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v12    # "allocatedSize":J
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v16    # "filterValue":Landroid/content/ContentValues;
    :cond_2
    :goto_0
    if-eqz v17, :cond_3

    .line 666
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string/jumbo v8, "AuditLogService"

    .line 667
    const-string/jumbo v9, "AuditLog status has changed to  enable"

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 665
    const/4 v4, 0x5

    .line 666
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 665
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 671
    :cond_3
    return v17

    .line 640
    .restart local v11    # "adm":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v12    # "allocatedSize":J
    .restart local v14    # "cv":Landroid/content/ContentValues;
    .restart local v16    # "filterValue":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 659
    .end local v11    # "adm":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v12    # "allocatedSize":J
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v16    # "filterValue":Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 660
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 661
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableIPTablesLogging(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v4, 0x1

    .line 360
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 361
    iget v12, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 362
    .local v12, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .line 363
    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v11, 0x0

    .line 364
    .local v11, "ret":Z
    if-eqz v9, :cond_1

    .line 365
    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    return v4

    .line 368
    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .local v10, "cv":Landroid/content/ContentValues;
    const-string/jumbo v0, "auditLogIptables"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "AUDITLOG"

    invoke-virtual {v0, v12, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    .line 371
    .local v11, "ret":Z
    if-eqz v11, :cond_1

    .line 372
    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 373
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .line 377
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v11    # "ret":Z
    :cond_1
    if-eqz v11, :cond_2

    .line 379
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "AuditLogService"

    .line 380
    const-string/jumbo v7, "AuditLog iptables log status has changed to enabled"

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 378
    const/4 v2, 0x5

    .line 379
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    .line 378
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 382
    :cond_2
    return v11
.end method

.method public getAuditLogRules(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 434
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 435
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 436
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getAuditLogRulesInfo()Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v2

    return-object v2

    .line 439
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v2

    return-object v2
.end method

.method public getCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1167
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1168
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1170
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCriticalLogSize()I

    move-result v1

    return v1

    .line 1173
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getCurrentLogFileSize(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1116
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1118
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCurrentLogFileSize()I

    move-result v1

    return v1

    .line 1122
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1217
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1218
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1220
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getMaximumLogSize()I

    move-result v1

    return v1

    .line 1223
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isAuditLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string/jumbo v0, "AuditLogService"

    const-string/jumbo v1, " isAuditLogEnabled calls from Profile return default value"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 311
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledInternal(I)Z

    move-result v0

    return v0
.end method

.method public isAuditLogEnabledAsUser(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 318
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 319
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 321
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 322
    .local v0, "adminUserId":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 324
    return v4

    .line 325
    :cond_1
    const/16 v3, 0x64

    if-ge p1, v3, :cond_3

    .line 326
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    .line 328
    :cond_2
    return v4

    .line 331
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkOwnContainerOrSelf(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    return v4

    .line 337
    .end local v0    # "adminUserId":I
    .end local v2    # "uid":I
    :cond_4
    return v5
.end method

.method public isAuditServiceRunning()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x0

    return v0

    .line 353
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isIPTablesLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 419
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const-string/jumbo v1, "AuditLogService"

    const-string/jumbo v2, " isIPTablesLoggingEnabled calls from Profile return default value"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return v4

    .line 423
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 424
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 426
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    return v1

    .line 429
    :cond_1
    return v4
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1479
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1294
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1322
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1323
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 1324
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 1326
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 1327
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .line 1321
    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1305
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1306
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_0

    .line 1307
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 1309
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 1310
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .line 1304
    :cond_0
    return-void
.end method

.method public setAuditLogRules(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "auditLogRulesInfo"    # Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .prologue
    .line 443
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 444
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    .line 445
    .local v19, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->validateRulesParameters(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    const/4 v2, 0x0

    return v2

    .line 448
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/auditlog/Admin;

    .line 449
    .local v11, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v15, 0x0

    .line 450
    .local v15, "ret":Z
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 451
    .local v14, "insertionValues":Landroid/content/ContentValues;
    if-eqz v11, :cond_1

    .line 452
    const-string/jumbo v2, "auditLogEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v16, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 460
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .local v17, "sbUsersRule":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 466
    :cond_3
    const-string/jumbo v2, "auditLogRuleOutcome"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    const-string/jumbo v2, "auditLogRuleSeverity"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    const-string/jumbo v2, "auditLogRuleGroups"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string/jumbo v2, "auditLogKernelEnabled"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string/jumbo v2, "auditLogRuleUsers"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 473
    .local v18, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "adminUid"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "AUDITLOG"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v15

    .line 475
    .local v15, "ret":Z
    if-nez v15, :cond_4

    .line 476
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v3

    .line 477
    const-string/jumbo v4, "Cannot set filter on Database"

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 476
    :goto_0
    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_4
    if-eqz v11, :cond_5

    .line 481
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)V

    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->updateEDMNativeHelperStatus()V

    .line 485
    :cond_5
    if-eqz v15, :cond_6

    .line 487
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string/jumbo v8, "AuditLogService"

    .line 488
    const-string/jumbo v9, "AuditLog filter rules has changed."

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 486
    const/4 v4, 0x5

    .line 487
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 486
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 492
    :cond_6
    return v15

    .line 456
    .end local v17    # "sbUsersRule":Ljava/lang/StringBuilder;
    .end local v18    # "selectionValues":Landroid/content/ContentValues;
    .local v15, "ret":Z
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 457
    .local v12, "i":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 462
    .end local v12    # "i":Ljava/lang/Integer;
    .end local v13    # "i$iterator":Ljava/util/Iterator;
    .restart local v17    # "sbUsersRule":Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 463
    .restart local v12    # "i":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 477
    .end local v12    # "i":Ljava/lang/Integer;
    .end local v13    # "i$iterator":Ljava/util/Iterator;
    .local v15, "ret":Z
    .restart local v18    # "selectionValues":Landroid/content/ContentValues;
    :cond_9
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public setCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "percentageValue"    # I

    .prologue
    const/4 v4, 0x1

    .line 1133
    const/4 v10, 0x0

    .line 1135
    .local v10, "ret":Z
    if-lt p2, v4, :cond_0

    const/16 v0, 0x63

    if-le p2, v0, :cond_1

    .line 1136
    :cond_0
    return v10

    .line 1138
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1139
    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1140
    .local v11, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1142
    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v9, :cond_3

    .line 1143
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "AUDITLOG"

    .line 1144
    const-string/jumbo v2, "auditCriticalSize"

    .line 1143
    invoke-virtual {v0, v11, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    .line 1145
    .local v10, "ret":Z
    if-nez v10, :cond_2

    .line 1146
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    .line 1147
    const-string/jumbo v1, "Cannot set critcal log size on Databank"

    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1146
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_2
    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    .line 1152
    .end local v10    # "ret":Z
    :cond_3
    if-eqz v10, :cond_4

    .line 1154
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "AuditLogService"

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AuditLog critical size has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1153
    const/4 v2, 0x5

    .line 1154
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    .line 1153
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1158
    :cond_4
    return v10
.end method

.method public setMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "percentageValue"    # I

    .prologue
    const/4 v4, 0x1

    .line 1183
    const/4 v10, 0x0

    .line 1185
    .local v10, "ret":Z
    if-lt p2, v4, :cond_0

    const/16 v0, 0x63

    if-le p2, v0, :cond_1

    .line 1186
    :cond_0
    return v10

    .line 1188
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1189
    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1190
    .local v11, "uid":I
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1192
    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v9, :cond_3

    .line 1193
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "AUDITLOG"

    .line 1194
    const-string/jumbo v2, "auditMaximumSize"

    .line 1193
    invoke-virtual {v0, v11, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    .line 1195
    .local v10, "ret":Z
    if-nez v10, :cond_2

    .line 1196
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    .line 1197
    const-string/jumbo v1, "Cannot set maximum log size on databank"

    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1196
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    :cond_2
    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    .line 1202
    .end local v10    # "ret":Z
    :cond_3
    if-eqz v10, :cond_4

    .line 1204
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string/jumbo v6, "AuditLogService"

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AuditLog maximum size has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1203
    const/4 v2, 0x5

    .line 1204
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    .line 1203
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1208
    :cond_4
    return v10
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1284
    return-void
.end method
