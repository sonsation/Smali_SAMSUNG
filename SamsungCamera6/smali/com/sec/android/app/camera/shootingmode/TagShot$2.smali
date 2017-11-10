.class Lcom/sec/android/app/camera/shootingmode/TagShot$2;
.super Landroid/content/BroadcastReceiver;
.source "TagShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/TagShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$2;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TagShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBroadcastReceiver- onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$2;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$200(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$2;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$300(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$2;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$400(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$2;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$500(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$2;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v1, p1, p2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$600(Lcom/sec/android/app/camera/shootingmode/TagShot;Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
