.class Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;
.super Ljava/lang/Object;
.source "MilkServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->broadcastCallback(IIILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field final synthetic val$extras:[Ljava/lang/Object;

.field final synthetic val$list:Ljava/util/ArrayList;

.field final synthetic val$reqId:I

.field final synthetic val$reqType:I

.field final synthetic val$resultData:Ljava/lang/Object;

.field final synthetic val$rspType:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Ljava/util/ArrayList;IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->this$0:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->val$list:Ljava/util/ArrayList;

    iput p3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->val$reqId:I

    iput p4, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->val$reqType:I

    iput p5, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->val$rspType:I

    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->val$resultData:Ljava/lang/Object;

    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->val$extras:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 282
    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->val$list:Ljava/util/ArrayList;

    monitor-enter v6

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .line 284
    .local v0, "brCallback":Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->val$reqId:I

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->val$reqType:I

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->val$rspType:I

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->val$resultData:Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;->val$extras:[Ljava/lang/Object;

    .line 285
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    .end local v0    # "brCallback":Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    return-void
.end method
