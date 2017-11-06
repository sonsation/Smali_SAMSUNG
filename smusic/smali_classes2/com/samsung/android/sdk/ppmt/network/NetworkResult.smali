.class public Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
.super Ljava/lang/Object;
.source "NetworkResult.java"


# instance fields
.field public final isSuccess:Z

.field public final responseCode:I

.field public final responseMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "isSuccess"    # Z
    .param p2, "resultCode"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->isSuccess:Z

    .line 10
    iput p2, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseCode:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseMsg:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0
    .param p1, "isSuccess"    # Z
    .param p2, "resultCode"    # I
    .param p3, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->isSuccess:Z

    .line 16
    iput p2, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseCode:I

    .line 17
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseMsg:Ljava/lang/String;

    .line 18
    return-void
.end method
