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
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

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

    .prologue
    const/4 v3, 0x0

    .line 223
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[decertifyGCM]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.google.android.gsf"

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "app"

    .line 226
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 228
    return-void
.end method

.method public static handlePushMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "GCM"

    .line 174
    invoke-static {p0, p1, v0}, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->handleMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public static handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    const-string/jumbo v0, "registration_id"

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[handleRegistration]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\tregistrationID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "error"

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    if-nez v1, :cond_1

    const-string/jumbo v1, "unregistered"

    .line 131
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 139
    if-nez v0, :cond_8

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Registration failed, should try again later. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "error"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "SERVICE_NOT_AVAILABLE"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    :cond_2
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0, v4}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "PHONE_REGISTRATION_ERROR"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ACCOUNT_MISSING"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "AUTHENTICATION_FAILED"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "TOO_MANY_REGISTRATIONS"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "INVALID_SENDER"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "INVALID_SENDER"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    :cond_4
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ACCOUNT_MISSING"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_5
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "AUTHENTICATION_FAILED"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0, v4}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto/16 :goto_0

    .line 124
    :cond_6
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TOO_MANY_REGISTRATIONS"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_7
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unregistration done."

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "GCM"

    .line 135
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearRegistraionID(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "GCM"

    .line 136
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearGCMBackoff(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 141
    :cond_8
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Registration_id complete"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearGCMBackoff(Landroid/content/Context;)V

    .line 143
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    const-string/jumbo v2, "retType11"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GCM"

    .line 144
    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRegistraionID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    sget-object v2, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[GCM]Saved Registration ID :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[GCM]New Registration ID :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GCM"

    .line 148
    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRegistraionID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "GCM"

    .line 149
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->makeMgRegistrationBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x5

    .line 150
    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0
.end method

.method public static registerAtGCM(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[certifyGCM]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "certifyGCM: 131980721158"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.google.android.gsf"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "app"

    .line 211
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "131980721158"

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 214
    return-void
.end method
