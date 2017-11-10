.class Lcom/sec/android/app/camera/HRMSensorFusion$1;
.super Landroid/os/Handler;
.source "HRMSensorFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/HRMSensorFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/HRMSensorFusion;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/HRMSensorFusion;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/HRMSensorFusion$1;->this$0:Lcom/sec/android/app/camera/HRMSensorFusion;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "HRMSensorFusion"

    const-string v1, "Start capture by HRM sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/HRMSensorFusion$1;->this$0:Lcom/sec/android/app/camera/HRMSensorFusion;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/HRMSensorFusion;->access$002(Lcom/sec/android/app/camera/HRMSensorFusion;Z)Z

    goto :goto_0

    :pswitch_1
    const-string v0, "HRMSensorFusion"

    const-string v1, "Timeout capture by HRM sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/HRMSensorFusion$1;->this$0:Lcom/sec/android/app/camera/HRMSensorFusion;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/HRMSensorFusion;->access$002(Lcom/sec/android/app/camera/HRMSensorFusion;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
