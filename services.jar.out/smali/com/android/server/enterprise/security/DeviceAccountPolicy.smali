.class public Lcom/android/server/enterprise/security/DeviceAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;
.source "DeviceAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# static fields
.field public static final ACCOUNT_TYPE_EMAIL:Ljava/lang/String; = "com.samsung.android.email"

.field public static final ACCOUNT_TYPE_EMAIL_OLD:Ljava/lang/String; = "com.android.email"

.field public static final ACCOUNT_TYPE_EXCHANGE:Ljava/lang/String; = "com.samsung.android.exchange"

.field public static final ACCOUNT_TYPE_EXCHANGE_OLD:Ljava/lang/String; = "com.android.exchange"

.field public static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field public static final ACCOUNT_TYPE_GOOGLE_EXCHANGE:Ljava/lang/String; = "com.google.android.gm.exchange"

.field public static final ACCOUNT_TYPE_GOOGLE_IMAP:Ljava/lang/String; = "com.google.android.gm.legacyimap"

.field public static final ACCOUNT_TYPE_GOOGLE_POP3:Ljava/lang/String; = "com.google.android.gm.pop3"

.field public static final ACCOUNT_TYPE_GOOGLE_WORK:Ljava/lang/String; = "com.google.work"

.field public static final ACCOUNT_TYPE_LDAP:Ljava/lang/String; = "com.samsung.android.ldap"

.field public static final ACCOUNT_TYPE_LDAP_OLD:Ljava/lang/String; = "com.android.ldap"

.field public static final ACCOUNT_TYPE_SIGNIN:Ljava/lang/String; = "com.osp.app.signin"

.field public static final ADDITION_BLACKLIST:Ljava/lang/String; = "ADDITION_BLACKLIST"

.field public static final ADDITION_WHITELIST:Ljava/lang/String; = "ADDITION_WHITELIST"

.field public static final ALL_ACCOUNTS:Ljava/lang/String; = ".*"

.field public static final REMOVAL_BLACKLIST:Ljava/lang/String; = "REMOVAL_BLACKLIST"

.field public static final REMOVAL_WHITELIST:Ljava/lang/String; = "REMOVAL_WHITELIST"

.field private static final TAG:Ljava/lang/String; = "DeviceAccountPolicy"

.field private static mSupportedAccountTypes:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.email"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.exchange"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.android.ldap"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.osp.app.signin"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.google"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    .line 62
    :goto_0
    return-void

    .line 96
    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.email"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.exchange"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.ldap"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.osp.app.signin"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.google"

    aput-object v1, v0, v6

    .line 97
    const-string/jumbo v1, "com.google.android.gm.legacyimap"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.gm.pop3"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.gm.exchange"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.work"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 96
    sput-object v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 115
    iput-object p1, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    .line 116
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 114
    return-void
.end method

