.class Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;
.super Ljava/lang/Object;
.source "MilkServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;->onServiceResult(IIILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;

.field final synthetic val$callback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

.field final synthetic val$extras:[Ljava/lang/Object;

.field final synthetic val$reqId:I

.field final synthetic val$reqType:I

.field final synthetic val$resultData:Ljava/lang/Object;

.field final synthetic val$rspType:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->this$1:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->val$callback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    iput p3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->val$reqId:I

    iput p4, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->val$reqType:I

    iput p5, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->val$rspType:I

    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->val$resultData:Ljava/lang/Object;

    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->val$extras:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->val$callback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->val$reqId:I

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->val$reqType:I

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->val$rspType:I

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->val$resultData:Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1$1;->val$extras:[Ljava/lang/Object;

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 99
    return-void
.end method
