.class final Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;
.super Landroid/os/Handler;
.source "DcmNextiPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DcmNextiPlayReadyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DcmNextiPlayReadyService;


# direct methods
.method public constructor <init>(Lcom/android/server/DcmNextiPlayReadyService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DcmNextiPlayReadyService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    .line 122
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    return-void
.end method
