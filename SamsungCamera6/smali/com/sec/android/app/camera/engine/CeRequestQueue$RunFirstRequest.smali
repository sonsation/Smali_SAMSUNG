.class Lcom/sec/android/app/camera/engine/CeRequestQueue$RunFirstRequest;
.super Ljava/lang/Object;
.source "CeRequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CeRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunFirstRequest"
.end annotation


# instance fields
.field private mFirstRequest:Lcom/sec/android/app/camera/engine/CeRequest;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CeRequestQueue;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CeRequestQueue;Lcom/sec/android/app/camera/engine/CeRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue$RunFirstRequest;->this$0:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue$RunFirstRequest;->mFirstRequest:Lcom/sec/android/app/camera/engine/CeRequest;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle CMD("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue$RunFirstRequest;->mFirstRequest:Lcom/sec/android/app/camera/engine/CeRequest;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue$RunFirstRequest;->this$0:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->access$100(Lcom/sec/android/app/camera/engine/CeRequestQueue;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/engine/AbstractCeState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue$RunFirstRequest;->mFirstRequest:Lcom/sec/android/app/camera/engine/CeRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AbstractCeState;->handleRequest(Lcom/sec/android/app/camera/engine/CeRequest;)Z

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method
