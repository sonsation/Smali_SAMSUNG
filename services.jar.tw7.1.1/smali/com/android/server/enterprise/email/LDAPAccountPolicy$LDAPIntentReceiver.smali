.class Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LDAPAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LDAPIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT_INTERNAL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "LDAPAccountPolicyService"

    const-string v7, "LDAPIntentReceiver: Received intent : ACTION_LDAP_CREATE_ACCT_RESULT_INTERNAL"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v6, "com.samsung.android.knox.intent.extra.LDAP_USER_ID"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "com.samsung.android.knox.intent.extra.LDAP_RESULT"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "com.samsung.android.knox.intent.extra.LDAP_ACCT_ID"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-static {v6, v5, v4, v0, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->-wrap0(Lcom/android/server/enterprise/email/LDAPAccountPolicy;IIJ)V

    :cond_0
    return-void
.end method
