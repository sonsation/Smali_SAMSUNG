.class public Lcom/samsung/android/rlc/receiver/handler/GCMHandler;
.super Lcom/samsung/android/rlc/receiver/handler/PushMsgHandler;
.source "GCMHandler.java"


# static fields
.field private static final APP:Ljava/lang/String; = "app"

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final ERR_ACCOUNT_MISSING:Ljava/lang/String; = "ACCOUNT_MISSING"

.field private static final ERR_AUTHENTICATION_FAILED:Ljava/lang/String; = "AUTHENTICATION_FAILED"

.field private static final ERR_INVALID_SENDER:Ljava/lang/String; = "INVALID_SENDER"

.field private static final ERR_PHONE_REGISTRATION_ERROR:Ljava/lang/String; = "PHONE_REGISTRATION_ERROR"

.field private static final ERR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field private static final ERR_TOO_MANY_REGISTRATIONS:Ljava/lang/String; = "TOO_MANY_REGISTRATIONS"

.field private static final GCM_REGISTER:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTER"

.field private static final GCM_UNREGISTER:Ljava/lang/String; = "com.google.android.c2dm.intent.UNREGISTER"

.field private static final REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field private static final SENDER:Ljava/lang/String; = "sender"

.field private static final TAG:Ljava/lang/String;

.field private static final UNREGISTERED:Ljava/lang/String; = "unregistered"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/rlc/receiver/handler/PushMsgHandler;-><init>()V

    return-void
.end method

.method public static deregisterFromGCM(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 222
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string v2, "[decertifyGCM]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "unregIntent":Landroid/content/Intent;
    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 221
    return-void
.end method

.method public static handlePushMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 173
    const-string v0, "GCM"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->handleMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public static handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0xb

    .line 101
    const-string v4, "registration_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "registrationID":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string v5, "[handleRegistration]"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tregistrationID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v4, "error"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 108
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registration failed, should try again later. Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v4, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PHONE_REGISTRATION_ERROR"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    :cond_0
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v4, v7}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    const-string v4, "ACCOUNT_MISSING"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string v5, "ACCOUNT_MISSING"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_3
    const-string v4, "AUTHENTICATION_FAILED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 120
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string v5, "AUTHENTICATION_FAILED"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v4, v7}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto :goto_0

    .line 123
    :cond_4
    const-string v4, "TOO_MANY_REGISTRATIONS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 124
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string v5, "TOO_MANY_REGISTRATIONS"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_5
    const-string v4, "INVALID_SENDER"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string v5, "INVALID_SENDER"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_6
    const-string v4, "unregistered"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 133
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string v5, "Unregistration done."

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v4, "GCM"

    invoke-static {p0, v4}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearRegistraionID(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    const-string v4, "GCM"

    invoke-static {p0, v4}, Lcom/samsung/android/rlc/util/PreferencesUtil;->unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearGCMBackoff(Landroid/content/Context;)V

    goto :goto_0

    .line 139
    :cond_7
    if-eqz v2, :cond_1

    .line 141
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string v5, "Registration_id complete"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearGCMBackoff(Landroid/content/Context;)V

    .line 143
    const-string v4, "GCM"

    invoke-static {p0, v4}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRegistraionID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "savedRegistrationId":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GCM]Saved Registration ID :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GCM]New Registration ID :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v4, "GCM"

    invoke-static {p0, v2, v4}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRegistraionID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v4, "GCM"

    invoke-static {p0, v4}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->makeMgRegistrationBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 149
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v4, 0x5

    invoke-static {p0, v0, v4}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0
.end method

.method public static registerAtGCM(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 206
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string v2, "[certifyGCM]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string v2, "certifyGCM: 131980721158"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "registrationIntent":Landroid/content/Intent;
    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 211
    const-string v1, "sender"

    const-string v2, "131980721158"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 203
    return-void
.end method
