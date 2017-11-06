.class Lcom/samsung/android/app/music/service/accessory/SAProvider$4;
.super Ljava/lang/Object;
.source "SAProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/accessory/SAProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/accessory/SAProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 402
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$302(Lcom/samsung/android/app/music/service/accessory/SAProvider;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 404
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$300(Lcom/samsung/android/app/music/service/accessory/SAProvider;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    new-instance v2, Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;-><init>(Lcom/samsung/android/app/music/service/accessory/SAProvider;)V

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$402(Lcom/samsung/android/app/music/service/accessory/SAProvider;Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;)Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$300(Lcom/samsung/android/app/music/service/accessory/SAProvider;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v2

    const-string v3, "12yndwlwd1"

    const-string v4, "C548D30428E8D901492340A08A969617"

    iget-object v5, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .line 410
    invoke-static {v5}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$600(Lcom/samsung/android/app/music/service/accessory/SAProvider;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$400(Lcom/samsung/android/app/music/service/accessory/SAProvider;)Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;

    move-result-object v6

    .line 409
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$502(Lcom/samsung/android/app/music/service/accessory/SAProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$500(Lcom/samsung/android/app/music/service/accessory/SAProvider;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$300(Lcom/samsung/android/app/music/service/accessory/SAProvider;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v2

    const-string v3, "12yndwlwd1"

    const-string v4, "C548D30428E8D901492340A08A969617"

    iget-object v5, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .line 418
    invoke-static {v5}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$600(Lcom/samsung/android/app/music/service/accessory/SAProvider;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .line 419
    invoke-static {v6}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$400(Lcom/samsung/android/app/music/service/accessory/SAProvider;)Lcom/samsung/android/app/music/service/accessory/SAProvider$SACallback;

    move-result-object v6

    .line 417
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$502(Lcom/samsung/android/app/music/service/accessory/SAProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$700(Lcom/samsung/android/app/music/service/accessory/SAProvider;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected() Exception using Samsung Account service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 430
    const-string v0, "SAP"

    const-string v1, "onServiceDisconnected() Samsung Account service is disconnected"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$302(Lcom/samsung/android/app/music/service/accessory/SAProvider;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 432
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$502(Lcom/samsung/android/app/music/service/accessory/SAProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$802(Lcom/samsung/android/app/music/service/accessory/SAProvider;Z)Z

    .line 434
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$4;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->accountResponse(Z)V

    .line 435
    return-void
.end method
