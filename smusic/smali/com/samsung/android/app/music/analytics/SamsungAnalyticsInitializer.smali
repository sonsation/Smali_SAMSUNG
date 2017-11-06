.class public Lcom/samsung/android/app/music/analytics/SamsungAnalyticsInitializer;
.super Ljava/lang/Object;
.source "SamsungAnalyticsInitializer.java"


# static fields
.field public static final ACTION_INITIALIZE:Ljava/lang/String; = "ACTION_INITIALIZE"

.field public static final EXTRA_FROM:Ljava/lang/String; = "EXTRA_FROM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendInitReqeust(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 18
    const-string v1, "EXTRA_FROM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    :cond_0
    const-string v1, "ACTION_INITIALIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 23
    return-void
.end method
