.class Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/browser/BrowserPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrowserProxyCache"
.end annotation


# instance fields
.field private mAdminUid:I

.field private final mContainerId:I

.field private mProxySetting:Ljava/lang/String;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/enterprise/browser/BrowserPolicy;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/enterprise/browser/BrowserPolicy;
    .param p2, "userId"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mUserId:I

    .line 115
    iput p3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mContainerId:I

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method clear()V
    .locals 9

    .prologue
    const/4 v7, -0x1

    .line 145
    iget v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    if-eq v6, v7, :cond_0

    .line 146
    iput v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 147
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "mdm.intent.action.clear.http.proxy"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 151
    .local v2, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->-get0(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mUserId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 152
    const-string/jumbo v8, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    .line 151
    invoke-virtual {v6, v0, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 153
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.knox.intent.action.CLEAR_HTTP_BROWSER_PROXY_INTERNAL"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "intentNew":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 158
    .local v4, "token2":J
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->-get0(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mUserId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 159
    const-string/jumbo v8, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    .line 158
    invoke-virtual {v6, v1, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 160
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentNew":Landroid/content/Intent;
    .end local v2    # "token":J
    .end local v4    # "token2":J
    :cond_0
    return-void
.end method

.method isAlreadySet()Z
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOwner(I)Z
    .locals 1
    .param p1, "adminUid"    # I

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setProxy(ILjava/lang/String;Z)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "proxySetting"    # Ljava/lang/String;
    .param p3, "broadcast"    # Z

    .prologue
    .line 121
    if-eqz p2, :cond_0

    .line 122
    iput p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I

    .line 123
    iput-object p2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;

    .line 124
    if-eqz p3, :cond_0

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "mdm.intent.action.set.http.proxy"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "mdm.intent.extra.http.proxy.server"

    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 129
    .local v2, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->-get0(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mUserId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 130
    const-string/jumbo v8, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    .line 129
    invoke-virtual {v6, v0, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 131
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.knox.intent.action.SET_HTTP_BROWSER_PROXY_INTERNAL"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "intentNew":Landroid/content/Intent;
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.HTTP_BROWSER_PROXY_INTERNAL"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 137
    .local v4, "token2":J
    iget-object v6, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->-get0(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mUserId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 138
    const-string/jumbo v8, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    .line 137
    invoke-virtual {v6, v1, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 139
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentNew":Landroid/content/Intent;
    .end local v2    # "token":J
    .end local v4    # "token2":J
    :cond_0
    return-void
.end method
