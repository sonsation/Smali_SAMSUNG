.class Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent$1;
.super Ljava/lang/Object;
.source "MilkDownloadNotificationAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->notifyOnMainLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->access$100(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x4104001

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent$1;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->access$000(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 202
    return-void
.end method