.method private addAccountsToBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p4, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 151
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p3, :cond_1

    .line 152
    :cond_0
    const-string/jumbo v5, "DeviceAccountPolicy"

    const-string/jumbo v6, "addAccountsToBWLInternal() : invalid parameter."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v5, 0x0

    return v5

    .line 156
    :cond_1
    const/4 v4, 0x1

    .line 158
    .local v4, "result":Z
    :try_start_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v4    # "result":Z
    .local v1, "account$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    .local v0, "account":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 160
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string/jumbo v5, "type"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v5, "name"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v5, "listType"

    invoke-virtual {v2, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz v4, :cond_2

    .line 165
    iget-object v5, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 166
    const-string/jumbo v6, "AccountBlackWhiteList"

    .line 165
    invoke-virtual {v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .local v4, "result":Z
    goto :goto_0

    .line 164
    .end local v4    # "result":Z
    :cond_2
    const/4 v4, 0x0

    .local v4, "result":Z
    goto :goto_0

    .line 168
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "account$iterator":Ljava/util/Iterator;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "result":Z
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "DeviceAccountPolicy"

    const-string/jumbo v6, "Handled Exception in addAccountsToBWLInternal()"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    const/4 v4, 0x0

    .line 173
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    return v4
.end method

.method private addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p4, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 146
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z
    .locals 5
    .param p2, "match"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    .local v1, "target":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string/jumbo v2, "DeviceAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAccountMatch() : matched. match = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,target ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v2, 0x1

    return v2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DeviceAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAccountMatch() : invalid matched. match = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,target ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "target":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listType"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 242
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 243
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 245
    .local v4, "result":Z
    new-array v1, v11, [Ljava/lang/String;

    .line 246
    const-string/jumbo v7, "adminUid"

    aput-object v7, v1, v8

    const-string/jumbo v7, "type"

    aput-object v7, v1, v9

    .line 247
    const-string/jumbo v7, "listType"

    aput-object v7, v1, v10

    .line 250
    .local v1, "columns":[Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    .line 251
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    aput-object p2, v5, v9

    aput-object p3, v5, v10

    .line 256
    .local v5, "values":[Ljava/lang/String;
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 257
    .local v6, "where":Landroid/content/ContentValues;
    const-string/jumbo v7, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v7, "listType"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v7, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 263
    const-string/jumbo v8, "AccountBlackWhiteList"

    .line 262
    invoke-virtual {v7, v8, v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 264
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 265
    :cond_0
    const-string/jumbo v7, "DeviceAccountPolicy"

    const-string/jumbo v8, "clearAccountsFromBWLInternal() : no accounts."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v9

    .line 269
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "AccountBlackWhiteList"

    invoke-virtual {v7, v8, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 276
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "result":Z
    .end local v6    # "where":Landroid/content/ContentValues;
    :goto_0
    return v4

    .line 271
    .restart local v4    # "result":Z
    :catch_0
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "DeviceAccountPolicy"

    const-string/jumbo v8, "Handled Exception in clearAccountsFromBWLInternal()"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_SECURITY"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 122
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 121
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 212
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 213
    const-string/jumbo v7, "DeviceAccountPolicy"

    const-string/jumbo v8, "getAccountsFromBWLInternal() : no support type."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-object v10

    .line 218
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 219
    .local v6, "userId":I
    invoke-direct {p0, v6, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 221
    .local v0, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v0, :cond_1

    .line 222
    const-string/jumbo v7, "DeviceAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountsFromBWLInternal() : Account list for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is null."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-object v10

    .line 226
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 227
    .local v5, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/AccountControlInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "uid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 230
    .local v3, "uid":Ljava/lang/Integer;
    new-instance v1, Lcom/samsung/android/knox/accounts/AccountControlInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/accounts/AccountControlInfo;-><init>()V

    .line 231
    .local v1, "aci":Lcom/samsung/android/knox/accounts/AccountControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/samsung/android/knox/accounts/AccountControlInfo;->adminPackageName:Ljava/lang/String;

    .line 232
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v1, Lcom/samsung/android/knox/accounts/AccountControlInfo;->entries:Ljava/util/List;

    .line 233
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    .end local v1    # "aci":Lcom/samsung/android/knox/accounts/AccountControlInfo;
    .end local v3    # "uid":Ljava/lang/Integer;
    :cond_2
    return-object v2
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    .line 109
    const-string/jumbo v1, "enterprise_policy_new"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 20
    .param p1, "userId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 283
    :try_start_0
    const-string/jumbo v17, "DeviceAccountPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "loadAccounts() : userId  = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    .line 285
    const-string/jumbo v18, "AccountBlackWhiteList"

    const-string/jumbo v19, "adminUid"

    .line 284
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v14

    .line 286
    .local v14, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_0

    .line 287
    const-string/jumbo v17, "DeviceAccountPolicy"

    const-string/jumbo v18, "loadAccounts() : admin is null "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    const/16 v17, 0x0

    monitor-exit p0

    return-object v17

    .line 291
    :cond_0
    :try_start_1
    new-instance v15, Ljava/util/TreeSet;

    invoke-direct {v15, v14}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 294
    .local v15, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 296
    .local v4, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "uid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 297
    .local v12, "uid":Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    .line 298
    .local v5, "adminUid":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-instance v18, Ljava/util/TreeSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v4    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "adminUid":I
    .end local v12    # "uid":Ljava/lang/Long;
    .end local v13    # "uid$iterator":Ljava/util/Iterator;
    .end local v14    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 301
    .restart local v4    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v13    # "uid$iterator":Ljava/util/Iterator;
    .restart local v14    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v15    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1
    const/16 v17, 0x2

    :try_start_2
    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    .line 302
    const-string/jumbo v17, "adminUid"

    const/16 v18, 0x0

    aput-object v17, v6, v18

    const-string/jumbo v17, "name"

    const/16 v18, 0x1

    aput-object v17, v6, v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    .local v6, "columns":[Ljava/lang/String;
    :try_start_3
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 309
    .local v16, "where":Landroid/content/ContentValues;
    const-string/jumbo v17, "containerID"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    const-string/jumbo v17, "userID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    const-string/jumbo v17, "type"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string/jumbo v17, "listType"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    .line 315
    const-string/jumbo v18, "AccountBlackWhiteList"

    .line 314
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 316
    .local v9, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 317
    const-string/jumbo v17, "DeviceAccountPolicy"

    const-string/jumbo v18, "loadAccounts() : list empty "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_2
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "cv$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 321
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v17, "adminUid"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 322
    .local v11, "typeLong":Ljava/lang/Long;
    if-eqz v11, :cond_4

    .line 323
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v5

    .line 324
    .restart local v5    # "adminUid":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    const-string/jumbo v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 330
    .end local v5    # "adminUid":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cv$iterator":Ljava/util/Iterator;
    .end local v9    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v11    # "typeLong":Ljava/lang/Long;
    .end local v16    # "where":Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 331
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v17, "DeviceAccountPolicy"

    const-string/jumbo v18, "Handled Exception in loadAccounts()"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    monitor-exit p0

    .line 334
    return-object v4

    .line 326
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cv$iterator":Ljava/util/Iterator;
    .restart local v9    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v11    # "typeLong":Ljava/lang/Long;
    .restart local v16    # "where":Landroid/content/ContentValues;
    :cond_4
    :try_start_5
    const-string/jumbo v17, "DeviceAccountPolicy"

    const-string/jumbo v18, "loadAccounts() : can not get admin. "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p4, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 179
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 181
    .local v2, "callingUid":I
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p3, :cond_1

    .line 182
    :cond_0
    const-string/jumbo v7, "DeviceAccountPolicy"

    const-string/jumbo v8, "removeAccountsFromBWLInternal() : invalid parameter."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return v9

    .line 186
    :cond_1
    const/4 v5, 0x1

    .line 188
    .local v5, "result":Z
    :try_start_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v5    # "result":Z
    .local v1, "account$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, "account":Ljava/lang/String;
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/String;

    .line 190
    const-string/jumbo v7, "adminUid"

    const/4 v8, 0x0

    aput-object v7, v3, v8

    const-string/jumbo v7, "type"

    const/4 v8, 0x1

    aput-object v7, v3, v8

    .line 191
    const-string/jumbo v7, "name"

    const/4 v8, 0x2

    aput-object v7, v3, v8

    const-string/jumbo v7, "listType"

    const/4 v8, 0x3

    aput-object v7, v3, v8

    .line 193
    .local v3, "columns":[Ljava/lang/String;
    const/4 v7, 0x4

    new-array v6, v7, [Ljava/lang/String;

    .line 194
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    .line 196
    .local v6, "values":[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 197
    iget-object v7, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 198
    const-string/jumbo v8, "AccountBlackWhiteList"

    .line 197
    invoke-virtual {v7, v8, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .local v5, "result":Z
    goto :goto_0

    .line 196
    .end local v5    # "result":Z
    :cond_2
    const/4 v5, 0x0

    .local v5, "result":Z
    goto :goto_0

    .line 200
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "account$iterator":Ljava/util/Iterator;
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v5    # "result":Z
    .end local v6    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 201
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "DeviceAccountPolicy"

    const-string/jumbo v8, "Handled Exception in removeAccountsFromBWLInternal()"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const/4 v5, 0x0

    .line 205
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    return v5
.end method


# virtual methods
.method public addAccountsToAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 417
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 435
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 342
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 359
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 430
    const-string/jumbo v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 448
    const-string/jumbo v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 355
    const-string/jumbo v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 372
    const-string/jumbo v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAccountsFromAdditionBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    const-string/jumbo v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromAdditionWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    const-string/jumbo v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromRemovalBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    const-string/jumbo v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromRemovalWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    const-string/jumbo v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedAccountTypes()Ljava/util/List;
    .locals 1
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
    .line 338
    sget-object v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    const/4 v9, 0x1

    .line 452
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v2, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 453
    .local v2, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 455
    .local v6, "userId":I
    const-string/jumbo v7, "ADDITION_BLACKLIST"

    .line 454
    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 457
    .local v0, "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string/jumbo v7, "ADDITION_WHITELIST"

    .line 456
    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 459
    .local v1, "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 460
    const-string/jumbo v7, "DeviceAccountPolicy"

    const-string/jumbo v8, "isAccountAdditionAllowed() : no BlackList."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return v9

    .line 464
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 465
    .local v5, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "uid$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 467
    .local v3, "uid":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 468
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v7

    .line 467
    if-nez v7, :cond_1

    .line 473
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 474
    if-eqz p3, :cond_3

    .line 476
    const v7, 0x10409c4

    .line 475
    invoke-static {v7}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 478
    :cond_3
    const-string/jumbo v7, "DeviceAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isAccountAdditionAllowed() : account has blocked. userId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v7, 0x0

    return v7

    .line 483
    .end local v3    # "uid":Ljava/lang/Integer;
    :cond_4
    return v9
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 376
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 377
    .local v0, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 378
    .local v1, "userId":I
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    return v2
.end method

.method public isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v7, 0x1

    .line 383
    const-string/jumbo v5, "REMOVAL_BLACKLIST"

    .line 382
    invoke-direct {p0, p4, p1, v5}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 385
    .local v0, "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string/jumbo v5, "REMOVAL_WHITELIST"

    .line 384
    invoke-direct {p0, p4, p1, v5}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 387
    .local v1, "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 388
    const-string/jumbo v5, "DeviceAccountPolicy"

    const-string/jumbo v6, "isAccountRemovalAllowedAsUser() : no BlackList."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return v7

    .line 392
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 393
    .local v4, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "uid$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 395
    .local v2, "uid":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 396
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v5

    .line 395
    if-eqz v5, :cond_2

    .line 397
    const-string/jumbo v5, "DeviceAccountPolicy"

    const-string/jumbo v6, "isAccountRemovalAllowedAsUser() : no WhiteList."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 403
    if-eqz p3, :cond_3

    .line 405
    const v5, 0x10409c3

    .line 404
    invoke-static {v5}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 407
    :cond_3
    const-string/jumbo v5, "DeviceAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAccountAdditionAllowed() : account has blocked. userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v5, 0x0

    return v5

    .line 412
    .end local v2    # "uid":Ljava/lang/Integer;
    :cond_4
    return v7
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 526
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 491
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 496
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 513
    const-string/jumbo v0, "DeviceAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DeviceAccountPolicy.onContainerCreation("

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 524
    const-string/jumbo v0, "DeviceAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DeviceAccountPolicy.onContainerRemoved("

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 507
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 518
    const-string/jumbo v0, "DeviceAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DeviceAccountPolicy.onPreContainerRemoval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 519
    const-string/jumbo v2, ")"

    .line 518
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void
.end method

.method public removeAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 422
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 440
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 347
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtIfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 364
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method
