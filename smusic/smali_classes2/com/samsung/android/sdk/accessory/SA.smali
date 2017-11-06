.class public Lcom/samsung/android/sdk/accessory/SA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/SsdkInterface;


# static fields
.field public static final DEVICE_ACCESSORY:I = 0x0

.field public static final SERVICE_FILETRANSFER:I = 0x1

.field public static final SERVICE_MESSAGE:I = 0x2

.field public static final SERVICE_SOCKET:I = 0x3


# instance fields
.field private a:Lcom/samsung/android/sdk/accessory/i;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SA;->b:Z

    return-void
.end method


# virtual methods
.method protected clearSdkConfig()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SA;->a:Lcom/samsung/android/sdk/accessory/i;

    return-void
.end method

.method public getVersionCode()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "2.5.2"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal argument: context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SA;->a:Lcom/samsung/android/sdk/accessory/i;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SA;->b:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SA;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/accessory/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SA;->b:Z

    :cond_1
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/accessory/i;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SA;->a:Lcom/samsung/android/sdk/accessory/i;
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/c; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "[SA_SDK]SA"

    const-string v1, "Initializing SA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/accessory/a;->a()Lcom/samsung/android/sdk/accessory/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/accessory/a;->a(Landroid/content/Context;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/c;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/c;->a()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public isFeatureEnabled(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/i;->j()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/i;->g()Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
