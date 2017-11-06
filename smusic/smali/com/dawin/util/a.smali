.class public Lcom/dawin/util/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/util/a$a;,
        Lcom/dawin/util/a$b;,
        Lcom/dawin/util/a$c;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    sput-object v0, Lcom/dawin/util/a;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dawin/util/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "adInfo"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v1, Lcom/dawin/util/h$a;

    const-string v2, "getId"

    invoke-direct {v1, p0, v2}, Lcom/dawin/util/h$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dawin/util/h$a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "exception":Ljava/lang/Exception;
    move-object v1, p1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/dawin/util/a$c;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adInfoListener"    # Lcom/dawin/util/a$c;

    .prologue
    :try_start_0
    new-instance v1, Lcom/dawin/util/a$b;

    invoke-direct {v1, p0, p1}, Lcom/dawin/util/a$b;-><init>(Landroid/content/Context;Lcom/dawin/util/a$c;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v1, v2}, Lcom/dawin/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/dawin/util/a$c;->a(Lcom/dawin/util/a$a;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/Object;Z)Z
    .locals 4
    .param p0, "adInfo"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Z

    .prologue
    :try_start_0
    new-instance v2, Lcom/dawin/util/h$a;

    const-string v3, "isLimitAdTrackingEnabled"

    invoke-direct {v2, p0, v3}, Lcom/dawin/util/h$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dawin/util/h$a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .end local v1    # "result":Ljava/lang/Boolean;
    .end local p1    # "defaultValue":Z
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :catch_0
    move-exception v0

    .local v0, "exception":Ljava/lang/Exception;
    goto :goto_0
.end method
