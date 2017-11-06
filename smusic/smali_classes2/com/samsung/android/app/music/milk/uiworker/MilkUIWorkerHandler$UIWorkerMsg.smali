.class Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;
.super Ljava/lang/Object;
.source "MilkUIWorkerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIWorkerMsg"
.end annotation


# instance fields
.field public mHandlerCallback:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;

.field public mNeedMilkService:Z

.field public mNeedRadioPlaybackService:Z

.field public mRetryCount:I

.field public mWorker:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;ZZLjava/lang/Runnable;ILcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V
    .locals 0
    .param p2, "needMilkService"    # Z
    .param p3, "needRadioPlaybackService"    # Z
    .param p4, "worker"    # Ljava/lang/Runnable;
    .param p5, "retryCount"    # I
    .param p6, "handlerCallback"    # Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->this$0:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mWorker:Ljava/lang/Runnable;

    .line 132
    iput-boolean p2, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mNeedMilkService:Z

    .line 133
    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mNeedRadioPlaybackService:Z

    .line 134
    iput p5, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mRetryCount:I

    .line 135
    iput-object p6, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$UIWorkerMsg;->mHandlerCallback:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;

    .line 136
    return-void
.end method
